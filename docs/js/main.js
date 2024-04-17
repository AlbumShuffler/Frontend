(function(scope){
'use strict';

function F(arity, fun, wrapper) {
  wrapper.a = arity;
  wrapper.f = fun;
  return wrapper;
}

function F2(fun) {
  return F(2, fun, function(a) { return function(b) { return fun(a,b); }; })
}
function F3(fun) {
  return F(3, fun, function(a) {
    return function(b) { return function(c) { return fun(a, b, c); }; };
  });
}
function F4(fun) {
  return F(4, fun, function(a) { return function(b) { return function(c) {
    return function(d) { return fun(a, b, c, d); }; }; };
  });
}
function F5(fun) {
  return F(5, fun, function(a) { return function(b) { return function(c) {
    return function(d) { return function(e) { return fun(a, b, c, d, e); }; }; }; };
  });
}
function F6(fun) {
  return F(6, fun, function(a) { return function(b) { return function(c) {
    return function(d) { return function(e) { return function(f) {
    return fun(a, b, c, d, e, f); }; }; }; }; };
  });
}
function F7(fun) {
  return F(7, fun, function(a) { return function(b) { return function(c) {
    return function(d) { return function(e) { return function(f) {
    return function(g) { return fun(a, b, c, d, e, f, g); }; }; }; }; }; };
  });
}
function F8(fun) {
  return F(8, fun, function(a) { return function(b) { return function(c) {
    return function(d) { return function(e) { return function(f) {
    return function(g) { return function(h) {
    return fun(a, b, c, d, e, f, g, h); }; }; }; }; }; }; };
  });
}
function F9(fun) {
  return F(9, fun, function(a) { return function(b) { return function(c) {
    return function(d) { return function(e) { return function(f) {
    return function(g) { return function(h) { return function(i) {
    return fun(a, b, c, d, e, f, g, h, i); }; }; }; }; }; }; }; };
  });
}

function A2(fun, a, b) {
  return fun.a === 2 ? fun.f(a, b) : fun(a)(b);
}
function A3(fun, a, b, c) {
  return fun.a === 3 ? fun.f(a, b, c) : fun(a)(b)(c);
}
function A4(fun, a, b, c, d) {
  return fun.a === 4 ? fun.f(a, b, c, d) : fun(a)(b)(c)(d);
}
function A5(fun, a, b, c, d, e) {
  return fun.a === 5 ? fun.f(a, b, c, d, e) : fun(a)(b)(c)(d)(e);
}
function A6(fun, a, b, c, d, e, f) {
  return fun.a === 6 ? fun.f(a, b, c, d, e, f) : fun(a)(b)(c)(d)(e)(f);
}
function A7(fun, a, b, c, d, e, f, g) {
  return fun.a === 7 ? fun.f(a, b, c, d, e, f, g) : fun(a)(b)(c)(d)(e)(f)(g);
}
function A8(fun, a, b, c, d, e, f, g, h) {
  return fun.a === 8 ? fun.f(a, b, c, d, e, f, g, h) : fun(a)(b)(c)(d)(e)(f)(g)(h);
}
function A9(fun, a, b, c, d, e, f, g, h, i) {
  return fun.a === 9 ? fun.f(a, b, c, d, e, f, g, h, i) : fun(a)(b)(c)(d)(e)(f)(g)(h)(i);
}

console.warn('Compiled in DEV mode. Follow the advice at https://elm-lang.org/0.19.1/optimize for better performance and smaller assets.');


// EQUALITY

function _Utils_eq(x, y)
{
	for (
		var pair, stack = [], isEqual = _Utils_eqHelp(x, y, 0, stack);
		isEqual && (pair = stack.pop());
		isEqual = _Utils_eqHelp(pair.a, pair.b, 0, stack)
		)
	{}

	return isEqual;
}

function _Utils_eqHelp(x, y, depth, stack)
{
	if (x === y)
	{
		return true;
	}

	if (typeof x !== 'object' || x === null || y === null)
	{
		typeof x === 'function' && _Debug_crash(5);
		return false;
	}

	if (depth > 100)
	{
		stack.push(_Utils_Tuple2(x,y));
		return true;
	}

	/**/
	if (x.$ === 'Set_elm_builtin')
	{
		x = $elm$core$Set$toList(x);
		y = $elm$core$Set$toList(y);
	}
	if (x.$ === 'RBNode_elm_builtin' || x.$ === 'RBEmpty_elm_builtin')
	{
		x = $elm$core$Dict$toList(x);
		y = $elm$core$Dict$toList(y);
	}
	//*/

	/**_UNUSED/
	if (x.$ < 0)
	{
		x = $elm$core$Dict$toList(x);
		y = $elm$core$Dict$toList(y);
	}
	//*/

	for (var key in x)
	{
		if (!_Utils_eqHelp(x[key], y[key], depth + 1, stack))
		{
			return false;
		}
	}
	return true;
}

var _Utils_equal = F2(_Utils_eq);
var _Utils_notEqual = F2(function(a, b) { return !_Utils_eq(a,b); });



// COMPARISONS

// Code in Generate/JavaScript.hs, Basics.js, and List.js depends on
// the particular integer values assigned to LT, EQ, and GT.

function _Utils_cmp(x, y, ord)
{
	if (typeof x !== 'object')
	{
		return x === y ? /*EQ*/ 0 : x < y ? /*LT*/ -1 : /*GT*/ 1;
	}

	/**/
	if (x instanceof String)
	{
		var a = x.valueOf();
		var b = y.valueOf();
		return a === b ? 0 : a < b ? -1 : 1;
	}
	//*/

	/**_UNUSED/
	if (typeof x.$ === 'undefined')
	//*/
	/**/
	if (x.$[0] === '#')
	//*/
	{
		return (ord = _Utils_cmp(x.a, y.a))
			? ord
			: (ord = _Utils_cmp(x.b, y.b))
				? ord
				: _Utils_cmp(x.c, y.c);
	}

	// traverse conses until end of a list or a mismatch
	for (; x.b && y.b && !(ord = _Utils_cmp(x.a, y.a)); x = x.b, y = y.b) {} // WHILE_CONSES
	return ord || (x.b ? /*GT*/ 1 : y.b ? /*LT*/ -1 : /*EQ*/ 0);
}

var _Utils_lt = F2(function(a, b) { return _Utils_cmp(a, b) < 0; });
var _Utils_le = F2(function(a, b) { return _Utils_cmp(a, b) < 1; });
var _Utils_gt = F2(function(a, b) { return _Utils_cmp(a, b) > 0; });
var _Utils_ge = F2(function(a, b) { return _Utils_cmp(a, b) >= 0; });

var _Utils_compare = F2(function(x, y)
{
	var n = _Utils_cmp(x, y);
	return n < 0 ? $elm$core$Basics$LT : n ? $elm$core$Basics$GT : $elm$core$Basics$EQ;
});


// COMMON VALUES

var _Utils_Tuple0_UNUSED = 0;
var _Utils_Tuple0 = { $: '#0' };

function _Utils_Tuple2_UNUSED(a, b) { return { a: a, b: b }; }
function _Utils_Tuple2(a, b) { return { $: '#2', a: a, b: b }; }

function _Utils_Tuple3_UNUSED(a, b, c) { return { a: a, b: b, c: c }; }
function _Utils_Tuple3(a, b, c) { return { $: '#3', a: a, b: b, c: c }; }

function _Utils_chr_UNUSED(c) { return c; }
function _Utils_chr(c) { return new String(c); }


// RECORDS

function _Utils_update(oldRecord, updatedFields)
{
	var newRecord = {};

	for (var key in oldRecord)
	{
		newRecord[key] = oldRecord[key];
	}

	for (var key in updatedFields)
	{
		newRecord[key] = updatedFields[key];
	}

	return newRecord;
}


// APPEND

var _Utils_append = F2(_Utils_ap);

function _Utils_ap(xs, ys)
{
	// append Strings
	if (typeof xs === 'string')
	{
		return xs + ys;
	}

	// append Lists
	if (!xs.b)
	{
		return ys;
	}
	var root = _List_Cons(xs.a, ys);
	xs = xs.b
	for (var curr = root; xs.b; xs = xs.b) // WHILE_CONS
	{
		curr = curr.b = _List_Cons(xs.a, ys);
	}
	return root;
}



var _List_Nil_UNUSED = { $: 0 };
var _List_Nil = { $: '[]' };

function _List_Cons_UNUSED(hd, tl) { return { $: 1, a: hd, b: tl }; }
function _List_Cons(hd, tl) { return { $: '::', a: hd, b: tl }; }


var _List_cons = F2(_List_Cons);

function _List_fromArray(arr)
{
	var out = _List_Nil;
	for (var i = arr.length; i--; )
	{
		out = _List_Cons(arr[i], out);
	}
	return out;
}

function _List_toArray(xs)
{
	for (var out = []; xs.b; xs = xs.b) // WHILE_CONS
	{
		out.push(xs.a);
	}
	return out;
}

var _List_map2 = F3(function(f, xs, ys)
{
	for (var arr = []; xs.b && ys.b; xs = xs.b, ys = ys.b) // WHILE_CONSES
	{
		arr.push(A2(f, xs.a, ys.a));
	}
	return _List_fromArray(arr);
});

var _List_map3 = F4(function(f, xs, ys, zs)
{
	for (var arr = []; xs.b && ys.b && zs.b; xs = xs.b, ys = ys.b, zs = zs.b) // WHILE_CONSES
	{
		arr.push(A3(f, xs.a, ys.a, zs.a));
	}
	return _List_fromArray(arr);
});

var _List_map4 = F5(function(f, ws, xs, ys, zs)
{
	for (var arr = []; ws.b && xs.b && ys.b && zs.b; ws = ws.b, xs = xs.b, ys = ys.b, zs = zs.b) // WHILE_CONSES
	{
		arr.push(A4(f, ws.a, xs.a, ys.a, zs.a));
	}
	return _List_fromArray(arr);
});

var _List_map5 = F6(function(f, vs, ws, xs, ys, zs)
{
	for (var arr = []; vs.b && ws.b && xs.b && ys.b && zs.b; vs = vs.b, ws = ws.b, xs = xs.b, ys = ys.b, zs = zs.b) // WHILE_CONSES
	{
		arr.push(A5(f, vs.a, ws.a, xs.a, ys.a, zs.a));
	}
	return _List_fromArray(arr);
});

var _List_sortBy = F2(function(f, xs)
{
	return _List_fromArray(_List_toArray(xs).sort(function(a, b) {
		return _Utils_cmp(f(a), f(b));
	}));
});

var _List_sortWith = F2(function(f, xs)
{
	return _List_fromArray(_List_toArray(xs).sort(function(a, b) {
		var ord = A2(f, a, b);
		return ord === $elm$core$Basics$EQ ? 0 : ord === $elm$core$Basics$LT ? -1 : 1;
	}));
});



var _JsArray_empty = [];

function _JsArray_singleton(value)
{
    return [value];
}

function _JsArray_length(array)
{
    return array.length;
}

var _JsArray_initialize = F3(function(size, offset, func)
{
    var result = new Array(size);

    for (var i = 0; i < size; i++)
    {
        result[i] = func(offset + i);
    }

    return result;
});

var _JsArray_initializeFromList = F2(function (max, ls)
{
    var result = new Array(max);

    for (var i = 0; i < max && ls.b; i++)
    {
        result[i] = ls.a;
        ls = ls.b;
    }

    result.length = i;
    return _Utils_Tuple2(result, ls);
});

var _JsArray_unsafeGet = F2(function(index, array)
{
    return array[index];
});

var _JsArray_unsafeSet = F3(function(index, value, array)
{
    var length = array.length;
    var result = new Array(length);

    for (var i = 0; i < length; i++)
    {
        result[i] = array[i];
    }

    result[index] = value;
    return result;
});

var _JsArray_push = F2(function(value, array)
{
    var length = array.length;
    var result = new Array(length + 1);

    for (var i = 0; i < length; i++)
    {
        result[i] = array[i];
    }

    result[length] = value;
    return result;
});

var _JsArray_foldl = F3(function(func, acc, array)
{
    var length = array.length;

    for (var i = 0; i < length; i++)
    {
        acc = A2(func, array[i], acc);
    }

    return acc;
});

var _JsArray_foldr = F3(function(func, acc, array)
{
    for (var i = array.length - 1; i >= 0; i--)
    {
        acc = A2(func, array[i], acc);
    }

    return acc;
});

var _JsArray_map = F2(function(func, array)
{
    var length = array.length;
    var result = new Array(length);

    for (var i = 0; i < length; i++)
    {
        result[i] = func(array[i]);
    }

    return result;
});

var _JsArray_indexedMap = F3(function(func, offset, array)
{
    var length = array.length;
    var result = new Array(length);

    for (var i = 0; i < length; i++)
    {
        result[i] = A2(func, offset + i, array[i]);
    }

    return result;
});

var _JsArray_slice = F3(function(from, to, array)
{
    return array.slice(from, to);
});

var _JsArray_appendN = F3(function(n, dest, source)
{
    var destLen = dest.length;
    var itemsToCopy = n - destLen;

    if (itemsToCopy > source.length)
    {
        itemsToCopy = source.length;
    }

    var size = destLen + itemsToCopy;
    var result = new Array(size);

    for (var i = 0; i < destLen; i++)
    {
        result[i] = dest[i];
    }

    for (var i = 0; i < itemsToCopy; i++)
    {
        result[i + destLen] = source[i];
    }

    return result;
});



// LOG

var _Debug_log_UNUSED = F2(function(tag, value)
{
	return value;
});

var _Debug_log = F2(function(tag, value)
{
	console.log(tag + ': ' + _Debug_toString(value));
	return value;
});


// TODOS

function _Debug_todo(moduleName, region)
{
	return function(message) {
		_Debug_crash(8, moduleName, region, message);
	};
}

function _Debug_todoCase(moduleName, region, value)
{
	return function(message) {
		_Debug_crash(9, moduleName, region, value, message);
	};
}


// TO STRING

function _Debug_toString_UNUSED(value)
{
	return '<internals>';
}

function _Debug_toString(value)
{
	return _Debug_toAnsiString(false, value);
}

function _Debug_toAnsiString(ansi, value)
{
	if (typeof value === 'function')
	{
		return _Debug_internalColor(ansi, '<function>');
	}

	if (typeof value === 'boolean')
	{
		return _Debug_ctorColor(ansi, value ? 'True' : 'False');
	}

	if (typeof value === 'number')
	{
		return _Debug_numberColor(ansi, value + '');
	}

	if (value instanceof String)
	{
		return _Debug_charColor(ansi, "'" + _Debug_addSlashes(value, true) + "'");
	}

	if (typeof value === 'string')
	{
		return _Debug_stringColor(ansi, '"' + _Debug_addSlashes(value, false) + '"');
	}

	if (typeof value === 'object' && '$' in value)
	{
		var tag = value.$;

		if (typeof tag === 'number')
		{
			return _Debug_internalColor(ansi, '<internals>');
		}

		if (tag[0] === '#')
		{
			var output = [];
			for (var k in value)
			{
				if (k === '$') continue;
				output.push(_Debug_toAnsiString(ansi, value[k]));
			}
			return '(' + output.join(',') + ')';
		}

		if (tag === 'Set_elm_builtin')
		{
			return _Debug_ctorColor(ansi, 'Set')
				+ _Debug_fadeColor(ansi, '.fromList') + ' '
				+ _Debug_toAnsiString(ansi, $elm$core$Set$toList(value));
		}

		if (tag === 'RBNode_elm_builtin' || tag === 'RBEmpty_elm_builtin')
		{
			return _Debug_ctorColor(ansi, 'Dict')
				+ _Debug_fadeColor(ansi, '.fromList') + ' '
				+ _Debug_toAnsiString(ansi, $elm$core$Dict$toList(value));
		}

		if (tag === 'Array_elm_builtin')
		{
			return _Debug_ctorColor(ansi, 'Array')
				+ _Debug_fadeColor(ansi, '.fromList') + ' '
				+ _Debug_toAnsiString(ansi, $elm$core$Array$toList(value));
		}

		if (tag === '::' || tag === '[]')
		{
			var output = '[';

			value.b && (output += _Debug_toAnsiString(ansi, value.a), value = value.b)

			for (; value.b; value = value.b) // WHILE_CONS
			{
				output += ',' + _Debug_toAnsiString(ansi, value.a);
			}
			return output + ']';
		}

		var output = '';
		for (var i in value)
		{
			if (i === '$') continue;
			var str = _Debug_toAnsiString(ansi, value[i]);
			var c0 = str[0];
			var parenless = c0 === '{' || c0 === '(' || c0 === '[' || c0 === '<' || c0 === '"' || str.indexOf(' ') < 0;
			output += ' ' + (parenless ? str : '(' + str + ')');
		}
		return _Debug_ctorColor(ansi, tag) + output;
	}

	if (typeof DataView === 'function' && value instanceof DataView)
	{
		return _Debug_stringColor(ansi, '<' + value.byteLength + ' bytes>');
	}

	if (typeof File !== 'undefined' && value instanceof File)
	{
		return _Debug_internalColor(ansi, '<' + value.name + '>');
	}

	if (typeof value === 'object')
	{
		var output = [];
		for (var key in value)
		{
			var field = key[0] === '_' ? key.slice(1) : key;
			output.push(_Debug_fadeColor(ansi, field) + ' = ' + _Debug_toAnsiString(ansi, value[key]));
		}
		if (output.length === 0)
		{
			return '{}';
		}
		return '{ ' + output.join(', ') + ' }';
	}

	return _Debug_internalColor(ansi, '<internals>');
}

function _Debug_addSlashes(str, isChar)
{
	var s = str
		.replace(/\\/g, '\\\\')
		.replace(/\n/g, '\\n')
		.replace(/\t/g, '\\t')
		.replace(/\r/g, '\\r')
		.replace(/\v/g, '\\v')
		.replace(/\0/g, '\\0');

	if (isChar)
	{
		return s.replace(/\'/g, '\\\'');
	}
	else
	{
		return s.replace(/\"/g, '\\"');
	}
}

function _Debug_ctorColor(ansi, string)
{
	return ansi ? '\x1b[96m' + string + '\x1b[0m' : string;
}

function _Debug_numberColor(ansi, string)
{
	return ansi ? '\x1b[95m' + string + '\x1b[0m' : string;
}

function _Debug_stringColor(ansi, string)
{
	return ansi ? '\x1b[93m' + string + '\x1b[0m' : string;
}

function _Debug_charColor(ansi, string)
{
	return ansi ? '\x1b[92m' + string + '\x1b[0m' : string;
}

function _Debug_fadeColor(ansi, string)
{
	return ansi ? '\x1b[37m' + string + '\x1b[0m' : string;
}

function _Debug_internalColor(ansi, string)
{
	return ansi ? '\x1b[36m' + string + '\x1b[0m' : string;
}

function _Debug_toHexDigit(n)
{
	return String.fromCharCode(n < 10 ? 48 + n : 55 + n);
}


// CRASH


function _Debug_crash_UNUSED(identifier)
{
	throw new Error('https://github.com/elm/core/blob/1.0.0/hints/' + identifier + '.md');
}


function _Debug_crash(identifier, fact1, fact2, fact3, fact4)
{
	switch(identifier)
	{
		case 0:
			throw new Error('What node should I take over? In JavaScript I need something like:\n\n    Elm.Main.init({\n        node: document.getElementById("elm-node")\n    })\n\nYou need to do this with any Browser.sandbox or Browser.element program.');

		case 1:
			throw new Error('Browser.application programs cannot handle URLs like this:\n\n    ' + document.location.href + '\n\nWhat is the root? The root of your file system? Try looking at this program with `elm reactor` or some other server.');

		case 2:
			var jsonErrorString = fact1;
			throw new Error('Problem with the flags given to your Elm program on initialization.\n\n' + jsonErrorString);

		case 3:
			var portName = fact1;
			throw new Error('There can only be one port named `' + portName + '`, but your program has multiple.');

		case 4:
			var portName = fact1;
			var problem = fact2;
			throw new Error('Trying to send an unexpected type of value through port `' + portName + '`:\n' + problem);

		case 5:
			throw new Error('Trying to use `(==)` on functions.\nThere is no way to know if functions are "the same" in the Elm sense.\nRead more about this at https://package.elm-lang.org/packages/elm/core/latest/Basics#== which describes why it is this way and what the better version will look like.');

		case 6:
			var moduleName = fact1;
			throw new Error('Your page is loading multiple Elm scripts with a module named ' + moduleName + '. Maybe a duplicate script is getting loaded accidentally? If not, rename one of them so I know which is which!');

		case 8:
			var moduleName = fact1;
			var region = fact2;
			var message = fact3;
			throw new Error('TODO in module `' + moduleName + '` ' + _Debug_regionToString(region) + '\n\n' + message);

		case 9:
			var moduleName = fact1;
			var region = fact2;
			var value = fact3;
			var message = fact4;
			throw new Error(
				'TODO in module `' + moduleName + '` from the `case` expression '
				+ _Debug_regionToString(region) + '\n\nIt received the following value:\n\n    '
				+ _Debug_toString(value).replace('\n', '\n    ')
				+ '\n\nBut the branch that handles it says:\n\n    ' + message.replace('\n', '\n    ')
			);

		case 10:
			throw new Error('Bug in https://github.com/elm/virtual-dom/issues');

		case 11:
			throw new Error('Cannot perform mod 0. Division by zero error.');
	}
}

function _Debug_regionToString(region)
{
	if (region.start.line === region.end.line)
	{
		return 'on line ' + region.start.line;
	}
	return 'on lines ' + region.start.line + ' through ' + region.end.line;
}



// MATH

var _Basics_add = F2(function(a, b) { return a + b; });
var _Basics_sub = F2(function(a, b) { return a - b; });
var _Basics_mul = F2(function(a, b) { return a * b; });
var _Basics_fdiv = F2(function(a, b) { return a / b; });
var _Basics_idiv = F2(function(a, b) { return (a / b) | 0; });
var _Basics_pow = F2(Math.pow);

var _Basics_remainderBy = F2(function(b, a) { return a % b; });

// https://www.microsoft.com/en-us/research/wp-content/uploads/2016/02/divmodnote-letter.pdf
var _Basics_modBy = F2(function(modulus, x)
{
	var answer = x % modulus;
	return modulus === 0
		? _Debug_crash(11)
		:
	((answer > 0 && modulus < 0) || (answer < 0 && modulus > 0))
		? answer + modulus
		: answer;
});


// TRIGONOMETRY

var _Basics_pi = Math.PI;
var _Basics_e = Math.E;
var _Basics_cos = Math.cos;
var _Basics_sin = Math.sin;
var _Basics_tan = Math.tan;
var _Basics_acos = Math.acos;
var _Basics_asin = Math.asin;
var _Basics_atan = Math.atan;
var _Basics_atan2 = F2(Math.atan2);


// MORE MATH

function _Basics_toFloat(x) { return x; }
function _Basics_truncate(n) { return n | 0; }
function _Basics_isInfinite(n) { return n === Infinity || n === -Infinity; }

var _Basics_ceiling = Math.ceil;
var _Basics_floor = Math.floor;
var _Basics_round = Math.round;
var _Basics_sqrt = Math.sqrt;
var _Basics_log = Math.log;
var _Basics_isNaN = isNaN;


// BOOLEANS

function _Basics_not(bool) { return !bool; }
var _Basics_and = F2(function(a, b) { return a && b; });
var _Basics_or  = F2(function(a, b) { return a || b; });
var _Basics_xor = F2(function(a, b) { return a !== b; });



var _String_cons = F2(function(chr, str)
{
	return chr + str;
});

function _String_uncons(string)
{
	var word = string.charCodeAt(0);
	return !isNaN(word)
		? $elm$core$Maybe$Just(
			0xD800 <= word && word <= 0xDBFF
				? _Utils_Tuple2(_Utils_chr(string[0] + string[1]), string.slice(2))
				: _Utils_Tuple2(_Utils_chr(string[0]), string.slice(1))
		)
		: $elm$core$Maybe$Nothing;
}

var _String_append = F2(function(a, b)
{
	return a + b;
});

function _String_length(str)
{
	return str.length;
}

var _String_map = F2(function(func, string)
{
	var len = string.length;
	var array = new Array(len);
	var i = 0;
	while (i < len)
	{
		var word = string.charCodeAt(i);
		if (0xD800 <= word && word <= 0xDBFF)
		{
			array[i] = func(_Utils_chr(string[i] + string[i+1]));
			i += 2;
			continue;
		}
		array[i] = func(_Utils_chr(string[i]));
		i++;
	}
	return array.join('');
});

var _String_filter = F2(function(isGood, str)
{
	var arr = [];
	var len = str.length;
	var i = 0;
	while (i < len)
	{
		var char = str[i];
		var word = str.charCodeAt(i);
		i++;
		if (0xD800 <= word && word <= 0xDBFF)
		{
			char += str[i];
			i++;
		}

		if (isGood(_Utils_chr(char)))
		{
			arr.push(char);
		}
	}
	return arr.join('');
});

function _String_reverse(str)
{
	var len = str.length;
	var arr = new Array(len);
	var i = 0;
	while (i < len)
	{
		var word = str.charCodeAt(i);
		if (0xD800 <= word && word <= 0xDBFF)
		{
			arr[len - i] = str[i + 1];
			i++;
			arr[len - i] = str[i - 1];
			i++;
		}
		else
		{
			arr[len - i] = str[i];
			i++;
		}
	}
	return arr.join('');
}

var _String_foldl = F3(function(func, state, string)
{
	var len = string.length;
	var i = 0;
	while (i < len)
	{
		var char = string[i];
		var word = string.charCodeAt(i);
		i++;
		if (0xD800 <= word && word <= 0xDBFF)
		{
			char += string[i];
			i++;
		}
		state = A2(func, _Utils_chr(char), state);
	}
	return state;
});

var _String_foldr = F3(function(func, state, string)
{
	var i = string.length;
	while (i--)
	{
		var char = string[i];
		var word = string.charCodeAt(i);
		if (0xDC00 <= word && word <= 0xDFFF)
		{
			i--;
			char = string[i] + char;
		}
		state = A2(func, _Utils_chr(char), state);
	}
	return state;
});

var _String_split = F2(function(sep, str)
{
	return str.split(sep);
});

var _String_join = F2(function(sep, strs)
{
	return strs.join(sep);
});

var _String_slice = F3(function(start, end, str) {
	return str.slice(start, end);
});

function _String_trim(str)
{
	return str.trim();
}

function _String_trimLeft(str)
{
	return str.replace(/^\s+/, '');
}

function _String_trimRight(str)
{
	return str.replace(/\s+$/, '');
}

function _String_words(str)
{
	return _List_fromArray(str.trim().split(/\s+/g));
}

function _String_lines(str)
{
	return _List_fromArray(str.split(/\r\n|\r|\n/g));
}

function _String_toUpper(str)
{
	return str.toUpperCase();
}

function _String_toLower(str)
{
	return str.toLowerCase();
}

var _String_any = F2(function(isGood, string)
{
	var i = string.length;
	while (i--)
	{
		var char = string[i];
		var word = string.charCodeAt(i);
		if (0xDC00 <= word && word <= 0xDFFF)
		{
			i--;
			char = string[i] + char;
		}
		if (isGood(_Utils_chr(char)))
		{
			return true;
		}
	}
	return false;
});

var _String_all = F2(function(isGood, string)
{
	var i = string.length;
	while (i--)
	{
		var char = string[i];
		var word = string.charCodeAt(i);
		if (0xDC00 <= word && word <= 0xDFFF)
		{
			i--;
			char = string[i] + char;
		}
		if (!isGood(_Utils_chr(char)))
		{
			return false;
		}
	}
	return true;
});

var _String_contains = F2(function(sub, str)
{
	return str.indexOf(sub) > -1;
});

var _String_startsWith = F2(function(sub, str)
{
	return str.indexOf(sub) === 0;
});

var _String_endsWith = F2(function(sub, str)
{
	return str.length >= sub.length &&
		str.lastIndexOf(sub) === str.length - sub.length;
});

var _String_indexes = F2(function(sub, str)
{
	var subLen = sub.length;

	if (subLen < 1)
	{
		return _List_Nil;
	}

	var i = 0;
	var is = [];

	while ((i = str.indexOf(sub, i)) > -1)
	{
		is.push(i);
		i = i + subLen;
	}

	return _List_fromArray(is);
});


// TO STRING

function _String_fromNumber(number)
{
	return number + '';
}


// INT CONVERSIONS

function _String_toInt(str)
{
	var total = 0;
	var code0 = str.charCodeAt(0);
	var start = code0 == 0x2B /* + */ || code0 == 0x2D /* - */ ? 1 : 0;

	for (var i = start; i < str.length; ++i)
	{
		var code = str.charCodeAt(i);
		if (code < 0x30 || 0x39 < code)
		{
			return $elm$core$Maybe$Nothing;
		}
		total = 10 * total + code - 0x30;
	}

	return i == start
		? $elm$core$Maybe$Nothing
		: $elm$core$Maybe$Just(code0 == 0x2D ? -total : total);
}


// FLOAT CONVERSIONS

function _String_toFloat(s)
{
	// check if it is a hex, octal, or binary number
	if (s.length === 0 || /[\sxbo]/.test(s))
	{
		return $elm$core$Maybe$Nothing;
	}
	var n = +s;
	// faster isNaN check
	return n === n ? $elm$core$Maybe$Just(n) : $elm$core$Maybe$Nothing;
}

function _String_fromList(chars)
{
	return _List_toArray(chars).join('');
}




function _Char_toCode(char)
{
	var code = char.charCodeAt(0);
	if (0xD800 <= code && code <= 0xDBFF)
	{
		return (code - 0xD800) * 0x400 + char.charCodeAt(1) - 0xDC00 + 0x10000
	}
	return code;
}

function _Char_fromCode(code)
{
	return _Utils_chr(
		(code < 0 || 0x10FFFF < code)
			? '\uFFFD'
			:
		(code <= 0xFFFF)
			? String.fromCharCode(code)
			:
		(code -= 0x10000,
			String.fromCharCode(Math.floor(code / 0x400) + 0xD800, code % 0x400 + 0xDC00)
		)
	);
}

function _Char_toUpper(char)
{
	return _Utils_chr(char.toUpperCase());
}

function _Char_toLower(char)
{
	return _Utils_chr(char.toLowerCase());
}

function _Char_toLocaleUpper(char)
{
	return _Utils_chr(char.toLocaleUpperCase());
}

function _Char_toLocaleLower(char)
{
	return _Utils_chr(char.toLocaleLowerCase());
}



/**/
function _Json_errorToString(error)
{
	return $elm$json$Json$Decode$errorToString(error);
}
//*/


// CORE DECODERS

function _Json_succeed(msg)
{
	return {
		$: 0,
		a: msg
	};
}

function _Json_fail(msg)
{
	return {
		$: 1,
		a: msg
	};
}

function _Json_decodePrim(decoder)
{
	return { $: 2, b: decoder };
}

var _Json_decodeInt = _Json_decodePrim(function(value) {
	return (typeof value !== 'number')
		? _Json_expecting('an INT', value)
		:
	(-2147483647 < value && value < 2147483647 && (value | 0) === value)
		? $elm$core$Result$Ok(value)
		:
	(isFinite(value) && !(value % 1))
		? $elm$core$Result$Ok(value)
		: _Json_expecting('an INT', value);
});

var _Json_decodeBool = _Json_decodePrim(function(value) {
	return (typeof value === 'boolean')
		? $elm$core$Result$Ok(value)
		: _Json_expecting('a BOOL', value);
});

var _Json_decodeFloat = _Json_decodePrim(function(value) {
	return (typeof value === 'number')
		? $elm$core$Result$Ok(value)
		: _Json_expecting('a FLOAT', value);
});

var _Json_decodeValue = _Json_decodePrim(function(value) {
	return $elm$core$Result$Ok(_Json_wrap(value));
});

var _Json_decodeString = _Json_decodePrim(function(value) {
	return (typeof value === 'string')
		? $elm$core$Result$Ok(value)
		: (value instanceof String)
			? $elm$core$Result$Ok(value + '')
			: _Json_expecting('a STRING', value);
});

function _Json_decodeList(decoder) { return { $: 3, b: decoder }; }
function _Json_decodeArray(decoder) { return { $: 4, b: decoder }; }

function _Json_decodeNull(value) { return { $: 5, c: value }; }

var _Json_decodeField = F2(function(field, decoder)
{
	return {
		$: 6,
		d: field,
		b: decoder
	};
});

var _Json_decodeIndex = F2(function(index, decoder)
{
	return {
		$: 7,
		e: index,
		b: decoder
	};
});

function _Json_decodeKeyValuePairs(decoder)
{
	return {
		$: 8,
		b: decoder
	};
}

function _Json_mapMany(f, decoders)
{
	return {
		$: 9,
		f: f,
		g: decoders
	};
}

var _Json_andThen = F2(function(callback, decoder)
{
	return {
		$: 10,
		b: decoder,
		h: callback
	};
});

function _Json_oneOf(decoders)
{
	return {
		$: 11,
		g: decoders
	};
}


// DECODING OBJECTS

var _Json_map1 = F2(function(f, d1)
{
	return _Json_mapMany(f, [d1]);
});

var _Json_map2 = F3(function(f, d1, d2)
{
	return _Json_mapMany(f, [d1, d2]);
});

var _Json_map3 = F4(function(f, d1, d2, d3)
{
	return _Json_mapMany(f, [d1, d2, d3]);
});

var _Json_map4 = F5(function(f, d1, d2, d3, d4)
{
	return _Json_mapMany(f, [d1, d2, d3, d4]);
});

var _Json_map5 = F6(function(f, d1, d2, d3, d4, d5)
{
	return _Json_mapMany(f, [d1, d2, d3, d4, d5]);
});

var _Json_map6 = F7(function(f, d1, d2, d3, d4, d5, d6)
{
	return _Json_mapMany(f, [d1, d2, d3, d4, d5, d6]);
});

var _Json_map7 = F8(function(f, d1, d2, d3, d4, d5, d6, d7)
{
	return _Json_mapMany(f, [d1, d2, d3, d4, d5, d6, d7]);
});

var _Json_map8 = F9(function(f, d1, d2, d3, d4, d5, d6, d7, d8)
{
	return _Json_mapMany(f, [d1, d2, d3, d4, d5, d6, d7, d8]);
});


// DECODE

var _Json_runOnString = F2(function(decoder, string)
{
	try
	{
		var value = JSON.parse(string);
		return _Json_runHelp(decoder, value);
	}
	catch (e)
	{
		return $elm$core$Result$Err(A2($elm$json$Json$Decode$Failure, 'This is not valid JSON! ' + e.message, _Json_wrap(string)));
	}
});

var _Json_run = F2(function(decoder, value)
{
	return _Json_runHelp(decoder, _Json_unwrap(value));
});

function _Json_runHelp(decoder, value)
{
	switch (decoder.$)
	{
		case 2:
			return decoder.b(value);

		case 5:
			return (value === null)
				? $elm$core$Result$Ok(decoder.c)
				: _Json_expecting('null', value);

		case 3:
			if (!_Json_isArray(value))
			{
				return _Json_expecting('a LIST', value);
			}
			return _Json_runArrayDecoder(decoder.b, value, _List_fromArray);

		case 4:
			if (!_Json_isArray(value))
			{
				return _Json_expecting('an ARRAY', value);
			}
			return _Json_runArrayDecoder(decoder.b, value, _Json_toElmArray);

		case 6:
			var field = decoder.d;
			if (typeof value !== 'object' || value === null || !(field in value))
			{
				return _Json_expecting('an OBJECT with a field named `' + field + '`', value);
			}
			var result = _Json_runHelp(decoder.b, value[field]);
			return ($elm$core$Result$isOk(result)) ? result : $elm$core$Result$Err(A2($elm$json$Json$Decode$Field, field, result.a));

		case 7:
			var index = decoder.e;
			if (!_Json_isArray(value))
			{
				return _Json_expecting('an ARRAY', value);
			}
			if (index >= value.length)
			{
				return _Json_expecting('a LONGER array. Need index ' + index + ' but only see ' + value.length + ' entries', value);
			}
			var result = _Json_runHelp(decoder.b, value[index]);
			return ($elm$core$Result$isOk(result)) ? result : $elm$core$Result$Err(A2($elm$json$Json$Decode$Index, index, result.a));

		case 8:
			if (typeof value !== 'object' || value === null || _Json_isArray(value))
			{
				return _Json_expecting('an OBJECT', value);
			}

			var keyValuePairs = _List_Nil;
			// TODO test perf of Object.keys and switch when support is good enough
			for (var key in value)
			{
				if (value.hasOwnProperty(key))
				{
					var result = _Json_runHelp(decoder.b, value[key]);
					if (!$elm$core$Result$isOk(result))
					{
						return $elm$core$Result$Err(A2($elm$json$Json$Decode$Field, key, result.a));
					}
					keyValuePairs = _List_Cons(_Utils_Tuple2(key, result.a), keyValuePairs);
				}
			}
			return $elm$core$Result$Ok($elm$core$List$reverse(keyValuePairs));

		case 9:
			var answer = decoder.f;
			var decoders = decoder.g;
			for (var i = 0; i < decoders.length; i++)
			{
				var result = _Json_runHelp(decoders[i], value);
				if (!$elm$core$Result$isOk(result))
				{
					return result;
				}
				answer = answer(result.a);
			}
			return $elm$core$Result$Ok(answer);

		case 10:
			var result = _Json_runHelp(decoder.b, value);
			return (!$elm$core$Result$isOk(result))
				? result
				: _Json_runHelp(decoder.h(result.a), value);

		case 11:
			var errors = _List_Nil;
			for (var temp = decoder.g; temp.b; temp = temp.b) // WHILE_CONS
			{
				var result = _Json_runHelp(temp.a, value);
				if ($elm$core$Result$isOk(result))
				{
					return result;
				}
				errors = _List_Cons(result.a, errors);
			}
			return $elm$core$Result$Err($elm$json$Json$Decode$OneOf($elm$core$List$reverse(errors)));

		case 1:
			return $elm$core$Result$Err(A2($elm$json$Json$Decode$Failure, decoder.a, _Json_wrap(value)));

		case 0:
			return $elm$core$Result$Ok(decoder.a);
	}
}

function _Json_runArrayDecoder(decoder, value, toElmValue)
{
	var len = value.length;
	var array = new Array(len);
	for (var i = 0; i < len; i++)
	{
		var result = _Json_runHelp(decoder, value[i]);
		if (!$elm$core$Result$isOk(result))
		{
			return $elm$core$Result$Err(A2($elm$json$Json$Decode$Index, i, result.a));
		}
		array[i] = result.a;
	}
	return $elm$core$Result$Ok(toElmValue(array));
}

function _Json_isArray(value)
{
	return Array.isArray(value) || (typeof FileList !== 'undefined' && value instanceof FileList);
}

function _Json_toElmArray(array)
{
	return A2($elm$core$Array$initialize, array.length, function(i) { return array[i]; });
}

function _Json_expecting(type, value)
{
	return $elm$core$Result$Err(A2($elm$json$Json$Decode$Failure, 'Expecting ' + type, _Json_wrap(value)));
}


// EQUALITY

function _Json_equality(x, y)
{
	if (x === y)
	{
		return true;
	}

	if (x.$ !== y.$)
	{
		return false;
	}

	switch (x.$)
	{
		case 0:
		case 1:
			return x.a === y.a;

		case 2:
			return x.b === y.b;

		case 5:
			return x.c === y.c;

		case 3:
		case 4:
		case 8:
			return _Json_equality(x.b, y.b);

		case 6:
			return x.d === y.d && _Json_equality(x.b, y.b);

		case 7:
			return x.e === y.e && _Json_equality(x.b, y.b);

		case 9:
			return x.f === y.f && _Json_listEquality(x.g, y.g);

		case 10:
			return x.h === y.h && _Json_equality(x.b, y.b);

		case 11:
			return _Json_listEquality(x.g, y.g);
	}
}

function _Json_listEquality(aDecoders, bDecoders)
{
	var len = aDecoders.length;
	if (len !== bDecoders.length)
	{
		return false;
	}
	for (var i = 0; i < len; i++)
	{
		if (!_Json_equality(aDecoders[i], bDecoders[i]))
		{
			return false;
		}
	}
	return true;
}


// ENCODE

var _Json_encode = F2(function(indentLevel, value)
{
	return JSON.stringify(_Json_unwrap(value), null, indentLevel) + '';
});

function _Json_wrap(value) { return { $: 0, a: value }; }
function _Json_unwrap(value) { return value.a; }

function _Json_wrap_UNUSED(value) { return value; }
function _Json_unwrap_UNUSED(value) { return value; }

function _Json_emptyArray() { return []; }
function _Json_emptyObject() { return {}; }

var _Json_addField = F3(function(key, value, object)
{
	object[key] = _Json_unwrap(value);
	return object;
});

function _Json_addEntry(func)
{
	return F2(function(entry, array)
	{
		array.push(_Json_unwrap(func(entry)));
		return array;
	});
}

var _Json_encodeNull = _Json_wrap(null);



// TASKS

function _Scheduler_succeed(value)
{
	return {
		$: 0,
		a: value
	};
}

function _Scheduler_fail(error)
{
	return {
		$: 1,
		a: error
	};
}

function _Scheduler_binding(callback)
{
	return {
		$: 2,
		b: callback,
		c: null
	};
}

var _Scheduler_andThen = F2(function(callback, task)
{
	return {
		$: 3,
		b: callback,
		d: task
	};
});

var _Scheduler_onError = F2(function(callback, task)
{
	return {
		$: 4,
		b: callback,
		d: task
	};
});

function _Scheduler_receive(callback)
{
	return {
		$: 5,
		b: callback
	};
}


// PROCESSES

var _Scheduler_guid = 0;

function _Scheduler_rawSpawn(task)
{
	var proc = {
		$: 0,
		e: _Scheduler_guid++,
		f: task,
		g: null,
		h: []
	};

	_Scheduler_enqueue(proc);

	return proc;
}

function _Scheduler_spawn(task)
{
	return _Scheduler_binding(function(callback) {
		callback(_Scheduler_succeed(_Scheduler_rawSpawn(task)));
	});
}

function _Scheduler_rawSend(proc, msg)
{
	proc.h.push(msg);
	_Scheduler_enqueue(proc);
}

var _Scheduler_send = F2(function(proc, msg)
{
	return _Scheduler_binding(function(callback) {
		_Scheduler_rawSend(proc, msg);
		callback(_Scheduler_succeed(_Utils_Tuple0));
	});
});

function _Scheduler_kill(proc)
{
	return _Scheduler_binding(function(callback) {
		var task = proc.f;
		if (task.$ === 2 && task.c)
		{
			task.c();
		}

		proc.f = null;

		callback(_Scheduler_succeed(_Utils_Tuple0));
	});
}


/* STEP PROCESSES

type alias Process =
  { $ : tag
  , id : unique_id
  , root : Task
  , stack : null | { $: SUCCEED | FAIL, a: callback, b: stack }
  , mailbox : [msg]
  }

*/


var _Scheduler_working = false;
var _Scheduler_queue = [];


function _Scheduler_enqueue(proc)
{
	_Scheduler_queue.push(proc);
	if (_Scheduler_working)
	{
		return;
	}
	_Scheduler_working = true;
	while (proc = _Scheduler_queue.shift())
	{
		_Scheduler_step(proc);
	}
	_Scheduler_working = false;
}


function _Scheduler_step(proc)
{
	while (proc.f)
	{
		var rootTag = proc.f.$;
		if (rootTag === 0 || rootTag === 1)
		{
			while (proc.g && proc.g.$ !== rootTag)
			{
				proc.g = proc.g.i;
			}
			if (!proc.g)
			{
				return;
			}
			proc.f = proc.g.b(proc.f.a);
			proc.g = proc.g.i;
		}
		else if (rootTag === 2)
		{
			proc.f.c = proc.f.b(function(newRoot) {
				proc.f = newRoot;
				_Scheduler_enqueue(proc);
			});
			return;
		}
		else if (rootTag === 5)
		{
			if (proc.h.length === 0)
			{
				return;
			}
			proc.f = proc.f.b(proc.h.shift());
		}
		else // if (rootTag === 3 || rootTag === 4)
		{
			proc.g = {
				$: rootTag === 3 ? 0 : 1,
				b: proc.f.b,
				i: proc.g
			};
			proc.f = proc.f.d;
		}
	}
}



function _Process_sleep(time)
{
	return _Scheduler_binding(function(callback) {
		var id = setTimeout(function() {
			callback(_Scheduler_succeed(_Utils_Tuple0));
		}, time);

		return function() { clearTimeout(id); };
	});
}




// PROGRAMS


var _Platform_worker = F4(function(impl, flagDecoder, debugMetadata, args)
{
	return _Platform_initialize(
		flagDecoder,
		args,
		impl.init,
		impl.update,
		impl.subscriptions,
		function() { return function() {} }
	);
});



// INITIALIZE A PROGRAM


function _Platform_initialize(flagDecoder, args, init, update, subscriptions, stepperBuilder)
{
	var result = A2(_Json_run, flagDecoder, _Json_wrap(args ? args['flags'] : undefined));
	$elm$core$Result$isOk(result) || _Debug_crash(2 /**/, _Json_errorToString(result.a) /**/);
	var managers = {};
	var initPair = init(result.a);
	var model = initPair.a;
	var stepper = stepperBuilder(sendToApp, model);
	var ports = _Platform_setupEffects(managers, sendToApp);

	function sendToApp(msg, viewMetadata)
	{
		var pair = A2(update, msg, model);
		stepper(model = pair.a, viewMetadata);
		_Platform_enqueueEffects(managers, pair.b, subscriptions(model));
	}

	_Platform_enqueueEffects(managers, initPair.b, subscriptions(model));

	return ports ? { ports: ports } : {};
}



// TRACK PRELOADS
//
// This is used by code in elm/browser and elm/http
// to register any HTTP requests that are triggered by init.
//


var _Platform_preload;


function _Platform_registerPreload(url)
{
	_Platform_preload.add(url);
}



// EFFECT MANAGERS


var _Platform_effectManagers = {};


function _Platform_setupEffects(managers, sendToApp)
{
	var ports;

	// setup all necessary effect managers
	for (var key in _Platform_effectManagers)
	{
		var manager = _Platform_effectManagers[key];

		if (manager.a)
		{
			ports = ports || {};
			ports[key] = manager.a(key, sendToApp);
		}

		managers[key] = _Platform_instantiateManager(manager, sendToApp);
	}

	return ports;
}


function _Platform_createManager(init, onEffects, onSelfMsg, cmdMap, subMap)
{
	return {
		b: init,
		c: onEffects,
		d: onSelfMsg,
		e: cmdMap,
		f: subMap
	};
}


function _Platform_instantiateManager(info, sendToApp)
{
	var router = {
		g: sendToApp,
		h: undefined
	};

	var onEffects = info.c;
	var onSelfMsg = info.d;
	var cmdMap = info.e;
	var subMap = info.f;

	function loop(state)
	{
		return A2(_Scheduler_andThen, loop, _Scheduler_receive(function(msg)
		{
			var value = msg.a;

			if (msg.$ === 0)
			{
				return A3(onSelfMsg, router, value, state);
			}

			return cmdMap && subMap
				? A4(onEffects, router, value.i, value.j, state)
				: A3(onEffects, router, cmdMap ? value.i : value.j, state);
		}));
	}

	return router.h = _Scheduler_rawSpawn(A2(_Scheduler_andThen, loop, info.b));
}



// ROUTING


var _Platform_sendToApp = F2(function(router, msg)
{
	return _Scheduler_binding(function(callback)
	{
		router.g(msg);
		callback(_Scheduler_succeed(_Utils_Tuple0));
	});
});


var _Platform_sendToSelf = F2(function(router, msg)
{
	return A2(_Scheduler_send, router.h, {
		$: 0,
		a: msg
	});
});



// BAGS


function _Platform_leaf(home)
{
	return function(value)
	{
		return {
			$: 1,
			k: home,
			l: value
		};
	};
}


function _Platform_batch(list)
{
	return {
		$: 2,
		m: list
	};
}


var _Platform_map = F2(function(tagger, bag)
{
	return {
		$: 3,
		n: tagger,
		o: bag
	}
});



// PIPE BAGS INTO EFFECT MANAGERS
//
// Effects must be queued!
//
// Say your init contains a synchronous command, like Time.now or Time.here
//
//   - This will produce a batch of effects (FX_1)
//   - The synchronous task triggers the subsequent `update` call
//   - This will produce a batch of effects (FX_2)
//
// If we just start dispatching FX_2, subscriptions from FX_2 can be processed
// before subscriptions from FX_1. No good! Earlier versions of this code had
// this problem, leading to these reports:
//
//   https://github.com/elm/core/issues/980
//   https://github.com/elm/core/pull/981
//   https://github.com/elm/compiler/issues/1776
//
// The queue is necessary to avoid ordering issues for synchronous commands.


// Why use true/false here? Why not just check the length of the queue?
// The goal is to detect "are we currently dispatching effects?" If we
// are, we need to bail and let the ongoing while loop handle things.
//
// Now say the queue has 1 element. When we dequeue the final element,
// the queue will be empty, but we are still actively dispatching effects.
// So you could get queue jumping in a really tricky category of cases.
//
var _Platform_effectsQueue = [];
var _Platform_effectsActive = false;


function _Platform_enqueueEffects(managers, cmdBag, subBag)
{
	_Platform_effectsQueue.push({ p: managers, q: cmdBag, r: subBag });

	if (_Platform_effectsActive) return;

	_Platform_effectsActive = true;
	for (var fx; fx = _Platform_effectsQueue.shift(); )
	{
		_Platform_dispatchEffects(fx.p, fx.q, fx.r);
	}
	_Platform_effectsActive = false;
}


function _Platform_dispatchEffects(managers, cmdBag, subBag)
{
	var effectsDict = {};
	_Platform_gatherEffects(true, cmdBag, effectsDict, null);
	_Platform_gatherEffects(false, subBag, effectsDict, null);

	for (var home in managers)
	{
		_Scheduler_rawSend(managers[home], {
			$: 'fx',
			a: effectsDict[home] || { i: _List_Nil, j: _List_Nil }
		});
	}
}


function _Platform_gatherEffects(isCmd, bag, effectsDict, taggers)
{
	switch (bag.$)
	{
		case 1:
			var home = bag.k;
			var effect = _Platform_toEffect(isCmd, home, taggers, bag.l);
			effectsDict[home] = _Platform_insert(isCmd, effect, effectsDict[home]);
			return;

		case 2:
			for (var list = bag.m; list.b; list = list.b) // WHILE_CONS
			{
				_Platform_gatherEffects(isCmd, list.a, effectsDict, taggers);
			}
			return;

		case 3:
			_Platform_gatherEffects(isCmd, bag.o, effectsDict, {
				s: bag.n,
				t: taggers
			});
			return;
	}
}


function _Platform_toEffect(isCmd, home, taggers, value)
{
	function applyTaggers(x)
	{
		for (var temp = taggers; temp; temp = temp.t)
		{
			x = temp.s(x);
		}
		return x;
	}

	var map = isCmd
		? _Platform_effectManagers[home].e
		: _Platform_effectManagers[home].f;

	return A2(map, applyTaggers, value)
}


function _Platform_insert(isCmd, newEffect, effects)
{
	effects = effects || { i: _List_Nil, j: _List_Nil };

	isCmd
		? (effects.i = _List_Cons(newEffect, effects.i))
		: (effects.j = _List_Cons(newEffect, effects.j));

	return effects;
}



// PORTS


function _Platform_checkPortName(name)
{
	if (_Platform_effectManagers[name])
	{
		_Debug_crash(3, name)
	}
}



// OUTGOING PORTS


function _Platform_outgoingPort(name, converter)
{
	_Platform_checkPortName(name);
	_Platform_effectManagers[name] = {
		e: _Platform_outgoingPortMap,
		u: converter,
		a: _Platform_setupOutgoingPort
	};
	return _Platform_leaf(name);
}


var _Platform_outgoingPortMap = F2(function(tagger, value) { return value; });


function _Platform_setupOutgoingPort(name)
{
	var subs = [];
	var converter = _Platform_effectManagers[name].u;

	// CREATE MANAGER

	var init = _Process_sleep(0);

	_Platform_effectManagers[name].b = init;
	_Platform_effectManagers[name].c = F3(function(router, cmdList, state)
	{
		for ( ; cmdList.b; cmdList = cmdList.b) // WHILE_CONS
		{
			// grab a separate reference to subs in case unsubscribe is called
			var currentSubs = subs;
			var value = _Json_unwrap(converter(cmdList.a));
			for (var i = 0; i < currentSubs.length; i++)
			{
				currentSubs[i](value);
			}
		}
		return init;
	});

	// PUBLIC API

	function subscribe(callback)
	{
		subs.push(callback);
	}

	function unsubscribe(callback)
	{
		// copy subs into a new array in case unsubscribe is called within a
		// subscribed callback
		subs = subs.slice();
		var index = subs.indexOf(callback);
		if (index >= 0)
		{
			subs.splice(index, 1);
		}
	}

	return {
		subscribe: subscribe,
		unsubscribe: unsubscribe
	};
}



// INCOMING PORTS


function _Platform_incomingPort(name, converter)
{
	_Platform_checkPortName(name);
	_Platform_effectManagers[name] = {
		f: _Platform_incomingPortMap,
		u: converter,
		a: _Platform_setupIncomingPort
	};
	return _Platform_leaf(name);
}


var _Platform_incomingPortMap = F2(function(tagger, finalTagger)
{
	return function(value)
	{
		return tagger(finalTagger(value));
	};
});


function _Platform_setupIncomingPort(name, sendToApp)
{
	var subs = _List_Nil;
	var converter = _Platform_effectManagers[name].u;

	// CREATE MANAGER

	var init = _Scheduler_succeed(null);

	_Platform_effectManagers[name].b = init;
	_Platform_effectManagers[name].c = F3(function(router, subList, state)
	{
		subs = subList;
		return init;
	});

	// PUBLIC API

	function send(incomingValue)
	{
		var result = A2(_Json_run, converter, _Json_wrap(incomingValue));

		$elm$core$Result$isOk(result) || _Debug_crash(4, name, result.a);

		var value = result.a;
		for (var temp = subs; temp.b; temp = temp.b) // WHILE_CONS
		{
			sendToApp(temp.a(value));
		}
	}

	return { send: send };
}



// EXPORT ELM MODULES
//
// Have DEBUG and PROD versions so that we can (1) give nicer errors in
// debug mode and (2) not pay for the bits needed for that in prod mode.
//


function _Platform_export_UNUSED(exports)
{
	scope['Elm']
		? _Platform_mergeExportsProd(scope['Elm'], exports)
		: scope['Elm'] = exports;
}


function _Platform_mergeExportsProd(obj, exports)
{
	for (var name in exports)
	{
		(name in obj)
			? (name == 'init')
				? _Debug_crash(6)
				: _Platform_mergeExportsProd(obj[name], exports[name])
			: (obj[name] = exports[name]);
	}
}


function _Platform_export(exports)
{
	scope['Elm']
		? _Platform_mergeExportsDebug('Elm', scope['Elm'], exports)
		: scope['Elm'] = exports;
}


function _Platform_mergeExportsDebug(moduleName, obj, exports)
{
	for (var name in exports)
	{
		(name in obj)
			? (name == 'init')
				? _Debug_crash(6, moduleName)
				: _Platform_mergeExportsDebug(moduleName + '.' + name, obj[name], exports[name])
			: (obj[name] = exports[name]);
	}
}




// HELPERS


var _VirtualDom_divertHrefToApp;

var _VirtualDom_doc = typeof document !== 'undefined' ? document : {};


function _VirtualDom_appendChild(parent, child)
{
	parent.appendChild(child);
}

var _VirtualDom_init = F4(function(virtualNode, flagDecoder, debugMetadata, args)
{
	// NOTE: this function needs _Platform_export available to work

	/**_UNUSED/
	var node = args['node'];
	//*/
	/**/
	var node = args && args['node'] ? args['node'] : _Debug_crash(0);
	//*/

	node.parentNode.replaceChild(
		_VirtualDom_render(virtualNode, function() {}),
		node
	);

	return {};
});



// TEXT


function _VirtualDom_text(string)
{
	return {
		$: 0,
		a: string
	};
}



// NODE


var _VirtualDom_nodeNS = F2(function(namespace, tag)
{
	return F2(function(factList, kidList)
	{
		for (var kids = [], descendantsCount = 0; kidList.b; kidList = kidList.b) // WHILE_CONS
		{
			var kid = kidList.a;
			descendantsCount += (kid.b || 0);
			kids.push(kid);
		}
		descendantsCount += kids.length;

		return {
			$: 1,
			c: tag,
			d: _VirtualDom_organizeFacts(factList),
			e: kids,
			f: namespace,
			b: descendantsCount
		};
	});
});


var _VirtualDom_node = _VirtualDom_nodeNS(undefined);



// KEYED NODE


var _VirtualDom_keyedNodeNS = F2(function(namespace, tag)
{
	return F2(function(factList, kidList)
	{
		for (var kids = [], descendantsCount = 0; kidList.b; kidList = kidList.b) // WHILE_CONS
		{
			var kid = kidList.a;
			descendantsCount += (kid.b.b || 0);
			kids.push(kid);
		}
		descendantsCount += kids.length;

		return {
			$: 2,
			c: tag,
			d: _VirtualDom_organizeFacts(factList),
			e: kids,
			f: namespace,
			b: descendantsCount
		};
	});
});


var _VirtualDom_keyedNode = _VirtualDom_keyedNodeNS(undefined);



// CUSTOM


function _VirtualDom_custom(factList, model, render, diff)
{
	return {
		$: 3,
		d: _VirtualDom_organizeFacts(factList),
		g: model,
		h: render,
		i: diff
	};
}



// MAP


var _VirtualDom_map = F2(function(tagger, node)
{
	return {
		$: 4,
		j: tagger,
		k: node,
		b: 1 + (node.b || 0)
	};
});



// LAZY


function _VirtualDom_thunk(refs, thunk)
{
	return {
		$: 5,
		l: refs,
		m: thunk,
		k: undefined
	};
}

var _VirtualDom_lazy = F2(function(func, a)
{
	return _VirtualDom_thunk([func, a], function() {
		return func(a);
	});
});

var _VirtualDom_lazy2 = F3(function(func, a, b)
{
	return _VirtualDom_thunk([func, a, b], function() {
		return A2(func, a, b);
	});
});

var _VirtualDom_lazy3 = F4(function(func, a, b, c)
{
	return _VirtualDom_thunk([func, a, b, c], function() {
		return A3(func, a, b, c);
	});
});

var _VirtualDom_lazy4 = F5(function(func, a, b, c, d)
{
	return _VirtualDom_thunk([func, a, b, c, d], function() {
		return A4(func, a, b, c, d);
	});
});

var _VirtualDom_lazy5 = F6(function(func, a, b, c, d, e)
{
	return _VirtualDom_thunk([func, a, b, c, d, e], function() {
		return A5(func, a, b, c, d, e);
	});
});

var _VirtualDom_lazy6 = F7(function(func, a, b, c, d, e, f)
{
	return _VirtualDom_thunk([func, a, b, c, d, e, f], function() {
		return A6(func, a, b, c, d, e, f);
	});
});

var _VirtualDom_lazy7 = F8(function(func, a, b, c, d, e, f, g)
{
	return _VirtualDom_thunk([func, a, b, c, d, e, f, g], function() {
		return A7(func, a, b, c, d, e, f, g);
	});
});

var _VirtualDom_lazy8 = F9(function(func, a, b, c, d, e, f, g, h)
{
	return _VirtualDom_thunk([func, a, b, c, d, e, f, g, h], function() {
		return A8(func, a, b, c, d, e, f, g, h);
	});
});



// FACTS


var _VirtualDom_on = F2(function(key, handler)
{
	return {
		$: 'a0',
		n: key,
		o: handler
	};
});
var _VirtualDom_style = F2(function(key, value)
{
	return {
		$: 'a1',
		n: key,
		o: value
	};
});
var _VirtualDom_property = F2(function(key, value)
{
	return {
		$: 'a2',
		n: key,
		o: value
	};
});
var _VirtualDom_attribute = F2(function(key, value)
{
	return {
		$: 'a3',
		n: key,
		o: value
	};
});
var _VirtualDom_attributeNS = F3(function(namespace, key, value)
{
	return {
		$: 'a4',
		n: key,
		o: { f: namespace, o: value }
	};
});



// XSS ATTACK VECTOR CHECKS
//
// For some reason, tabs can appear in href protocols and it still works.
// So '\tjava\tSCRIPT:alert("!!!")' and 'javascript:alert("!!!")' are the same
// in practice. That is why _VirtualDom_RE_js and _VirtualDom_RE_js_html look
// so freaky.
//
// Pulling the regular expressions out to the top level gives a slight speed
// boost in small benchmarks (4-10%) but hoisting values to reduce allocation
// can be unpredictable in large programs where JIT may have a harder time with
// functions are not fully self-contained. The benefit is more that the js and
// js_html ones are so weird that I prefer to see them near each other.


var _VirtualDom_RE_script = /^script$/i;
var _VirtualDom_RE_on_formAction = /^(on|formAction$)/i;
var _VirtualDom_RE_js = /^\s*j\s*a\s*v\s*a\s*s\s*c\s*r\s*i\s*p\s*t\s*:/i;
var _VirtualDom_RE_js_html = /^\s*(j\s*a\s*v\s*a\s*s\s*c\s*r\s*i\s*p\s*t\s*:|d\s*a\s*t\s*a\s*:\s*t\s*e\s*x\s*t\s*\/\s*h\s*t\s*m\s*l\s*(,|;))/i;


function _VirtualDom_noScript(tag)
{
	return _VirtualDom_RE_script.test(tag) ? 'p' : tag;
}

function _VirtualDom_noOnOrFormAction(key)
{
	return _VirtualDom_RE_on_formAction.test(key) ? 'data-' + key : key;
}

function _VirtualDom_noInnerHtmlOrFormAction(key)
{
	return key == 'innerHTML' || key == 'formAction' ? 'data-' + key : key;
}

function _VirtualDom_noJavaScriptUri(value)
{
	return _VirtualDom_RE_js.test(value)
		? /**_UNUSED/''//*//**/'javascript:alert("This is an XSS vector. Please use ports or web components instead.")'//*/
		: value;
}

function _VirtualDom_noJavaScriptOrHtmlUri(value)
{
	return _VirtualDom_RE_js_html.test(value)
		? /**_UNUSED/''//*//**/'javascript:alert("This is an XSS vector. Please use ports or web components instead.")'//*/
		: value;
}

function _VirtualDom_noJavaScriptOrHtmlJson(value)
{
	return (typeof _Json_unwrap(value) === 'string' && _VirtualDom_RE_js_html.test(_Json_unwrap(value)))
		? _Json_wrap(
			/**_UNUSED/''//*//**/'javascript:alert("This is an XSS vector. Please use ports or web components instead.")'//*/
		) : value;
}



// MAP FACTS


var _VirtualDom_mapAttribute = F2(function(func, attr)
{
	return (attr.$ === 'a0')
		? A2(_VirtualDom_on, attr.n, _VirtualDom_mapHandler(func, attr.o))
		: attr;
});

function _VirtualDom_mapHandler(func, handler)
{
	var tag = $elm$virtual_dom$VirtualDom$toHandlerInt(handler);

	// 0 = Normal
	// 1 = MayStopPropagation
	// 2 = MayPreventDefault
	// 3 = Custom

	return {
		$: handler.$,
		a:
			!tag
				? A2($elm$json$Json$Decode$map, func, handler.a)
				:
			A3($elm$json$Json$Decode$map2,
				tag < 3
					? _VirtualDom_mapEventTuple
					: _VirtualDom_mapEventRecord,
				$elm$json$Json$Decode$succeed(func),
				handler.a
			)
	};
}

var _VirtualDom_mapEventTuple = F2(function(func, tuple)
{
	return _Utils_Tuple2(func(tuple.a), tuple.b);
});

var _VirtualDom_mapEventRecord = F2(function(func, record)
{
	return {
		message: func(record.message),
		stopPropagation: record.stopPropagation,
		preventDefault: record.preventDefault
	}
});



// ORGANIZE FACTS


function _VirtualDom_organizeFacts(factList)
{
	for (var facts = {}; factList.b; factList = factList.b) // WHILE_CONS
	{
		var entry = factList.a;

		var tag = entry.$;
		var key = entry.n;
		var value = entry.o;

		if (tag === 'a2')
		{
			(key === 'className')
				? _VirtualDom_addClass(facts, key, _Json_unwrap(value))
				: facts[key] = _Json_unwrap(value);

			continue;
		}

		var subFacts = facts[tag] || (facts[tag] = {});
		(tag === 'a3' && key === 'class')
			? _VirtualDom_addClass(subFacts, key, value)
			: subFacts[key] = value;
	}

	return facts;
}

function _VirtualDom_addClass(object, key, newClass)
{
	var classes = object[key];
	object[key] = classes ? classes + ' ' + newClass : newClass;
}



// RENDER


function _VirtualDom_render(vNode, eventNode)
{
	var tag = vNode.$;

	if (tag === 5)
	{
		return _VirtualDom_render(vNode.k || (vNode.k = vNode.m()), eventNode);
	}

	if (tag === 0)
	{
		return _VirtualDom_doc.createTextNode(vNode.a);
	}

	if (tag === 4)
	{
		var subNode = vNode.k;
		var tagger = vNode.j;

		while (subNode.$ === 4)
		{
			typeof tagger !== 'object'
				? tagger = [tagger, subNode.j]
				: tagger.push(subNode.j);

			subNode = subNode.k;
		}

		var subEventRoot = { j: tagger, p: eventNode };
		var domNode = _VirtualDom_render(subNode, subEventRoot);
		domNode.elm_event_node_ref = subEventRoot;
		return domNode;
	}

	if (tag === 3)
	{
		var domNode = vNode.h(vNode.g);
		_VirtualDom_applyFacts(domNode, eventNode, vNode.d);
		return domNode;
	}

	// at this point `tag` must be 1 or 2

	var domNode = vNode.f
		? _VirtualDom_doc.createElementNS(vNode.f, vNode.c)
		: _VirtualDom_doc.createElement(vNode.c);

	if (_VirtualDom_divertHrefToApp && vNode.c == 'a')
	{
		domNode.addEventListener('click', _VirtualDom_divertHrefToApp(domNode));
	}

	_VirtualDom_applyFacts(domNode, eventNode, vNode.d);

	for (var kids = vNode.e, i = 0; i < kids.length; i++)
	{
		_VirtualDom_appendChild(domNode, _VirtualDom_render(tag === 1 ? kids[i] : kids[i].b, eventNode));
	}

	return domNode;
}



// APPLY FACTS


function _VirtualDom_applyFacts(domNode, eventNode, facts)
{
	for (var key in facts)
	{
		var value = facts[key];

		key === 'a1'
			? _VirtualDom_applyStyles(domNode, value)
			:
		key === 'a0'
			? _VirtualDom_applyEvents(domNode, eventNode, value)
			:
		key === 'a3'
			? _VirtualDom_applyAttrs(domNode, value)
			:
		key === 'a4'
			? _VirtualDom_applyAttrsNS(domNode, value)
			:
		((key !== 'value' && key !== 'checked') || domNode[key] !== value) && (domNode[key] = value);
	}
}



// APPLY STYLES


function _VirtualDom_applyStyles(domNode, styles)
{
	var domNodeStyle = domNode.style;

	for (var key in styles)
	{
		domNodeStyle[key] = styles[key];
	}
}



// APPLY ATTRS


function _VirtualDom_applyAttrs(domNode, attrs)
{
	for (var key in attrs)
	{
		var value = attrs[key];
		typeof value !== 'undefined'
			? domNode.setAttribute(key, value)
			: domNode.removeAttribute(key);
	}
}



// APPLY NAMESPACED ATTRS


function _VirtualDom_applyAttrsNS(domNode, nsAttrs)
{
	for (var key in nsAttrs)
	{
		var pair = nsAttrs[key];
		var namespace = pair.f;
		var value = pair.o;

		typeof value !== 'undefined'
			? domNode.setAttributeNS(namespace, key, value)
			: domNode.removeAttributeNS(namespace, key);
	}
}



// APPLY EVENTS


function _VirtualDom_applyEvents(domNode, eventNode, events)
{
	var allCallbacks = domNode.elmFs || (domNode.elmFs = {});

	for (var key in events)
	{
		var newHandler = events[key];
		var oldCallback = allCallbacks[key];

		if (!newHandler)
		{
			domNode.removeEventListener(key, oldCallback);
			allCallbacks[key] = undefined;
			continue;
		}

		if (oldCallback)
		{
			var oldHandler = oldCallback.q;
			if (oldHandler.$ === newHandler.$)
			{
				oldCallback.q = newHandler;
				continue;
			}
			domNode.removeEventListener(key, oldCallback);
		}

		oldCallback = _VirtualDom_makeCallback(eventNode, newHandler);
		domNode.addEventListener(key, oldCallback,
			_VirtualDom_passiveSupported
			&& { passive: $elm$virtual_dom$VirtualDom$toHandlerInt(newHandler) < 2 }
		);
		allCallbacks[key] = oldCallback;
	}
}



// PASSIVE EVENTS


var _VirtualDom_passiveSupported;

try
{
	window.addEventListener('t', null, Object.defineProperty({}, 'passive', {
		get: function() { _VirtualDom_passiveSupported = true; }
	}));
}
catch(e) {}



// EVENT HANDLERS


function _VirtualDom_makeCallback(eventNode, initialHandler)
{
	function callback(event)
	{
		var handler = callback.q;
		var result = _Json_runHelp(handler.a, event);

		if (!$elm$core$Result$isOk(result))
		{
			return;
		}

		var tag = $elm$virtual_dom$VirtualDom$toHandlerInt(handler);

		// 0 = Normal
		// 1 = MayStopPropagation
		// 2 = MayPreventDefault
		// 3 = Custom

		var value = result.a;
		var message = !tag ? value : tag < 3 ? value.a : value.message;
		var stopPropagation = tag == 1 ? value.b : tag == 3 && value.stopPropagation;
		var currentEventNode = (
			stopPropagation && event.stopPropagation(),
			(tag == 2 ? value.b : tag == 3 && value.preventDefault) && event.preventDefault(),
			eventNode
		);
		var tagger;
		var i;
		while (tagger = currentEventNode.j)
		{
			if (typeof tagger == 'function')
			{
				message = tagger(message);
			}
			else
			{
				for (var i = tagger.length; i--; )
				{
					message = tagger[i](message);
				}
			}
			currentEventNode = currentEventNode.p;
		}
		currentEventNode(message, stopPropagation); // stopPropagation implies isSync
	}

	callback.q = initialHandler;

	return callback;
}

function _VirtualDom_equalEvents(x, y)
{
	return x.$ == y.$ && _Json_equality(x.a, y.a);
}



// DIFF


// TODO: Should we do patches like in iOS?
//
// type Patch
//   = At Int Patch
//   | Batch (List Patch)
//   | Change ...
//
// How could it not be better?
//
function _VirtualDom_diff(x, y)
{
	var patches = [];
	_VirtualDom_diffHelp(x, y, patches, 0);
	return patches;
}


function _VirtualDom_pushPatch(patches, type, index, data)
{
	var patch = {
		$: type,
		r: index,
		s: data,
		t: undefined,
		u: undefined
	};
	patches.push(patch);
	return patch;
}


function _VirtualDom_diffHelp(x, y, patches, index)
{
	if (x === y)
	{
		return;
	}

	var xType = x.$;
	var yType = y.$;

	// Bail if you run into different types of nodes. Implies that the
	// structure has changed significantly and it's not worth a diff.
	if (xType !== yType)
	{
		if (xType === 1 && yType === 2)
		{
			y = _VirtualDom_dekey(y);
			yType = 1;
		}
		else
		{
			_VirtualDom_pushPatch(patches, 0, index, y);
			return;
		}
	}

	// Now we know that both nodes are the same $.
	switch (yType)
	{
		case 5:
			var xRefs = x.l;
			var yRefs = y.l;
			var i = xRefs.length;
			var same = i === yRefs.length;
			while (same && i--)
			{
				same = xRefs[i] === yRefs[i];
			}
			if (same)
			{
				y.k = x.k;
				return;
			}
			y.k = y.m();
			var subPatches = [];
			_VirtualDom_diffHelp(x.k, y.k, subPatches, 0);
			subPatches.length > 0 && _VirtualDom_pushPatch(patches, 1, index, subPatches);
			return;

		case 4:
			// gather nested taggers
			var xTaggers = x.j;
			var yTaggers = y.j;
			var nesting = false;

			var xSubNode = x.k;
			while (xSubNode.$ === 4)
			{
				nesting = true;

				typeof xTaggers !== 'object'
					? xTaggers = [xTaggers, xSubNode.j]
					: xTaggers.push(xSubNode.j);

				xSubNode = xSubNode.k;
			}

			var ySubNode = y.k;
			while (ySubNode.$ === 4)
			{
				nesting = true;

				typeof yTaggers !== 'object'
					? yTaggers = [yTaggers, ySubNode.j]
					: yTaggers.push(ySubNode.j);

				ySubNode = ySubNode.k;
			}

			// Just bail if different numbers of taggers. This implies the
			// structure of the virtual DOM has changed.
			if (nesting && xTaggers.length !== yTaggers.length)
			{
				_VirtualDom_pushPatch(patches, 0, index, y);
				return;
			}

			// check if taggers are "the same"
			if (nesting ? !_VirtualDom_pairwiseRefEqual(xTaggers, yTaggers) : xTaggers !== yTaggers)
			{
				_VirtualDom_pushPatch(patches, 2, index, yTaggers);
			}

			// diff everything below the taggers
			_VirtualDom_diffHelp(xSubNode, ySubNode, patches, index + 1);
			return;

		case 0:
			if (x.a !== y.a)
			{
				_VirtualDom_pushPatch(patches, 3, index, y.a);
			}
			return;

		case 1:
			_VirtualDom_diffNodes(x, y, patches, index, _VirtualDom_diffKids);
			return;

		case 2:
			_VirtualDom_diffNodes(x, y, patches, index, _VirtualDom_diffKeyedKids);
			return;

		case 3:
			if (x.h !== y.h)
			{
				_VirtualDom_pushPatch(patches, 0, index, y);
				return;
			}

			var factsDiff = _VirtualDom_diffFacts(x.d, y.d);
			factsDiff && _VirtualDom_pushPatch(patches, 4, index, factsDiff);

			var patch = y.i(x.g, y.g);
			patch && _VirtualDom_pushPatch(patches, 5, index, patch);

			return;
	}
}

// assumes the incoming arrays are the same length
function _VirtualDom_pairwiseRefEqual(as, bs)
{
	for (var i = 0; i < as.length; i++)
	{
		if (as[i] !== bs[i])
		{
			return false;
		}
	}

	return true;
}

function _VirtualDom_diffNodes(x, y, patches, index, diffKids)
{
	// Bail if obvious indicators have changed. Implies more serious
	// structural changes such that it's not worth it to diff.
	if (x.c !== y.c || x.f !== y.f)
	{
		_VirtualDom_pushPatch(patches, 0, index, y);
		return;
	}

	var factsDiff = _VirtualDom_diffFacts(x.d, y.d);
	factsDiff && _VirtualDom_pushPatch(patches, 4, index, factsDiff);

	diffKids(x, y, patches, index);
}



// DIFF FACTS


// TODO Instead of creating a new diff object, it's possible to just test if
// there *is* a diff. During the actual patch, do the diff again and make the
// modifications directly. This way, there's no new allocations. Worth it?
function _VirtualDom_diffFacts(x, y, category)
{
	var diff;

	// look for changes and removals
	for (var xKey in x)
	{
		if (xKey === 'a1' || xKey === 'a0' || xKey === 'a3' || xKey === 'a4')
		{
			var subDiff = _VirtualDom_diffFacts(x[xKey], y[xKey] || {}, xKey);
			if (subDiff)
			{
				diff = diff || {};
				diff[xKey] = subDiff;
			}
			continue;
		}

		// remove if not in the new facts
		if (!(xKey in y))
		{
			diff = diff || {};
			diff[xKey] =
				!category
					? (typeof x[xKey] === 'string' ? '' : null)
					:
				(category === 'a1')
					? ''
					:
				(category === 'a0' || category === 'a3')
					? undefined
					:
				{ f: x[xKey].f, o: undefined };

			continue;
		}

		var xValue = x[xKey];
		var yValue = y[xKey];

		// reference equal, so don't worry about it
		if (xValue === yValue && xKey !== 'value' && xKey !== 'checked'
			|| category === 'a0' && _VirtualDom_equalEvents(xValue, yValue))
		{
			continue;
		}

		diff = diff || {};
		diff[xKey] = yValue;
	}

	// add new stuff
	for (var yKey in y)
	{
		if (!(yKey in x))
		{
			diff = diff || {};
			diff[yKey] = y[yKey];
		}
	}

	return diff;
}



// DIFF KIDS


function _VirtualDom_diffKids(xParent, yParent, patches, index)
{
	var xKids = xParent.e;
	var yKids = yParent.e;

	var xLen = xKids.length;
	var yLen = yKids.length;

	// FIGURE OUT IF THERE ARE INSERTS OR REMOVALS

	if (xLen > yLen)
	{
		_VirtualDom_pushPatch(patches, 6, index, {
			v: yLen,
			i: xLen - yLen
		});
	}
	else if (xLen < yLen)
	{
		_VirtualDom_pushPatch(patches, 7, index, {
			v: xLen,
			e: yKids
		});
	}

	// PAIRWISE DIFF EVERYTHING ELSE

	for (var minLen = xLen < yLen ? xLen : yLen, i = 0; i < minLen; i++)
	{
		var xKid = xKids[i];
		_VirtualDom_diffHelp(xKid, yKids[i], patches, ++index);
		index += xKid.b || 0;
	}
}



// KEYED DIFF


function _VirtualDom_diffKeyedKids(xParent, yParent, patches, rootIndex)
{
	var localPatches = [];

	var changes = {}; // Dict String Entry
	var inserts = []; // Array { index : Int, entry : Entry }
	// type Entry = { tag : String, vnode : VNode, index : Int, data : _ }

	var xKids = xParent.e;
	var yKids = yParent.e;
	var xLen = xKids.length;
	var yLen = yKids.length;
	var xIndex = 0;
	var yIndex = 0;

	var index = rootIndex;

	while (xIndex < xLen && yIndex < yLen)
	{
		var x = xKids[xIndex];
		var y = yKids[yIndex];

		var xKey = x.a;
		var yKey = y.a;
		var xNode = x.b;
		var yNode = y.b;

		var newMatch = undefined;
		var oldMatch = undefined;

		// check if keys match

		if (xKey === yKey)
		{
			index++;
			_VirtualDom_diffHelp(xNode, yNode, localPatches, index);
			index += xNode.b || 0;

			xIndex++;
			yIndex++;
			continue;
		}

		// look ahead 1 to detect insertions and removals.

		var xNext = xKids[xIndex + 1];
		var yNext = yKids[yIndex + 1];

		if (xNext)
		{
			var xNextKey = xNext.a;
			var xNextNode = xNext.b;
			oldMatch = yKey === xNextKey;
		}

		if (yNext)
		{
			var yNextKey = yNext.a;
			var yNextNode = yNext.b;
			newMatch = xKey === yNextKey;
		}


		// swap x and y
		if (newMatch && oldMatch)
		{
			index++;
			_VirtualDom_diffHelp(xNode, yNextNode, localPatches, index);
			_VirtualDom_insertNode(changes, localPatches, xKey, yNode, yIndex, inserts);
			index += xNode.b || 0;

			index++;
			_VirtualDom_removeNode(changes, localPatches, xKey, xNextNode, index);
			index += xNextNode.b || 0;

			xIndex += 2;
			yIndex += 2;
			continue;
		}

		// insert y
		if (newMatch)
		{
			index++;
			_VirtualDom_insertNode(changes, localPatches, yKey, yNode, yIndex, inserts);
			_VirtualDom_diffHelp(xNode, yNextNode, localPatches, index);
			index += xNode.b || 0;

			xIndex += 1;
			yIndex += 2;
			continue;
		}

		// remove x
		if (oldMatch)
		{
			index++;
			_VirtualDom_removeNode(changes, localPatches, xKey, xNode, index);
			index += xNode.b || 0;

			index++;
			_VirtualDom_diffHelp(xNextNode, yNode, localPatches, index);
			index += xNextNode.b || 0;

			xIndex += 2;
			yIndex += 1;
			continue;
		}

		// remove x, insert y
		if (xNext && xNextKey === yNextKey)
		{
			index++;
			_VirtualDom_removeNode(changes, localPatches, xKey, xNode, index);
			_VirtualDom_insertNode(changes, localPatches, yKey, yNode, yIndex, inserts);
			index += xNode.b || 0;

			index++;
			_VirtualDom_diffHelp(xNextNode, yNextNode, localPatches, index);
			index += xNextNode.b || 0;

			xIndex += 2;
			yIndex += 2;
			continue;
		}

		break;
	}

	// eat up any remaining nodes with removeNode and insertNode

	while (xIndex < xLen)
	{
		index++;
		var x = xKids[xIndex];
		var xNode = x.b;
		_VirtualDom_removeNode(changes, localPatches, x.a, xNode, index);
		index += xNode.b || 0;
		xIndex++;
	}

	while (yIndex < yLen)
	{
		var endInserts = endInserts || [];
		var y = yKids[yIndex];
		_VirtualDom_insertNode(changes, localPatches, y.a, y.b, undefined, endInserts);
		yIndex++;
	}

	if (localPatches.length > 0 || inserts.length > 0 || endInserts)
	{
		_VirtualDom_pushPatch(patches, 8, rootIndex, {
			w: localPatches,
			x: inserts,
			y: endInserts
		});
	}
}



// CHANGES FROM KEYED DIFF


var _VirtualDom_POSTFIX = '_elmW6BL';


function _VirtualDom_insertNode(changes, localPatches, key, vnode, yIndex, inserts)
{
	var entry = changes[key];

	// never seen this key before
	if (!entry)
	{
		entry = {
			c: 0,
			z: vnode,
			r: yIndex,
			s: undefined
		};

		inserts.push({ r: yIndex, A: entry });
		changes[key] = entry;

		return;
	}

	// this key was removed earlier, a match!
	if (entry.c === 1)
	{
		inserts.push({ r: yIndex, A: entry });

		entry.c = 2;
		var subPatches = [];
		_VirtualDom_diffHelp(entry.z, vnode, subPatches, entry.r);
		entry.r = yIndex;
		entry.s.s = {
			w: subPatches,
			A: entry
		};

		return;
	}

	// this key has already been inserted or moved, a duplicate!
	_VirtualDom_insertNode(changes, localPatches, key + _VirtualDom_POSTFIX, vnode, yIndex, inserts);
}


function _VirtualDom_removeNode(changes, localPatches, key, vnode, index)
{
	var entry = changes[key];

	// never seen this key before
	if (!entry)
	{
		var patch = _VirtualDom_pushPatch(localPatches, 9, index, undefined);

		changes[key] = {
			c: 1,
			z: vnode,
			r: index,
			s: patch
		};

		return;
	}

	// this key was inserted earlier, a match!
	if (entry.c === 0)
	{
		entry.c = 2;
		var subPatches = [];
		_VirtualDom_diffHelp(vnode, entry.z, subPatches, index);

		_VirtualDom_pushPatch(localPatches, 9, index, {
			w: subPatches,
			A: entry
		});

		return;
	}

	// this key has already been removed or moved, a duplicate!
	_VirtualDom_removeNode(changes, localPatches, key + _VirtualDom_POSTFIX, vnode, index);
}



// ADD DOM NODES
//
// Each DOM node has an "index" assigned in order of traversal. It is important
// to minimize our crawl over the actual DOM, so these indexes (along with the
// descendantsCount of virtual nodes) let us skip touching entire subtrees of
// the DOM if we know there are no patches there.


function _VirtualDom_addDomNodes(domNode, vNode, patches, eventNode)
{
	_VirtualDom_addDomNodesHelp(domNode, vNode, patches, 0, 0, vNode.b, eventNode);
}


// assumes `patches` is non-empty and indexes increase monotonically.
function _VirtualDom_addDomNodesHelp(domNode, vNode, patches, i, low, high, eventNode)
{
	var patch = patches[i];
	var index = patch.r;

	while (index === low)
	{
		var patchType = patch.$;

		if (patchType === 1)
		{
			_VirtualDom_addDomNodes(domNode, vNode.k, patch.s, eventNode);
		}
		else if (patchType === 8)
		{
			patch.t = domNode;
			patch.u = eventNode;

			var subPatches = patch.s.w;
			if (subPatches.length > 0)
			{
				_VirtualDom_addDomNodesHelp(domNode, vNode, subPatches, 0, low, high, eventNode);
			}
		}
		else if (patchType === 9)
		{
			patch.t = domNode;
			patch.u = eventNode;

			var data = patch.s;
			if (data)
			{
				data.A.s = domNode;
				var subPatches = data.w;
				if (subPatches.length > 0)
				{
					_VirtualDom_addDomNodesHelp(domNode, vNode, subPatches, 0, low, high, eventNode);
				}
			}
		}
		else
		{
			patch.t = domNode;
			patch.u = eventNode;
		}

		i++;

		if (!(patch = patches[i]) || (index = patch.r) > high)
		{
			return i;
		}
	}

	var tag = vNode.$;

	if (tag === 4)
	{
		var subNode = vNode.k;

		while (subNode.$ === 4)
		{
			subNode = subNode.k;
		}

		return _VirtualDom_addDomNodesHelp(domNode, subNode, patches, i, low + 1, high, domNode.elm_event_node_ref);
	}

	// tag must be 1 or 2 at this point

	var vKids = vNode.e;
	var childNodes = domNode.childNodes;
	for (var j = 0; j < vKids.length; j++)
	{
		low++;
		var vKid = tag === 1 ? vKids[j] : vKids[j].b;
		var nextLow = low + (vKid.b || 0);
		if (low <= index && index <= nextLow)
		{
			i = _VirtualDom_addDomNodesHelp(childNodes[j], vKid, patches, i, low, nextLow, eventNode);
			if (!(patch = patches[i]) || (index = patch.r) > high)
			{
				return i;
			}
		}
		low = nextLow;
	}
	return i;
}



// APPLY PATCHES


function _VirtualDom_applyPatches(rootDomNode, oldVirtualNode, patches, eventNode)
{
	if (patches.length === 0)
	{
		return rootDomNode;
	}

	_VirtualDom_addDomNodes(rootDomNode, oldVirtualNode, patches, eventNode);
	return _VirtualDom_applyPatchesHelp(rootDomNode, patches);
}

function _VirtualDom_applyPatchesHelp(rootDomNode, patches)
{
	for (var i = 0; i < patches.length; i++)
	{
		var patch = patches[i];
		var localDomNode = patch.t
		var newNode = _VirtualDom_applyPatch(localDomNode, patch);
		if (localDomNode === rootDomNode)
		{
			rootDomNode = newNode;
		}
	}
	return rootDomNode;
}

function _VirtualDom_applyPatch(domNode, patch)
{
	switch (patch.$)
	{
		case 0:
			return _VirtualDom_applyPatchRedraw(domNode, patch.s, patch.u);

		case 4:
			_VirtualDom_applyFacts(domNode, patch.u, patch.s);
			return domNode;

		case 3:
			domNode.replaceData(0, domNode.length, patch.s);
			return domNode;

		case 1:
			return _VirtualDom_applyPatchesHelp(domNode, patch.s);

		case 2:
			if (domNode.elm_event_node_ref)
			{
				domNode.elm_event_node_ref.j = patch.s;
			}
			else
			{
				domNode.elm_event_node_ref = { j: patch.s, p: patch.u };
			}
			return domNode;

		case 6:
			var data = patch.s;
			for (var i = 0; i < data.i; i++)
			{
				domNode.removeChild(domNode.childNodes[data.v]);
			}
			return domNode;

		case 7:
			var data = patch.s;
			var kids = data.e;
			var i = data.v;
			var theEnd = domNode.childNodes[i];
			for (; i < kids.length; i++)
			{
				domNode.insertBefore(_VirtualDom_render(kids[i], patch.u), theEnd);
			}
			return domNode;

		case 9:
			var data = patch.s;
			if (!data)
			{
				domNode.parentNode.removeChild(domNode);
				return domNode;
			}
			var entry = data.A;
			if (typeof entry.r !== 'undefined')
			{
				domNode.parentNode.removeChild(domNode);
			}
			entry.s = _VirtualDom_applyPatchesHelp(domNode, data.w);
			return domNode;

		case 8:
			return _VirtualDom_applyPatchReorder(domNode, patch);

		case 5:
			return patch.s(domNode);

		default:
			_Debug_crash(10); // 'Ran into an unknown patch!'
	}
}


function _VirtualDom_applyPatchRedraw(domNode, vNode, eventNode)
{
	var parentNode = domNode.parentNode;
	var newNode = _VirtualDom_render(vNode, eventNode);

	if (!newNode.elm_event_node_ref)
	{
		newNode.elm_event_node_ref = domNode.elm_event_node_ref;
	}

	if (parentNode && newNode !== domNode)
	{
		parentNode.replaceChild(newNode, domNode);
	}
	return newNode;
}


function _VirtualDom_applyPatchReorder(domNode, patch)
{
	var data = patch.s;

	// remove end inserts
	var frag = _VirtualDom_applyPatchReorderEndInsertsHelp(data.y, patch);

	// removals
	domNode = _VirtualDom_applyPatchesHelp(domNode, data.w);

	// inserts
	var inserts = data.x;
	for (var i = 0; i < inserts.length; i++)
	{
		var insert = inserts[i];
		var entry = insert.A;
		var node = entry.c === 2
			? entry.s
			: _VirtualDom_render(entry.z, patch.u);
		domNode.insertBefore(node, domNode.childNodes[insert.r]);
	}

	// add end inserts
	if (frag)
	{
		_VirtualDom_appendChild(domNode, frag);
	}

	return domNode;
}


function _VirtualDom_applyPatchReorderEndInsertsHelp(endInserts, patch)
{
	if (!endInserts)
	{
		return;
	}

	var frag = _VirtualDom_doc.createDocumentFragment();
	for (var i = 0; i < endInserts.length; i++)
	{
		var insert = endInserts[i];
		var entry = insert.A;
		_VirtualDom_appendChild(frag, entry.c === 2
			? entry.s
			: _VirtualDom_render(entry.z, patch.u)
		);
	}
	return frag;
}


function _VirtualDom_virtualize(node)
{
	// TEXT NODES

	if (node.nodeType === 3)
	{
		return _VirtualDom_text(node.textContent);
	}


	// WEIRD NODES

	if (node.nodeType !== 1)
	{
		return _VirtualDom_text('');
	}


	// ELEMENT NODES

	var attrList = _List_Nil;
	var attrs = node.attributes;
	for (var i = attrs.length; i--; )
	{
		var attr = attrs[i];
		var name = attr.name;
		var value = attr.value;
		attrList = _List_Cons( A2(_VirtualDom_attribute, name, value), attrList );
	}

	var tag = node.tagName.toLowerCase();
	var kidList = _List_Nil;
	var kids = node.childNodes;

	for (var i = kids.length; i--; )
	{
		kidList = _List_Cons(_VirtualDom_virtualize(kids[i]), kidList);
	}
	return A3(_VirtualDom_node, tag, attrList, kidList);
}

function _VirtualDom_dekey(keyedNode)
{
	var keyedKids = keyedNode.e;
	var len = keyedKids.length;
	var kids = new Array(len);
	for (var i = 0; i < len; i++)
	{
		kids[i] = keyedKids[i].b;
	}

	return {
		$: 1,
		c: keyedNode.c,
		d: keyedNode.d,
		e: kids,
		f: keyedNode.f,
		b: keyedNode.b
	};
}




// ELEMENT


var _Debugger_element;

var _Browser_element = _Debugger_element || F4(function(impl, flagDecoder, debugMetadata, args)
{
	return _Platform_initialize(
		flagDecoder,
		args,
		impl.init,
		impl.update,
		impl.subscriptions,
		function(sendToApp, initialModel) {
			var view = impl.view;
			/**_UNUSED/
			var domNode = args['node'];
			//*/
			/**/
			var domNode = args && args['node'] ? args['node'] : _Debug_crash(0);
			//*/
			var currNode = _VirtualDom_virtualize(domNode);

			return _Browser_makeAnimator(initialModel, function(model)
			{
				var nextNode = view(model);
				var patches = _VirtualDom_diff(currNode, nextNode);
				domNode = _VirtualDom_applyPatches(domNode, currNode, patches, sendToApp);
				currNode = nextNode;
			});
		}
	);
});



// DOCUMENT


var _Debugger_document;

var _Browser_document = _Debugger_document || F4(function(impl, flagDecoder, debugMetadata, args)
{
	return _Platform_initialize(
		flagDecoder,
		args,
		impl.init,
		impl.update,
		impl.subscriptions,
		function(sendToApp, initialModel) {
			var divertHrefToApp = impl.setup && impl.setup(sendToApp)
			var view = impl.view;
			var title = _VirtualDom_doc.title;
			var bodyNode = _VirtualDom_doc.body;
			var currNode = _VirtualDom_virtualize(bodyNode);
			return _Browser_makeAnimator(initialModel, function(model)
			{
				_VirtualDom_divertHrefToApp = divertHrefToApp;
				var doc = view(model);
				var nextNode = _VirtualDom_node('body')(_List_Nil)(doc.body);
				var patches = _VirtualDom_diff(currNode, nextNode);
				bodyNode = _VirtualDom_applyPatches(bodyNode, currNode, patches, sendToApp);
				currNode = nextNode;
				_VirtualDom_divertHrefToApp = 0;
				(title !== doc.title) && (_VirtualDom_doc.title = title = doc.title);
			});
		}
	);
});



// ANIMATION


var _Browser_cancelAnimationFrame =
	typeof cancelAnimationFrame !== 'undefined'
		? cancelAnimationFrame
		: function(id) { clearTimeout(id); };

var _Browser_requestAnimationFrame =
	typeof requestAnimationFrame !== 'undefined'
		? requestAnimationFrame
		: function(callback) { return setTimeout(callback, 1000 / 60); };


function _Browser_makeAnimator(model, draw)
{
	draw(model);

	var state = 0;

	function updateIfNeeded()
	{
		state = state === 1
			? 0
			: ( _Browser_requestAnimationFrame(updateIfNeeded), draw(model), 1 );
	}

	return function(nextModel, isSync)
	{
		model = nextModel;

		isSync
			? ( draw(model),
				state === 2 && (state = 1)
				)
			: ( state === 0 && _Browser_requestAnimationFrame(updateIfNeeded),
				state = 2
				);
	};
}



// APPLICATION


function _Browser_application(impl)
{
	var onUrlChange = impl.onUrlChange;
	var onUrlRequest = impl.onUrlRequest;
	var key = function() { key.a(onUrlChange(_Browser_getUrl())); };

	return _Browser_document({
		setup: function(sendToApp)
		{
			key.a = sendToApp;
			_Browser_window.addEventListener('popstate', key);
			_Browser_window.navigator.userAgent.indexOf('Trident') < 0 || _Browser_window.addEventListener('hashchange', key);

			return F2(function(domNode, event)
			{
				if (!event.ctrlKey && !event.metaKey && !event.shiftKey && event.button < 1 && !domNode.target && !domNode.hasAttribute('download'))
				{
					event.preventDefault();
					var href = domNode.href;
					var curr = _Browser_getUrl();
					var next = $elm$url$Url$fromString(href).a;
					sendToApp(onUrlRequest(
						(next
							&& curr.protocol === next.protocol
							&& curr.host === next.host
							&& curr.port_.a === next.port_.a
						)
							? $elm$browser$Browser$Internal(next)
							: $elm$browser$Browser$External(href)
					));
				}
			});
		},
		init: function(flags)
		{
			return A3(impl.init, flags, _Browser_getUrl(), key);
		},
		view: impl.view,
		update: impl.update,
		subscriptions: impl.subscriptions
	});
}

function _Browser_getUrl()
{
	return $elm$url$Url$fromString(_VirtualDom_doc.location.href).a || _Debug_crash(1);
}

var _Browser_go = F2(function(key, n)
{
	return A2($elm$core$Task$perform, $elm$core$Basics$never, _Scheduler_binding(function() {
		n && history.go(n);
		key();
	}));
});

var _Browser_pushUrl = F2(function(key, url)
{
	return A2($elm$core$Task$perform, $elm$core$Basics$never, _Scheduler_binding(function() {
		history.pushState({}, '', url);
		key();
	}));
});

var _Browser_replaceUrl = F2(function(key, url)
{
	return A2($elm$core$Task$perform, $elm$core$Basics$never, _Scheduler_binding(function() {
		history.replaceState({}, '', url);
		key();
	}));
});



// GLOBAL EVENTS


var _Browser_fakeNode = { addEventListener: function() {}, removeEventListener: function() {} };
var _Browser_doc = typeof document !== 'undefined' ? document : _Browser_fakeNode;
var _Browser_window = typeof window !== 'undefined' ? window : _Browser_fakeNode;

var _Browser_on = F3(function(node, eventName, sendToSelf)
{
	return _Scheduler_spawn(_Scheduler_binding(function(callback)
	{
		function handler(event)	{ _Scheduler_rawSpawn(sendToSelf(event)); }
		node.addEventListener(eventName, handler, _VirtualDom_passiveSupported && { passive: true });
		return function() { node.removeEventListener(eventName, handler); };
	}));
});

var _Browser_decodeEvent = F2(function(decoder, event)
{
	var result = _Json_runHelp(decoder, event);
	return $elm$core$Result$isOk(result) ? $elm$core$Maybe$Just(result.a) : $elm$core$Maybe$Nothing;
});



// PAGE VISIBILITY


function _Browser_visibilityInfo()
{
	return (typeof _VirtualDom_doc.hidden !== 'undefined')
		? { hidden: 'hidden', change: 'visibilitychange' }
		:
	(typeof _VirtualDom_doc.mozHidden !== 'undefined')
		? { hidden: 'mozHidden', change: 'mozvisibilitychange' }
		:
	(typeof _VirtualDom_doc.msHidden !== 'undefined')
		? { hidden: 'msHidden', change: 'msvisibilitychange' }
		:
	(typeof _VirtualDom_doc.webkitHidden !== 'undefined')
		? { hidden: 'webkitHidden', change: 'webkitvisibilitychange' }
		: { hidden: 'hidden', change: 'visibilitychange' };
}



// ANIMATION FRAMES


function _Browser_rAF()
{
	return _Scheduler_binding(function(callback)
	{
		var id = _Browser_requestAnimationFrame(function() {
			callback(_Scheduler_succeed(Date.now()));
		});

		return function() {
			_Browser_cancelAnimationFrame(id);
		};
	});
}


function _Browser_now()
{
	return _Scheduler_binding(function(callback)
	{
		callback(_Scheduler_succeed(Date.now()));
	});
}



// DOM STUFF


function _Browser_withNode(id, doStuff)
{
	return _Scheduler_binding(function(callback)
	{
		_Browser_requestAnimationFrame(function() {
			var node = document.getElementById(id);
			callback(node
				? _Scheduler_succeed(doStuff(node))
				: _Scheduler_fail($elm$browser$Browser$Dom$NotFound(id))
			);
		});
	});
}


function _Browser_withWindow(doStuff)
{
	return _Scheduler_binding(function(callback)
	{
		_Browser_requestAnimationFrame(function() {
			callback(_Scheduler_succeed(doStuff()));
		});
	});
}


// FOCUS and BLUR


var _Browser_call = F2(function(functionName, id)
{
	return _Browser_withNode(id, function(node) {
		node[functionName]();
		return _Utils_Tuple0;
	});
});



// WINDOW VIEWPORT


function _Browser_getViewport()
{
	return {
		scene: _Browser_getScene(),
		viewport: {
			x: _Browser_window.pageXOffset,
			y: _Browser_window.pageYOffset,
			width: _Browser_doc.documentElement.clientWidth,
			height: _Browser_doc.documentElement.clientHeight
		}
	};
}

function _Browser_getScene()
{
	var body = _Browser_doc.body;
	var elem = _Browser_doc.documentElement;
	return {
		width: Math.max(body.scrollWidth, body.offsetWidth, elem.scrollWidth, elem.offsetWidth, elem.clientWidth),
		height: Math.max(body.scrollHeight, body.offsetHeight, elem.scrollHeight, elem.offsetHeight, elem.clientHeight)
	};
}

var _Browser_setViewport = F2(function(x, y)
{
	return _Browser_withWindow(function()
	{
		_Browser_window.scroll(x, y);
		return _Utils_Tuple0;
	});
});



// ELEMENT VIEWPORT


function _Browser_getViewportOf(id)
{
	return _Browser_withNode(id, function(node)
	{
		return {
			scene: {
				width: node.scrollWidth,
				height: node.scrollHeight
			},
			viewport: {
				x: node.scrollLeft,
				y: node.scrollTop,
				width: node.clientWidth,
				height: node.clientHeight
			}
		};
	});
}


var _Browser_setViewportOf = F3(function(id, x, y)
{
	return _Browser_withNode(id, function(node)
	{
		node.scrollLeft = x;
		node.scrollTop = y;
		return _Utils_Tuple0;
	});
});



// ELEMENT


function _Browser_getElement(id)
{
	return _Browser_withNode(id, function(node)
	{
		var rect = node.getBoundingClientRect();
		var x = _Browser_window.pageXOffset;
		var y = _Browser_window.pageYOffset;
		return {
			scene: _Browser_getScene(),
			viewport: {
				x: x,
				y: y,
				width: _Browser_doc.documentElement.clientWidth,
				height: _Browser_doc.documentElement.clientHeight
			},
			element: {
				x: x + rect.left,
				y: y + rect.top,
				width: rect.width,
				height: rect.height
			}
		};
	});
}



// LOAD and RELOAD


function _Browser_reload(skipCache)
{
	return A2($elm$core$Task$perform, $elm$core$Basics$never, _Scheduler_binding(function(callback)
	{
		_VirtualDom_doc.location.reload(skipCache);
	}));
}

function _Browser_load(url)
{
	return A2($elm$core$Task$perform, $elm$core$Basics$never, _Scheduler_binding(function(callback)
	{
		try
		{
			_Browser_window.location = url;
		}
		catch(err)
		{
			// Only Firefox can throw a NS_ERROR_MALFORMED_URI exception here.
			// Other browsers reload the page, so let's be consistent about that.
			_VirtualDom_doc.location.reload(false);
		}
	}));
}



var _Bitwise_and = F2(function(a, b)
{
	return a & b;
});

var _Bitwise_or = F2(function(a, b)
{
	return a | b;
});

var _Bitwise_xor = F2(function(a, b)
{
	return a ^ b;
});

function _Bitwise_complement(a)
{
	return ~a;
};

var _Bitwise_shiftLeftBy = F2(function(offset, a)
{
	return a << offset;
});

var _Bitwise_shiftRightBy = F2(function(offset, a)
{
	return a >> offset;
});

var _Bitwise_shiftRightZfBy = F2(function(offset, a)
{
	return a >>> offset;
});



function _Time_now(millisToPosix)
{
	return _Scheduler_binding(function(callback)
	{
		callback(_Scheduler_succeed(millisToPosix(Date.now())));
	});
}

var _Time_setInterval = F2(function(interval, task)
{
	return _Scheduler_binding(function(callback)
	{
		var id = setInterval(function() { _Scheduler_rawSpawn(task); }, interval);
		return function() { clearInterval(id); };
	});
});

function _Time_here()
{
	return _Scheduler_binding(function(callback)
	{
		callback(_Scheduler_succeed(
			A2($elm$time$Time$customZone, -(new Date().getTimezoneOffset()), _List_Nil)
		));
	});
}


function _Time_getZoneName()
{
	return _Scheduler_binding(function(callback)
	{
		try
		{
			var name = $elm$time$Time$Name(Intl.DateTimeFormat().resolvedOptions().timeZone);
		}
		catch (e)
		{
			var name = $elm$time$Time$Offset(new Date().getTimezoneOffset());
		}
		callback(_Scheduler_succeed(name));
	});
}


// CREATE

var _Regex_never = /.^/;

var _Regex_fromStringWith = F2(function(options, string)
{
	var flags = 'g';
	if (options.multiline) { flags += 'm'; }
	if (options.caseInsensitive) { flags += 'i'; }

	try
	{
		return $elm$core$Maybe$Just(new RegExp(string, flags));
	}
	catch(error)
	{
		return $elm$core$Maybe$Nothing;
	}
});


// USE

var _Regex_contains = F2(function(re, string)
{
	return string.match(re) !== null;
});


var _Regex_findAtMost = F3(function(n, re, str)
{
	var out = [];
	var number = 0;
	var string = str;
	var lastIndex = re.lastIndex;
	var prevLastIndex = -1;
	var result;
	while (number++ < n && (result = re.exec(string)))
	{
		if (prevLastIndex == re.lastIndex) break;
		var i = result.length - 1;
		var subs = new Array(i);
		while (i > 0)
		{
			var submatch = result[i];
			subs[--i] = submatch
				? $elm$core$Maybe$Just(submatch)
				: $elm$core$Maybe$Nothing;
		}
		out.push(A4($elm$regex$Regex$Match, result[0], result.index, number, _List_fromArray(subs)));
		prevLastIndex = re.lastIndex;
	}
	re.lastIndex = lastIndex;
	return _List_fromArray(out);
});


var _Regex_replaceAtMost = F4(function(n, re, replacer, string)
{
	var count = 0;
	function jsReplacer(match)
	{
		if (count++ >= n)
		{
			return match;
		}
		var i = arguments.length - 3;
		var submatches = new Array(i);
		while (i > 0)
		{
			var submatch = arguments[i];
			submatches[--i] = submatch
				? $elm$core$Maybe$Just(submatch)
				: $elm$core$Maybe$Nothing;
		}
		return replacer(A4($elm$regex$Regex$Match, match, arguments[arguments.length - 2], count, _List_fromArray(submatches)));
	}
	return string.replace(re, jsReplacer);
});

var _Regex_splitAtMost = F3(function(n, re, str)
{
	var string = str;
	var out = [];
	var start = re.lastIndex;
	var restoreLastIndex = re.lastIndex;
	while (n--)
	{
		var result = re.exec(string);
		if (!result) break;
		out.push(string.slice(start, result.index));
		start = re.lastIndex;
	}
	out.push(string.slice(start));
	re.lastIndex = restoreLastIndex;
	return _List_fromArray(out);
});

var _Regex_infinity = Infinity;
var $elm$core$Basics$EQ = {$: 'EQ'};
var $elm$core$Basics$GT = {$: 'GT'};
var $elm$core$Basics$LT = {$: 'LT'};
var $elm$core$List$cons = _List_cons;
var $elm$core$Dict$foldr = F3(
	function (func, acc, t) {
		foldr:
		while (true) {
			if (t.$ === 'RBEmpty_elm_builtin') {
				return acc;
			} else {
				var key = t.b;
				var value = t.c;
				var left = t.d;
				var right = t.e;
				var $temp$func = func,
					$temp$acc = A3(
					func,
					key,
					value,
					A3($elm$core$Dict$foldr, func, acc, right)),
					$temp$t = left;
				func = $temp$func;
				acc = $temp$acc;
				t = $temp$t;
				continue foldr;
			}
		}
	});
var $elm$core$Dict$toList = function (dict) {
	return A3(
		$elm$core$Dict$foldr,
		F3(
			function (key, value, list) {
				return A2(
					$elm$core$List$cons,
					_Utils_Tuple2(key, value),
					list);
			}),
		_List_Nil,
		dict);
};
var $elm$core$Dict$keys = function (dict) {
	return A3(
		$elm$core$Dict$foldr,
		F3(
			function (key, value, keyList) {
				return A2($elm$core$List$cons, key, keyList);
			}),
		_List_Nil,
		dict);
};
var $elm$core$Set$toList = function (_v0) {
	var dict = _v0.a;
	return $elm$core$Dict$keys(dict);
};
var $elm$core$Elm$JsArray$foldr = _JsArray_foldr;
var $elm$core$Array$foldr = F3(
	function (func, baseCase, _v0) {
		var tree = _v0.c;
		var tail = _v0.d;
		var helper = F2(
			function (node, acc) {
				if (node.$ === 'SubTree') {
					var subTree = node.a;
					return A3($elm$core$Elm$JsArray$foldr, helper, acc, subTree);
				} else {
					var values = node.a;
					return A3($elm$core$Elm$JsArray$foldr, func, acc, values);
				}
			});
		return A3(
			$elm$core$Elm$JsArray$foldr,
			helper,
			A3($elm$core$Elm$JsArray$foldr, func, baseCase, tail),
			tree);
	});
var $elm$core$Array$toList = function (array) {
	return A3($elm$core$Array$foldr, $elm$core$List$cons, _List_Nil, array);
};
var $elm$core$Result$Err = function (a) {
	return {$: 'Err', a: a};
};
var $elm$json$Json$Decode$Failure = F2(
	function (a, b) {
		return {$: 'Failure', a: a, b: b};
	});
var $elm$json$Json$Decode$Field = F2(
	function (a, b) {
		return {$: 'Field', a: a, b: b};
	});
var $elm$json$Json$Decode$Index = F2(
	function (a, b) {
		return {$: 'Index', a: a, b: b};
	});
var $elm$core$Result$Ok = function (a) {
	return {$: 'Ok', a: a};
};
var $elm$json$Json$Decode$OneOf = function (a) {
	return {$: 'OneOf', a: a};
};
var $elm$core$Basics$False = {$: 'False'};
var $elm$core$Basics$add = _Basics_add;
var $elm$core$Maybe$Just = function (a) {
	return {$: 'Just', a: a};
};
var $elm$core$Maybe$Nothing = {$: 'Nothing'};
var $elm$core$String$all = _String_all;
var $elm$core$Basics$and = _Basics_and;
var $elm$core$Basics$append = _Utils_append;
var $elm$json$Json$Encode$encode = _Json_encode;
var $elm$core$String$fromInt = _String_fromNumber;
var $elm$core$String$join = F2(
	function (sep, chunks) {
		return A2(
			_String_join,
			sep,
			_List_toArray(chunks));
	});
var $elm$core$String$split = F2(
	function (sep, string) {
		return _List_fromArray(
			A2(_String_split, sep, string));
	});
var $elm$json$Json$Decode$indent = function (str) {
	return A2(
		$elm$core$String$join,
		'\n    ',
		A2($elm$core$String$split, '\n', str));
};
var $elm$core$List$foldl = F3(
	function (func, acc, list) {
		foldl:
		while (true) {
			if (!list.b) {
				return acc;
			} else {
				var x = list.a;
				var xs = list.b;
				var $temp$func = func,
					$temp$acc = A2(func, x, acc),
					$temp$list = xs;
				func = $temp$func;
				acc = $temp$acc;
				list = $temp$list;
				continue foldl;
			}
		}
	});
var $elm$core$List$length = function (xs) {
	return A3(
		$elm$core$List$foldl,
		F2(
			function (_v0, i) {
				return i + 1;
			}),
		0,
		xs);
};
var $elm$core$List$map2 = _List_map2;
var $elm$core$Basics$le = _Utils_le;
var $elm$core$Basics$sub = _Basics_sub;
var $elm$core$List$rangeHelp = F3(
	function (lo, hi, list) {
		rangeHelp:
		while (true) {
			if (_Utils_cmp(lo, hi) < 1) {
				var $temp$lo = lo,
					$temp$hi = hi - 1,
					$temp$list = A2($elm$core$List$cons, hi, list);
				lo = $temp$lo;
				hi = $temp$hi;
				list = $temp$list;
				continue rangeHelp;
			} else {
				return list;
			}
		}
	});
var $elm$core$List$range = F2(
	function (lo, hi) {
		return A3($elm$core$List$rangeHelp, lo, hi, _List_Nil);
	});
var $elm$core$List$indexedMap = F2(
	function (f, xs) {
		return A3(
			$elm$core$List$map2,
			f,
			A2(
				$elm$core$List$range,
				0,
				$elm$core$List$length(xs) - 1),
			xs);
	});
var $elm$core$Char$toCode = _Char_toCode;
var $elm$core$Char$isLower = function (_char) {
	var code = $elm$core$Char$toCode(_char);
	return (97 <= code) && (code <= 122);
};
var $elm$core$Char$isUpper = function (_char) {
	var code = $elm$core$Char$toCode(_char);
	return (code <= 90) && (65 <= code);
};
var $elm$core$Basics$or = _Basics_or;
var $elm$core$Char$isAlpha = function (_char) {
	return $elm$core$Char$isLower(_char) || $elm$core$Char$isUpper(_char);
};
var $elm$core$Char$isDigit = function (_char) {
	var code = $elm$core$Char$toCode(_char);
	return (code <= 57) && (48 <= code);
};
var $elm$core$Char$isAlphaNum = function (_char) {
	return $elm$core$Char$isLower(_char) || ($elm$core$Char$isUpper(_char) || $elm$core$Char$isDigit(_char));
};
var $elm$core$List$reverse = function (list) {
	return A3($elm$core$List$foldl, $elm$core$List$cons, _List_Nil, list);
};
var $elm$core$String$uncons = _String_uncons;
var $elm$json$Json$Decode$errorOneOf = F2(
	function (i, error) {
		return '\n\n(' + ($elm$core$String$fromInt(i + 1) + (') ' + $elm$json$Json$Decode$indent(
			$elm$json$Json$Decode$errorToString(error))));
	});
var $elm$json$Json$Decode$errorToString = function (error) {
	return A2($elm$json$Json$Decode$errorToStringHelp, error, _List_Nil);
};
var $elm$json$Json$Decode$errorToStringHelp = F2(
	function (error, context) {
		errorToStringHelp:
		while (true) {
			switch (error.$) {
				case 'Field':
					var f = error.a;
					var err = error.b;
					var isSimple = function () {
						var _v1 = $elm$core$String$uncons(f);
						if (_v1.$ === 'Nothing') {
							return false;
						} else {
							var _v2 = _v1.a;
							var _char = _v2.a;
							var rest = _v2.b;
							return $elm$core$Char$isAlpha(_char) && A2($elm$core$String$all, $elm$core$Char$isAlphaNum, rest);
						}
					}();
					var fieldName = isSimple ? ('.' + f) : ('[\'' + (f + '\']'));
					var $temp$error = err,
						$temp$context = A2($elm$core$List$cons, fieldName, context);
					error = $temp$error;
					context = $temp$context;
					continue errorToStringHelp;
				case 'Index':
					var i = error.a;
					var err = error.b;
					var indexName = '[' + ($elm$core$String$fromInt(i) + ']');
					var $temp$error = err,
						$temp$context = A2($elm$core$List$cons, indexName, context);
					error = $temp$error;
					context = $temp$context;
					continue errorToStringHelp;
				case 'OneOf':
					var errors = error.a;
					if (!errors.b) {
						return 'Ran into a Json.Decode.oneOf with no possibilities' + function () {
							if (!context.b) {
								return '!';
							} else {
								return ' at json' + A2(
									$elm$core$String$join,
									'',
									$elm$core$List$reverse(context));
							}
						}();
					} else {
						if (!errors.b.b) {
							var err = errors.a;
							var $temp$error = err,
								$temp$context = context;
							error = $temp$error;
							context = $temp$context;
							continue errorToStringHelp;
						} else {
							var starter = function () {
								if (!context.b) {
									return 'Json.Decode.oneOf';
								} else {
									return 'The Json.Decode.oneOf at json' + A2(
										$elm$core$String$join,
										'',
										$elm$core$List$reverse(context));
								}
							}();
							var introduction = starter + (' failed in the following ' + ($elm$core$String$fromInt(
								$elm$core$List$length(errors)) + ' ways:'));
							return A2(
								$elm$core$String$join,
								'\n\n',
								A2(
									$elm$core$List$cons,
									introduction,
									A2($elm$core$List$indexedMap, $elm$json$Json$Decode$errorOneOf, errors)));
						}
					}
				default:
					var msg = error.a;
					var json = error.b;
					var introduction = function () {
						if (!context.b) {
							return 'Problem with the given value:\n\n';
						} else {
							return 'Problem with the value at json' + (A2(
								$elm$core$String$join,
								'',
								$elm$core$List$reverse(context)) + ':\n\n    ');
						}
					}();
					return introduction + ($elm$json$Json$Decode$indent(
						A2($elm$json$Json$Encode$encode, 4, json)) + ('\n\n' + msg));
			}
		}
	});
var $elm$core$Array$branchFactor = 32;
var $elm$core$Array$Array_elm_builtin = F4(
	function (a, b, c, d) {
		return {$: 'Array_elm_builtin', a: a, b: b, c: c, d: d};
	});
var $elm$core$Elm$JsArray$empty = _JsArray_empty;
var $elm$core$Basics$ceiling = _Basics_ceiling;
var $elm$core$Basics$fdiv = _Basics_fdiv;
var $elm$core$Basics$logBase = F2(
	function (base, number) {
		return _Basics_log(number) / _Basics_log(base);
	});
var $elm$core$Basics$toFloat = _Basics_toFloat;
var $elm$core$Array$shiftStep = $elm$core$Basics$ceiling(
	A2($elm$core$Basics$logBase, 2, $elm$core$Array$branchFactor));
var $elm$core$Array$empty = A4($elm$core$Array$Array_elm_builtin, 0, $elm$core$Array$shiftStep, $elm$core$Elm$JsArray$empty, $elm$core$Elm$JsArray$empty);
var $elm$core$Elm$JsArray$initialize = _JsArray_initialize;
var $elm$core$Array$Leaf = function (a) {
	return {$: 'Leaf', a: a};
};
var $elm$core$Basics$apL = F2(
	function (f, x) {
		return f(x);
	});
var $elm$core$Basics$apR = F2(
	function (x, f) {
		return f(x);
	});
var $elm$core$Basics$eq = _Utils_equal;
var $elm$core$Basics$floor = _Basics_floor;
var $elm$core$Elm$JsArray$length = _JsArray_length;
var $elm$core$Basics$gt = _Utils_gt;
var $elm$core$Basics$max = F2(
	function (x, y) {
		return (_Utils_cmp(x, y) > 0) ? x : y;
	});
var $elm$core$Basics$mul = _Basics_mul;
var $elm$core$Array$SubTree = function (a) {
	return {$: 'SubTree', a: a};
};
var $elm$core$Elm$JsArray$initializeFromList = _JsArray_initializeFromList;
var $elm$core$Array$compressNodes = F2(
	function (nodes, acc) {
		compressNodes:
		while (true) {
			var _v0 = A2($elm$core$Elm$JsArray$initializeFromList, $elm$core$Array$branchFactor, nodes);
			var node = _v0.a;
			var remainingNodes = _v0.b;
			var newAcc = A2(
				$elm$core$List$cons,
				$elm$core$Array$SubTree(node),
				acc);
			if (!remainingNodes.b) {
				return $elm$core$List$reverse(newAcc);
			} else {
				var $temp$nodes = remainingNodes,
					$temp$acc = newAcc;
				nodes = $temp$nodes;
				acc = $temp$acc;
				continue compressNodes;
			}
		}
	});
var $elm$core$Tuple$first = function (_v0) {
	var x = _v0.a;
	return x;
};
var $elm$core$Array$treeFromBuilder = F2(
	function (nodeList, nodeListSize) {
		treeFromBuilder:
		while (true) {
			var newNodeSize = $elm$core$Basics$ceiling(nodeListSize / $elm$core$Array$branchFactor);
			if (newNodeSize === 1) {
				return A2($elm$core$Elm$JsArray$initializeFromList, $elm$core$Array$branchFactor, nodeList).a;
			} else {
				var $temp$nodeList = A2($elm$core$Array$compressNodes, nodeList, _List_Nil),
					$temp$nodeListSize = newNodeSize;
				nodeList = $temp$nodeList;
				nodeListSize = $temp$nodeListSize;
				continue treeFromBuilder;
			}
		}
	});
var $elm$core$Array$builderToArray = F2(
	function (reverseNodeList, builder) {
		if (!builder.nodeListSize) {
			return A4(
				$elm$core$Array$Array_elm_builtin,
				$elm$core$Elm$JsArray$length(builder.tail),
				$elm$core$Array$shiftStep,
				$elm$core$Elm$JsArray$empty,
				builder.tail);
		} else {
			var treeLen = builder.nodeListSize * $elm$core$Array$branchFactor;
			var depth = $elm$core$Basics$floor(
				A2($elm$core$Basics$logBase, $elm$core$Array$branchFactor, treeLen - 1));
			var correctNodeList = reverseNodeList ? $elm$core$List$reverse(builder.nodeList) : builder.nodeList;
			var tree = A2($elm$core$Array$treeFromBuilder, correctNodeList, builder.nodeListSize);
			return A4(
				$elm$core$Array$Array_elm_builtin,
				$elm$core$Elm$JsArray$length(builder.tail) + treeLen,
				A2($elm$core$Basics$max, 5, depth * $elm$core$Array$shiftStep),
				tree,
				builder.tail);
		}
	});
var $elm$core$Basics$idiv = _Basics_idiv;
var $elm$core$Basics$lt = _Utils_lt;
var $elm$core$Array$initializeHelp = F5(
	function (fn, fromIndex, len, nodeList, tail) {
		initializeHelp:
		while (true) {
			if (fromIndex < 0) {
				return A2(
					$elm$core$Array$builderToArray,
					false,
					{nodeList: nodeList, nodeListSize: (len / $elm$core$Array$branchFactor) | 0, tail: tail});
			} else {
				var leaf = $elm$core$Array$Leaf(
					A3($elm$core$Elm$JsArray$initialize, $elm$core$Array$branchFactor, fromIndex, fn));
				var $temp$fn = fn,
					$temp$fromIndex = fromIndex - $elm$core$Array$branchFactor,
					$temp$len = len,
					$temp$nodeList = A2($elm$core$List$cons, leaf, nodeList),
					$temp$tail = tail;
				fn = $temp$fn;
				fromIndex = $temp$fromIndex;
				len = $temp$len;
				nodeList = $temp$nodeList;
				tail = $temp$tail;
				continue initializeHelp;
			}
		}
	});
var $elm$core$Basics$remainderBy = _Basics_remainderBy;
var $elm$core$Array$initialize = F2(
	function (len, fn) {
		if (len <= 0) {
			return $elm$core$Array$empty;
		} else {
			var tailLen = len % $elm$core$Array$branchFactor;
			var tail = A3($elm$core$Elm$JsArray$initialize, tailLen, len - tailLen, fn);
			var initialFromIndex = (len - tailLen) - $elm$core$Array$branchFactor;
			return A5($elm$core$Array$initializeHelp, fn, initialFromIndex, len, _List_Nil, tail);
		}
	});
var $elm$core$Basics$True = {$: 'True'};
var $elm$core$Result$isOk = function (result) {
	if (result.$ === 'Ok') {
		return true;
	} else {
		return false;
	}
};
var $elm$json$Json$Decode$map = _Json_map1;
var $elm$json$Json$Decode$map2 = _Json_map2;
var $elm$json$Json$Decode$succeed = _Json_succeed;
var $elm$virtual_dom$VirtualDom$toHandlerInt = function (handler) {
	switch (handler.$) {
		case 'Normal':
			return 0;
		case 'MayStopPropagation':
			return 1;
		case 'MayPreventDefault':
			return 2;
		default:
			return 3;
	}
};
var $elm$browser$Browser$External = function (a) {
	return {$: 'External', a: a};
};
var $elm$browser$Browser$Internal = function (a) {
	return {$: 'Internal', a: a};
};
var $elm$core$Basics$identity = function (x) {
	return x;
};
var $elm$browser$Browser$Dom$NotFound = function (a) {
	return {$: 'NotFound', a: a};
};
var $elm$url$Url$Http = {$: 'Http'};
var $elm$url$Url$Https = {$: 'Https'};
var $elm$url$Url$Url = F6(
	function (protocol, host, port_, path, query, fragment) {
		return {fragment: fragment, host: host, path: path, port_: port_, protocol: protocol, query: query};
	});
var $elm$core$String$contains = _String_contains;
var $elm$core$String$length = _String_length;
var $elm$core$String$slice = _String_slice;
var $elm$core$String$dropLeft = F2(
	function (n, string) {
		return (n < 1) ? string : A3(
			$elm$core$String$slice,
			n,
			$elm$core$String$length(string),
			string);
	});
var $elm$core$String$indexes = _String_indexes;
var $elm$core$String$isEmpty = function (string) {
	return string === '';
};
var $elm$core$String$left = F2(
	function (n, string) {
		return (n < 1) ? '' : A3($elm$core$String$slice, 0, n, string);
	});
var $elm$core$String$toInt = _String_toInt;
var $elm$url$Url$chompBeforePath = F5(
	function (protocol, path, params, frag, str) {
		if ($elm$core$String$isEmpty(str) || A2($elm$core$String$contains, '@', str)) {
			return $elm$core$Maybe$Nothing;
		} else {
			var _v0 = A2($elm$core$String$indexes, ':', str);
			if (!_v0.b) {
				return $elm$core$Maybe$Just(
					A6($elm$url$Url$Url, protocol, str, $elm$core$Maybe$Nothing, path, params, frag));
			} else {
				if (!_v0.b.b) {
					var i = _v0.a;
					var _v1 = $elm$core$String$toInt(
						A2($elm$core$String$dropLeft, i + 1, str));
					if (_v1.$ === 'Nothing') {
						return $elm$core$Maybe$Nothing;
					} else {
						var port_ = _v1;
						return $elm$core$Maybe$Just(
							A6(
								$elm$url$Url$Url,
								protocol,
								A2($elm$core$String$left, i, str),
								port_,
								path,
								params,
								frag));
					}
				} else {
					return $elm$core$Maybe$Nothing;
				}
			}
		}
	});
var $elm$url$Url$chompBeforeQuery = F4(
	function (protocol, params, frag, str) {
		if ($elm$core$String$isEmpty(str)) {
			return $elm$core$Maybe$Nothing;
		} else {
			var _v0 = A2($elm$core$String$indexes, '/', str);
			if (!_v0.b) {
				return A5($elm$url$Url$chompBeforePath, protocol, '/', params, frag, str);
			} else {
				var i = _v0.a;
				return A5(
					$elm$url$Url$chompBeforePath,
					protocol,
					A2($elm$core$String$dropLeft, i, str),
					params,
					frag,
					A2($elm$core$String$left, i, str));
			}
		}
	});
var $elm$url$Url$chompBeforeFragment = F3(
	function (protocol, frag, str) {
		if ($elm$core$String$isEmpty(str)) {
			return $elm$core$Maybe$Nothing;
		} else {
			var _v0 = A2($elm$core$String$indexes, '?', str);
			if (!_v0.b) {
				return A4($elm$url$Url$chompBeforeQuery, protocol, $elm$core$Maybe$Nothing, frag, str);
			} else {
				var i = _v0.a;
				return A4(
					$elm$url$Url$chompBeforeQuery,
					protocol,
					$elm$core$Maybe$Just(
						A2($elm$core$String$dropLeft, i + 1, str)),
					frag,
					A2($elm$core$String$left, i, str));
			}
		}
	});
var $elm$url$Url$chompAfterProtocol = F2(
	function (protocol, str) {
		if ($elm$core$String$isEmpty(str)) {
			return $elm$core$Maybe$Nothing;
		} else {
			var _v0 = A2($elm$core$String$indexes, '#', str);
			if (!_v0.b) {
				return A3($elm$url$Url$chompBeforeFragment, protocol, $elm$core$Maybe$Nothing, str);
			} else {
				var i = _v0.a;
				return A3(
					$elm$url$Url$chompBeforeFragment,
					protocol,
					$elm$core$Maybe$Just(
						A2($elm$core$String$dropLeft, i + 1, str)),
					A2($elm$core$String$left, i, str));
			}
		}
	});
var $elm$core$String$startsWith = _String_startsWith;
var $elm$url$Url$fromString = function (str) {
	return A2($elm$core$String$startsWith, 'http://', str) ? A2(
		$elm$url$Url$chompAfterProtocol,
		$elm$url$Url$Http,
		A2($elm$core$String$dropLeft, 7, str)) : (A2($elm$core$String$startsWith, 'https://', str) ? A2(
		$elm$url$Url$chompAfterProtocol,
		$elm$url$Url$Https,
		A2($elm$core$String$dropLeft, 8, str)) : $elm$core$Maybe$Nothing);
};
var $elm$core$Basics$never = function (_v0) {
	never:
	while (true) {
		var nvr = _v0.a;
		var $temp$_v0 = nvr;
		_v0 = $temp$_v0;
		continue never;
	}
};
var $elm$core$Task$Perform = function (a) {
	return {$: 'Perform', a: a};
};
var $elm$core$Task$succeed = _Scheduler_succeed;
var $elm$core$Task$init = $elm$core$Task$succeed(_Utils_Tuple0);
var $elm$core$List$foldrHelper = F4(
	function (fn, acc, ctr, ls) {
		if (!ls.b) {
			return acc;
		} else {
			var a = ls.a;
			var r1 = ls.b;
			if (!r1.b) {
				return A2(fn, a, acc);
			} else {
				var b = r1.a;
				var r2 = r1.b;
				if (!r2.b) {
					return A2(
						fn,
						a,
						A2(fn, b, acc));
				} else {
					var c = r2.a;
					var r3 = r2.b;
					if (!r3.b) {
						return A2(
							fn,
							a,
							A2(
								fn,
								b,
								A2(fn, c, acc)));
					} else {
						var d = r3.a;
						var r4 = r3.b;
						var res = (ctr > 500) ? A3(
							$elm$core$List$foldl,
							fn,
							acc,
							$elm$core$List$reverse(r4)) : A4($elm$core$List$foldrHelper, fn, acc, ctr + 1, r4);
						return A2(
							fn,
							a,
							A2(
								fn,
								b,
								A2(
									fn,
									c,
									A2(fn, d, res))));
					}
				}
			}
		}
	});
var $elm$core$List$foldr = F3(
	function (fn, acc, ls) {
		return A4($elm$core$List$foldrHelper, fn, acc, 0, ls);
	});
var $elm$core$List$map = F2(
	function (f, xs) {
		return A3(
			$elm$core$List$foldr,
			F2(
				function (x, acc) {
					return A2(
						$elm$core$List$cons,
						f(x),
						acc);
				}),
			_List_Nil,
			xs);
	});
var $elm$core$Task$andThen = _Scheduler_andThen;
var $elm$core$Task$map = F2(
	function (func, taskA) {
		return A2(
			$elm$core$Task$andThen,
			function (a) {
				return $elm$core$Task$succeed(
					func(a));
			},
			taskA);
	});
var $elm$core$Task$map2 = F3(
	function (func, taskA, taskB) {
		return A2(
			$elm$core$Task$andThen,
			function (a) {
				return A2(
					$elm$core$Task$andThen,
					function (b) {
						return $elm$core$Task$succeed(
							A2(func, a, b));
					},
					taskB);
			},
			taskA);
	});
var $elm$core$Task$sequence = function (tasks) {
	return A3(
		$elm$core$List$foldr,
		$elm$core$Task$map2($elm$core$List$cons),
		$elm$core$Task$succeed(_List_Nil),
		tasks);
};
var $elm$core$Platform$sendToApp = _Platform_sendToApp;
var $elm$core$Task$spawnCmd = F2(
	function (router, _v0) {
		var task = _v0.a;
		return _Scheduler_spawn(
			A2(
				$elm$core$Task$andThen,
				$elm$core$Platform$sendToApp(router),
				task));
	});
var $elm$core$Task$onEffects = F3(
	function (router, commands, state) {
		return A2(
			$elm$core$Task$map,
			function (_v0) {
				return _Utils_Tuple0;
			},
			$elm$core$Task$sequence(
				A2(
					$elm$core$List$map,
					$elm$core$Task$spawnCmd(router),
					commands)));
	});
var $elm$core$Task$onSelfMsg = F3(
	function (_v0, _v1, _v2) {
		return $elm$core$Task$succeed(_Utils_Tuple0);
	});
var $elm$core$Task$cmdMap = F2(
	function (tagger, _v0) {
		var task = _v0.a;
		return $elm$core$Task$Perform(
			A2($elm$core$Task$map, tagger, task));
	});
_Platform_effectManagers['Task'] = _Platform_createManager($elm$core$Task$init, $elm$core$Task$onEffects, $elm$core$Task$onSelfMsg, $elm$core$Task$cmdMap);
var $elm$core$Task$command = _Platform_leaf('Task');
var $elm$core$Task$perform = F2(
	function (toMessage, task) {
		return $elm$core$Task$command(
			$elm$core$Task$Perform(
				A2($elm$core$Task$map, toMessage, task)));
	});
var $elm$browser$Browser$element = _Browser_element;
var $elm$core$Array$fromListHelp = F3(
	function (list, nodeList, nodeListSize) {
		fromListHelp:
		while (true) {
			var _v0 = A2($elm$core$Elm$JsArray$initializeFromList, $elm$core$Array$branchFactor, list);
			var jsArray = _v0.a;
			var remainingItems = _v0.b;
			if (_Utils_cmp(
				$elm$core$Elm$JsArray$length(jsArray),
				$elm$core$Array$branchFactor) < 0) {
				return A2(
					$elm$core$Array$builderToArray,
					true,
					{nodeList: nodeList, nodeListSize: nodeListSize, tail: jsArray});
			} else {
				var $temp$list = remainingItems,
					$temp$nodeList = A2(
					$elm$core$List$cons,
					$elm$core$Array$Leaf(jsArray),
					nodeList),
					$temp$nodeListSize = nodeListSize + 1;
				list = $temp$list;
				nodeList = $temp$nodeList;
				nodeListSize = $temp$nodeListSize;
				continue fromListHelp;
			}
		}
	});
var $elm$core$Array$fromList = function (list) {
	if (!list.b) {
		return $elm$core$Array$empty;
	} else {
		return A3($elm$core$Array$fromListHelp, list, _List_Nil, 0);
	}
};
var $author$project$AlbumStorageDdf$albumStorage = $elm$core$Array$fromList(
	_List_fromArray(
		[
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732343257bb6ea89abaf23074c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022343257bb6ea89abaf23074c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512343257bb6ea89abaf23074c', width: 64}
				]),
			id: '3Sv5tE8PcAlGY6Ys2ISQXF',
			name: 'Folge 226: Die Spur der Toten',
			urlToOpen: 'https://open.spotify.com/album/3Sv5tE8PcAlGY6Ys2ISQXF'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273312f2992744d99954b01f81a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02312f2992744d99954b01f81a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851312f2992744d99954b01f81a', width: 64}
				]),
			id: '0FuC7q4bJG41g1naKBx4ot',
			name: 'Folge 225: und der Puppenmacher',
			urlToOpen: 'https://open.spotify.com/album/0FuC7q4bJG41g1naKBx4ot'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d7457d9305c333af2d504c79', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d7457d9305c333af2d504c79', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d7457d9305c333af2d504c79', width: 64}
				]),
			id: '7JhdaReI98XYFrzb3jJPFa',
			name: 'Folge 224: Die Yacht des Verrats',
			urlToOpen: 'https://open.spotify.com/album/7JhdaReI98XYFrzb3jJPFa'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273332701bdaae77957693c6569', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02332701bdaae77957693c6569', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851332701bdaae77957693c6569', width: 64}
				]),
			id: '0oZaQfEwMWY2TfviD4fEdV',
			name: 'Adventskalender - Böser die Glocken nie klingen',
			urlToOpen: 'https://open.spotify.com/album/0oZaQfEwMWY2TfviD4fEdV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735df9d92322a1f4428de8271d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025df9d92322a1f4428de8271d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515df9d92322a1f4428de8271d', width: 64}
				]),
			id: '4UCwiqC6kHQIsODPuJ0GoZ',
			name: 'Kai Schwind liest... und das Bergmonster',
			urlToOpen: 'https://open.spotify.com/album/4UCwiqC6kHQIsODPuJ0GoZ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e37da75bbad97a220ee3ee6c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e37da75bbad97a220ee3ee6c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e37da75bbad97a220ee3ee6c', width: 64}
				]),
			id: '451jKBwuSNrNgLlqEAZfra',
			name: 'Folge 223: und der Knochenmann',
			urlToOpen: 'https://open.spotify.com/album/451jKBwuSNrNgLlqEAZfra'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732e845d2a16ac538415a2e506', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022e845d2a16ac538415a2e506', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512e845d2a16ac538415a2e506', width: 64}
				]),
			id: '6xZHTtiSBFxKdV2rJVHj2V',
			name: 'Klaas Heufer-Umlauf liest... und der schrullige Millionär',
			urlToOpen: 'https://open.spotify.com/album/6xZHTtiSBFxKdV2rJVHj2V'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ac186438a7df50806f06a5ca', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ac186438a7df50806f06a5ca', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ac186438a7df50806f06a5ca', width: 64}
				]),
			id: '3o2Gwvg8lqLNRnlV1v1s5K',
			name: 'Folge 222: und die Gesetzlosen',
			urlToOpen: 'https://open.spotify.com/album/3o2Gwvg8lqLNRnlV1v1s5K'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737a257189780470a21b13d08a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027a257189780470a21b13d08a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517a257189780470a21b13d08a', width: 64}
				]),
			id: '77aMP5aTkzIaVW1SPxvLxy',
			name: 'Mai Thi Nguyen-Kim liest... und die rätselhaften Bilder',
			urlToOpen: 'https://open.spotify.com/album/77aMP5aTkzIaVW1SPxvLxy'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732173fc7af2170f213c2058ce', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022173fc7af2170f213c2058ce', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512173fc7af2170f213c2058ce', width: 64}
				]),
			id: '1KpVSqapKAUAtAepWWxPWs',
			name: 'Folge 221: Manuskript des Satans',
			urlToOpen: 'https://open.spotify.com/album/1KpVSqapKAUAtAepWWxPWs'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b41759225f368a06182422fd', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b41759225f368a06182422fd', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b41759225f368a06182422fd', width: 64}
				]),
			id: '2Z5khV1jYxMvc5peWZdnwC',
			name: 'Holger Mahlich liest...und die gefährliche Erbschaft',
			urlToOpen: 'https://open.spotify.com/album/2Z5khV1jYxMvc5peWZdnwC'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738e71d2b3820de0e58fb40096', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028e71d2b3820de0e58fb40096', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518e71d2b3820de0e58fb40096', width: 64}
				]),
			id: '67Ipucoa0blx27O3sV7yAi',
			name: 'Erbe des Drachen (Das Original-Hörspiel zum Kinofilm)',
			urlToOpen: 'https://open.spotify.com/album/67Ipucoa0blx27O3sV7yAi'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f46bde5de61bb0dea42b0df1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f46bde5de61bb0dea42b0df1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f46bde5de61bb0dea42b0df1', width: 64}
				]),
			id: '01i4iyB40EU7Qgd6EgKoZt',
			name: 'Folge 220: Im Wald der Gefahren',
			urlToOpen: 'https://open.spotify.com/album/01i4iyB40EU7Qgd6EgKoZt'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273321cec3b384aac2b95ebda4b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02321cec3b384aac2b95ebda4b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851321cec3b384aac2b95ebda4b', width: 64}
				]),
			id: '3IxPhnYxh3qACTa2GBYVUw',
			name: 'Eckart Dux liest...und der Höhlenmensch',
			urlToOpen: 'https://open.spotify.com/album/3IxPhnYxh3qACTa2GBYVUw'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c16fa39d829813f43466fe2b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c16fa39d829813f43466fe2b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c16fa39d829813f43466fe2b', width: 64}
				]),
			id: '6ewdyVIW2LurJhYGU0UBAa',
			name: 'Folge 219: und die Teufelsklippe',
			urlToOpen: 'https://open.spotify.com/album/6ewdyVIW2LurJhYGU0UBAa'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730477da7288f69a258a73cc80', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020477da7288f69a258a73cc80', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510477da7288f69a258a73cc80', width: 64}
				]),
			id: '0lwfVPSf5Zs5PTGkcSgSeo',
			name: 'Nicholas Müller liest... und die silberne Spinne',
			urlToOpen: 'https://open.spotify.com/album/0lwfVPSf5Zs5PTGkcSgSeo'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730b682a9792a5e1501cea04b6', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020b682a9792a5e1501cea04b6', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510b682a9792a5e1501cea04b6', width: 64}
				]),
			id: '4qHjQN4qvZu9x27O5LOn2G',
			name: 'Jan Böhmermann liest... und die flüsternde Mumie',
			urlToOpen: 'https://open.spotify.com/album/4qHjQN4qvZu9x27O5LOn2G'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ee1915833d2e9791008bf502', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ee1915833d2e9791008bf502', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ee1915833d2e9791008bf502', width: 64}
				]),
			id: '5u2wd0lYukcINw8dUFCREq',
			name: 'Adventskalender - Eine schreckliche Bescherung',
			urlToOpen: 'https://open.spotify.com/album/5u2wd0lYukcINw8dUFCREq'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735519a645e4580ab3e34d6e8f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025519a645e4580ab3e34d6e8f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515519a645e4580ab3e34d6e8f', width: 64}
				]),
			id: '2WwOKZLpFWrvw3O9CISod1',
			name: 'Folge 218: Im Netz der Lügen',
			urlToOpen: 'https://open.spotify.com/album/2WwOKZLpFWrvw3O9CISod1'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27318b45bb3ee94c1822232b860', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0218b45bb3ee94c1822232b860', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485118b45bb3ee94c1822232b860', width: 64}
				]),
			id: '1WlRnNunbHpnRTTVkxMRnd',
			name: 'Folge 217: und der Kristallschädel',
			urlToOpen: 'https://open.spotify.com/album/1WlRnNunbHpnRTTVkxMRnd'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e6fa2fe2022773bb27c5f199', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e6fa2fe2022773bb27c5f199', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e6fa2fe2022773bb27c5f199', width: 64}
				]),
			id: '2BkEUZY7Da7bqlUjmMA2Cq',
			name: 'Folge 216: Die Schwingen des Unheils',
			urlToOpen: 'https://open.spotify.com/album/2BkEUZY7Da7bqlUjmMA2Cq'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733ef0cee1d730df291780cea0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023ef0cee1d730df291780cea0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513ef0cee1d730df291780cea0', width: 64}
				]),
			id: '76pYNMMVZTiuNy3IoXcavU',
			name: 'Folge 215: und die verlorene Zeit',
			urlToOpen: 'https://open.spotify.com/album/76pYNMMVZTiuNy3IoXcavU'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27329361d23be44f5af66a6b777', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0229361d23be44f5af66a6b777', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485129361d23be44f5af66a6b777', width: 64}
				]),
			id: '2uMs1XZBdGdZuXOY7draw4',
			name: 'und der dreiäugige Totenkopf (Kopfhörer-Hörspiel)',
			urlToOpen: 'https://open.spotify.com/album/2uMs1XZBdGdZuXOY7draw4'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27379db0a40810fa2946daaf8cf', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0279db0a40810fa2946daaf8cf', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485179db0a40810fa2946daaf8cf', width: 64}
				]),
			id: '7FVn5TYEbQbWM6r8unRaCe',
			name: 'und das versunkene Schiff (Kopfhörer-Hörspiel)',
			urlToOpen: 'https://open.spotify.com/album/7FVn5TYEbQbWM6r8unRaCe'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27370243a8cd78e001c345b33d6', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0270243a8cd78e001c345b33d6', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485170243a8cd78e001c345b33d6', width: 64}
				]),
			id: '6T5D7KpnftvfLaYPp94U4y',
			name: 'Das Grab der Inka-Mumie (Kopfhörer-Hörspiel)',
			urlToOpen: 'https://open.spotify.com/album/6T5D7KpnftvfLaYPp94U4y'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732cac6a2ab2f69032fddacc44', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022cac6a2ab2f69032fddacc44', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512cac6a2ab2f69032fddacc44', width: 64}
				]),
			id: '1cJ3fNx6K47p4eDFqhnvsA',
			name: 'Folge 214: und der Geisterbunker',
			urlToOpen: 'https://open.spotify.com/album/1cJ3fNx6K47p4eDFqhnvsA'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e41528e7c4430835d9a3d7a7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e41528e7c4430835d9a3d7a7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e41528e7c4430835d9a3d7a7', width: 64}
				]),
			id: '5yI3MACumg0ZjPSRUOFmoB',
			name: 'Karin Lieneweg liest...und der sprechende Totenkopf',
			urlToOpen: 'https://open.spotify.com/album/5yI3MACumg0ZjPSRUOFmoB'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731105e9be1f6a2860fd9eb2db', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021105e9be1f6a2860fd9eb2db', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511105e9be1f6a2860fd9eb2db', width: 64}
				]),
			id: '4BZfSV9maCil4l4yftT74F',
			name: 'Folge 213: Der Fluch der Medusa',
			urlToOpen: 'https://open.spotify.com/album/4BZfSV9maCil4l4yftT74F'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b110610a842e2f364ba6250e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b110610a842e2f364ba6250e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b110610a842e2f364ba6250e', width: 64}
				]),
			id: '5KIQUoxcSBlPN3ie9xVmnA',
			name: 'Sascha Draeger liest...und der gestohlene Preis',
			urlToOpen: 'https://open.spotify.com/album/5KIQUoxcSBlPN3ie9xVmnA'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f1b7c01ee282543d37e97f4b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f1b7c01ee282543d37e97f4b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f1b7c01ee282543d37e97f4b', width: 64}
				]),
			id: '2zHMeFNQQxKOmUgmppOjIM',
			name: 'Folge 212: und der weiße Leopard',
			urlToOpen: 'https://open.spotify.com/album/2zHMeFNQQxKOmUgmppOjIM'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2736d7f57716890ae1014137600', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e026d7f57716890ae1014137600', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048516d7f57716890ae1014137600', width: 64}
				]),
			id: '6heVFpJImaEoJT3TEtlSMl',
			name: 'Axel Prahl liest...und die schwarze Katze',
			urlToOpen: 'https://open.spotify.com/album/6heVFpJImaEoJT3TEtlSMl'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27392d4e749fc6dca3aee268cdb', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0292d4e749fc6dca3aee268cdb', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485192d4e749fc6dca3aee268cdb', width: 64}
				]),
			id: '7pZotNNAYOkeHNvJRKzYRk',
			name: 'Folge 211: und der Jadekönig',
			urlToOpen: 'https://open.spotify.com/album/7pZotNNAYOkeHNvJRKzYRk'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735b004bf5fcce8b9e2b509163', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025b004bf5fcce8b9e2b509163', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515b004bf5fcce8b9e2b509163', width: 64}
				]),
			id: '4u8yNY4Un2nErgeNRMFeh3',
			name: 'Jürgen Thormann liest... und der Zauberspiegel',
			urlToOpen: 'https://open.spotify.com/album/4u8yNY4Un2nErgeNRMFeh3'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737cfecb40f059d5144b2067a2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027cfecb40f059d5144b2067a2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517cfecb40f059d5144b2067a2', width: 64}
				]),
			id: '3ieWqOL150wJOcft7iZHKZ',
			name: 'Folge 210: und die schweigende Grotte',
			urlToOpen: 'https://open.spotify.com/album/3ieWqOL150wJOcft7iZHKZ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273be9055782cdcaed9e6df1c60', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02be9055782cdcaed9e6df1c60', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851be9055782cdcaed9e6df1c60', width: 64}
				]),
			id: '7fsdjOiouCHQ9Rlmrz7ZIa',
			name: 'Judy Winter liest...und der Ameisenmensch',
			urlToOpen: 'https://open.spotify.com/album/7fsdjOiouCHQ9Rlmrz7ZIa'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732ca77f19a9c8e0ebfba60adc', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022ca77f19a9c8e0ebfba60adc', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512ca77f19a9c8e0ebfba60adc', width: 64}
				]),
			id: '0q4FbI22wSMrzgWh5vgHi9',
			name: 'Folge 209: Kreaturen der Nacht',
			urlToOpen: 'https://open.spotify.com/album/0q4FbI22wSMrzgWh5vgHi9'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27330a42eb708efe79fc35b0e10', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0230a42eb708efe79fc35b0e10', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485130a42eb708efe79fc35b0e10', width: 64}
				]),
			id: '6WgRUQY49NRG6JT6dJ4xEq',
			name: '208/Kelch des Schicksals',
			urlToOpen: 'https://open.spotify.com/album/6WgRUQY49NRG6JT6dJ4xEq'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732fa85ff14fac4ef5d3b7cdd3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022fa85ff14fac4ef5d3b7cdd3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512fa85ff14fac4ef5d3b7cdd3', width: 64}
				]),
			id: '3t9NGa2A9SGvipHoU5Bc6m',
			name: 'und das Grab der Maya (Kopfhörer-Hörspiel)',
			urlToOpen: 'https://open.spotify.com/album/3t9NGa2A9SGvipHoU5Bc6m'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d6bde10679cf9215db2fd071', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d6bde10679cf9215db2fd071', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d6bde10679cf9215db2fd071', width: 64}
				]),
			id: '4vj4Dq2q7fyvwY7UCj2vin',
			name: 'und das Grab der Maya',
			urlToOpen: 'https://open.spotify.com/album/4vj4Dq2q7fyvwY7UCj2vin'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a9ac37c2ff7fe5fb5f29a45e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a9ac37c2ff7fe5fb5f29a45e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a9ac37c2ff7fe5fb5f29a45e', width: 64}
				]),
			id: '7ynXpeQRwzqKiv8WVh7c7B',
			name: 'Adventskalender - O du finstere',
			urlToOpen: 'https://open.spotify.com/album/7ynXpeQRwzqKiv8WVh7c7B'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b7cb427c9c5bf0fabfebb834', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b7cb427c9c5bf0fabfebb834', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b7cb427c9c5bf0fabfebb834', width: 64}
				]),
			id: '6BxvBG51szGmlg5x3F1rHj',
			name: '207/Die falschen Detektive',
			urlToOpen: 'https://open.spotify.com/album/6BxvBG51szGmlg5x3F1rHj'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27394d60d1755b040dd874a29b0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0294d60d1755b040dd874a29b0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485194d60d1755b040dd874a29b0', width: 64}
				]),
			id: '5YuHQZqJWP3EmAvMSoWeTs',
			name: 'Katrin Fröhlich liest ...und die singende Schlange',
			urlToOpen: 'https://open.spotify.com/album/5YuHQZqJWP3EmAvMSoWeTs'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27378d660cdc7db65b7cf350c2a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0278d660cdc7db65b7cf350c2a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485178d660cdc7db65b7cf350c2a', width: 64}
				]),
			id: '7khAMIQlYBmW7mI9cphDhJ',
			name: '206/und der Mottenmann',
			urlToOpen: 'https://open.spotify.com/album/7khAMIQlYBmW7mI9cphDhJ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732839fcc33eb0e5588b8dd8bd', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022839fcc33eb0e5588b8dd8bd', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512839fcc33eb0e5588b8dd8bd', width: 64}
				]),
			id: '0VmZF3nyMuhRDcyVY0MuE1',
			name: 'Oliver Kalkofe liest ...und der lachende Schatten',
			urlToOpen: 'https://open.spotify.com/album/0VmZF3nyMuhRDcyVY0MuE1'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730a86444fa60c5a785daaa878', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020a86444fa60c5a785daaa878', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510a86444fa60c5a785daaa878', width: 64}
				]),
			id: '2Sw9FBHOoT6fBhYxHsRFxq',
			name: '205/Das rätselhafte Erbe',
			urlToOpen: 'https://open.spotify.com/album/2Sw9FBHOoT6fBhYxHsRFxq'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27322d5d85ad46702845c750932', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0222d5d85ad46702845c750932', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485122d5d85ad46702845c750932', width: 64}
				]),
			id: '1PO7K8YvBHLa5d6jIuTkaj',
			name: 'Tim Grobe liest ...und der Fluch des Rubins',
			urlToOpen: 'https://open.spotify.com/album/1PO7K8YvBHLa5d6jIuTkaj'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27363d3ae8ad1d3d5c4c34d9a19', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0263d3ae8ad1d3d5c4c34d9a19', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485163d3ae8ad1d3d5c4c34d9a19', width: 64}
				]),
			id: '1yMMjH3tDN9GyXiADzTkL9',
			name: '204/Der dunkle Wächter',
			urlToOpen: 'https://open.spotify.com/album/1yMMjH3tDN9GyXiADzTkL9'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273cb3eefa4f8040f8e23a733fa', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02cb3eefa4f8040f8e23a733fa', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851cb3eefa4f8040f8e23a733fa', width: 64}
				]),
			id: '5femMu6wEiqpYJ2O6FxwFH',
			name: 'Henning May liest ...und der seltsame Wecker (feat. Henning May)',
			urlToOpen: 'https://open.spotify.com/album/5femMu6wEiqpYJ2O6FxwFH'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27348134250ee8e358a9ede821c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0248134250ee8e358a9ede821c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485148134250ee8e358a9ede821c', width: 64}
				]),
			id: '76M62o1rdKEqTN1JIbGdGV',
			name: 'und der dreiäugige Totenkopf',
			urlToOpen: 'https://open.spotify.com/album/76M62o1rdKEqTN1JIbGdGV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ca3db67c80ca900074fa8939', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ca3db67c80ca900074fa8939', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ca3db67c80ca900074fa8939', width: 64}
				]),
			id: '79Drf49yNdGLBzzHMGGmBz',
			name: '203/Tauchgang ins Ungewisse',
			urlToOpen: 'https://open.spotify.com/album/79Drf49yNdGLBzzHMGGmBz'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273722abef9d6176a7daea03a72', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02722abef9d6176a7daea03a72', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851722abef9d6176a7daea03a72', width: 64}
				]),
			id: '5q9quwSbPpYxoAzMSKGfIw',
			name: 'Jessica Schwarz liest ...und der magische Kreis',
			urlToOpen: 'https://open.spotify.com/album/5q9quwSbPpYxoAzMSKGfIw'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e2d60b7cc46ad63d8369c3bf', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e2d60b7cc46ad63d8369c3bf', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e2d60b7cc46ad63d8369c3bf', width: 64}
				]),
			id: '14OPACj7jtzXOrgxis7pu2',
			name: 'Bela B liest... und der tanzende Teufel',
			urlToOpen: 'https://open.spotify.com/album/14OPACj7jtzXOrgxis7pu2'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273bc33f1471e6be485ab78fb16', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02bc33f1471e6be485ab78fb16', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851bc33f1471e6be485ab78fb16', width: 64}
				]),
			id: '4Exxckn0GwbhnGl6N4um2N',
			name: '202/Das weiße Grab',
			urlToOpen: 'https://open.spotify.com/album/4Exxckn0GwbhnGl6N4um2N'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2736b72b523e718a8cf86bc595a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e026b72b523e718a8cf86bc595a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048516b72b523e718a8cf86bc595a', width: 64}
				]),
			id: '3qqFfEjRLF7pxUpWw2g0P5',
			name: 'Oliver Rohrbeck liest ...und der Super-Papagei',
			urlToOpen: 'https://open.spotify.com/album/3qqFfEjRLF7pxUpWw2g0P5'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27372261d20240df6a6118cd276', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0272261d20240df6a6118cd276', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485172261d20240df6a6118cd276', width: 64}
				]),
			id: '1uPmiAn5sBUdGCbAeiPTNG',
			name: 'Jens Wawrczeck liest ...und das Gespensterschloß',
			urlToOpen: 'https://open.spotify.com/album/1uPmiAn5sBUdGCbAeiPTNG'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738d3382fd6c03d24b41a5daef', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028d3382fd6c03d24b41a5daef', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518d3382fd6c03d24b41a5daef', width: 64}
				]),
			id: '5oCCy3K7JBWfdfp4QNhYxA',
			name: 'Andreas Fröhlich liest...und der Karpatenhund',
			urlToOpen: 'https://open.spotify.com/album/5oCCy3K7JBWfdfp4QNhYxA'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734eba9e1187a0bd858c4961a4', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024eba9e1187a0bd858c4961a4', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514eba9e1187a0bd858c4961a4', width: 64}
				]),
			id: '3yzJOoR3024vkb7WXRVtFr',
			name: 'Jannik Schümann liest ...und der Phantomsee',
			urlToOpen: 'https://open.spotify.com/album/3yzJOoR3024vkb7WXRVtFr'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273980c937b43748adc2ba795e7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02980c937b43748adc2ba795e7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851980c937b43748adc2ba795e7', width: 64}
				]),
			id: '6UN8m07SmIzyDe63H0oljL',
			name: 'und das versunkene Schiff',
			urlToOpen: 'https://open.spotify.com/album/6UN8m07SmIzyDe63H0oljL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731b75d0b84c32623d26703286', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021b75d0b84c32623d26703286', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511b75d0b84c32623d26703286', width: 64}
				]),
			id: '2EzmlFDy8q8etqohlJpaaB',
			name: 'Anna Thalbach liest ... und die Geisterinsel',
			urlToOpen: 'https://open.spotify.com/album/2EzmlFDy8q8etqohlJpaaB'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e67533cb79d13ca95633f3f0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e67533cb79d13ca95633f3f0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e67533cb79d13ca95633f3f0', width: 64}
				]),
			id: '4FxNfDSXqAg8N1D8NBtvZ5',
			name: '201/Höhenangst',
			urlToOpen: 'https://open.spotify.com/album/4FxNfDSXqAg8N1D8NBtvZ5'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e15a2b23cd8a7d4a5be2ecad', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e15a2b23cd8a7d4a5be2ecad', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e15a2b23cd8a7d4a5be2ecad', width: 64}
				]),
			id: '4QQ2iK81MWMhK2Qqr1AO0R',
			name: 'Bastian Pastewka liest... und der grüne Geist',
			urlToOpen: 'https://open.spotify.com/album/4QQ2iK81MWMhK2Qqr1AO0R'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27352c0f5ffda1043b41fe52969', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0252c0f5ffda1043b41fe52969', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485152c0f5ffda1043b41fe52969', width: 64}
				]),
			id: '09Ckx1JLgPsQHHGuSIt2j3',
			name: '200/Feuriges Auge',
			urlToOpen: 'https://open.spotify.com/album/09Ckx1JLgPsQHHGuSIt2j3'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733c7d48d33037a919bfa5508c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023c7d48d33037a919bfa5508c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513c7d48d33037a919bfa5508c', width: 64}
				]),
			id: '7bTKP2hU0LRks1bXN1R7ko',
			name: '199/und der grüne Kobold',
			urlToOpen: 'https://open.spotify.com/album/7bTKP2hU0LRks1bXN1R7ko'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731e11dc983c38b729c760adc6', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021e11dc983c38b729c760adc6', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511e11dc983c38b729c760adc6', width: 64}
				]),
			id: '4piiNuehCc4VjN8NBIcnRt',
			name: '198/Die Legende der Gaukler',
			urlToOpen: 'https://open.spotify.com/album/4piiNuehCc4VjN8NBIcnRt'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e167f6aaba96633ba97c7a6b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e167f6aaba96633ba97c7a6b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e167f6aaba96633ba97c7a6b', width: 64}
				]),
			id: '39K0Sczt1mIbW33lB5RNer',
			name: 'Und die schwarze Katze',
			urlToOpen: 'https://open.spotify.com/album/39K0Sczt1mIbW33lB5RNer'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27395228787bf6722ba125ba780', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0295228787bf6722ba125ba780', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485195228787bf6722ba125ba780', width: 64}
				]),
			id: '0GRoTtX1wI16M7GSnnN96R',
			name: '197/Im Auge des Sturms',
			urlToOpen: 'https://open.spotify.com/album/0GRoTtX1wI16M7GSnnN96R'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2736cc1cf7afc510fb1abd840ec', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e026cc1cf7afc510fb1abd840ec', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048516cc1cf7afc510fb1abd840ec', width: 64}
				]),
			id: '39a7bHWZyWPxwukCHPrTly',
			name: '196/Geheimnis des Bauchredners',
			urlToOpen: 'https://open.spotify.com/album/39a7bHWZyWPxwukCHPrTly'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738f1325b5c4e39037888952f5', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028f1325b5c4e39037888952f5', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518f1325b5c4e39037888952f5', width: 64}
				]),
			id: '7ehMwTyKuIM4zdiltMxE4X',
			name: 'und der schwarze Tag (Sechs Kurzgeschichten)',
			urlToOpen: 'https://open.spotify.com/album/7ehMwTyKuIM4zdiltMxE4X'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731567fb7801a75fab70fbd170', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021567fb7801a75fab70fbd170', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511567fb7801a75fab70fbd170', width: 64}
				]),
			id: '3pbXIzVk7CA5VM2ltxu9TN',
			name: '195/Im Reich der Ungeheuer',
			urlToOpen: 'https://open.spotify.com/album/3pbXIzVk7CA5VM2ltxu9TN'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731a873873dce1e3e04c87ab21', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021a873873dce1e3e04c87ab21', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511a873873dce1e3e04c87ab21', width: 64}
				]),
			id: '2oKngJQA5TdxF5QcP3uZEf',
			name: '194/und die Zeitreisende',
			urlToOpen: 'https://open.spotify.com/album/2oKngJQA5TdxF5QcP3uZEf'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737a55ff0895dabb76421152f8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027a55ff0895dabb76421152f8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517a55ff0895dabb76421152f8', width: 64}
				]),
			id: '4m6VlVOWfrUVhWWrueMo7p',
			name: '193/Schrecken aus der Tiefe',
			urlToOpen: 'https://open.spotify.com/album/4m6VlVOWfrUVhWWrueMo7p'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273bcc00d301f9004805a6daedd', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02bcc00d301f9004805a6daedd', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851bcc00d301f9004805a6daedd', width: 64}
				]),
			id: '1qag2AiFcxXU1UaIgrDFff',
			name: '192/im Bann des Drachen',
			urlToOpen: 'https://open.spotify.com/album/1qag2AiFcxXU1UaIgrDFff'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739dcb689b096b7a96c30ddbe8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029dcb689b096b7a96c30ddbe8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519dcb689b096b7a96c30ddbe8', width: 64}
				]),
			id: '2ICtKWqLqMBTzi7UeByhKd',
			name: '191/Verbrechen im Nichts',
			urlToOpen: 'https://open.spotify.com/album/2ICtKWqLqMBTzi7UeByhKd'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27338991b19472359d2ca4498dd', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0238991b19472359d2ca4498dd', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485138991b19472359d2ca4498dd', width: 64}
				]),
			id: '100ZHoBX994GlckxjoGpma',
			name: '190/und die Kammer der Rätsel',
			urlToOpen: 'https://open.spotify.com/album/100ZHoBX994GlckxjoGpma'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734adb71fa5ccd222ffc9094ba', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024adb71fa5ccd222ffc9094ba', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514adb71fa5ccd222ffc9094ba', width: 64}
				]),
			id: '02MXdFaVMz0qQJjmivjI8g',
			name: '189/und der unsichtbare Passagier',
			urlToOpen: 'https://open.spotify.com/album/02MXdFaVMz0qQJjmivjI8g'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e1fda9bbaabac431a9814150', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e1fda9bbaabac431a9814150', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e1fda9bbaabac431a9814150', width: 64}
				]),
			id: '3egVVb6Zt0LdS6agBMGsiJ',
			name: 'Und das kalte Auge',
			urlToOpen: 'https://open.spotify.com/album/3egVVb6Zt0LdS6agBMGsiJ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733a8ba4f56a5b403d0758082b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023a8ba4f56a5b403d0758082b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513a8ba4f56a5b403d0758082b', width: 64}
				]),
			id: '22soWryC08ctyMNb6NrMGD',
			name: '188/Signale aus dem Jenseits',
			urlToOpen: 'https://open.spotify.com/album/22soWryC08ctyMNb6NrMGD'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2736b0de580c5d7e90ff02e2e2b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e026b0de580c5d7e90ff02e2e2b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048516b0de580c5d7e90ff02e2e2b', width: 64}
				]),
			id: '7mH8vdj0TkiPO6fMHBCvYj',
			name: 'und der Tornadojäger',
			urlToOpen: 'https://open.spotify.com/album/7mH8vdj0TkiPO6fMHBCvYj'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273082728beff0e90864d9af1d7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02082728beff0e90864d9af1d7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851082728beff0e90864d9af1d7', width: 64}
				]),
			id: '6uj8JeIgluMibSu8Divkbh',
			name: '187/und das silberne Amulett',
			urlToOpen: 'https://open.spotify.com/album/6uj8JeIgluMibSu8Divkbh'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273cdc026ed0ecaff10a72416f0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02cdc026ed0ecaff10a72416f0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851cdc026ed0ecaff10a72416f0', width: 64}
				]),
			id: '7osWCNCcvGfqP31G7281iL',
			name: 'Das Grab der Inka-Mumie',
			urlToOpen: 'https://open.spotify.com/album/7osWCNCcvGfqP31G7281iL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c119a7d9d8bcf3d6265b2ce5', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c119a7d9d8bcf3d6265b2ce5', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c119a7d9d8bcf3d6265b2ce5', width: 64}
				]),
			id: '5kevid18ttcAPK1vk0kLtc',
			name: '186/Insel des Vergessens',
			urlToOpen: 'https://open.spotify.com/album/5kevid18ttcAPK1vk0kLtc'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732ab04561f6dd10d93057bdff', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022ab04561f6dd10d93057bdff', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512ab04561f6dd10d93057bdff', width: 64}
				]),
			id: '7eHh5PAxQBt5KBWzd3a10G',
			name: '185/und der Mann ohne Augen',
			urlToOpen: 'https://open.spotify.com/album/7eHh5PAxQBt5KBWzd3a10G'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27390dce028e8607b629320bc05', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0290dce028e8607b629320bc05', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485190dce028e8607b629320bc05', width: 64}
				]),
			id: '5B7w9vkfh979tEyzwkLk9k',
			name: '184/und der Hexengarten',
			urlToOpen: 'https://open.spotify.com/album/5B7w9vkfh979tEyzwkLk9k'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d85d746b8f4fd287d4c3e6e2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d85d746b8f4fd287d4c3e6e2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d85d746b8f4fd287d4c3e6e2', width: 64}
				]),
			id: '1qhlRmclvYWkrYkLnFxFZN',
			name: '183/und der letzte Song',
			urlToOpen: 'https://open.spotify.com/album/1qhlRmclvYWkrYkLnFxFZN'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c34d36fd9ae7838173854d6c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c34d36fd9ae7838173854d6c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c34d36fd9ae7838173854d6c', width: 64}
				]),
			id: '4zCPToY7AoTqvOKf4HRqAN',
			name: '182/Im Haus des Henkers',
			urlToOpen: 'https://open.spotify.com/album/4zCPToY7AoTqvOKf4HRqAN'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730017b0120cc39fd0c3038508', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020017b0120cc39fd0c3038508', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510017b0120cc39fd0c3038508', width: 64}
				]),
			id: '18xyskqkEGnVfVFhznkFIK',
			name: '181/Das Kabinett des Zauberers',
			urlToOpen: 'https://open.spotify.com/album/18xyskqkEGnVfVFhznkFIK'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739496d46637b0e569bdd00ccb', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029496d46637b0e569bdd00ccb', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519496d46637b0e569bdd00ccb', width: 64}
				]),
			id: '3L3ztKRWI0d7JwZga12WCb',
			name: 'Outro - FdW',
			urlToOpen: 'https://open.spotify.com/album/3L3ztKRWI0d7JwZga12WCb'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27340bc7671cc0b127ada5886cd', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0240bc7671cc0b127ada5886cd', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485140bc7671cc0b127ada5886cd', width: 64}
				]),
			id: '4lLOJQU6QBH5cxmERE77La',
			name: 'und der Zeitgeist (Sechs Kurzgeschichten)',
			urlToOpen: 'https://open.spotify.com/album/4lLOJQU6QBH5cxmERE77La'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d23523197ffd23d8c8cd9d40', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d23523197ffd23d8c8cd9d40', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d23523197ffd23d8c8cd9d40', width: 64}
				]),
			id: '6tioH9PNiZbmUT54MsiX5k',
			name: '180/und die flüsternden Puppen',
			urlToOpen: 'https://open.spotify.com/album/6tioH9PNiZbmUT54MsiX5k'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273285729b514e4b225b526c831', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02285729b514e4b225b526c831', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851285729b514e4b225b526c831', width: 64}
				]),
			id: '4IZ7Lsm5le7HJPtaGLCrjO',
			name: '179/Die Rache des Untoten',
			urlToOpen: 'https://open.spotify.com/album/4IZ7Lsm5le7HJPtaGLCrjO'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27348a42f6dc0e9d09ebb1ebbcc', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0248a42f6dc0e9d09ebb1ebbcc', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485148a42f6dc0e9d09ebb1ebbcc', width: 64}
				]),
			id: '5iobM2gNVymvP8XqnRnHVR',
			name: 'Adventskalender - Stille Nacht, düstere Nacht',
			urlToOpen: 'https://open.spotify.com/album/5iobM2gNVymvP8XqnRnHVR'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273666fbf7a8e324e3ad58aece3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02666fbf7a8e324e3ad58aece3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851666fbf7a8e324e3ad58aece3', width: 64}
				]),
			id: '3w5glP0mzKfTanzXpAjN27',
			name: '178/Der gefiederte Schrecken',
			urlToOpen: 'https://open.spotify.com/album/3w5glP0mzKfTanzXpAjN27'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738e7ff0aa1075e93b5488ea9f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028e7ff0aa1075e93b5488ea9f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518e7ff0aa1075e93b5488ea9f', width: 64}
				]),
			id: '0w6Khy7kpqTXrEDITf0rZ0',
			name: '177/Der Geist des Goldgräbers',
			urlToOpen: 'https://open.spotify.com/album/0w6Khy7kpqTXrEDITf0rZ0'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739178c8031a2bb802b2dba3f7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029178c8031a2bb802b2dba3f7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519178c8031a2bb802b2dba3f7', width: 64}
				]),
			id: '4qbxSVpr3NxRjdIVC411ue',
			name: '176/und der gestohlene Sieg',
			urlToOpen: 'https://open.spotify.com/album/4qbxSVpr3NxRjdIVC411ue'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732d5a3aa39e31ef20ef03835d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022d5a3aa39e31ef20ef03835d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512d5a3aa39e31ef20ef03835d', width: 64}
				]),
			id: '4uggmrJ3Xpm1e2tcz6laze',
			name: '175/Schattenwelt',
			urlToOpen: 'https://open.spotify.com/album/4uggmrJ3Xpm1e2tcz6laze'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739075efa474f3eed7e091ddb3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029075efa474f3eed7e091ddb3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519075efa474f3eed7e091ddb3', width: 64}
				]),
			id: '5RoL0jdWMoJ8KRFVOeFYtX',
			name: '174/und das Tuch der Toten',
			urlToOpen: 'https://open.spotify.com/album/5RoL0jdWMoJ8KRFVOeFYtX'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f2b462ada5672836b61d1c40', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f2b462ada5672836b61d1c40', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f2b462ada5672836b61d1c40', width: 64}
				]),
			id: '2ALDCHCHdawewN1sduWVQQ',
			name: '173/Dämon der Rache',
			urlToOpen: 'https://open.spotify.com/album/2ALDCHCHdawewN1sduWVQQ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f1232695ca5e820d6f767185', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f1232695ca5e820d6f767185', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f1232695ca5e820d6f767185', width: 64}
				]),
			id: '6Anfub4AoVHg9bhJ7js0L0',
			name: '172/und der Eisenmann',
			urlToOpen: 'https://open.spotify.com/album/6Anfub4AoVHg9bhJ7js0L0'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27357bd67c0f2da824f49ecbf54', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0257bd67c0f2da824f49ecbf54', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485157bd67c0f2da824f49ecbf54', width: 64}
				]),
			id: '6YbaUGc6ZeR1YnDFGQJV8F',
			name: '171/und das Phantom aus dem Meer',
			urlToOpen: 'https://open.spotify.com/album/6YbaUGc6ZeR1YnDFGQJV8F'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273cf44e735ff12cfb4ce1c6f52', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02cf44e735ff12cfb4ce1c6f52', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851cf44e735ff12cfb4ce1c6f52', width: 64}
				]),
			id: '62CKj2RCiWDDUtBWTn4KxQ',
			name: '170/Straße des Grauens',
			urlToOpen: 'https://open.spotify.com/album/62CKj2RCiWDDUtBWTn4KxQ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730fa069b67bba65a9b1e11687', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020fa069b67bba65a9b1e11687', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510fa069b67bba65a9b1e11687', width: 64}
				]),
			id: '5PEHeYcUhz1Aq02ZB1pUgJ',
			name: '169/Die Spur des Spielers',
			urlToOpen: 'https://open.spotify.com/album/5PEHeYcUhz1Aq02ZB1pUgJ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27333321991f509a888c40509eb', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0233321991f509a888c40509eb', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485133321991f509a888c40509eb', width: 64}
				]),
			id: '77aawQqgLQZxPb9kwSg0JR',
			name: '168/GPS-Gangster',
			urlToOpen: 'https://open.spotify.com/album/77aawQqgLQZxPb9kwSg0JR'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27369b8947b4e88fcd124c0b8e9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0269b8947b4e88fcd124c0b8e9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485169b8947b4e88fcd124c0b8e9', width: 64}
				]),
			id: '2AEzTekSWfyfzJH56jmhET',
			name: 'Das Rätsel der Sieben',
			urlToOpen: 'https://open.spotify.com/album/2AEzTekSWfyfzJH56jmhET'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ed6e891582ef3132238429d5', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ed6e891582ef3132238429d5', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ed6e891582ef3132238429d5', width: 64}
				]),
			id: '7kskBahbrQWCOiaXKuoPjE',
			name: '167/und das blaue Biest',
			urlToOpen: 'https://open.spotify.com/album/7kskBahbrQWCOiaXKuoPjE'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c53fe181f9b626a2180e7d97', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c53fe181f9b626a2180e7d97', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c53fe181f9b626a2180e7d97', width: 64}
				]),
			id: '427kScPIeUSfoNKCNercMC',
			name: '166/und die brennende Stadt',
			urlToOpen: 'https://open.spotify.com/album/427kScPIeUSfoNKCNercMC'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273cc8d3cd078f1ed5e6fd5b6b3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02cc8d3cd078f1ed5e6fd5b6b3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851cc8d3cd078f1ed5e6fd5b6b3', width: 64}
				]),
			id: '4izJKxYT4fTwIZjoXNgkX7',
			name: '165/Im Schatten des Giganten',
			urlToOpen: 'https://open.spotify.com/album/4izJKxYT4fTwIZjoXNgkX7'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738957890a758e26e123f6f24b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028957890a758e26e123f6f24b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518957890a758e26e123f6f24b', width: 64}
				]),
			id: '3An657Q0wkVp4nIDg2zpcB',
			name: '164/Fußball-Teufel',
			urlToOpen: 'https://open.spotify.com/album/3An657Q0wkVp4nIDg2zpcB'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734c132f86698ff0fbd6f8f12e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024c132f86698ff0fbd6f8f12e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514c132f86698ff0fbd6f8f12e', width: 64}
				]),
			id: '4fv0pPN7ZjbUiejSTxTPZh',
			name: '163/und der verschollene Pilot',
			urlToOpen: 'https://open.spotify.com/album/4fv0pPN7ZjbUiejSTxTPZh'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d242d4bf2e7eefac5504cfec', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d242d4bf2e7eefac5504cfec', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d242d4bf2e7eefac5504cfec', width: 64}
				]),
			id: '7beppYTqtHAEPKoXyodssF',
			name: '162/und der schreiende Nebel',
			urlToOpen: 'https://open.spotify.com/album/7beppYTqtHAEPKoXyodssF'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738f453c711437006dd6da2551', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028f453c711437006dd6da2551', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518f453c711437006dd6da2551', width: 64}
				]),
			id: '1GEzdjI5N25iuGjvypRscs',
			name: '161/Die blutenden Bilder',
			urlToOpen: 'https://open.spotify.com/album/1GEzdjI5N25iuGjvypRscs'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e10c1dcc9f9ecc07f577c077', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e10c1dcc9f9ecc07f577c077', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e10c1dcc9f9ecc07f577c077', width: 64}
				]),
			id: '2F6VxgWbGCUpTU9ux6Dtbi',
			name: '160/Geheimnisvolle Botschaften',
			urlToOpen: 'https://open.spotify.com/album/2F6VxgWbGCUpTU9ux6Dtbi'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273cabeab1310cc1583253d3619', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02cabeab1310cc1583253d3619', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851cabeab1310cc1583253d3619', width: 64}
				]),
			id: '4rCAnDrNJ96srnBEoA0ISj',
			name: '159/Nacht der Tiger',
			urlToOpen: 'https://open.spotify.com/album/4rCAnDrNJ96srnBEoA0ISj'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735aca6ab743013c0e7539ce06', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025aca6ab743013c0e7539ce06', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515aca6ab743013c0e7539ce06', width: 64}
				]),
			id: '2qFuUJMx8w4VEO0Zdf8jFJ',
			name: 'Der 5. Advent',
			urlToOpen: 'https://open.spotify.com/album/2qFuUJMx8w4VEO0Zdf8jFJ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732d29b1488378e41a00bdc86b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022d29b1488378e41a00bdc86b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512d29b1488378e41a00bdc86b', width: 64}
				]),
			id: '3uFt95otJjaxH8o40tPtIS',
			name: '158/und der Feuergeist',
			urlToOpen: 'https://open.spotify.com/album/3uFt95otJjaxH8o40tPtIS'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733b47ec9e1c0d5be3e334cb66', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023b47ec9e1c0d5be3e334cb66', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513b47ec9e1c0d5be3e334cb66', width: 64}
				]),
			id: '1nL3AddBvZ845zMyXRowgs',
			name: 'Und die Geisterlampe',
			urlToOpen: 'https://open.spotify.com/album/1nL3AddBvZ845zMyXRowgs'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273737f6623e3b1daae840e36a9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02737f6623e3b1daae840e36a9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851737f6623e3b1daae840e36a9', width: 64}
				]),
			id: '0pdXEEgKjfh4H0aZg4IOTS',
			name: '157/Im Zeichen der Schlangen',
			urlToOpen: 'https://open.spotify.com/album/0pdXEEgKjfh4H0aZg4IOTS'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27347c43a07885dbced251b72d3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0247c43a07885dbced251b72d3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485147c43a07885dbced251b72d3', width: 64}
				]),
			id: '78wUIvkGT2CdWW0ngeEy8V',
			name: '156/Im Netz des Drachen',
			urlToOpen: 'https://open.spotify.com/album/78wUIvkGT2CdWW0ngeEy8V'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d3b4ea9e547ffb052d4c6ab7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d3b4ea9e547ffb052d4c6ab7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d3b4ea9e547ffb052d4c6ab7', width: 64}
				]),
			id: '623V90QowsF4WSqV3cHGKf',
			name: '155/und der Meister des Todes',
			urlToOpen: 'https://open.spotify.com/album/623V90QowsF4WSqV3cHGKf'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733ede375dd1a9cb8cd5eba922', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023ede375dd1a9cb8cd5eba922', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513ede375dd1a9cb8cd5eba922', width: 64}
				]),
			id: '3uggg8gNlh1kpBxLeOfFTV',
			name: '154/Botschaft aus der Unterwelt',
			urlToOpen: 'https://open.spotify.com/album/3uggg8gNlh1kpBxLeOfFTV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273fb378d3d6028237aeeafc91e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02fb378d3d6028237aeeafc91e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851fb378d3d6028237aeeafc91e', width: 64}
				]),
			id: '7nxSEeJiQwI34VwnWT83C9',
			name: '153/und das Fußballphantom',
			urlToOpen: 'https://open.spotify.com/album/7nxSEeJiQwI34VwnWT83C9'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a3ec0e98597e3412cac23343', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a3ec0e98597e3412cac23343', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a3ec0e98597e3412cac23343', width: 64}
				]),
			id: '5iNeANVy4supl8HowB9V2h',
			name: '152/Skateboardfieber',
			urlToOpen: 'https://open.spotify.com/album/5iNeANVy4supl8HowB9V2h'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273df29122dd4c65a827cfa4f5b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02df29122dd4c65a827cfa4f5b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851df29122dd4c65a827cfa4f5b', width: 64}
				]),
			id: '3u0OSCwiOblOhm4dKjwLN5',
			name: '151/Schwarze Sonne',
			urlToOpen: 'https://open.spotify.com/album/3u0OSCwiOblOhm4dKjwLN5'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b1b4963fd7e17e71162e1ec0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b1b4963fd7e17e71162e1ec0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b1b4963fd7e17e71162e1ec0', width: 64}
				]),
			id: '2Bxdn8Gn8vEy4UiTOc8cBK',
			name: 'High Strung - Unter Hochspannung',
			urlToOpen: 'https://open.spotify.com/album/2Bxdn8Gn8vEy4UiTOc8cBK'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f0c748c284cc737bb30b1fab', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f0c748c284cc737bb30b1fab', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f0c748c284cc737bb30b1fab', width: 64}
				]),
			id: '6cPgVsZ6TPyVIP9BHP5ty5',
			name: '150/Geisterbucht',
			urlToOpen: 'https://open.spotify.com/album/6cPgVsZ6TPyVIP9BHP5ty5'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a4a04c78b49bc9e500c9fcee', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a4a04c78b49bc9e500c9fcee', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a4a04c78b49bc9e500c9fcee', width: 64}
				]),
			id: '7K7dfMc3VwHOKtENI1BWTD',
			name: '149/Der namenlose Gegner',
			urlToOpen: 'https://open.spotify.com/album/7K7dfMc3VwHOKtENI1BWTD'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27331b0c53b003f5fc1894caf4b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0231b0c53b003f5fc1894caf4b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485131b0c53b003f5fc1894caf4b', width: 64}
				]),
			id: '2uOsf31oenHRd4DVxCSjn9',
			name: '148/und die feurige Flut',
			urlToOpen: 'https://open.spotify.com/album/2uOsf31oenHRd4DVxCSjn9'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730f900f5b76227564e2ac52d0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020f900f5b76227564e2ac52d0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510f900f5b76227564e2ac52d0', width: 64}
				]),
			id: '35aU9bfmxPGdjiRA4JMuFd',
			name: '147/Grusel auf Campbell Castle',
			urlToOpen: 'https://open.spotify.com/album/35aU9bfmxPGdjiRA4JMuFd'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b7b5a83fc96967a77a41c681', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b7b5a83fc96967a77a41c681', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b7b5a83fc96967a77a41c681', width: 64}
				]),
			id: '3D9Jf4mdOBoeyrKpffYBvy',
			name: '146/Der Biss der Bestie',
			urlToOpen: 'https://open.spotify.com/album/3D9Jf4mdOBoeyrKpffYBvy'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a5f99b0715333a2e0316a8a2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a5f99b0715333a2e0316a8a2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a5f99b0715333a2e0316a8a2', width: 64}
				]),
			id: '5RBu5WK95Q6BtWfA4o3Vgs',
			name: 'Brainwash - Gefangene Gedanken',
			urlToOpen: 'https://open.spotify.com/album/5RBu5WK95Q6BtWfA4o3Vgs'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27300797e0abeef149d3662ffb3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0200797e0abeef149d3662ffb3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485100797e0abeef149d3662ffb3', width: 64}
				]),
			id: '6TjzBTmeDakBgh5NOGj1BC',
			name: '145/Die Rache der Samurai',
			urlToOpen: 'https://open.spotify.com/album/6TjzBTmeDakBgh5NOGj1BC'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f283bdbdd13c7d1b7c6f84b7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f283bdbdd13c7d1b7c6f84b7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f283bdbdd13c7d1b7c6f84b7', width: 64}
				]),
			id: '2RxTF6MhAVOtudVNOyHTQz',
			name: '144/Zwillinge der Finsternis',
			urlToOpen: 'https://open.spotify.com/album/2RxTF6MhAVOtudVNOyHTQz'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731f5fe86b88a361fd67a8cd29', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021f5fe86b88a361fd67a8cd29', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511f5fe86b88a361fd67a8cd29', width: 64}
				]),
			id: '249qkyRcqMAoKJhXwrTYtE',
			name: 'House of Horrors - Haus der Angst',
			urlToOpen: 'https://open.spotify.com/album/249qkyRcqMAoKJhXwrTYtE'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b149627e961840b411ca5b6e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b149627e961840b411ca5b6e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b149627e961840b411ca5b6e', width: 64}
				]),
			id: '4Y7Pxv7pzLmKVJowmBwOkd',
			name: '143/und die Poker-Hölle',
			urlToOpen: 'https://open.spotify.com/album/4Y7Pxv7pzLmKVJowmBwOkd'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f0c418735c4c3a3e05c24a0d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f0c418735c4c3a3e05c24a0d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f0c418735c4c3a3e05c24a0d', width: 64}
				]),
			id: '71moidSHTwJsc2N70axEce',
			name: '142/Tödliches Eis',
			urlToOpen: 'https://open.spotify.com/album/71moidSHTwJsc2N70axEce'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27322daea68bf2efd750a4e0155', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0222daea68bf2efd750a4e0155', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485122daea68bf2efd750a4e0155', width: 64}
				]),
			id: '3JJeehFIJTxhrltC6e44VT',
			name: 'Und der dreiTag',
			urlToOpen: 'https://open.spotify.com/album/3JJeehFIJTxhrltC6e44VT'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f686875a92eb009b64b11b25', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f686875a92eb009b64b11b25', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f686875a92eb009b64b11b25', width: 64}
				]),
			id: '6gxj68DOHRSVlEM4xzwtRy',
			name: '141/und die Fußball-Falle',
			urlToOpen: 'https://open.spotify.com/album/6gxj68DOHRSVlEM4xzwtRy'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734162c0149a67f725fafbda9c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024162c0149a67f725fafbda9c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514162c0149a67f725fafbda9c', width: 64}
				]),
			id: '3HxAtK23R2gFkW000mdaFT',
			name: '140/Stadt der Vampire',
			urlToOpen: 'https://open.spotify.com/album/3HxAtK23R2gFkW000mdaFT'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27347d5f1896f1c4be3f3cb0288', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0247d5f1896f1c4be3f3cb0288', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485147d5f1896f1c4be3f3cb0288', width: 64}
				]),
			id: '6RJf8I60kNhnYxlnw7eTGv',
			name: '139/Das Geheimnis der Diva',
			urlToOpen: 'https://open.spotify.com/album/6RJf8I60kNhnYxlnw7eTGv'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27378fdf6976bd9764e411a36a0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0278fdf6976bd9764e411a36a0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485178fdf6976bd9764e411a36a0', width: 64}
				]),
			id: '79enDMGQWH7LQ5weNB96g7',
			name: '138/Die geheime Treppe',
			urlToOpen: 'https://open.spotify.com/album/79enDMGQWH7LQ5weNB96g7'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273fd62ba11135fd7b4be4cd678', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02fd62ba11135fd7b4be4cd678', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851fd62ba11135fd7b4be4cd678', width: 64}
				]),
			id: '3m7fR2wOkytZHq9m4QeBkB',
			name: '137/Pfad der Angst',
			urlToOpen: 'https://open.spotify.com/album/3m7fR2wOkytZHq9m4QeBkB'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27373bbf4a75a61d03ffe08c091', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0273bbf4a75a61d03ffe08c091', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485173bbf4a75a61d03ffe08c091', width: 64}
				]),
			id: '5HiWGQmaCRaxdaon49Iw9S',
			name: '136/und das versunkene Dorf',
			urlToOpen: 'https://open.spotify.com/album/5HiWGQmaCRaxdaon49Iw9S'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c2461c7126aca0c41330b030', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c2461c7126aca0c41330b030', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c2461c7126aca0c41330b030', width: 64}
				]),
			id: '0V8G13FK8oGJV8Nde4Q2M1',
			name: '135/Fluch des Piraten',
			urlToOpen: 'https://open.spotify.com/album/0V8G13FK8oGJV8Nde4Q2M1'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27378896011fd97eb63ca6fa654', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0278896011fd97eb63ca6fa654', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485178896011fd97eb63ca6fa654', width: 64}
				]),
			id: '0TmWLedytkxVuP9b5Hqeqq',
			name: '135/Fluch des Piraten',
			urlToOpen: 'https://open.spotify.com/album/0TmWLedytkxVuP9b5Hqeqq'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c2e62b4b930b54db934dbc1b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c2e62b4b930b54db934dbc1b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c2e62b4b930b54db934dbc1b', width: 64}
				]),
			id: '1Cta130Rwp5vH1ddfAChbU',
			name: '134/Der tote Mönch',
			urlToOpen: 'https://open.spotify.com/album/1Cta130Rwp5vH1ddfAChbU'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27389c779dd1a32247b311a481f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0289c779dd1a32247b311a481f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485189c779dd1a32247b311a481f', width: 64}
				]),
			id: '1juMQy6yZVmk9Za6HeiicB',
			name: '133/Fels der Dämonen',
			urlToOpen: 'https://open.spotify.com/album/1juMQy6yZVmk9Za6HeiicB'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ebff189258d828960ad77f14', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ebff189258d828960ad77f14', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ebff189258d828960ad77f14', width: 64}
				]),
			id: '23wcElHGWpunC23ggr4PcW',
			name: '132/Spuk im Netz',
			urlToOpen: 'https://open.spotify.com/album/23wcElHGWpunC23ggr4PcW'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731af90c3630a08b8a3ec60703', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021af90c3630a08b8a3ec60703', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511af90c3630a08b8a3ec60703', width: 64}
				]),
			id: '4eorcDi9eRfsi7X0A91Z7u',
			name: '131/Haus des Schreckens',
			urlToOpen: 'https://open.spotify.com/album/4eorcDi9eRfsi7X0A91Z7u'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27364d02b215ce0e4f6686155fd', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0264d02b215ce0e4f6686155fd', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485164d02b215ce0e4f6686155fd', width: 64}
				]),
			id: '5l5CFSjzSdhbflqmplcTFX',
			name: '130/Der Fluch des Drachen',
			urlToOpen: 'https://open.spotify.com/album/5l5CFSjzSdhbflqmplcTFX'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737e726f5a4d48169ea5ce8f72', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027e726f5a4d48169ea5ce8f72', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517e726f5a4d48169ea5ce8f72', width: 64}
				]),
			id: '0sCs2S5YTEN0UT1fwWpvKw',
			name: 'Das verfluchte Schloss',
			urlToOpen: 'https://open.spotify.com/album/0sCs2S5YTEN0UT1fwWpvKw'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a174478a2c172a88f3b5ddfd', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a174478a2c172a88f3b5ddfd', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a174478a2c172a88f3b5ddfd', width: 64}
				]),
			id: '1lD4RdnibVS7QhtZqCal9E',
			name: '129/SMS aus dem Grab',
			urlToOpen: 'https://open.spotify.com/album/1lD4RdnibVS7QhtZqCal9E'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b47cbcad32c5efdb8fd95789', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b47cbcad32c5efdb8fd95789', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b47cbcad32c5efdb8fd95789', width: 64}
				]),
			id: '3XXYXmCEe185oHxigCRo97',
			name: '128/Schatten über Hollywood',
			urlToOpen: 'https://open.spotify.com/album/3XXYXmCEe185oHxigCRo97'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27313a17d36e8f6f8832dc622fb', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0213a17d36e8f6f8832dc622fb', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485113a17d36e8f6f8832dc622fb', width: 64}
				]),
			id: '0mp5HVWlYinEYa7Y4Q2vau',
			name: '127/Schwarze Madonna',
			urlToOpen: 'https://open.spotify.com/album/0mp5HVWlYinEYa7Y4Q2vau'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739f9cca8534e700550610316c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029f9cca8534e700550610316c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519f9cca8534e700550610316c', width: 64}
				]),
			id: '0AnyLaLPx339iGaxjqVfob',
			name: '126/Schrecken aus dem Moor',
			urlToOpen: 'https://open.spotify.com/album/0AnyLaLPx339iGaxjqVfob'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27323eb1a466879a783317b586e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0223eb1a466879a783317b586e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485123eb1a466879a783317b586e', width: 64}
				]),
			id: '0sIRyuExi7jBQmOpHyyY78',
			name: '125/Feuermond',
			urlToOpen: 'https://open.spotify.com/album/0sIRyuExi7jBQmOpHyyY78'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273773e640683d4123d7e6b76c0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02773e640683d4123d7e6b76c0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851773e640683d4123d7e6b76c0', width: 64}
				]),
			id: '0LoesJ9VnJPrlvIDz4u4Xt',
			name: '124/Geister-Canyon',
			urlToOpen: 'https://open.spotify.com/album/0LoesJ9VnJPrlvIDz4u4Xt'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c7bd58873b275bc532c8f1ab', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c7bd58873b275bc532c8f1ab', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c7bd58873b275bc532c8f1ab', width: 64}
				]),
			id: '3HgetGSMzg6bGM6b67YZcj',
			name: '123/Fußballfieber',
			urlToOpen: 'https://open.spotify.com/album/3HgetGSMzg6bGM6b67YZcj'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273be232fbe5735eead5214cac8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02be232fbe5735eead5214cac8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851be232fbe5735eead5214cac8', width: 64}
				]),
			id: '68NWcgqeCQMZ3QcPJXBhzH',
			name: '122/und der Geisterzug',
			urlToOpen: 'https://open.spotify.com/album/68NWcgqeCQMZ3QcPJXBhzH'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d12afb15026dc752cf624a5c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d12afb15026dc752cf624a5c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d12afb15026dc752cf624a5c', width: 64}
				]),
			id: '59WTBKsGdomSgMztadw3uL',
			name: 'Das Geheimnis der Geisterinsel',
			urlToOpen: 'https://open.spotify.com/album/59WTBKsGdomSgMztadw3uL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e54726f6d0ffb620ba37c245', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e54726f6d0ffb620ba37c245', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e54726f6d0ffb620ba37c245', width: 64}
				]),
			id: '6d21lwV9Imn3ObWUyV1UN2',
			name: '121/Spur ins Nichts',
			urlToOpen: 'https://open.spotify.com/album/6d21lwV9Imn3ObWUyV1UN2'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c49db9ae4ed6297801ff06ce', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c49db9ae4ed6297801ff06ce', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c49db9ae4ed6297801ff06ce', width: 64}
				]),
			id: '6fVTJQKJBku1yaOmZOnfwg',
			name: '120/Der schwarze Skorpion',
			urlToOpen: 'https://open.spotify.com/album/6fVTJQKJBku1yaOmZOnfwg'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273381a69a5e31b95da673fd94d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02381a69a5e31b95da673fd94d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851381a69a5e31b95da673fd94d', width: 64}
				]),
			id: '1GKXpMQRKEyZI8pL62VUIP',
			name: '118/Das düstere Vermächtnis',
			urlToOpen: 'https://open.spotify.com/album/1GKXpMQRKEyZI8pL62VUIP'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732a5ee3faae3f2269976e8dfc', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022a5ee3faae3f2269976e8dfc', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512a5ee3faae3f2269976e8dfc', width: 64}
				]),
			id: '3piMnopGsrEAKd1EZxsU3i',
			name: '116/Codename: Cobra',
			urlToOpen: 'https://open.spotify.com/album/3piMnopGsrEAKd1EZxsU3i'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273087e42e930f26bb7737e0bd5', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02087e42e930f26bb7737e0bd5', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851087e42e930f26bb7737e0bd5', width: 64}
				]),
			id: '3rxr4SLE2EG0EAlpSeI99o',
			name: '117/Der finstere Rivale',
			urlToOpen: 'https://open.spotify.com/album/3rxr4SLE2EG0EAlpSeI99o'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e6547000f12a054eb77fc963', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e6547000f12a054eb77fc963', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e6547000f12a054eb77fc963', width: 64}
				]),
			id: '5Hafee7JOUqNVqtsrCtrTZ',
			name: '115/Auf tödlichem Kurs',
			urlToOpen: 'https://open.spotify.com/album/5Hafee7JOUqNVqtsrCtrTZ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735fd7a3b166aed5b9e94b957f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025fd7a3b166aed5b9e94b957f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515fd7a3b166aed5b9e94b957f', width: 64}
				]),
			id: '5L2KCw21QT3JKg1KKuqSeF',
			name: '114/Die Villa der Toten',
			urlToOpen: 'https://open.spotify.com/album/5L2KCw21QT3JKg1KKuqSeF'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732de3607281551ed6006a3a31', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022de3607281551ed6006a3a31', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512de3607281551ed6006a3a31', width: 64}
				]),
			id: '3bFvjy9IyWd7GrzN2dr0Hi',
			name: '113/Das Auge des Drachen',
			urlToOpen: 'https://open.spotify.com/album/3bFvjy9IyWd7GrzN2dr0Hi'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273cbbe8a5338c426a0f2924a28', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02cbbe8a5338c426a0f2924a28', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851cbbe8a5338c426a0f2924a28', width: 64}
				]),
			id: '0WBhXS0uAYuL1sYb6vjYeS',
			name: '112/Schlucht der Dämonen',
			urlToOpen: 'https://open.spotify.com/album/0WBhXS0uAYuL1sYb6vjYeS'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735a931f16edad1c6d9cc1bb53', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025a931f16edad1c6d9cc1bb53', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515a931f16edad1c6d9cc1bb53', width: 64}
				]),
			id: '7b9OiVsktCZyldiAnjkVDx',
			name: '111/Die Höhle des Grauens',
			urlToOpen: 'https://open.spotify.com/album/7b9OiVsktCZyldiAnjkVDx'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732353b202c0b40d82be03a9ef', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022353b202c0b40d82be03a9ef', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512353b202c0b40d82be03a9ef', width: 64}
				]),
			id: '1OBHPhBUih26oQTqxLvJTQ',
			name: '110/Panik im Park',
			urlToOpen: 'https://open.spotify.com/album/1OBHPhBUih26oQTqxLvJTQ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c4278034761a0813a6a3e738', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c4278034761a0813a6a3e738', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c4278034761a0813a6a3e738', width: 64}
				]),
			id: '4RZllDAKF3DeDz6jZJFXTa',
			name: '109/Gefährliches Quiz',
			urlToOpen: 'https://open.spotify.com/album/4RZllDAKF3DeDz6jZJFXTa'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273df2af81904cbb1dbc2df2e8d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02df2af81904cbb1dbc2df2e8d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851df2af81904cbb1dbc2df2e8d', width: 64}
				]),
			id: '3v4W4AFaI8uO7J88ojaSkS',
			name: '108/Die sieben Tore',
			urlToOpen: 'https://open.spotify.com/album/3v4W4AFaI8uO7J88ojaSkS'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27392b901c952011fd97448b86f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0292b901c952011fd97448b86f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485192b901c952011fd97448b86f', width: 64}
				]),
			id: '3kBby5GJMI4U97XljKcPFD',
			name: '107/und der Schatz der Mönche',
			urlToOpen: 'https://open.spotify.com/album/3kBby5GJMI4U97XljKcPFD'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273398f444d7f49e1b44c5c8acc', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02398f444d7f49e1b44c5c8acc', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851398f444d7f49e1b44c5c8acc', width: 64}
				]),
			id: '4uJPgDMOIRfoAumwwmpRbR',
			name: 'Master of Chess',
			urlToOpen: 'https://open.spotify.com/album/4uJPgDMOIRfoAumwwmpRbR'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730098553cfb28f108dba3a502', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020098553cfb28f108dba3a502', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510098553cfb28f108dba3a502', width: 64}
				]),
			id: '4eX1wH67TDcYPZ1ZsjtPb6',
			name: '106/Der Mann ohne Kopf',
			urlToOpen: 'https://open.spotify.com/album/4eX1wH67TDcYPZ1ZsjtPb6'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d0ae111071f608da802435d1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d0ae111071f608da802435d1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d0ae111071f608da802435d1', width: 64}
				]),
			id: '6Mi4Smq7Fn8qNOg6Xnf0In',
			name: '105/Der Nebelberg',
			urlToOpen: 'https://open.spotify.com/album/6Mi4Smq7Fn8qNOg6Xnf0In'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27319f7e2f7a86ca99d5575d0a5', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0219f7e2f7a86ca99d5575d0a5', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485119f7e2f7a86ca99d5575d0a5', width: 64}
				]),
			id: '6joRNVLN69v3eSnxM86BSM',
			name: '104/Gift per e-mail',
			urlToOpen: 'https://open.spotify.com/album/6joRNVLN69v3eSnxM86BSM'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273eecb447a0575319bd4ac9e1a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02eecb447a0575319bd4ac9e1a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851eecb447a0575319bd4ac9e1a', width: 64}
				]),
			id: '4ADdmpObDUmBdvyJ9oNz5o',
			name: '103/Das Erbe des Meisterdiebes',
			urlToOpen: 'https://open.spotify.com/album/4ADdmpObDUmBdvyJ9oNz5o'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27337f76af0db2d6a179f028cae', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0237f76af0db2d6a179f028cae', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485137f76af0db2d6a179f028cae', width: 64}
				]),
			id: '3NYWEuwAPt4PIJ4OeNxmzO',
			name: '102/Doppelte Täuschung',
			urlToOpen: 'https://open.spotify.com/album/3NYWEuwAPt4PIJ4OeNxmzO'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d34be4cc65fa0efc47f8b3b1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d34be4cc65fa0efc47f8b3b1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d34be4cc65fa0efc47f8b3b1', width: 64}
				]),
			id: '1DZAe0qMw8Pq9EPoX6gETA',
			name: '101/und das Hexen-Handy',
			urlToOpen: 'https://open.spotify.com/album/1DZAe0qMw8Pq9EPoX6gETA'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731d00680cbaa231468512c228', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021d00680cbaa231468512c228', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511d00680cbaa231468512c228', width: 64}
				]),
			id: '4KXnXnpFRnQsjeZHpNC7X9',
			name: 'Super-Papagei 2004',
			urlToOpen: 'https://open.spotify.com/album/4KXnXnpFRnQsjeZHpNC7X9'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27380945825ee2a30bc4349dc5a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0280945825ee2a30bc4349dc5a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485180945825ee2a30bc4349dc5a', width: 64}
				]),
			id: '6zwBnyiy9Hy9TAser0DOuL',
			name: '100/Toteninsel',
			urlToOpen: 'https://open.spotify.com/album/6zwBnyiy9Hy9TAser0DOuL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734c5078f069ebe7ef846a4472', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024c5078f069ebe7ef846a4472', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514c5078f069ebe7ef846a4472', width: 64}
				]),
			id: '3haGZZ8x7PyaGxiqcLmLf9',
			name: '099/Rufmord',
			urlToOpen: 'https://open.spotify.com/album/3haGZZ8x7PyaGxiqcLmLf9'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734f9c9e397bc7f074772bd500', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024f9c9e397bc7f074772bd500', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514f9c9e397bc7f074772bd500', width: 64}
				]),
			id: '4C4o7tHpT20QrdsvmI70uI',
			name: '098/Tal des Schreckens',
			urlToOpen: 'https://open.spotify.com/album/4C4o7tHpT20QrdsvmI70uI'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273588d4b40847324a1a3bcc43b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02588d4b40847324a1a3bcc43b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851588d4b40847324a1a3bcc43b', width: 64}
				]),
			id: '2bfJa4PRKVb7as86HZv8Df',
			name: '097/Insektenstachel',
			urlToOpen: 'https://open.spotify.com/album/2bfJa4PRKVb7as86HZv8Df'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27346ee395d079d72f171bef653', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0246ee395d079d72f171bef653', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485146ee395d079d72f171bef653', width: 64}
				]),
			id: '5ub4r9Q0YVMrWuOEesu6dR',
			name: '096/und der rote Rächer',
			urlToOpen: 'https://open.spotify.com/album/5ub4r9Q0YVMrWuOEesu6dR'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738d72e8ad25c9b53e82b34cbb', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028d72e8ad25c9b53e82b34cbb', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518d72e8ad25c9b53e82b34cbb', width: 64}
				]),
			id: '3UHj03eU7OnDuMVCTLbmcj',
			name: '094/Das schwarze Monster',
			urlToOpen: 'https://open.spotify.com/album/3UHj03eU7OnDuMVCTLbmcj'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273cb17fbf445910767655a3028', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02cb17fbf445910767655a3028', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851cb17fbf445910767655a3028', width: 64}
				]),
			id: '7a9rwqPkVdU4FC2cWFudVO',
			name: '093/und das Geisterschiff',
			urlToOpen: 'https://open.spotify.com/album/7a9rwqPkVdU4FC2cWFudVO'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b4e43deef6192a9bb631fc63', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b4e43deef6192a9bb631fc63', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b4e43deef6192a9bb631fc63', width: 64}
				]),
			id: '7yMRFgR8FRyWwiLHzQQa2B',
			name: '092/Todesflug',
			urlToOpen: 'https://open.spotify.com/album/7yMRFgR8FRyWwiLHzQQa2B'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273654d32b58e16b58c804b5c10', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02654d32b58e16b58c804b5c10', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851654d32b58e16b58c804b5c10', width: 64}
				]),
			id: '0Jh7gzQaOscoFndb3raq2l',
			name: '091/Labyrinth der Götter',
			urlToOpen: 'https://open.spotify.com/album/0Jh7gzQaOscoFndb3raq2l'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733bf099f684b8a9a054cc4963', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023bf099f684b8a9a054cc4963', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513bf099f684b8a9a054cc4963', width: 64}
				]),
			id: '2dlgtHB8z7ZhSl1fsSb0Ic',
			name: '090/Der Feuerteufel',
			urlToOpen: 'https://open.spotify.com/album/2dlgtHB8z7ZhSl1fsSb0Ic'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27342f79d24a75f555cc7b0e5e0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0242f79d24a75f555cc7b0e5e0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485142f79d24a75f555cc7b0e5e0', width: 64}
				]),
			id: '3TcIn19pVz5LXE8UleuLuX',
			name: '089/Tödliche Spur',
			urlToOpen: 'https://open.spotify.com/album/3TcIn19pVz5LXE8UleuLuX'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ade7f6d660fda30327d3f385', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ade7f6d660fda30327d3f385', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ade7f6d660fda30327d3f385', width: 64}
				]),
			id: '3CZCwdMpj2jnjI43ZlnY5T',
			name: '088/Vampir im Internet',
			urlToOpen: 'https://open.spotify.com/album/3CZCwdMpj2jnjI43ZlnY5T'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27344c680f940d157eb316f4894', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0244c680f940d157eb316f4894', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485144c680f940d157eb316f4894', width: 64}
				]),
			id: '1KpWkUQaj5ECJsrb8SrPl4',
			name: '087/Wolfsgesicht',
			urlToOpen: 'https://open.spotify.com/album/1KpWkUQaj5ECJsrb8SrPl4'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27326b7ae0b099c6a24717666ca', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0226b7ae0b099c6a24717666ca', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485126b7ae0b099c6a24717666ca', width: 64}
				]),
			id: '4uF9MjchYgq5jjPi5x5YZy',
			name: '086/Nacht in Angst',
			urlToOpen: 'https://open.spotify.com/album/4uF9MjchYgq5jjPi5x5YZy'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d67e953a55891e24dca35560', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d67e953a55891e24dca35560', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d67e953a55891e24dca35560', width: 64}
				]),
			id: '2eeodcwD9HXpcA2rvoFkIq',
			name: '085/Feuerturm',
			urlToOpen: 'https://open.spotify.com/album/2eeodcwD9HXpcA2rvoFkIq'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734c2231ecc6f5a334d7f7fad2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024c2231ecc6f5a334d7f7fad2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514c2231ecc6f5a334d7f7fad2', width: 64}
				]),
			id: '3bhsXwKIDwVK5LTkDCICp0',
			name: '084/Musik des Teufels',
			urlToOpen: 'https://open.spotify.com/album/3bhsXwKIDwVK5LTkDCICp0'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730d0eabdf92a0297d227819e9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020d0eabdf92a0297d227819e9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510d0eabdf92a0297d227819e9', width: 64}
				]),
			id: '3yofHdHiOLtVZlxWCZ4XBB',
			name: '083/Meuterei auf hoher See',
			urlToOpen: 'https://open.spotify.com/album/3yofHdHiOLtVZlxWCZ4XBB'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734caa5f8a9f018ddb3f91e23e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024caa5f8a9f018ddb3f91e23e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514caa5f8a9f018ddb3f91e23e', width: 64}
				]),
			id: '7iysTnwaaFrPPWAuUyyi0c',
			name: '082/Die Karten des Bösen',
			urlToOpen: 'https://open.spotify.com/album/7iysTnwaaFrPPWAuUyyi0c'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f3011b0648c8f650e822476c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f3011b0648c8f650e822476c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f3011b0648c8f650e822476c', width: 64}
				]),
			id: '2s5u6hCaMpTIvZtBRvQzha',
			name: '081/Verdeckte Fouls',
			urlToOpen: 'https://open.spotify.com/album/2s5u6hCaMpTIvZtBRvQzha'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733b114ffdd62ab393de5354f0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023b114ffdd62ab393de5354f0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513b114ffdd62ab393de5354f0', width: 64}
				]),
			id: '4izXuApLzBWtWHrFqgcrxL',
			name: '080/Geheimakte Ufo',
			urlToOpen: 'https://open.spotify.com/album/4izXuApLzBWtWHrFqgcrxL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27320cb5ae09b0daea1ad4c53c3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0220cb5ae09b0daea1ad4c53c3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485120cb5ae09b0daea1ad4c53c3', width: 64}
				]),
			id: '1rDYlXZy6vN4wqqQ6buqOr',
			name: '079/Im Bann des Voodoo',
			urlToOpen: 'https://open.spotify.com/album/1rDYlXZy6vN4wqqQ6buqOr'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e677666d78d8b94f9fe18088', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e677666d78d8b94f9fe18088', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e677666d78d8b94f9fe18088', width: 64}
				]),
			id: '6t7Y1H4dUM0d4JycenVskN',
			name: '078/Das leere Grab',
			urlToOpen: 'https://open.spotify.com/album/6t7Y1H4dUM0d4JycenVskN'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734cabd18fdc0cf778426d0553', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024cabd18fdc0cf778426d0553', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514cabd18fdc0cf778426d0553', width: 64}
				]),
			id: '3CMN8Y4kjoG4sFwlOEpfsV',
			name: '077/Pistenteufel',
			urlToOpen: 'https://open.spotify.com/album/3CMN8Y4kjoG4sFwlOEpfsV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273eb1fdaace1fbbdf693b21e12', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02eb1fdaace1fbbdf693b21e12', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851eb1fdaace1fbbdf693b21e12', width: 64}
				]),
			id: '6RDPGc2budsdTw1lj8f2O5',
			name: '076/Stimmen aus dem Nichts',
			urlToOpen: 'https://open.spotify.com/album/6RDPGc2budsdTw1lj8f2O5'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ce89fa1312e47c5c7536acfd', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ce89fa1312e47c5c7536acfd', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ce89fa1312e47c5c7536acfd', width: 64}
				]),
			id: '2IqfdlQamN3vCWN3CKLEVI',
			name: '075/Die Spur des Raben',
			urlToOpen: 'https://open.spotify.com/album/2IqfdlQamN3vCWN3CKLEVI'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d9e08cc5f3d5080185f1692f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d9e08cc5f3d5080185f1692f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d9e08cc5f3d5080185f1692f', width: 64}
				]),
			id: '69VLqtWA1bpguYRCFRAxQl',
			name: '074/und das brennende Schwert',
			urlToOpen: 'https://open.spotify.com/album/69VLqtWA1bpguYRCFRAxQl'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273619dc63786747c9dc030d6f6', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02619dc63786747c9dc030d6f6', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851619dc63786747c9dc030d6f6', width: 64}
				]),
			id: '1K8kXLhNnHSdPvtUwf74DE',
			name: '073/Poltergeist',
			urlToOpen: 'https://open.spotify.com/album/1K8kXLhNnHSdPvtUwf74DE'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27358f27abd2d23ca13e48eb54f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0258f27abd2d23ca13e48eb54f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485158f27abd2d23ca13e48eb54f', width: 64}
				]),
			id: '2GQjkF0ceIse6jVZkUuAQc',
			name: '072/Dreckiger Deal',
			urlToOpen: 'https://open.spotify.com/album/2GQjkF0ceIse6jVZkUuAQc'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f2abdc24f93b2ea1f583b09a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f2abdc24f93b2ea1f583b09a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f2abdc24f93b2ea1f583b09a', width: 64}
				]),
			id: '6EEN6onzbHIOxnwUkGfKhv',
			name: '071/Die verschwundene Seglerin',
			urlToOpen: 'https://open.spotify.com/album/6EEN6onzbHIOxnwUkGfKhv'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e5d817cd9ad8cfcfd9125df6', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e5d817cd9ad8cfcfd9125df6', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e5d817cd9ad8cfcfd9125df6', width: 64}
				]),
			id: '4mlQEwk6I0XuksZCYTtatz',
			name: '070/Schüsse aus dem Dunkel',
			urlToOpen: 'https://open.spotify.com/album/4mlQEwk6I0XuksZCYTtatz'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a0fcc7d291d25cb9dc61c216', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a0fcc7d291d25cb9dc61c216', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a0fcc7d291d25cb9dc61c216', width: 64}
				]),
			id: '2erJcBofKBO6GFMqDPppsU',
			name: '069/Späte Rache',
			urlToOpen: 'https://open.spotify.com/album/2erJcBofKBO6GFMqDPppsU'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273454154cd9c03cec5238d1e94', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02454154cd9c03cec5238d1e94', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851454154cd9c03cec5238d1e94', width: 64}
				]),
			id: '21pUsEhxssm6fvumGFmi35',
			name: '068/und der Schatz im Bergsee',
			urlToOpen: 'https://open.spotify.com/album/21pUsEhxssm6fvumGFmi35'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273cca08a3eabfc454ebeed3711', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02cca08a3eabfc454ebeed3711', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851cca08a3eabfc454ebeed3711', width: 64}
				]),
			id: '7Hjk98j1FSrHV5IHWmeeFh',
			name: '067/und das Geheimnis der Särge',
			urlToOpen: 'https://open.spotify.com/album/7Hjk98j1FSrHV5IHWmeeFh'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737babb9909a09316ec73ccaad', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027babb9909a09316ec73ccaad', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517babb9909a09316ec73ccaad', width: 64}
				]),
			id: '6qj4LD0zotutkIgEg9OvDj',
			name: '066/und die Schattenmänner',
			urlToOpen: 'https://open.spotify.com/album/6qj4LD0zotutkIgEg9OvDj'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731f529295cce35763989fd148', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021f529295cce35763989fd148', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511f529295cce35763989fd148', width: 64}
				]),
			id: '62z7yW4RKhhuAp0RklmNvc',
			name: '065/Diamantenschmuggel',
			urlToOpen: 'https://open.spotify.com/album/62z7yW4RKhhuAp0RklmNvc'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27304ba4780b66f258a3cd441c9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0204ba4780b66f258a3cd441c9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485104ba4780b66f258a3cd441c9', width: 64}
				]),
			id: '0tmMvsGyWRzVckCYgkvve3',
			name: '064/Geisterstadt',
			urlToOpen: 'https://open.spotify.com/album/0tmMvsGyWRzVckCYgkvve3'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d8487e9880060cc95729431b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d8487e9880060cc95729431b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d8487e9880060cc95729431b', width: 64}
				]),
			id: '5GPTZKrD7eaCp9p6VOBuIN',
			name: '063/Fußball-Gangster',
			urlToOpen: 'https://open.spotify.com/album/5GPTZKrD7eaCp9p6VOBuIN'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273752fdd90d486ca2db672b679', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02752fdd90d486ca2db672b679', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851752fdd90d486ca2db672b679', width: 64}
				]),
			id: '0biXUv1uGUaVsPcw8nAZCY',
			name: '062/Spuk im Hotel',
			urlToOpen: 'https://open.spotify.com/album/0biXUv1uGUaVsPcw8nAZCY'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f4b8620352e4ad4f881fcff2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f4b8620352e4ad4f881fcff2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f4b8620352e4ad4f881fcff2', width: 64}
				]),
			id: '26M4ktHp3isOX6XJazAxPn',
			name: '061/und die Rache des Tigers',
			urlToOpen: 'https://open.spotify.com/album/26M4ktHp3isOX6XJazAxPn'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f3a2b7f3d1470290d598aecf', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f3a2b7f3d1470290d598aecf', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f3a2b7f3d1470290d598aecf', width: 64}
				]),
			id: '7cBoiWgh1bTMZmCwJE0eMu',
			name: '060/Dopingmixer',
			urlToOpen: 'https://open.spotify.com/album/7cBoiWgh1bTMZmCwJE0eMu'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ce7a7ca0406350458176cae7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ce7a7ca0406350458176cae7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ce7a7ca0406350458176cae7', width: 64}
				]),
			id: '2qcA1EqAoUsqxXqIivY6Zc',
			name: '059/Giftiges Wasser',
			urlToOpen: 'https://open.spotify.com/album/2qcA1EqAoUsqxXqIivY6Zc'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733c87f9c84d96214175193ded', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023c87f9c84d96214175193ded', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513c87f9c84d96214175193ded', width: 64}
				]),
			id: '6DWykdlgf60Mq02hPAGYVD',
			name: '058/und der verrückte Maler',
			urlToOpen: 'https://open.spotify.com/album/6DWykdlgf60Mq02hPAGYVD'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733da006f111c8c1424c4041e0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023da006f111c8c1424c4041e0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513da006f111c8c1424c4041e0', width: 64}
				]),
			id: '5W6dRiaeSVE7zUBYHbepak',
			name: '057/Tatort Zirkus',
			urlToOpen: 'https://open.spotify.com/album/5W6dRiaeSVE7zUBYHbepak'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737ad14d2b95a8d088ea3fec28', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027ad14d2b95a8d088ea3fec28', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517ad14d2b95a8d088ea3fec28', width: 64}
				]),
			id: '3fotka2Hbq0N7V9KKWIDdw',
			name: '056/Angriff der Computer-Viren',
			urlToOpen: 'https://open.spotify.com/album/3fotka2Hbq0N7V9KKWIDdw'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273676bdcded23a5f0a5bb034a2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02676bdcded23a5f0a5bb034a2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851676bdcded23a5f0a5bb034a2', width: 64}
				]),
			id: '4oH2GUWlSSsSgVkxyPVHX1',
			name: '055/Gekaufte Spieler',
			urlToOpen: 'https://open.spotify.com/album/4oH2GUWlSSsSgVkxyPVHX1'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d86adc8ae21f94f9e0083037', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d86adc8ae21f94f9e0083037', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d86adc8ae21f94f9e0083037', width: 64}
				]),
			id: '1Fg15cBLFliy6Kr60QqRan',
			name: '054/Gefahr im Verzug',
			urlToOpen: 'https://open.spotify.com/album/1Fg15cBLFliy6Kr60QqRan'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738388f7155e69af21b68b05e7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028388f7155e69af21b68b05e7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518388f7155e69af21b68b05e7', width: 64}
				]),
			id: '0F9ebKwTd5RNZZOu49lWuF',
			name: '053/und die Automafia',
			urlToOpen: 'https://open.spotify.com/album/0F9ebKwTd5RNZZOu49lWuF'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733a999a94e6618455692574b8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023a999a94e6618455692574b8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513a999a94e6618455692574b8', width: 64}
				]),
			id: '3pXJh2A9gYzNt22rEIE5q7',
			name: '052/und die Musikpiraten',
			urlToOpen: 'https://open.spotify.com/album/3pXJh2A9gYzNt22rEIE5q7'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d93183ce852662f21f208c93', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d93183ce852662f21f208c93', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d93183ce852662f21f208c93', width: 64}
				]),
			id: '71kiy6INV3LzsCddpTZoHf',
			name: '051/und der riskante Ritt',
			urlToOpen: 'https://open.spotify.com/album/71kiy6INV3LzsCddpTZoHf'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737656b06426382e26e7927ce3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027656b06426382e26e7927ce3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517656b06426382e26e7927ce3', width: 64}
				]),
			id: '6DKfjDIB1BSYRGAi2YJYm3',
			name: '050/und der verschwundene Filmstar',
			urlToOpen: 'https://open.spotify.com/album/6DKfjDIB1BSYRGAi2YJYm3'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730b7ef9d9d81296a8fb03b2e3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020b7ef9d9d81296a8fb03b2e3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510b7ef9d9d81296a8fb03b2e3', width: 64}
				]),
			id: '7t2SteAH5OnLLC1ghTAmka',
			name: '049/und die Comic-Diebe',
			urlToOpen: 'https://open.spotify.com/album/7t2SteAH5OnLLC1ghTAmka'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27385076eb654debecdff9f1966', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0285076eb654debecdff9f1966', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485185076eb654debecdff9f1966', width: 64}
				]),
			id: '5IRxm1lo35PttzU8YLslZy',
			name: '048/und die gefährlichen Fässer',
			urlToOpen: 'https://open.spotify.com/album/5IRxm1lo35PttzU8YLslZy'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739a5d121daae0aea583baf896', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029a5d121daae0aea583baf896', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519a5d121daae0aea583baf896', width: 64}
				]),
			id: '3iWNsrEs9D0FFlKFfscdvL',
			name: '047/und der giftige Gockel',
			urlToOpen: 'https://open.spotify.com/album/3iWNsrEs9D0FFlKFfscdvL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a2c864b4cba739aa335de1db', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a2c864b4cba739aa335de1db', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a2c864b4cba739aa335de1db', width: 64}
				]),
			id: '6YX4i7aMCYmn20zvAFM3lG',
			name: '046/und der schrullige Millionär',
			urlToOpen: 'https://open.spotify.com/album/6YX4i7aMCYmn20zvAFM3lG'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273deab510f8978c1ab101f8719', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02deab510f8978c1ab101f8719', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851deab510f8978c1ab101f8719', width: 64}
				]),
			id: '39mWWzaUZp0AXyN9Vnp4od',
			name: '045/und das Gold der Wikinger',
			urlToOpen: 'https://open.spotify.com/album/39mWWzaUZp0AXyN9Vnp4od'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738d32e333fed9e96d0c8565d2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028d32e333fed9e96d0c8565d2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518d32e333fed9e96d0c8565d2', width: 64}
				]),
			id: '6JNNLdq9ELeKENK3RmxLWQ',
			name: '044/und der gestohlene Preis',
			urlToOpen: 'https://open.spotify.com/album/6JNNLdq9ELeKENK3RmxLWQ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a9a124f568bb71f006233405', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a9a124f568bb71f006233405', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a9a124f568bb71f006233405', width: 64}
				]),
			id: '48QVzskevXtA0KpJjXzvb1',
			name: '043/und der höllische Werwolf',
			urlToOpen: 'https://open.spotify.com/album/48QVzskevXtA0KpJjXzvb1'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a656cae556eb72350db10422', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a656cae556eb72350db10422', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a656cae556eb72350db10422', width: 64}
				]),
			id: '24bba3w45LGGm7ps3qonkc',
			name: '042/und der weinende Sarg',
			urlToOpen: 'https://open.spotify.com/album/24bba3w45LGGm7ps3qonkc'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273326f163e8c446829641d4d8e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02326f163e8c446829641d4d8e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851326f163e8c446829641d4d8e', width: 64}
				]),
			id: '5KUXX8H2LNsuik46M5XLx0',
			name: '041/und das Volk der Winde',
			urlToOpen: 'https://open.spotify.com/album/5KUXX8H2LNsuik46M5XLx0'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27305282c5247237cb6957d623d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0205282c5247237cb6957d623d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485105282c5247237cb6957d623d', width: 64}
				]),
			id: '2IIw1KESZrJQBFdZQAWcKY',
			name: '040/und der Automarder',
			urlToOpen: 'https://open.spotify.com/album/2IIw1KESZrJQBFdZQAWcKY'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ee8a7e5179348160a2a58fa4', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ee8a7e5179348160a2a58fa4', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ee8a7e5179348160a2a58fa4', width: 64}
				]),
			id: '0AKPkUh4ElyZNipc0lZoiR',
			name: '039/und die Perlenvögel',
			urlToOpen: 'https://open.spotify.com/album/0AKPkUh4ElyZNipc0lZoiR'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e87d75cd1871f89732c2448b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e87d75cd1871f89732c2448b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e87d75cd1871f89732c2448b', width: 64}
				]),
			id: '6d3Pavm0enVICdOvBEqxYA',
			name: '038/und der unsichtbare Gegner',
			urlToOpen: 'https://open.spotify.com/album/6d3Pavm0enVICdOvBEqxYA'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d323602889318c69616b97f6', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d323602889318c69616b97f6', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d323602889318c69616b97f6', width: 64}
				]),
			id: '6R4gnRHXKgw2cxneWgTiEL',
			name: '037/und der heimliche Hehler',
			urlToOpen: 'https://open.spotify.com/album/6R4gnRHXKgw2cxneWgTiEL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730f20e31dba0ce8c04a76ba15', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020f20e31dba0ce8c04a76ba15', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510f20e31dba0ce8c04a76ba15', width: 64}
				]),
			id: '4R24oyyqxGkczNpqWGCXBZ',
			name: '036/und der Super-Wal',
			urlToOpen: 'https://open.spotify.com/album/4R24oyyqxGkczNpqWGCXBZ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e1bd55376650652d72db0c19', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e1bd55376650652d72db0c19', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e1bd55376650652d72db0c19', width: 64}
				]),
			id: '2REEfC6tVMiYv1eKMlGiOX',
			name: '035/und der Höhlenmensch',
			urlToOpen: 'https://open.spotify.com/album/2REEfC6tVMiYv1eKMlGiOX'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738dc647cb547bde4b45d3e6dd', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028dc647cb547bde4b45d3e6dd', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518dc647cb547bde4b45d3e6dd', width: 64}
				]),
			id: '2L18qTB1EfS4FuBk2M6QwV',
			name: '034/und der rote Pirat',
			urlToOpen: 'https://open.spotify.com/album/2L18qTB1EfS4FuBk2M6QwV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738159c7cd9cc9d2b38a3c2f9b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028159c7cd9cc9d2b38a3c2f9b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518159c7cd9cc9d2b38a3c2f9b', width: 64}
				]),
			id: '1imKVIfJIM0vKNymevqKjP',
			name: '033/und die bedrohte Ranch',
			urlToOpen: 'https://open.spotify.com/album/1imKVIfJIM0vKNymevqKjP'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730184c93524a6bd2d3c722d80', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020184c93524a6bd2d3c722d80', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510184c93524a6bd2d3c722d80', width: 64}
				]),
			id: '7K3VEzD1rm0dgUGBi1i5PW',
			name: '032/und der Ameisenmensch',
			urlToOpen: 'https://open.spotify.com/album/7K3VEzD1rm0dgUGBi1i5PW'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730ba222df97d099fb846c3321', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020ba222df97d099fb846c3321', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510ba222df97d099fb846c3321', width: 64}
				]),
			id: '0tPetsUWuZIC0E85x6eVN5',
			name: '031/und das Narbengesicht',
			urlToOpen: 'https://open.spotify.com/album/0tPetsUWuZIC0E85x6eVN5'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2736238a5d048e44c91f698a91e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e026238a5d048e44c91f698a91e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048516238a5d048e44c91f698a91e', width: 64}
				]),
			id: '0zV9pnaXLuogDr6prsvb4M',
			name: '030/und das Riff der Haie',
			urlToOpen: 'https://open.spotify.com/album/0zV9pnaXLuogDr6prsvb4M'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f7641a1768d1d479ef498e96', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f7641a1768d1d479ef498e96', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f7641a1768d1d479ef498e96', width: 64}
				]),
			id: '5JHijjtr65MjdNOnNvD3Ec',
			name: '029/Die Originalmusik',
			urlToOpen: 'https://open.spotify.com/album/5JHijjtr65MjdNOnNvD3Ec'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273483740d2f5111b560d127da1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02483740d2f5111b560d127da1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851483740d2f5111b560d127da1', width: 64}
				]),
			id: '7Dbd2rya9glmBLVxclcU4d',
			name: '028/und der Doppelgänger',
			urlToOpen: 'https://open.spotify.com/album/7Dbd2rya9glmBLVxclcU4d'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273438a03c2832248ec4934ddc4', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02438a03c2832248ec4934ddc4', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851438a03c2832248ec4934ddc4', width: 64}
				]),
			id: '2AisAUu4deLpNi6g6qlTLC',
			name: '027/und der magische Kreis',
			urlToOpen: 'https://open.spotify.com/album/2AisAUu4deLpNi6g6qlTLC'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733992de3d05e2af52f5125ee1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023992de3d05e2af52f5125ee1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513992de3d05e2af52f5125ee1', width: 64}
				]),
			id: '2NSreywe8UbWo7BJVY3Spk',
			name: '026/und die Silbermine',
			urlToOpen: 'https://open.spotify.com/album/2NSreywe8UbWo7BJVY3Spk'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733a1b9f502429b809d468075a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023a1b9f502429b809d468075a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513a1b9f502429b809d468075a', width: 64}
				]),
			id: '6RXr8BmKNSK9Zk11k0I7Dl',
			name: '025/und die singende Schlange',
			urlToOpen: 'https://open.spotify.com/album/6RXr8BmKNSK9Zk11k0I7Dl'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27320435a7b108a189265e3f5c6', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0220435a7b108a189265e3f5c6', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485120435a7b108a189265e3f5c6', width: 64}
				]),
			id: '211IEWHi59nUsHx8li8G9r',
			name: '024/und die silberne Spinne',
			urlToOpen: 'https://open.spotify.com/album/211IEWHi59nUsHx8li8G9r'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2736c2bba436af8f0693392287e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e026c2bba436af8f0693392287e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048516c2bba436af8f0693392287e', width: 64}
				]),
			id: '67qFOAxbhNRHEIeOjQ9Zkp',
			name: '023/und das Aztekenschwert',
			urlToOpen: 'https://open.spotify.com/album/67qFOAxbhNRHEIeOjQ9Zkp'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733ab5f4d4d51ba4eca891ebd5', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023ab5f4d4d51ba4eca891ebd5', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513ab5f4d4d51ba4eca891ebd5', width: 64}
				]),
			id: '7i50aK2wKvszWNnay4DtxP',
			name: '022/und der verschwundene Schatz',
			urlToOpen: 'https://open.spotify.com/album/7i50aK2wKvszWNnay4DtxP'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27356d04f1f087c046da9189c06', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0256d04f1f087c046da9189c06', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485156d04f1f087c046da9189c06', width: 64}
				]),
			id: '4KEZWleMTT8lDaQDLgozFc',
			name: '095/Botschaft von Geisterhand',
			urlToOpen: 'https://open.spotify.com/album/4KEZWleMTT8lDaQDLgozFc'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27325c506f0736d03286670b368', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0225c506f0736d03286670b368', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485125c506f0736d03286670b368', width: 64}
				]),
			id: '2koZEkq7vQnHjMP73gVXCo',
			name: '021/und der tanzende Teufel',
			urlToOpen: 'https://open.spotify.com/album/2koZEkq7vQnHjMP73gVXCo'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273aa10f94060ce1f0352a0d513', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02aa10f94060ce1f0352a0d513', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851aa10f94060ce1f0352a0d513', width: 64}
				]),
			id: '5ilbdbGu5eQRUIsbslyiLe',
			name: '020/und die flammende Spur',
			urlToOpen: 'https://open.spotify.com/album/5ilbdbGu5eQRUIsbslyiLe'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ee5e4b11a71edc5c62877ef5', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ee5e4b11a71edc5c62877ef5', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ee5e4b11a71edc5c62877ef5', width: 64}
				]),
			id: '3JqJ2zIt3UzKug7onmbmAo',
			name: '019/und der Teufelsberg',
			urlToOpen: 'https://open.spotify.com/album/3JqJ2zIt3UzKug7onmbmAo'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c5d04c7c5441fd77e9791fa7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c5d04c7c5441fd77e9791fa7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c5d04c7c5441fd77e9791fa7', width: 64}
				]),
			id: '1yqICFWBL4l7fJkrFWvfWL',
			name: '018/und die Geisterinsel',
			urlToOpen: 'https://open.spotify.com/album/1yqICFWBL4l7fJkrFWvfWL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273427b347396b793e22f4b259c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02427b347396b793e22f4b259c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851427b347396b793e22f4b259c', width: 64}
				]),
			id: '0CMsNalUakIcv6znyVLALr',
			name: '017/und die gefährliche Erbschaft',
			urlToOpen: 'https://open.spotify.com/album/0CMsNalUakIcv6znyVLALr'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27326eed2aeb7d8d27a3fd5bd31', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0226eed2aeb7d8d27a3fd5bd31', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485126eed2aeb7d8d27a3fd5bd31', width: 64}
				]),
			id: '16dOhg07DVqoSxlS7ToLM5',
			name: '016/und der Zauberspiegel',
			urlToOpen: 'https://open.spotify.com/album/16dOhg07DVqoSxlS7ToLM5'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734377c9c6e1b2921537d28aef', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024377c9c6e1b2921537d28aef', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514377c9c6e1b2921537d28aef', width: 64}
				]),
			id: '2dQYcaTRh5qEYk2oH7WoBC',
			name: '015/und der rasende Löwe',
			urlToOpen: 'https://open.spotify.com/album/2dQYcaTRh5qEYk2oH7WoBC'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738a84c23e892ef9539e045a1a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028a84c23e892ef9539e045a1a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518a84c23e892ef9539e045a1a', width: 64}
				]),
			id: '3O5STjjugoL5cNKfeRuBiU',
			name: '014/und das Bergmonster',
			urlToOpen: 'https://open.spotify.com/album/3O5STjjugoL5cNKfeRuBiU'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732ff34dc0745ba2056a2d6fd2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022ff34dc0745ba2056a2d6fd2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512ff34dc0745ba2056a2d6fd2', width: 64}
				]),
			id: '2AZ7zFBophWEIuBPjAG60I',
			name: '013/und der lachende Schatten',
			urlToOpen: 'https://open.spotify.com/album/2AZ7zFBophWEIuBPjAG60I'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27361db3ef53570c46ef3bc86fa', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0261db3ef53570c46ef3bc86fa', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485161db3ef53570c46ef3bc86fa', width: 64}
				]),
			id: '0bSrvyOjOzFoFJfx3uaFgk',
			name: '012/und der seltsame Wecker',
			urlToOpen: 'https://open.spotify.com/album/0bSrvyOjOzFoFJfx3uaFgk'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737313518ec36070a3a6d4ea5a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027313518ec36070a3a6d4ea5a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517313518ec36070a3a6d4ea5a', width: 64}
				]),
			id: '07EhJ6uxWcQQWKeXJ1e8Lb',
			name: '011/und das Gespensterschloss',
			urlToOpen: 'https://open.spotify.com/album/07EhJ6uxWcQQWKeXJ1e8Lb'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730d5263d1eedebfe821815b32', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020d5263d1eedebfe821815b32', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510d5263d1eedebfe821815b32', width: 64}
				]),
			id: '4h75QQIxW1etThTuw6vWzg',
			name: '010/und die flüsternde Mumie',
			urlToOpen: 'https://open.spotify.com/album/4h75QQIxW1etThTuw6vWzg'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27376c25883ce89b0b852faaa35', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0276c25883ce89b0b852faaa35', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485176c25883ce89b0b852faaa35', width: 64}
				]),
			id: '0aNqdp5ayuUNsOdUwu8x0b',
			name: '009/und die rätselhaften Bilder',
			urlToOpen: 'https://open.spotify.com/album/0aNqdp5ayuUNsOdUwu8x0b'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27374e205c46d3b6be37bcdde12', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0274e205c46d3b6be37bcdde12', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485174e205c46d3b6be37bcdde12', width: 64}
				]),
			id: '6MRsf5IcfqJIogaNqtESnh',
			name: '008/und der grüne Geist',
			urlToOpen: 'https://open.spotify.com/album/6MRsf5IcfqJIogaNqtESnh'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e691293acd166f1cda30037a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e691293acd166f1cda30037a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e691293acd166f1cda30037a', width: 64}
				]),
			id: '3nGyW4ETDrDpInYEAQCyYS',
			name: '007/und der unheimliche Drache',
			urlToOpen: 'https://open.spotify.com/album/3nGyW4ETDrDpInYEAQCyYS'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ef7f97120b07faed7046c8ae', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ef7f97120b07faed7046c8ae', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ef7f97120b07faed7046c8ae', width: 64}
				]),
			id: '54eP8BYMR270sTqklv83V0',
			name: '006/und der sprechende Totenkopf',
			urlToOpen: 'https://open.spotify.com/album/54eP8BYMR270sTqklv83V0'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c26392a38973202a8c883483', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c26392a38973202a8c883483', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c26392a38973202a8c883483', width: 64}
				]),
			id: '5YWM39RnabpxekZuHriTam',
			name: '005/und der Fluch des Rubins',
			urlToOpen: 'https://open.spotify.com/album/5YWM39RnabpxekZuHriTam'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d172a3a7a6097a6bb8cfe3a8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d172a3a7a6097a6bb8cfe3a8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d172a3a7a6097a6bb8cfe3a8', width: 64}
				]),
			id: '2w902iYtkf0ipmTImyLlsL',
			name: '004/und die schwarze Katze',
			urlToOpen: 'https://open.spotify.com/album/2w902iYtkf0ipmTImyLlsL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27370a612558ca677da494c1cb2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0270a612558ca677da494c1cb2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485170a612558ca677da494c1cb2', width: 64}
				]),
			id: '61OtrnMm1lqoMgMRb1aw7g',
			name: '003/und der Karpatenhund',
			urlToOpen: 'https://open.spotify.com/album/61OtrnMm1lqoMgMRb1aw7g'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e11332718f590d25361b0354', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e11332718f590d25361b0354', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e11332718f590d25361b0354', width: 64}
				]),
			id: '0xldqK4Ocdt8dwQSxUzt6x',
			name: '002/und der Phantomsee',
			urlToOpen: 'https://open.spotify.com/album/0xldqK4Ocdt8dwQSxUzt6x'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733b3c021d48b2f0ee16f7d217', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023b3c021d48b2f0ee16f7d217', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513b3c021d48b2f0ee16f7d217', width: 64}
				]),
			id: '4N9tvSjWfZXx3eHKblYEWQ',
			name: '001/und der Super-Papagei',
			urlToOpen: 'https://open.spotify.com/album/4N9tvSjWfZXx3eHKblYEWQ'
		}
		]));
var $author$project$AlbumStorageFf$albumStorage = $elm$core$Array$fromList(
	_List_fromArray(
		[
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273fa8715993b6fdac18d751d04', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02fa8715993b6fdac18d751d04', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851fa8715993b6fdac18d751d04', width: 64}
				]),
			id: '7Kqd2LwNPvAYUHqlDXiEwa',
			name: 'Folge 159: und das riesige Reptil',
			urlToOpen: 'https://open.spotify.com/album/7Kqd2LwNPvAYUHqlDXiEwa'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2736dabb27eacd258503558c7fa', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e026dabb27eacd258503558c7fa', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048516dabb27eacd258503558c7fa', width: 64}
				]),
			id: '0ZilG3oZQo0c23WQlVAllp',
			name: 'Folge 158: und das verlorene Maß',
			urlToOpen: 'https://open.spotify.com/album/0ZilG3oZQo0c23WQlVAllp'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737df45792915ae4b97cd91691', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027df45792915ae4b97cd91691', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517df45792915ae4b97cd91691', width: 64}
				]),
			id: '7rSCIhERMraymP4Ci5whK5',
			name: 'Folge 157: und das seltsame Haus in der Schlucht',
			urlToOpen: 'https://open.spotify.com/album/7rSCIhERMraymP4Ci5whK5'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273faa4606d45e68ce4620d51ef', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02faa4606d45e68ce4620d51ef', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851faa4606d45e68ce4620d51ef', width: 64}
				]),
			id: '2Zn3Tstqsf6H3JG4AdqoQH',
			name: 'Folge 156: und die verlassene Villa',
			urlToOpen: 'https://open.spotify.com/album/2Zn3Tstqsf6H3JG4AdqoQH'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738c7bb774491b693d31a03a4c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028c7bb774491b693d31a03a4c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518c7bb774491b693d31a03a4c', width: 64}
				]),
			id: '6aMVk0x5m36k6WK1MsJ97R',
			name: 'Folge 155: und das Erbe der Lady Thornton',
			urlToOpen: 'https://open.spotify.com/album/6aMVk0x5m36k6WK1MsJ97R'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b46cfa707bda3074ead13431', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b46cfa707bda3074ead13431', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b46cfa707bda3074ead13431', width: 64}
				]),
			id: '2DMgS6HtLTrTowuUaLlEN2',
			name: 'Folge 154: und die Geheimbotschaft in der Ruine',
			urlToOpen: 'https://open.spotify.com/album/2DMgS6HtLTrTowuUaLlEN2'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27322d83a4ee5624001ed4008d4', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0222d83a4ee5624001ed4008d4', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485122d83a4ee5624001ed4008d4', width: 64}
				]),
			id: '3ZacPvwuH9jZze5p9I5rBL',
			name: 'Folge 153: und der weiße Hai',
			urlToOpen: 'https://open.spotify.com/album/3ZacPvwuH9jZze5p9I5rBL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738e97f79db69b22a01fb18333', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028e97f79db69b22a01fb18333', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518e97f79db69b22a01fb18333', width: 64}
				]),
			id: '6wgnQKNX26heGTGrvZV95p',
			name: 'Folge 152: und das Geheimnis der Kelly Brüder',
			urlToOpen: 'https://open.spotify.com/album/6wgnQKNX26heGTGrvZV95p'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b00cf55a137032eb01e4be75', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b00cf55a137032eb01e4be75', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b00cf55a137032eb01e4be75', width: 64}
				]),
			id: '2p3j8JvKKwO0D5D3UU05Ou',
			name: 'Folge 151: und das unterirdische Versteck',
			urlToOpen: 'https://open.spotify.com/album/2p3j8JvKKwO0D5D3UU05Ou'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733af5e7aacf515dd1bd57d4b8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023af5e7aacf515dd1bd57d4b8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513af5e7aacf515dd1bd57d4b8', width: 64}
				]),
			id: '663itkaq3LIGH2C6qYS5F4',
			name: 'Folge 150: und der Verrat auf dem Hausboot',
			urlToOpen: 'https://open.spotify.com/album/663itkaq3LIGH2C6qYS5F4'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c7134d87735ddad87110527f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c7134d87735ddad87110527f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c7134d87735ddad87110527f', width: 64}
				]),
			id: '5OFleTDaNNHpMEuFGl1oeD',
			name: 'Folge 149: und der Schatz in der Drachenschlucht',
			urlToOpen: 'https://open.spotify.com/album/5OFleTDaNNHpMEuFGl1oeD'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c6bd86a1e2405ac277063de4', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c6bd86a1e2405ac277063de4', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c6bd86a1e2405ac277063de4', width: 64}
				]),
			id: '3KlFZkxeOGOyRe7BeyoBDS',
			name: 'Folge 148: und die Lichter in der Niemandsbucht',
			urlToOpen: 'https://open.spotify.com/album/3KlFZkxeOGOyRe7BeyoBDS'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734efe6096f8e5b11badfcc3c0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024efe6096f8e5b11badfcc3c0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514efe6096f8e5b11badfcc3c0', width: 64}
				]),
			id: '0wQETnTMpsQGqTYi6bzS8o',
			name: 'Folge 147: und das unheimliche Dorf im See',
			urlToOpen: 'https://open.spotify.com/album/0wQETnTMpsQGqTYi6bzS8o'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2736d1142c43365debd0ec6ec00', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e026d1142c43365debd0ec6ec00', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048516d1142c43365debd0ec6ec00', width: 64}
				]),
			id: '1LBl7Q25TbtHtD6bJGX7Tn',
			name: 'Folge 146: und die verdächtige Fahrradbotin',
			urlToOpen: 'https://open.spotify.com/album/1LBl7Q25TbtHtD6bJGX7Tn'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27313c5a7f568ddf7508ada9be1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0213c5a7f568ddf7508ada9be1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485113c5a7f568ddf7508ada9be1', width: 64}
				]),
			id: '1MSUqIRZ02rYLly5YOsVYQ',
			name: 'Adventskalender - Fünf Freunde und das Abenteuer im Wald',
			urlToOpen: 'https://open.spotify.com/album/1MSUqIRZ02rYLly5YOsVYQ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f839688ca8ed26cf721c8ad3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f839688ca8ed26cf721c8ad3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f839688ca8ed26cf721c8ad3', width: 64}
				]),
			id: '4pxQKdeE98Vyg8dVjKsMC6',
			name: 'Folge 145: und die Suche nach dem Mondgestein',
			urlToOpen: 'https://open.spotify.com/album/4pxQKdeE98Vyg8dVjKsMC6'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735687c8a04a2ddabfb5b7ff1b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025687c8a04a2ddabfb5b7ff1b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515687c8a04a2ddabfb5b7ff1b', width: 64}
				]),
			id: '1fx1KSS14TS3bqYRk8Dzqj',
			name: 'Folge 144: und die große Meuterei',
			urlToOpen: 'https://open.spotify.com/album/1fx1KSS14TS3bqYRk8Dzqj'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27328a30b558cca6d32dc8ad639', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0228a30b558cca6d32dc8ad639', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485128a30b558cca6d32dc8ad639', width: 64}
				]),
			id: '0HQSazMxcRgtiP3HmQK8sQ',
			name: 'Folge 143: und die verschwundene Riesenschildkröte',
			urlToOpen: 'https://open.spotify.com/album/0HQSazMxcRgtiP3HmQK8sQ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739972095ba1d1d802a5ab970b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029972095ba1d1d802a5ab970b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519972095ba1d1d802a5ab970b', width: 64}
				]),
			id: '7dgAjR8rW0xv0knBYJlqVP',
			name: 'Folge 142: und der mysteriöse Dieb',
			urlToOpen: 'https://open.spotify.com/album/7dgAjR8rW0xv0knBYJlqVP'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f6321e4995ac9f52d2722a48', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f6321e4995ac9f52d2722a48', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f6321e4995ac9f52d2722a48', width: 64}
				]),
			id: '4WbOKUvwd1d8fi1cRRxMXJ',
			name: 'Folge 141: und das rätselhafte Spukhaus',
			urlToOpen: 'https://open.spotify.com/album/4WbOKUvwd1d8fi1cRRxMXJ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273017e4bdb7b61693c6c5bb593', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02017e4bdb7b61693c6c5bb593', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851017e4bdb7b61693c6c5bb593', width: 64}
				]),
			id: '1kabjjRCVKzJs8pkTOpFyS',
			name: '140/und das geheimnisvolle Licht',
			urlToOpen: 'https://open.spotify.com/album/1kabjjRCVKzJs8pkTOpFyS'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273aa0e506a7da2a10f1d6f005e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02aa0e506a7da2a10f1d6f005e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851aa0e506a7da2a10f1d6f005e', width: 64}
				]),
			id: '2evSFTbb7Kj2EVN1HHo66J',
			name: '139/und die Geisterstadt',
			urlToOpen: 'https://open.spotify.com/album/2evSFTbb7Kj2EVN1HHo66J'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d52c1620a6b8811e3b39f703', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d52c1620a6b8811e3b39f703', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d52c1620a6b8811e3b39f703', width: 64}
				]),
			id: '2H46tTqNpMkpR55YN3TAc5',
			name: '138/am Ende der Welt',
			urlToOpen: 'https://open.spotify.com/album/2H46tTqNpMkpR55YN3TAc5'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ece3d53421d37fa727e5752c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ece3d53421d37fa727e5752c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ece3d53421d37fa727e5752c', width: 64}
				]),
			id: '5yoGMEr5doaWJnTlmXfNVV',
			name: '137/und der Schokoladendieb von London',
			urlToOpen: 'https://open.spotify.com/album/5yoGMEr5doaWJnTlmXfNVV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737d549fd332b40720a76f411c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027d549fd332b40720a76f411c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517d549fd332b40720a76f411c', width: 64}
				]),
			id: '61tT5XI9GX40z31yexaoS8',
			name: '136/und der wütende Stier',
			urlToOpen: 'https://open.spotify.com/album/61tT5XI9GX40z31yexaoS8'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730d528287f1a77a30f272029b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020d528287f1a77a30f272029b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510d528287f1a77a30f272029b', width: 64}
				]),
			id: '1XEcqpqo05AEb6geQhldoR',
			name: '135/und die verdächtige Ölfirma',
			urlToOpen: 'https://open.spotify.com/album/1XEcqpqo05AEb6geQhldoR'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273fe80ac5153fe605df2aca737', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02fe80ac5153fe605df2aca737', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851fe80ac5153fe605df2aca737', width: 64}
				]),
			id: '6AN2eovtiP3NXkgcMfNt8k',
			name: '134/und die unheimliche Achterbahn',
			urlToOpen: 'https://open.spotify.com/album/6AN2eovtiP3NXkgcMfNt8k'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27352a77182f90f5378051310e7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0252a77182f90f5378051310e7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485152a77182f90f5378051310e7', width: 64}
				]),
			id: '6DOXgeV49OTiik0kUVppDL',
			name: '133/und der Esel in der Tropfsteinhöhle',
			urlToOpen: 'https://open.spotify.com/album/6DOXgeV49OTiik0kUVppDL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27342eee23490325e1acbc1bb34', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0242eee23490325e1acbc1bb34', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485142eee23490325e1acbc1bb34', width: 64}
				]),
			id: '5sOpvlONkSUPgi09ME8Gki',
			name: '132/und das Rätsel um den Stromausfall',
			urlToOpen: 'https://open.spotify.com/album/5sOpvlONkSUPgi09ME8Gki'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738623d3f2d6fb0c23071a7e2d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028623d3f2d6fb0c23071a7e2d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518623d3f2d6fb0c23071a7e2d', width: 64}
				]),
			id: '2TtW4W6HAHWbPcKrQd5x5y',
			name: '131/verfolgen die Fahrraddiebe',
			urlToOpen: 'https://open.spotify.com/album/2TtW4W6HAHWbPcKrQd5x5y'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ce68cb6b1f5fd1a60ee78881', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ce68cb6b1f5fd1a60ee78881', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ce68cb6b1f5fd1a60ee78881', width: 64}
				]),
			id: '2Jee9XPRgwhGWe7SM6ISXd',
			name: '130/und die Glocke der Wikinger',
			urlToOpen: 'https://open.spotify.com/album/2Jee9XPRgwhGWe7SM6ISXd'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732406d1fa0412f69e8da23a73', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022406d1fa0412f69e8da23a73', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512406d1fa0412f69e8da23a73', width: 64}
				]),
			id: '1wvCvWOhELxrXklMXcZM5D',
			name: '129/und die kleinen Detektive',
			urlToOpen: 'https://open.spotify.com/album/1wvCvWOhELxrXklMXcZM5D'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27340207481dece5040a07098ba', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0240207481dece5040a07098ba', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485140207481dece5040a07098ba', width: 64}
				]),
			id: '7yFFnG7vxrccj0pjLpOVSq',
			name: '128/und der unsichtbare Feind',
			urlToOpen: 'https://open.spotify.com/album/7yFFnG7vxrccj0pjLpOVSq'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731e1a958f43d68ae99b2749ab', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021e1a958f43d68ae99b2749ab', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511e1a958f43d68ae99b2749ab', width: 64}
				]),
			id: '3VAxpuOINfqGTBUnSyvPNF',
			name: '127/und die Teufelsbucht',
			urlToOpen: 'https://open.spotify.com/album/3VAxpuOINfqGTBUnSyvPNF'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ad28d07dd48cb1ad95615004', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ad28d07dd48cb1ad95615004', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ad28d07dd48cb1ad95615004', width: 64}
				]),
			id: '3uTZGVVhXzJ3KU1ZBxPH6d',
			name: '126/und die gefährlichen Wurzeln',
			urlToOpen: 'https://open.spotify.com/album/3uTZGVVhXzJ3KU1ZBxPH6d'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273451ee920c146ec99034f359c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02451ee920c146ec99034f359c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851451ee920c146ec99034f359c', width: 64}
				]),
			id: '2akmTQWswD0lQBMedOyhUU',
			name: 'Fünf Freunde und das Tal der Dinosaurier - Das Original-Hörspiel zum Kinofilm',
			urlToOpen: 'https://open.spotify.com/album/2akmTQWswD0lQBMedOyhUU'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739411a1ff7f6e45c208b5dca7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029411a1ff7f6e45c208b5dca7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519411a1ff7f6e45c208b5dca7', width: 64}
				]),
			id: '7exgOwKsg2MuiHI4Pb5Ewv',
			name: '125/und die gemeine Falle',
			urlToOpen: 'https://open.spotify.com/album/7exgOwKsg2MuiHI4Pb5Ewv'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b001d3f31e3d5e31b9954816', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b001d3f31e3d5e31b9954816', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b001d3f31e3d5e31b9954816', width: 64}
				]),
			id: '2MdUrlBdCIa6RanKfQTcv8',
			name: '124/auf der Suche nach Timmy',
			urlToOpen: 'https://open.spotify.com/album/2MdUrlBdCIa6RanKfQTcv8'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27342de123125064c65fab27ee0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0242de123125064c65fab27ee0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485142de123125064c65fab27ee0', width: 64}
				]),
			id: '6V5J8fOkRDDXxsxAHi0Ut4',
			name: '123/und der Zug im Dunkeln',
			urlToOpen: 'https://open.spotify.com/album/6V5J8fOkRDDXxsxAHi0Ut4'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273960ce8779cedf1aa4297e7be', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02960ce8779cedf1aa4297e7be', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851960ce8779cedf1aa4297e7be', width: 64}
				]),
			id: '0oX0xTrbf5mm6J9nTMQKGJ',
			name: '122/und der Großalarm in Kirrin',
			urlToOpen: 'https://open.spotify.com/album/0oX0xTrbf5mm6J9nTMQKGJ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d28a9bf76dde887b38304cee', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d28a9bf76dde887b38304cee', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d28a9bf76dde887b38304cee', width: 64}
				]),
			id: '2mH1pMOtZ0rPAHhQ8lnVex',
			name: '121/und die verlassene Jagdhütte',
			urlToOpen: 'https://open.spotify.com/album/2mH1pMOtZ0rPAHhQ8lnVex'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b177e7c836f291b737b9e767', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b177e7c836f291b737b9e767', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b177e7c836f291b737b9e767', width: 64}
				]),
			id: '4NllbPOq0cMAD4NQZ8NIEC',
			name: '120/und die doppelte Erfindung',
			urlToOpen: 'https://open.spotify.com/album/4NllbPOq0cMAD4NQZ8NIEC'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27372194f196859f4e4f9c76e0c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0272194f196859f4e4f9c76e0c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485172194f196859f4e4f9c76e0c', width: 64}
				]),
			id: '66yMv3N4xjf7yfx8xAFnjk',
			name: '119/und das versunkene Schiff',
			urlToOpen: 'https://open.spotify.com/album/66yMv3N4xjf7yfx8xAFnjk'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731563534a6cf308765703f916', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021563534a6cf308765703f916', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511563534a6cf308765703f916', width: 64}
				]),
			id: '2WkrFpSG4nZDMmlO58E6sD',
			name: '118/und der falsche Patient',
			urlToOpen: 'https://open.spotify.com/album/2WkrFpSG4nZDMmlO58E6sD'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27323d52640781f719a04a39266', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0223d52640781f719a04a39266', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485123d52640781f719a04a39266', width: 64}
				]),
			id: '7m39uymt9bZuhztX8iRtjw',
			name: '117/und der Wolf in den Highlands',
			urlToOpen: 'https://open.spotify.com/album/7m39uymt9bZuhztX8iRtjw'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27348181ccc37bcb981d35fb469', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0248181ccc37bcb981d35fb469', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485148181ccc37bcb981d35fb469', width: 64}
				]),
			id: '7qL5b8h2mQSNwIokYvHTcd',
			name: '116/und der chinesische Pflanzenzauber',
			urlToOpen: 'https://open.spotify.com/album/7qL5b8h2mQSNwIokYvHTcd'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739fce96c6b45a4d9acd8c5b10', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029fce96c6b45a4d9acd8c5b10', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519fce96c6b45a4d9acd8c5b10', width: 64}
				]),
			id: '19fDVxsjnraxX7EiyPaYrf',
			name: '115/helfen den Flutopfern',
			urlToOpen: 'https://open.spotify.com/album/19fDVxsjnraxX7EiyPaYrf'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273abcc5b8cbc770778b83a4fc5', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02abcc5b8cbc770778b83a4fc5', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851abcc5b8cbc770778b83a4fc5', width: 64}
				]),
			id: '0nPeO3y0Zf8aG5EAqxTFyR',
			name: '114/und der Skandal auf der Freilichtbühne',
			urlToOpen: 'https://open.spotify.com/album/0nPeO3y0Zf8aG5EAqxTFyR'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27325f929147b5629feeb346618', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0225f929147b5629feeb346618', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485125f929147b5629feeb346618', width: 64}
				]),
			id: '4dcEoyqGRRV17uwsRByHG4',
			name: '113/und das Feuer auf der Felseninsel',
			urlToOpen: 'https://open.spotify.com/album/4dcEoyqGRRV17uwsRByHG4'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c069537e7d21f6e013dd55c2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c069537e7d21f6e013dd55c2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c069537e7d21f6e013dd55c2', width: 64}
				]),
			id: '1NwFaXCdP89xzoFTmriE0l',
			name: '112/und der Delfin in der Felsenbucht',
			urlToOpen: 'https://open.spotify.com/album/1NwFaXCdP89xzoFTmriE0l'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b56549b35f244dee74cf7df1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b56549b35f244dee74cf7df1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b56549b35f244dee74cf7df1', width: 64}
				]),
			id: '0YO812T6aOroGX98fT3bME',
			name: '111/und das Geheimverlies im Schloss',
			urlToOpen: 'https://open.spotify.com/album/0YO812T6aOroGX98fT3bME'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d261b94aab579f7647c433e2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d261b94aab579f7647c433e2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d261b94aab579f7647c433e2', width: 64}
				]),
			id: '5sBbygDrYQfmrU7kMXUcZX',
			name: '110/auf dem Pfad der Küstenschmuggler',
			urlToOpen: 'https://open.spotify.com/album/5sBbygDrYQfmrU7kMXUcZX'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b8ea25439c0e644a6fd84092', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b8ea25439c0e644a6fd84092', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b8ea25439c0e644a6fd84092', width: 64}
				]),
			id: '6DKW0i593WcqpKBl0xx2Zb',
			name: '04/Das Original-Hörspiel zum Kinofilm',
			urlToOpen: 'https://open.spotify.com/album/6DKW0i593WcqpKBl0xx2Zb'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738575945e4b7727a75953c176', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028575945e4b7727a75953c176', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518575945e4b7727a75953c176', width: 64}
				]),
			id: '5SN5o60yKKZTU2uuZNn5Dq',
			name: '109/und die mysteriöse Botschaft',
			urlToOpen: 'https://open.spotify.com/album/5SN5o60yKKZTU2uuZNn5Dq'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a23035d4a3eba1d0bd794673', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a23035d4a3eba1d0bd794673', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a23035d4a3eba1d0bd794673', width: 64}
				]),
			id: '2McZvjpPKOHdb8Eu7Cu9vt',
			name: '108/und die Entführung im Skigebiet',
			urlToOpen: 'https://open.spotify.com/album/2McZvjpPKOHdb8Eu7Cu9vt'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735b57d7ad305db82e2d1fa5cb', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025b57d7ad305db82e2d1fa5cb', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515b57d7ad305db82e2d1fa5cb', width: 64}
				]),
			id: '0Hq1SKPJFP0g75PWisli8G',
			name: '107/und die Nacht im Safari-Park',
			urlToOpen: 'https://open.spotify.com/album/0Hq1SKPJFP0g75PWisli8G'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e1274c9bda46516d82a39716', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e1274c9bda46516d82a39716', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e1274c9bda46516d82a39716', width: 64}
				]),
			id: '4RfwChkrM1deq4fad67E1a',
			name: '106/und das geheimnisvolle Polarschiff',
			urlToOpen: 'https://open.spotify.com/album/4RfwChkrM1deq4fad67E1a'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273bd847c666a9d2c8d23cdcb86', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02bd847c666a9d2c8d23cdcb86', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851bd847c666a9d2c8d23cdcb86', width: 64}
				]),
			id: '48AuM6VSUHPR2Xk2Nmx3cu',
			name: '105/und das magische Spinnennetz',
			urlToOpen: 'https://open.spotify.com/album/48AuM6VSUHPR2Xk2Nmx3cu'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c9b7e0b02e72dc9be510a2e6', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c9b7e0b02e72dc9be510a2e6', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c9b7e0b02e72dc9be510a2e6', width: 64}
				]),
			id: '1hM6Tv4HKwuRnGNbtN4lLz',
			name: '03/Das Original-Hörspiel zum Kinofilm',
			urlToOpen: 'https://open.spotify.com/album/1hM6Tv4HKwuRnGNbtN4lLz'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739cae42904f3071026d0a2ae4', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029cae42904f3071026d0a2ae4', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519cae42904f3071026d0a2ae4', width: 64}
				]),
			id: '3z1g2zjc3aigQ1arAgQuF2',
			name: '104/und die Jagd nach der Diebesbande',
			urlToOpen: 'https://open.spotify.com/album/3z1g2zjc3aigQ1arAgQuF2'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734c40239285926b84a5507850', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024c40239285926b84a5507850', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514c40239285926b84a5507850', width: 64}
				]),
			id: '5N7Dfn8jUp8SId7CybhP6Q',
			name: '103/und die giftigen Feuerquallen',
			urlToOpen: 'https://open.spotify.com/album/5N7Dfn8jUp8SId7CybhP6Q'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a7c9b5b26cf3fe3d3f785a1b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a7c9b5b26cf3fe3d3f785a1b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a7c9b5b26cf3fe3d3f785a1b', width: 64}
				]),
			id: '2cEEvRONOp9cLUYudoaO3i',
			name: '102/und die goldene Maske des Pharao',
			urlToOpen: 'https://open.spotify.com/album/2cEEvRONOp9cLUYudoaO3i'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b9a46bc4cf62687919ccda49', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b9a46bc4cf62687919ccda49', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b9a46bc4cf62687919ccda49', width: 64}
				]),
			id: '6GpIAoh3k8slwVBsNHUqqX',
			name: '101/und der vergessene Schatz',
			urlToOpen: 'https://open.spotify.com/album/6GpIAoh3k8slwVBsNHUqqX'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273182e2b8a40dac1efada17afe', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02182e2b8a40dac1efada17afe', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851182e2b8a40dac1efada17afe', width: 64}
				]),
			id: '7MJOaVJijHPPdc7ERn6W3h',
			name: '100/und das Gorillakind in Gefahr',
			urlToOpen: 'https://open.spotify.com/album/7MJOaVJijHPPdc7ERn6W3h'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273293872f31bb53e64095d7342', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02293872f31bb53e64095d7342', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851293872f31bb53e64095d7342', width: 64}
				]),
			id: '7GgmiV6ZH3yklTQpIrgQCC',
			name: '02/Das Original-Hörspiel zum Kinofilm',
			urlToOpen: 'https://open.spotify.com/album/7GgmiV6ZH3yklTQpIrgQCC'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739de5544821c1fb7950d9b11b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029de5544821c1fb7950d9b11b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519de5544821c1fb7950d9b11b', width: 64}
				]),
			id: '1nFkBK73s1YS93ZWFRDbF5',
			name: '099/und der seltsame Leuchtturm',
			urlToOpen: 'https://open.spotify.com/album/1nFkBK73s1YS93ZWFRDbF5'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273bad2f813c4cda57acf1f9fb6', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02bad2f813c4cda57acf1f9fb6', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851bad2f813c4cda57acf1f9fb6', width: 64}
				]),
			id: '0cX49g0wBtvDryEyU5FhwA',
			name: '098/und die Legende der Zwillingseiche',
			urlToOpen: 'https://open.spotify.com/album/0cX49g0wBtvDryEyU5FhwA'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273fa5fb3707ce24ed4a8f25ecb', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02fa5fb3707ce24ed4a8f25ecb', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851fa5fb3707ce24ed4a8f25ecb', width: 64}
				]),
			id: '0a8k5a76wziBi7sXXXkAEv',
			name: '097/auf der Spur der Silberdiebe',
			urlToOpen: 'https://open.spotify.com/album/0a8k5a76wziBi7sXXXkAEv'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733f6e329ceb2e1a7348173a2a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023f6e329ceb2e1a7348173a2a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513f6e329ceb2e1a7348173a2a', width: 64}
				]),
			id: '5Vj6YBjqO0DqRy4Tukg41u',
			name: '096/und das gefährliche Treibgut',
			urlToOpen: 'https://open.spotify.com/album/5Vj6YBjqO0DqRy4Tukg41u'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27334d381145a0f3f1577342931', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0234d381145a0f3f1577342931', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485134d381145a0f3f1577342931', width: 64}
				]),
			id: '3TM4JQFuCVRI3tKP8fl6yp',
			name: '095/in der Höhle des Urmenschen',
			urlToOpen: 'https://open.spotify.com/album/3TM4JQFuCVRI3tKP8fl6yp'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273eec85bdb9212c648ed727d70', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02eec85bdb9212c648ed727d70', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851eec85bdb9212c648ed727d70', width: 64}
				]),
			id: '3ZWewGEaOLmtAwxiPYvtSh',
			name: 'Der Original-Soundtrack zum Kinofilm',
			urlToOpen: 'https://open.spotify.com/album/3ZWewGEaOLmtAwxiPYvtSh'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f523efb3d9903c04ac0f5d0d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f523efb3d9903c04ac0f5d0d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f523efb3d9903c04ac0f5d0d', width: 64}
				]),
			id: '3dDoz1yLMHx0n6rllLAXeV',
			name: '01/Das Original-Hörspiel zum Kinofilm',
			urlToOpen: 'https://open.spotify.com/album/3dDoz1yLMHx0n6rllLAXeV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a508ef78de9d0a358bc2510a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a508ef78de9d0a358bc2510a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a508ef78de9d0a358bc2510a', width: 64}
				]),
			id: '6jXHqJzpe6vtywUv5jIHHE',
			name: '094/und die Sturmflut',
			urlToOpen: 'https://open.spotify.com/album/6jXHqJzpe6vtywUv5jIHHE'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ca793522146cffef1c52e359', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ca793522146cffef1c52e359', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ca793522146cffef1c52e359', width: 64}
				]),
			id: '22KZteRiQXIeJimUZ2TbK3',
			name: '093/und das Geheimnis des Winterwaldes',
			urlToOpen: 'https://open.spotify.com/album/22KZteRiQXIeJimUZ2TbK3'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c88c141a9717e9833c71ee78', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c88c141a9717e9833c71ee78', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c88c141a9717e9833c71ee78', width: 64}
				]),
			id: '6pOqvlELjegUu4JxJNeKQR',
			name: '092/auf der Insel der Seeräuber',
			urlToOpen: 'https://open.spotify.com/album/6pOqvlELjegUu4JxJNeKQR'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273014ff8ab7caaf8b93770d4d2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02014ff8ab7caaf8b93770d4d2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851014ff8ab7caaf8b93770d4d2', width: 64}
				]),
			id: '2G3MuFljF6VMDESi6Vonll',
			name: '091/und der Schatz aus dem U-Boot',
			urlToOpen: 'https://open.spotify.com/album/2G3MuFljF6VMDESi6Vonll'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27385411e7b72e385020c45a1ac', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0285411e7b72e385020c45a1ac', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485185411e7b72e385020c45a1ac', width: 64}
				]),
			id: '6vNpPneJaDekq3fidhNPN7',
			name: '090/retten die Honigbienen',
			urlToOpen: 'https://open.spotify.com/album/6vNpPneJaDekq3fidhNPN7'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739a5e06b75e4734b30cd8324e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029a5e06b75e4734b30cd8324e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519a5e06b75e4734b30cd8324e', width: 64}
				]),
			id: '6g0meqQ9kw3Y0UFiWzyJ7k',
			name: '089/und das Familienwappen',
			urlToOpen: 'https://open.spotify.com/album/6g0meqQ9kw3Y0UFiWzyJ7k'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27369d7b894a83d68917eb74e47', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0269d7b894a83d68917eb74e47', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485169d7b894a83d68917eb74e47', width: 64}
				]),
			id: '6MMT7DkAPlVeTz6hvvXXW0',
			name: '088/und das Gespenst von Canterbury',
			urlToOpen: 'https://open.spotify.com/album/6MMT7DkAPlVeTz6hvvXXW0'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273edf602653a077ffcb349df75', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02edf602653a077ffcb349df75', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851edf602653a077ffcb349df75', width: 64}
				]),
			id: '3Qud7esyANFkH9t13BEPUw',
			name: '087/und das rätselhafte Sternbild',
			urlToOpen: 'https://open.spotify.com/album/3Qud7esyANFkH9t13BEPUw'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27395d38ee35a2479d233398647', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0295d38ee35a2479d233398647', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485195d38ee35a2479d233398647', width: 64}
				]),
			id: '1niKUvurX2rFPMkFdYSvGk',
			name: '086/und die verbotenen Blüten',
			urlToOpen: 'https://open.spotify.com/album/1niKUvurX2rFPMkFdYSvGk'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f45c82f5839a94d14692fa6a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f45c82f5839a94d14692fa6a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f45c82f5839a94d14692fa6a', width: 64}
				]),
			id: '7vGPi7jFvzn6d5RgQnle6h',
			name: '085/und der verschwundene Wikingerhelm',
			urlToOpen: 'https://open.spotify.com/album/7vGPi7jFvzn6d5RgQnle6h'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735e1c822cba413f47acbb0187', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025e1c822cba413f47acbb0187', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515e1c822cba413f47acbb0187', width: 64}
				]),
			id: '2OeNjbHqDfve97D2q0NJJg',
			name: '084/und der Gesang der Sirenen',
			urlToOpen: 'https://open.spotify.com/album/2OeNjbHqDfve97D2q0NJJg'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27374d55266c18019207330656d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0274d55266c18019207330656d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485174d55266c18019207330656d', width: 64}
				]),
			id: '6xtKrk6LQFbEjERrUlPkzT',
			name: '083/und das Abenteuer im Hundeschlitten',
			urlToOpen: 'https://open.spotify.com/album/6xtKrk6LQFbEjERrUlPkzT'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c7cc5f6e9e2181d37dfd78fa', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c7cc5f6e9e2181d37dfd78fa', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c7cc5f6e9e2181d37dfd78fa', width: 64}
				]),
			id: '7DFYLos47Brgbc0r4Nb7vt',
			name: '082/und der verhängnisvolle Treibsand',
			urlToOpen: 'https://open.spotify.com/album/7DFYLos47Brgbc0r4Nb7vt'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273434a2796166a8da2f0f194a8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02434a2796166a8da2f0f194a8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851434a2796166a8da2f0f194a8', width: 64}
				]),
			id: '2Yk0FlTxdQwOBiyazcL7E9',
			name: '081/und das Höhlen-Labyrinth',
			urlToOpen: 'https://open.spotify.com/album/2Yk0FlTxdQwOBiyazcL7E9'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738a39d04f87bac063a804dd52', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028a39d04f87bac063a804dd52', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518a39d04f87bac063a804dd52', width: 64}
				]),
			id: '0dUM4mpdxdrhu5n2FqvhgJ',
			name: '080/und das gefährliche Antoniusfeuer',
			urlToOpen: 'https://open.spotify.com/album/0dUM4mpdxdrhu5n2FqvhgJ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f176c838532cc81d7456770f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f176c838532cc81d7456770f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f176c838532cc81d7456770f', width: 64}
				]),
			id: '6Ob5DYYECuqRisjiNvL5GM',
			name: '079/und das Rätsel des Drachenbootes',
			urlToOpen: 'https://open.spotify.com/album/6Ob5DYYECuqRisjiNvL5GM'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f2e277310375ad8388283d28', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f2e277310375ad8388283d28', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f2e277310375ad8388283d28', width: 64}
				]),
			id: '0Oe8F56HOoKhJX7tvlvL11',
			name: '078/und die Piraten-Bande',
			urlToOpen: 'https://open.spotify.com/album/0Oe8F56HOoKhJX7tvlvL11'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739ba0e1c46dfda268c407aef8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029ba0e1c46dfda268c407aef8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519ba0e1c46dfda268c407aef8', width: 64}
				]),
			id: '7xBJ98nCNVCOclOSnYOzeI',
			name: '077/und das unheimliche Bergmonster',
			urlToOpen: 'https://open.spotify.com/album/7xBJ98nCNVCOclOSnYOzeI'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273435b1eb477985f9155b9608f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02435b1eb477985f9155b9608f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851435b1eb477985f9155b9608f', width: 64}
				]),
			id: '0l8qQcC2q5BiOSYUoQCllH',
			name: '076//und das Geheimnis des Maskottchens',
			urlToOpen: 'https://open.spotify.com/album/0l8qQcC2q5BiOSYUoQCllH'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f62318a00343ce74a725d963', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f62318a00343ce74a725d963', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f62318a00343ce74a725d963', width: 64}
				]),
			id: '166ZxOtFgr5y5McnH27vwU',
			name: '075/und das unheimliche Hexenhaus',
			urlToOpen: 'https://open.spotify.com/album/166ZxOtFgr5y5McnH27vwU'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273babc9fd010f33aaafb9eeda8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02babc9fd010f33aaafb9eeda8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851babc9fd010f33aaafb9eeda8', width: 64}
				]),
			id: '5He2m6kpqw58EYAbBOpxhf',
			name: '074/verfolgen den Wilderer',
			urlToOpen: 'https://open.spotify.com/album/5He2m6kpqw58EYAbBOpxhf'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737b0adef065cfe47818c8c4f8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027b0adef065cfe47818c8c4f8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517b0adef065cfe47818c8c4f8', width: 64}
				]),
			id: '0nwiPm3ZUes1vNBto5sxN4',
			name: '073/und das Rätsel der Zinnmine',
			urlToOpen: 'https://open.spotify.com/album/0nwiPm3ZUes1vNBto5sxN4'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c0e67736a0f1fa9278ceb52c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c0e67736a0f1fa9278ceb52c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c0e67736a0f1fa9278ceb52c', width: 64}
				]),
			id: '6e4bQvU28sgg4OIhqhDvmp',
			name: '072/auf der Spur der Entführer',
			urlToOpen: 'https://open.spotify.com/album/6e4bQvU28sgg4OIhqhDvmp'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27302f53928750bf78dd20f3047', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0202f53928750bf78dd20f3047', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485102f53928750bf78dd20f3047', width: 64}
				]),
			id: '4Y6aidArNM8JD6z85nRHv4',
			name: '071/und der Verrat an Bord',
			urlToOpen: 'https://open.spotify.com/album/4Y6aidArNM8JD6z85nRHv4'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273755ca28dca32ffb4aa09a191', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02755ca28dca32ffb4aa09a191', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851755ca28dca32ffb4aa09a191', width: 64}
				]),
			id: '4K5VhGgTc0HHpqxnOnpY3b',
			name: '070/und die Rückkehr zur Gespensterinsel',
			urlToOpen: 'https://open.spotify.com/album/4K5VhGgTc0HHpqxnOnpY3b'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d31395182390afaa1f4a62c4', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d31395182390afaa1f4a62c4', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d31395182390afaa1f4a62c4', width: 64}
				]),
			id: '5c6cJEmVIZMCDoIM8C4mBJ',
			name: '069/und die Gefahr für die Felseninsel',
			urlToOpen: 'https://open.spotify.com/album/5c6cJEmVIZMCDoIM8C4mBJ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273914248cb2ed93e47deca5e0f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02914248cb2ed93e47deca5e0f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851914248cb2ed93e47deca5e0f', width: 64}
				]),
			id: '4H8aT42VazYkjXLA30Rs46',
			name: '068/und die Druiden von Stonehenge',
			urlToOpen: 'https://open.spotify.com/album/4H8aT42VazYkjXLA30Rs46'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734d2d1d83ec1d5a6a5653bd49', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024d2d1d83ec1d5a6a5653bd49', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514d2d1d83ec1d5a6a5653bd49', width: 64}
				]),
			id: '1Un1S8omjGi2weFV5s8krP',
			name: '067/und der unheimliche Brandstifter',
			urlToOpen: 'https://open.spotify.com/album/1Un1S8omjGi2weFV5s8krP'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a6452da6ff98881c3b2beda2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a6452da6ff98881c3b2beda2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a6452da6ff98881c3b2beda2', width: 64}
				]),
			id: '1RUrpfazmZTqx95YxWHQTA',
			name: '066/und das Seeungeheuer',
			urlToOpen: 'https://open.spotify.com/album/1RUrpfazmZTqx95YxWHQTA'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730eabb70eba8e9f7cf1fb4816', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020eabb70eba8e9f7cf1fb4816', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510eabb70eba8e9f7cf1fb4816', width: 64}
				]),
			id: '3VISsuJBFrcP7NxAo3aQWl',
			name: '065/und die schwarze Festung',
			urlToOpen: 'https://open.spotify.com/album/3VISsuJBFrcP7NxAo3aQWl'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a441448575d915e8b38339f7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a441448575d915e8b38339f7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a441448575d915e8b38339f7', width: 64}
				]),
			id: '3UDg2jZxtAu2FzZYWPFida',
			name: '064/geraten unter Verdacht',
			urlToOpen: 'https://open.spotify.com/album/3UDg2jZxtAu2FzZYWPFida'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27394d85b1fa64016131f5a5c11', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0294d85b1fa64016131f5a5c11', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485194d85b1fa64016131f5a5c11', width: 64}
				]),
			id: '3MULBnI2WPbx3fwThf5mu1',
			name: '063/und der Stein des Pharao',
			urlToOpen: 'https://open.spotify.com/album/3MULBnI2WPbx3fwThf5mu1'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e0ef7a786cfd22d5ec42fe42', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e0ef7a786cfd22d5ec42fe42', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e0ef7a786cfd22d5ec42fe42', width: 64}
				]),
			id: '6m9zlu731zUcXa6s6YwNH7',
			name: '062/und das Spuk-Festival',
			urlToOpen: 'https://open.spotify.com/album/6m9zlu731zUcXa6s6YwNH7'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735bd90901b367dbcdab88add6', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025bd90901b367dbcdab88add6', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515bd90901b367dbcdab88add6', width: 64}
				]),
			id: '6c97zHkOHsOazhPs5o04My',
			name: '061/und die Aufregung im Raubtierhaus',
			urlToOpen: 'https://open.spotify.com/album/6c97zHkOHsOazhPs5o04My'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27339ed056712aa2f97d2a7d507', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0239ed056712aa2f97d2a7d507', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485139ed056712aa2f97d2a7d507', width: 64}
				]),
			id: '6EhVUKOjpa6zOR3HJrmQSw',
			name: '060/tauchen unter',
			urlToOpen: 'https://open.spotify.com/album/6EhVUKOjpa6zOR3HJrmQSw'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27350edba949fbf4cecc52b0154', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0250edba949fbf4cecc52b0154', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485150edba949fbf4cecc52b0154', width: 64}
				]),
			id: '45PizjOsP8gWSGoEwpyj8q',
			name: '059/und das Abenteuer im Schnee',
			urlToOpen: 'https://open.spotify.com/album/45PizjOsP8gWSGoEwpyj8q'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f9ca3aee8a7a66b8d773e94e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f9ca3aee8a7a66b8d773e94e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f9ca3aee8a7a66b8d773e94e', width: 64}
				]),
			id: '4QKoFx1seuUXKjZkAzCY4x',
			name: '058/und die afrikanische Statue',
			urlToOpen: 'https://open.spotify.com/album/4QKoFx1seuUXKjZkAzCY4x'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d219dae38ddb7f3297ed3484', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d219dae38ddb7f3297ed3484', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d219dae38ddb7f3297ed3484', width: 64}
				]),
			id: '5IyZl2UWrXvzEZxgTNmRYs',
			name: '057/und der fliegende Teppich',
			urlToOpen: 'https://open.spotify.com/album/5IyZl2UWrXvzEZxgTNmRYs'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734bbf721deb9b13b51992415f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024bbf721deb9b13b51992415f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514bbf721deb9b13b51992415f', width: 64}
				]),
			id: '2qpNu6Uzrrt2YG6wksmCj9',
			name: '056/und die geheimnisvolle Erbschaft',
			urlToOpen: 'https://open.spotify.com/album/2qpNu6Uzrrt2YG6wksmCj9'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735084ee885c99725430fc298b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025084ee885c99725430fc298b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515084ee885c99725430fc298b', width: 64}
				]),
			id: '10MCeSGudi98fDs54Yo3LZ',
			name: '055/und die goldene Schlange',
			urlToOpen: 'https://open.spotify.com/album/10MCeSGudi98fDs54Yo3LZ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732b22219b4d4b0c4c268a0353', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022b22219b4d4b0c4c268a0353', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512b22219b4d4b0c4c268a0353', width: 64}
				]),
			id: '63LJzNuzHOR8zyhICkhZ3U',
			name: '054/suchen den Stern des Nordens',
			urlToOpen: 'https://open.spotify.com/album/63LJzNuzHOR8zyhICkhZ3U'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273bbe6178d2e11aca6d546f7f7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02bbe6178d2e11aca6d546f7f7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851bbe6178d2e11aca6d546f7f7', width: 64}
				]),
			id: '7KL5tfLbkTgJ3SW23YpnLH',
			name: '053/und die geheimnisvollen Kornkreise',
			urlToOpen: 'https://open.spotify.com/album/7KL5tfLbkTgJ3SW23YpnLH'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2736828f5f32458e75cb4b0f4c8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e026828f5f32458e75cb4b0f4c8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048516828f5f32458e75cb4b0f4c8', width: 64}
				]),
			id: '6K9b0vkwZu1As1Ynymut6e',
			name: '052/und das Phantom von Sherwood Forest',
			urlToOpen: 'https://open.spotify.com/album/6K9b0vkwZu1As1Ynymut6e'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737831cf9c6d9e17ce340334bc', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027831cf9c6d9e17ce340334bc', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517831cf9c6d9e17ce340334bc', width: 64}
				]),
			id: '1Y3pOmF4IXHU08Rop0TTN0',
			name: '051/und der Eisenbahnraub',
			urlToOpen: 'https://open.spotify.com/album/1Y3pOmF4IXHU08Rop0TTN0'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731e5547de98a63939421147eb', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021e5547de98a63939421147eb', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511e5547de98a63939421147eb', width: 64}
				]),
			id: '5FFMI41Qtmi70WSUZhSH0Z',
			name: '050/Timmy in Gefahr',
			urlToOpen: 'https://open.spotify.com/album/5FFMI41Qtmi70WSUZhSH0Z'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732347dc07e2ae51f60658f296', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022347dc07e2ae51f60658f296', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512347dc07e2ae51f60658f296', width: 64}
				]),
			id: '32saLGUXvsHEw0hKYNr0yI',
			name: '049/und die Frau ohne Gedächtnis',
			urlToOpen: 'https://open.spotify.com/album/32saLGUXvsHEw0hKYNr0yI'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730c649066f1ef7f8f39a609a6', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020c649066f1ef7f8f39a609a6', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510c649066f1ef7f8f39a609a6', width: 64}
				]),
			id: '1TDoizBwEYox8icnxRtNc5',
			name: '048/und die Schrift der Tempelritter',
			urlToOpen: 'https://open.spotify.com/album/1TDoizBwEYox8icnxRtNc5'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2736795b1ce33512fc9cfcbaf7e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e026795b1ce33512fc9cfcbaf7e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048516795b1ce33512fc9cfcbaf7e', width: 64}
				]),
			id: '0TP7S0UMx4ekRfkWYLNRAN',
			name: '047/und der singende Schrank',
			urlToOpen: 'https://open.spotify.com/album/0TP7S0UMx4ekRfkWYLNRAN'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27375fbe3903dfa5fcb55adfd7f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0275fbe3903dfa5fcb55adfd7f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485175fbe3903dfa5fcb55adfd7f', width: 64}
				]),
			id: '5C9uMZlffC4HuHBA1VWHTH',
			name: '046/lösen das Rätsel des Landschulheims',
			urlToOpen: 'https://open.spotify.com/album/5C9uMZlffC4HuHBA1VWHTH'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27332e3e721534be904f4be2f3d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0232e3e721534be904f4be2f3d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485132e3e721534be904f4be2f3d', width: 64}
				]),
			id: '09HT8wAayNt5y4EWA7Hont',
			name: '045/und das Bootshaus in der Nebelbucht',
			urlToOpen: 'https://open.spotify.com/album/09HT8wAayNt5y4EWA7Hont'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ee5c06065b5d883bbc215d2c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ee5c06065b5d883bbc215d2c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ee5c06065b5d883bbc215d2c', width: 64}
				]),
			id: '325FWbbT8I4Bsjfq7MRCSw',
			name: '044/und die Flaschenpost',
			urlToOpen: 'https://open.spotify.com/album/325FWbbT8I4Bsjfq7MRCSw'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273376522059f492279c6f1f249', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02376522059f492279c6f1f249', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851376522059f492279c6f1f249', width: 64}
				]),
			id: '4QvS9DYUA9FI97z5uignYO',
			name: '043/und der unheimliche Mönch',
			urlToOpen: 'https://open.spotify.com/album/4QvS9DYUA9FI97z5uignYO'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e838fdfef602d33aa67d2897', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e838fdfef602d33aa67d2897', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e838fdfef602d33aa67d2897', width: 64}
				]),
			id: '34QraAd9TYolYLJln84Fcq',
			name: '042/und der Dolch des Piraten',
			urlToOpen: 'https://open.spotify.com/album/34QraAd9TYolYLJln84Fcq'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e02ce2d9eb2f71d3d3b928b7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e02ce2d9eb2f71d3d3b928b7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e02ce2d9eb2f71d3d3b928b7', width: 64}
				]),
			id: '14oT9rq1E7KG10UyohENQz',
			name: '041/und die Spur des Dinosauriers',
			urlToOpen: 'https://open.spotify.com/album/14oT9rq1E7KG10UyohENQz'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d36ab1c5882a58ff2d288386', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d36ab1c5882a58ff2d288386', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d36ab1c5882a58ff2d288386', width: 64}
				]),
			id: '6yL9LUp5Yf9Lmd5B85QmV1',
			name: '040/und das verschwundene Pferd',
			urlToOpen: 'https://open.spotify.com/album/6yL9LUp5Yf9Lmd5B85QmV1'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27344f57aec90b55eadf2847cdf', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0244f57aec90b55eadf2847cdf', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485144f57aec90b55eadf2847cdf', width: 64}
				]),
			id: '1GRTlGk1VE2IsaAtn65rFT',
			name: '039/und das Monster im Moor',
			urlToOpen: 'https://open.spotify.com/album/1GRTlGk1VE2IsaAtn65rFT'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c7b11150852e67aefa281dd4', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c7b11150852e67aefa281dd4', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c7b11150852e67aefa281dd4', width: 64}
				]),
			id: '4YjfEt3QFakmPHX0PrBe9n',
			name: '038/und das rätselhafte Medaillon',
			urlToOpen: 'https://open.spotify.com/album/4YjfEt3QFakmPHX0PrBe9n'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739534358aa195cc6125386116', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029534358aa195cc6125386116', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519534358aa195cc6125386116', width: 64}
				]),
			id: '2d1Kmo2rQbpJK1mfAlPyou',
			name: '037/und das Abenteuer im Ballon',
			urlToOpen: 'https://open.spotify.com/album/2d1Kmo2rQbpJK1mfAlPyou'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27393bff5be12e982bbb74ffa26', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0293bff5be12e982bbb74ffa26', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485193bff5be12e982bbb74ffa26', width: 64}
				]),
			id: '16k5VHiYdyJlLZ1HDnHMTu',
			name: '036/gefangen im Hünengrab',
			urlToOpen: 'https://open.spotify.com/album/16k5VHiYdyJlLZ1HDnHMTu'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c5152841e77b219bcc107237', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c5152841e77b219bcc107237', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c5152841e77b219bcc107237', width: 64}
				]),
			id: '0pNx8acv1Khae0a6cqYMxx',
			name: '035/und die gestohlene Briefmarke',
			urlToOpen: 'https://open.spotify.com/album/0pNx8acv1Khae0a6cqYMxx'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b90bf472c138c3132b03dcbc', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b90bf472c138c3132b03dcbc', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b90bf472c138c3132b03dcbc', width: 64}
				]),
			id: '07t7JTdTe3EJxrVuBpDlam',
			name: '034/und die Gespensterinsel',
			urlToOpen: 'https://open.spotify.com/album/07t7JTdTe3EJxrVuBpDlam'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273735770417486efcc291db631', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02735770417486efcc291db631', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851735770417486efcc291db631', width: 64}
				]),
			id: '3TjAvJy8Jp1gTdcYpzyQrG',
			name: '033/entdecken den Geheimgang',
			urlToOpen: 'https://open.spotify.com/album/3TjAvJy8Jp1gTdcYpzyQrG'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c17d58de2abbff41cca49330', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c17d58de2abbff41cca49330', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c17d58de2abbff41cca49330', width: 64}
				]),
			id: '4l6hSvAivAqYTwAJNpuGUl',
			name: '032/und das Geheimnis des Oldtimers',
			urlToOpen: 'https://open.spotify.com/album/4l6hSvAivAqYTwAJNpuGUl'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733d0c951cffc72fafb73da13b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023d0c951cffc72fafb73da13b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513d0c951cffc72fafb73da13b', width: 64}
				]),
			id: '1rVETlFNVsiTZ8XOcSAG0y',
			name: '031/in der Geisterbahn',
			urlToOpen: 'https://open.spotify.com/album/1rVETlFNVsiTZ8XOcSAG0y'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f93cb0f37ae8a0087df1ad81', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f93cb0f37ae8a0087df1ad81', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f93cb0f37ae8a0087df1ad81', width: 64}
				]),
			id: '0LLPKdB0JAu4ChP4VSBnLs',
			name: '030/auf gefährlichen Pfaden',
			urlToOpen: 'https://open.spotify.com/album/0LLPKdB0JAu4ChP4VSBnLs'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739794ce6cf252703edd9ff49d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029794ce6cf252703edd9ff49d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519794ce6cf252703edd9ff49d', width: 64}
				]),
			id: '6xqvtpo28RddZoNoUCC4Ln',
			name: '029/und die Schwarze Maske',
			urlToOpen: 'https://open.spotify.com/album/6xqvtpo28RddZoNoUCC4Ln'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d69cd958201e01d03cbac6b2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d69cd958201e01d03cbac6b2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d69cd958201e01d03cbac6b2', width: 64}
				]),
			id: '2G5pUbYCwZF7JGxGlEEMHX',
			name: '028/und die geheimnisvolle Stadt',
			urlToOpen: 'https://open.spotify.com/album/2G5pUbYCwZF7JGxGlEEMHX'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273cd8320616678e2824108e963', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02cd8320616678e2824108e963', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851cd8320616678e2824108e963', width: 64}
				]),
			id: '7c0inxL7ps7oQ9FmXj0lL2',
			name: '027/und die goldene Truhe',
			urlToOpen: 'https://open.spotify.com/album/7c0inxL7ps7oQ9FmXj0lL2'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273cf71e20c1ff097e5b9ea37d4', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02cf71e20c1ff097e5b9ea37d4', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851cf71e20c1ff097e5b9ea37d4', width: 64}
				]),
			id: '1O8JeQXHM6GkksezdglGuw',
			name: '026/und die Perlenschmuggler',
			urlToOpen: 'https://open.spotify.com/album/1O8JeQXHM6GkksezdglGuw'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27387316c1b7b6f4a2f5c3b3509', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0287316c1b7b6f4a2f5c3b3509', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485187316c1b7b6f4a2f5c3b3509', width: 64}
				]),
			id: '5DLMGNCegLz67iifFwWiDd',
			name: '025/und die Flugzeugentführer',
			urlToOpen: 'https://open.spotify.com/album/5DLMGNCegLz67iifFwWiDd'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27303f3be0d6909b0452344bea2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0203f3be0d6909b0452344bea2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485103f3be0d6909b0452344bea2', width: 64}
				]),
			id: '6ZJG6HTgrYmXl15UsyPJ3N',
			name: '024/im Fernsehen',
			urlToOpen: 'https://open.spotify.com/album/6ZJG6HTgrYmXl15UsyPJ3N'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735d102a66912dc0752eb26e7e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025d102a66912dc0752eb26e7e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515d102a66912dc0752eb26e7e', width: 64}
				]),
			id: '7KT79rYzrmQcSkMRqTRcFS',
			name: '023/und die Jagd nach den Smaragden',
			urlToOpen: 'https://open.spotify.com/album/7KT79rYzrmQcSkMRqTRcFS'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27324617f6f9c6d8e56239de9c2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0224617f6f9c6d8e56239de9c2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485124617f6f9c6d8e56239de9c2', width: 64}
				]),
			id: '7lH0VALZVG4EWR9Mjumkc0',
			name: '022/und die Museumsbande',
			urlToOpen: 'https://open.spotify.com/album/7lH0VALZVG4EWR9Mjumkc0'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737e539fd8c3b995ce49f11ab5', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027e539fd8c3b995ce49f11ab5', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517e539fd8c3b995ce49f11ab5', width: 64}
				]),
			id: '6q0JbsC5Cz4AL1JSJzUIQ8',
			name: '021/auf neuen Abenteuern',
			urlToOpen: 'https://open.spotify.com/album/6q0JbsC5Cz4AL1JSJzUIQ8'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27377cac78b938f539cd417f88e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0277cac78b938f539cd417f88e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485177cac78b938f539cd417f88e', width: 64}
				]),
			id: '30X7YEF6VsbqY7YiiNdaTv',
			name: '020/erforschen die Schatzinsel',
			urlToOpen: 'https://open.spotify.com/album/30X7YEF6VsbqY7YiiNdaTv'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a696f5fe7231d947a96a55cd', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a696f5fe7231d947a96a55cd', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a696f5fe7231d947a96a55cd', width: 64}
				]),
			id: '2N0HMpaXpx9NCmivgzcnqZ',
			name: '019/auf Schmugglerjagd',
			urlToOpen: 'https://open.spotify.com/album/2N0HMpaXpx9NCmivgzcnqZ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b350e35ddc8b0c336c85b917', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b350e35ddc8b0c336c85b917', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b350e35ddc8b0c336c85b917', width: 64}
				]),
			id: '3Dkdr202NIt7jCSwNNyGCY',
			name: '018/auf geheimnisvollen Spuren',
			urlToOpen: 'https://open.spotify.com/album/3Dkdr202NIt7jCSwNNyGCY'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27398825e1838a5bd3ed8896dfe', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0298825e1838a5bd3ed8896dfe', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485198825e1838a5bd3ed8896dfe', width: 64}
				]),
			id: '3QmaekbwAghuJ5nGi7waz4',
			name: '017/auf großer Fahrt',
			urlToOpen: 'https://open.spotify.com/album/3QmaekbwAghuJ5nGi7waz4'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735e1035847d97cbc9c9d3933a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025e1035847d97cbc9c9d3933a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515e1035847d97cbc9c9d3933a', width: 64}
				]),
			id: '2R4v7Ul9pBuYixU3Z12jOq',
			name: '016/auf dem Leuchtturm',
			urlToOpen: 'https://open.spotify.com/album/2R4v7Ul9pBuYixU3Z12jOq'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731f75dc4fc1ef9a1afaf64136', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021f75dc4fc1ef9a1afaf64136', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511f75dc4fc1ef9a1afaf64136', width: 64}
				]),
			id: '2EYXrVYSW2yvzdacdZXdCN',
			name: '015/wittern ein Geheimnis',
			urlToOpen: 'https://open.spotify.com/album/2EYXrVYSW2yvzdacdZXdCN'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a16c548ef430474ce2d44bd8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a16c548ef430474ce2d44bd8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a16c548ef430474ce2d44bd8', width: 64}
				]),
			id: '1AuEwi9nwzYDbr6ELO3iQ7',
			name: '014/machen eine Entdeckung',
			urlToOpen: 'https://open.spotify.com/album/1AuEwi9nwzYDbr6ELO3iQ7'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27388464e62c537e17618a01e90', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0288464e62c537e17618a01e90', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485188464e62c537e17618a01e90', width: 64}
				]),
			id: '6PtodneZRZqjBRbqGEUBYq',
			name: '013/jagen die Entführer',
			urlToOpen: 'https://open.spotify.com/album/6PtodneZRZqjBRbqGEUBYq'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ddb9e814cee90bc099cf9c70', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ddb9e814cee90bc099cf9c70', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ddb9e814cee90bc099cf9c70', width: 64}
				]),
			id: '4vG33WvVt4u3kaLxkGfjts',
			name: '012/auf der Felseninsel',
			urlToOpen: 'https://open.spotify.com/album/4vG33WvVt4u3kaLxkGfjts'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273736e74ede3f864aa9c7d9739', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02736e74ede3f864aa9c7d9739', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851736e74ede3f864aa9c7d9739', width: 64}
				]),
			id: '0zW2tRB2mekUQdMClmLsTV',
			name: '011/geraten in Schwierigkeiten',
			urlToOpen: 'https://open.spotify.com/album/0zW2tRB2mekUQdMClmLsTV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273743f045e917552a6ef909a1c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02743f045e917552a6ef909a1c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851743f045e917552a6ef909a1c', width: 64}
				]),
			id: '5fFMNQtye6cjBXSt38axNj',
			name: '009/im alten Turm',
			urlToOpen: 'https://open.spotify.com/album/5fFMNQtye6cjBXSt38axNj'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ca324261beb70b0ba8fbf810', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ca324261beb70b0ba8fbf810', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ca324261beb70b0ba8fbf810', width: 64}
				]),
			id: '0pZAAAYIBruAZZkqg9K6PX',
			name: '006/helfen ihrem Kameraden',
			urlToOpen: 'https://open.spotify.com/album/0pZAAAYIBruAZZkqg9K6PX'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739e202e2d721c3df40870736b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029e202e2d721c3df40870736b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519e202e2d721c3df40870736b', width: 64}
				]),
			id: '5gCYYcivqoJL2voJg5K1ou',
			name: '005/und der Zauberer Wu',
			urlToOpen: 'https://open.spotify.com/album/5gCYYcivqoJL2voJg5K1ou'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273677e74f5d421556e17a36a50', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02677e74f5d421556e17a36a50', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851677e74f5d421556e17a36a50', width: 64}
				]),
			id: '6Uou6b83FPi6q0BNQi4Px2',
			name: '004/als Retter in der Not',
			urlToOpen: 'https://open.spotify.com/album/6Uou6b83FPi6q0BNQi4Px2'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27350f52c0579b6cc40bc498831', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0250f52c0579b6cc40bc498831', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485150f52c0579b6cc40bc498831', width: 64}
				]),
			id: '3M4cqtKzzPRWUdwxoFiBnz',
			name: '003/und das Burgverlies',
			urlToOpen: 'https://open.spotify.com/album/3M4cqtKzzPRWUdwxoFiBnz'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27318b6cc3db166ffd7d62660ef', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0218b6cc3db166ffd7d62660ef', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485118b6cc3db166ffd7d62660ef', width: 64}
				]),
			id: '7tfESyt6scRuKPzOAXF4PC',
			name: '002/im Zeltlager',
			urlToOpen: 'https://open.spotify.com/album/7tfESyt6scRuKPzOAXF4PC'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735b1a547d35487dc9d37a6de9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025b1a547d35487dc9d37a6de9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515b1a547d35487dc9d37a6de9', width: 64}
				]),
			id: '7Hx03j0oo3eLfuijiUXAHg',
			name: '001/beim Wanderzirkus',
			urlToOpen: 'https://open.spotify.com/album/7Hx03j0oo3eLfuijiUXAHg'
		}
		]));
var $author$project$AlbumStorageTkkg$albumStorage = $elm$core$Array$fromList(
	_List_fromArray(
		[
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27374c86cc686ab4f557509bd93', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0274c86cc686ab4f557509bd93', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485174c86cc686ab4f557509bd93', width: 64}
				]),
			id: '59BLZAmLAZBmciKqzS7dHr',
			name: 'Folge 231: Knackis streicheln mit der Faust',
			urlToOpen: 'https://open.spotify.com/album/59BLZAmLAZBmciKqzS7dHr'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732fd344afb7f396fda09fa41f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022fd344afb7f396fda09fa41f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512fd344afb7f396fda09fa41f', width: 64}
				]),
			id: '0fAjtQp9fFhA4pmFaiYHFt',
			name: 'Folge 230: Die Tesla-Verschwörung',
			urlToOpen: 'https://open.spotify.com/album/0fAjtQp9fFhA4pmFaiYHFt'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732e32898ea16cb29888daf7ac', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022e32898ea16cb29888daf7ac', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512e32898ea16cb29888daf7ac', width: 64}
				]),
			id: '4J6f92iCMn6Vt537vnYIJJ',
			name: 'Auch Gauner feiern Weihnachten (Adventskalender)',
			urlToOpen: 'https://open.spotify.com/album/4J6f92iCMn6Vt537vnYIJJ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732d18cefd5a708811035291ec', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022d18cefd5a708811035291ec', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512d18cefd5a708811035291ec', width: 64}
				]),
			id: '1wFG3EuNbzvdnRa9ldvdPj',
			name: 'Folge 229: Auf den Schwingen des Totenvogels',
			urlToOpen: 'https://open.spotify.com/album/1wFG3EuNbzvdnRa9ldvdPj'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d9418465290abf6db2b03473', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d9418465290abf6db2b03473', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d9418465290abf6db2b03473', width: 64}
				]),
			id: '4U1BMpYgIMEeuUgt5XY3qe',
			name: 'Folge 228: Das Geld, das niemand wollte',
			urlToOpen: 'https://open.spotify.com/album/4U1BMpYgIMEeuUgt5XY3qe'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e1f5cd31868b02fbc8e53e0d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e1f5cd31868b02fbc8e53e0d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e1f5cd31868b02fbc8e53e0d', width: 64}
				]),
			id: '4nbBHXEO1IHvP7gBCW1I8T',
			name: 'Folge 227: Zwei für Zwölf',
			urlToOpen: 'https://open.spotify.com/album/4nbBHXEO1IHvP7gBCW1I8T'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739e808d6654e414951b61a152', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029e808d6654e414951b61a152', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519e808d6654e414951b61a152', width: 64}
				]),
			id: '4FHfFcYa1kkdJcPwVBfurR',
			name: 'Folge 226: Der Täter ist unter uns',
			urlToOpen: 'https://open.spotify.com/album/4FHfFcYa1kkdJcPwVBfurR'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d783fba665d90909b0d3e33f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d783fba665d90909b0d3e33f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d783fba665d90909b0d3e33f', width: 64}
				]),
			id: '3HdsHQ8A2N5qxIV8nBJ1ep',
			name: 'Folge 225: Tanz mit der Giftschlange',
			urlToOpen: 'https://open.spotify.com/album/3HdsHQ8A2N5qxIV8nBJ1ep'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739f11d30dc14c482c6478e81c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029f11d30dc14c482c6478e81c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519f11d30dc14c482c6478e81c', width: 64}
				]),
			id: '4r0RiXY8OwasAI0D6wDtWg',
			name: 'Folge 224: Bilderdiebe haben kein Gesicht',
			urlToOpen: 'https://open.spotify.com/album/4r0RiXY8OwasAI0D6wDtWg'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273371aaf6fd50fab1b56326b2e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02371aaf6fd50fab1b56326b2e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851371aaf6fd50fab1b56326b2e', width: 64}
				]),
			id: '1IAUjWyGg7xD7DoYhBReb2',
			name: 'Folge 223: Betrüger Super Sauber',
			urlToOpen: 'https://open.spotify.com/album/1IAUjWyGg7xD7DoYhBReb2'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738c724ffb931a8c201a57872f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028c724ffb931a8c201a57872f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518c724ffb931a8c201a57872f', width: 64}
				]),
			id: '2rCVsuxWrsy9SZjUUOIwek',
			name: 'Folge 222: Roter Drache 222',
			urlToOpen: 'https://open.spotify.com/album/2rCVsuxWrsy9SZjUUOIwek'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ceef48ef5b99e89b8ac35727', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ceef48ef5b99e89b8ac35727', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ceef48ef5b99e89b8ac35727', width: 64}
				]),
			id: '47aNHa9s0fPkdWInnNmgNe',
			name: 'Folge 221: Beim Raubzug helfen Ahnungslose',
			urlToOpen: 'https://open.spotify.com/album/47aNHa9s0fPkdWInnNmgNe'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273bcd09b3e1d1e3a644d37b253', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02bcd09b3e1d1e3a644d37b253', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851bcd09b3e1d1e3a644d37b253', width: 64}
				]),
			id: '70yAbYpe9FH4XgwDk0rmeE',
			name: 'Schreckliche Weihnacht überall (Adventskalender)',
			urlToOpen: 'https://open.spotify.com/album/70yAbYpe9FH4XgwDk0rmeE'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737cf07bc595e03d48ecb04c4b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027cf07bc595e03d48ecb04c4b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517cf07bc595e03d48ecb04c4b', width: 64}
				]),
			id: '7mhVkGevfl8GCCZsYH7ch2',
			name: 'Folge 220: Attentat am Gämsengrat',
			urlToOpen: 'https://open.spotify.com/album/7mhVkGevfl8GCCZsYH7ch2'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ba10062fee95611fb0a2eecf', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ba10062fee95611fb0a2eecf', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ba10062fee95611fb0a2eecf', width: 64}
				]),
			id: '65b6rQAtUIFQAySC4lDKpL',
			name: 'Folge 219: Terror frei Haus',
			urlToOpen: 'https://open.spotify.com/album/65b6rQAtUIFQAySC4lDKpL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a49ad9dcd073ff8a4f3d33b1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a49ad9dcd073ff8a4f3d33b1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a49ad9dcd073ff8a4f3d33b1', width: 64}
				]),
			id: '1JBdOPbN661RjpdWNm9Xfo',
			name: 'Folge 218: Schutzgeld für Dämonen',
			urlToOpen: 'https://open.spotify.com/album/1JBdOPbN661RjpdWNm9Xfo'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737cfb2e93a9f43e3141987ba9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027cfb2e93a9f43e3141987ba9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517cfb2e93a9f43e3141987ba9', width: 64}
				]),
			id: '6QOwlbBlHs6Cxs8aB6kgGL',
			name: 'Morgen kommt das Weihnachtsgrauen (Adventskalender)',
			urlToOpen: 'https://open.spotify.com/album/6QOwlbBlHs6Cxs8aB6kgGL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737cfc78283cc84cfe7e03000e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027cfc78283cc84cfe7e03000e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517cfc78283cc84cfe7e03000e', width: 64}
				]),
			id: '4hcEstENZX32EUjk7ehyiL',
			name: '217/Tödliche Klarinette',
			urlToOpen: 'https://open.spotify.com/album/4hcEstENZX32EUjk7ehyiL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273712b9f44bc246ac5125dc2d9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02712b9f44bc246ac5125dc2d9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851712b9f44bc246ac5125dc2d9', width: 64}
				]),
			id: '5FvGyMLEy4vIasPH8E0ELE',
			name: '216/Das Geheimnis im Jagdschloss (Kopfhörer-Hörspiel)',
			urlToOpen: 'https://open.spotify.com/album/5FvGyMLEy4vIasPH8E0ELE'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e2fd58747d77b17e48c8ab46', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e2fd58747d77b17e48c8ab46', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e2fd58747d77b17e48c8ab46', width: 64}
				]),
			id: '4Q2dNebUPEFTWBlD4gxuKL',
			name: '216/Das Geheimnis im Jagdschloss',
			urlToOpen: 'https://open.spotify.com/album/4Q2dNebUPEFTWBlD4gxuKL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27350440f7e948d381cf5afdafe', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0250440f7e948d381cf5afdafe', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485150440f7e948d381cf5afdafe', width: 64}
				]),
			id: '1RNnc029KEtPfTRx7ZUQ2g',
			name: '215/Verbrechen im Moorsteiner Wald',
			urlToOpen: 'https://open.spotify.com/album/1RNnc029KEtPfTRx7ZUQ2g'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ed644a5b2ab53481024a20b1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ed644a5b2ab53481024a20b1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ed644a5b2ab53481024a20b1', width: 64}
				]),
			id: '3PncQqKj6wsDOpBTK9HXhV',
			name: '214/Diamantenrausch auf der A9',
			urlToOpen: 'https://open.spotify.com/album/3PncQqKj6wsDOpBTK9HXhV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273597cae10e5ac7001327a4040', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02597cae10e5ac7001327a4040', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851597cae10e5ac7001327a4040', width: 64}
				]),
			id: '16V0thHq3uD87lNEbxRRs6',
			name: '213/Das unheimliche Dorf',
			urlToOpen: 'https://open.spotify.com/album/16V0thHq3uD87lNEbxRRs6'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27336b7fba491f6129b44a1c48b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0236b7fba491f6129b44a1c48b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485136b7fba491f6129b44a1c48b', width: 64}
				]),
			id: '5JePYOyA6XhEaukPbQwlCI',
			name: '212/Tyrannei Kommando Eins',
			urlToOpen: 'https://open.spotify.com/album/5JePYOyA6XhEaukPbQwlCI'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27314f56432102e8baf8f7eccb0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0214f56432102e8baf8f7eccb0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485114f56432102e8baf8f7eccb0', width: 64}
				]),
			id: '2iMSyHHEwiZ3og3WrDFiUj',
			name: '211/Geiselnahme im Villenviertel',
			urlToOpen: 'https://open.spotify.com/album/2iMSyHHEwiZ3og3WrDFiUj'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b239c7cc7efd4e774886f15f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b239c7cc7efd4e774886f15f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b239c7cc7efd4e774886f15f', width: 64}
				]),
			id: '5f9cgdn1nSYN0EdsPztwQn',
			name: 'Jede Legende hat ihren Anfang (Hörspiel zum Kinofilm 2019)',
			urlToOpen: 'https://open.spotify.com/album/5f9cgdn1nSYN0EdsPztwQn'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735a363b4b57ad6a3468386ea2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025a363b4b57ad6a3468386ea2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515a363b4b57ad6a3468386ea2', width: 64}
				]),
			id: '1rWuaRKYr1DGZ6wzq0SgAb',
			name: '210/Raubzug im Casino',
			urlToOpen: 'https://open.spotify.com/album/1rWuaRKYr1DGZ6wzq0SgAb'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273005c55d5671ba122428f628d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02005c55d5671ba122428f628d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851005c55d5671ba122428f628d', width: 64}
				]),
			id: '2wLBVzlRA3dcDqhu9Uxdcc',
			name: '209/Drohbriefe von Unbekannt',
			urlToOpen: 'https://open.spotify.com/album/2wLBVzlRA3dcDqhu9Uxdcc'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738ad4f4062e250a18888dd32a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028ad4f4062e250a18888dd32a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518ad4f4062e250a18888dd32a', width: 64}
				]),
			id: '6yQhG36kGFjmCWNIq05qsR',
			name: 'Das Geheimnis um TKKG (Neuaufnahme)',
			urlToOpen: 'https://open.spotify.com/album/6yQhG36kGFjmCWNIq05qsR'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d11ad6d3476ba0a06ec29ba5', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d11ad6d3476ba0a06ec29ba5', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d11ad6d3476ba0a06ec29ba5', width: 64}
				]),
			id: '12JCZMzqKa1UnttQOTbKYl',
			name: '208/Geheimnis im Tresor',
			urlToOpen: 'https://open.spotify.com/album/12JCZMzqKa1UnttQOTbKYl'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ba7006b79b3e2e7b9bed66a7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ba7006b79b3e2e7b9bed66a7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ba7006b79b3e2e7b9bed66a7', width: 64}
				]),
			id: '3im4BSgNZoZUZMrBVnqPT0',
			name: 'Ein fast perfektes Weihnachtsmenü',
			urlToOpen: 'https://open.spotify.com/album/3im4BSgNZoZUZMrBVnqPT0'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e37f246fee20c455499e5726', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e37f246fee20c455499e5726', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e37f246fee20c455499e5726', width: 64}
				]),
			id: '6IuKwwxl6rpnj9nYZjfoa2',
			name: '207/Doppelte Entführung',
			urlToOpen: 'https://open.spotify.com/album/6IuKwwxl6rpnj9nYZjfoa2'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732bc755a107326bb7a8d491e7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022bc755a107326bb7a8d491e7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512bc755a107326bb7a8d491e7', width: 64}
				]),
			id: '4XZXbwQnj4ucfX65Gpgd2M',
			name: '206/Achtung, UFO-Kult!',
			urlToOpen: 'https://open.spotify.com/album/4XZXbwQnj4ucfX65Gpgd2M'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735906d23024b6bb3b18c328fb', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025906d23024b6bb3b18c328fb', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515906d23024b6bb3b18c328fb', width: 64}
				]),
			id: '1PEY35jHKZezCkE0EbYGjv',
			name: '205/Teuflische Kaffeefahrt',
			urlToOpen: 'https://open.spotify.com/album/1PEY35jHKZezCkE0EbYGjv'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27300139d2c17de59410a8a6a7b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0200139d2c17de59410a8a6a7b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485100139d2c17de59410a8a6a7b', width: 64}
				]),
			id: '2HHyk7w3vEopXwNNiq5aNX',
			name: '204/Verschwörung auf hoher See',
			urlToOpen: 'https://open.spotify.com/album/2HHyk7w3vEopXwNNiq5aNX'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27373e8cbbb9905fe0340ff26de', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0273e8cbbb9905fe0340ff26de', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485173e8cbbb9905fe0340ff26de', width: 64}
				]),
			id: '0W8SgAXgJVSRtgrbw6Th5V',
			name: '203/Der Räuber mit der Weihnachtsmaske',
			urlToOpen: 'https://open.spotify.com/album/0W8SgAXgJVSRtgrbw6Th5V'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d1a57255f159f1ea73a79c17', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d1a57255f159f1ea73a79c17', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d1a57255f159f1ea73a79c17', width: 64}
				]),
			id: '2URUpf8ElYaZxNgiWEapKo',
			name: '202/Ein Paradies für Diebe',
			urlToOpen: 'https://open.spotify.com/album/2URUpf8ElYaZxNgiWEapKo'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ecc9c5c1f4f24d32b3b0486e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ecc9c5c1f4f24d32b3b0486e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ecc9c5c1f4f24d32b3b0486e', width: 64}
				]),
			id: '4Tch4Zq90nImDlQbLjNb2L',
			name: '201/Vom Goldschatz besessen',
			urlToOpen: 'https://open.spotify.com/album/4Tch4Zq90nImDlQbLjNb2L'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a58fe02810b607de91ea424e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a58fe02810b607de91ea424e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a58fe02810b607de91ea424e', width: 64}
				]),
			id: '40AzKKVoE6d4TxqlZ2N4Fr',
			name: '200/Der große Coup',
			urlToOpen: 'https://open.spotify.com/album/40AzKKVoE6d4TxqlZ2N4Fr'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739deebf8c00df077718d98abf', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029deebf8c00df077718d98abf', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519deebf8c00df077718d98abf', width: 64}
				]),
			id: '1C1AXO3YHL4KVeQTHbK0tH',
			name: '199/Verfolgungsjagd vor Mitternacht',
			urlToOpen: 'https://open.spotify.com/album/1C1AXO3YHL4KVeQTHbK0tH'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ace436a8c8f50172cb8d5ab3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ace436a8c8f50172cb8d5ab3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ace436a8c8f50172cb8d5ab3', width: 64}
				]),
			id: '5k0cgRXinvmrHqwHGtFB0x',
			name: '198/Der Golem vom Dunkelsee',
			urlToOpen: 'https://open.spotify.com/album/5k0cgRXinvmrHqwHGtFB0x'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a6f33042988cbcfa39f1e4d0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a6f33042988cbcfa39f1e4d0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a6f33042988cbcfa39f1e4d0', width: 64}
				]),
			id: '34NTZ398LKn30D8SN8RwZ1',
			name: '197/Bei Anpfiff Übergabe',
			urlToOpen: 'https://open.spotify.com/album/34NTZ398LKn30D8SN8RwZ1'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ce1c1230edd7f9ce0834b2ef', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ce1c1230edd7f9ce0834b2ef', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ce1c1230edd7f9ce0834b2ef', width: 64}
				]),
			id: '2fojM7wYwYuliNzYTmFzOX',
			name: '196/Tatort Wagenburg',
			urlToOpen: 'https://open.spotify.com/album/2fojM7wYwYuliNzYTmFzOX'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27390127ca9141ebc020434d9e3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0290127ca9141ebc020434d9e3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485190127ca9141ebc020434d9e3', width: 64}
				]),
			id: '1O2InxIny6VBypt5DB3gTU',
			name: '195/Dem Sonnenkönig auf der Spur',
			urlToOpen: 'https://open.spotify.com/album/1O2InxIny6VBypt5DB3gTU'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27355a94435108b45d14d0c67dc', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0255a94435108b45d14d0c67dc', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485155a94435108b45d14d0c67dc', width: 64}
				]),
			id: '4cNiU8PZr45LNg7kzGLipx',
			name: '194/Der Friedhof der Namenlosen',
			urlToOpen: 'https://open.spotify.com/album/4cNiU8PZr45LNg7kzGLipx'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739860a14cbdd4f14743dd4bef', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029860a14cbdd4f14743dd4bef', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519860a14cbdd4f14743dd4bef', width: 64}
				]),
			id: '1WkgLbhl2Qigtc55DXP93S',
			name: '193/Das Weihnachts-Phantom',
			urlToOpen: 'https://open.spotify.com/album/1WkgLbhl2Qigtc55DXP93S'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b5d2e3d9f441ab3aef894360', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b5d2e3d9f441ab3aef894360', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b5d2e3d9f441ab3aef894360', width: 64}
				]),
			id: '0NyIaGxbQlRPnA201NEbkE',
			name: '192/Feuer auf Gut Ribbeck!',
			urlToOpen: 'https://open.spotify.com/album/0NyIaGxbQlRPnA201NEbkE'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273915080df23056b133aadf99d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02915080df23056b133aadf99d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851915080df23056b133aadf99d', width: 64}
				]),
			id: '1kZIlUYCKUvmfEHXku1ter',
			name: '191/Nord-Nordwest zum Hexenplatz',
			urlToOpen: 'https://open.spotify.com/album/1kZIlUYCKUvmfEHXku1ter'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27344ca54c07f42ad4e2ffe9dd8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0244ca54c07f42ad4e2ffe9dd8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485144ca54c07f42ad4e2ffe9dd8', width: 64}
				]),
			id: '5CabKO4dpZJ0wUwX8MMDk6',
			name: '190/Der eiskalte Clown',
			urlToOpen: 'https://open.spotify.com/album/5CabKO4dpZJ0wUwX8MMDk6'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27360e218e94ff0ca76b3d2a96d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0260e218e94ff0ca76b3d2a96d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485160e218e94ff0ca76b3d2a96d', width: 64}
				]),
			id: '7aMulTBM9qpGtoT0GUoAsZ',
			name: '189/Iwan, der Schreckliche',
			urlToOpen: 'https://open.spotify.com/album/7aMulTBM9qpGtoT0GUoAsZ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b82664fb9299bc204b2e1464', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b82664fb9299bc204b2e1464', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b82664fb9299bc204b2e1464', width: 64}
				]),
			id: '3ZJPztovzVLCZ5wMyErFyd',
			name: '188/Die blauen Schafe von Artelsbach',
			urlToOpen: 'https://open.spotify.com/album/3ZJPztovzVLCZ5wMyErFyd'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b74e48b7ac16d2758cea59d0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b74e48b7ac16d2758cea59d0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b74e48b7ac16d2758cea59d0', width: 64}
				]),
			id: '7MNjtmClWBiJvqK7LDVDdH',
			name: '187/Ausspioniert!',
			urlToOpen: 'https://open.spotify.com/album/7MNjtmClWBiJvqK7LDVDdH'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b6cc82b097f8c8937901da46', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b6cc82b097f8c8937901da46', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b6cc82b097f8c8937901da46', width: 64}
				]),
			id: '4dOQ5SfUGPEX5BrkvnGnSM',
			name: '186/Die schlafende Chinesin',
			urlToOpen: 'https://open.spotify.com/album/4dOQ5SfUGPEX5BrkvnGnSM'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273dfcd547e0a5af2d01d34fc15', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02dfcd547e0a5af2d01d34fc15', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851dfcd547e0a5af2d01d34fc15', width: 64}
				]),
			id: '4ExVTdTtEh9QMKG6F0ilIA',
			name: '185/der unsichtbare Dieb',
			urlToOpen: 'https://open.spotify.com/album/4ExVTdTtEh9QMKG6F0ilIA'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c6b05e423024207fc1252f52', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c6b05e423024207fc1252f52', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c6b05e423024207fc1252f52', width: 64}
				]),
			id: '7qglq750T0LjXZbsDzEeSn',
			name: '184/Die ewige Finsternis',
			urlToOpen: 'https://open.spotify.com/album/7qglq750T0LjXZbsDzEeSn'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27323883417f16d92db78ef9a4f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0223883417f16d92db78ef9a4f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485123883417f16d92db78ef9a4f', width: 64}
				]),
			id: '2kUywGimNzj3YRKAkwVf3S',
			name: '183/Blindgänger im Villenviertel',
			urlToOpen: 'https://open.spotify.com/album/2kUywGimNzj3YRKAkwVf3S'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ac7e876a73baa9954e450d20', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ac7e876a73baa9954e450d20', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ac7e876a73baa9954e450d20', width: 64}
				]),
			id: '3hz4bWxTDtHzDwKTRmOcDQ',
			name: '182/Im Bann des Übersinnlichen',
			urlToOpen: 'https://open.spotify.com/album/3hz4bWxTDtHzDwKTRmOcDQ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c97b279f20b693ab6e706428', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c97b279f20b693ab6e706428', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c97b279f20b693ab6e706428', width: 64}
				]),
			id: '1rYzkmCLyYvGllBZ3y2AGV',
			name: '181/Der vertauschte Koffer',
			urlToOpen: 'https://open.spotify.com/album/1rYzkmCLyYvGllBZ3y2AGV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734d7c60f60b71d3341a0a9d0f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024d7c60f60b71d3341a0a9d0f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514d7c60f60b71d3341a0a9d0f', width: 64}
				]),
			id: '7adgwW3gVPH7l2mzfgzC6t',
			name: '180/Alarm im Raubtierhaus',
			urlToOpen: 'https://open.spotify.com/album/7adgwW3gVPH7l2mzfgzC6t'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273077eaeea265ea9ab2624797c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02077eaeea265ea9ab2624797c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851077eaeea265ea9ab2624797c', width: 64}
				]),
			id: '5H9JYToGoYk8mGnUkCX3Z9',
			name: '179/Abzocke im Online-Chat',
			urlToOpen: 'https://open.spotify.com/album/5H9JYToGoYk8mGnUkCX3Z9'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b2c68cdbec5a06e3b35e8055', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b2c68cdbec5a06e3b35e8055', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b2c68cdbec5a06e3b35e8055', width: 64}
				]),
			id: '4LrP9x8HI2f0wkRgN5VLMe',
			name: '178/Hai-Alarm im Aquapark',
			urlToOpen: 'https://open.spotify.com/album/4LrP9x8HI2f0wkRgN5VLMe'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27301338cabb142eef106b6a704', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0201338cabb142eef106b6a704', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485101338cabb142eef106b6a704', width: 64}
				]),
			id: '5D6dTe3cuMxZtHhKYf2Nph',
			name: '177/Die Spur der Wölfin',
			urlToOpen: 'https://open.spotify.com/album/5D6dTe3cuMxZtHhKYf2Nph'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c5f3234925d860ec2cd1b8c3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c5f3234925d860ec2cd1b8c3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c5f3234925d860ec2cd1b8c3', width: 64}
				]),
			id: '4cs4K4fFEFFgz3gtobHW9S',
			name: '176/Verbrechen im Rampenlicht',
			urlToOpen: 'https://open.spotify.com/album/4cs4K4fFEFFgz3gtobHW9S'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27334d456e2f2fdc6d1b2ce7b05', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0234d456e2f2fdc6d1b2ce7b05', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485134d456e2f2fdc6d1b2ce7b05', width: 64}
				]),
			id: '7z37XBrYgYo7DCs9dFeHvq',
			name: '175/Nachtwanderung mit Schrecken',
			urlToOpen: 'https://open.spotify.com/album/7z37XBrYgYo7DCs9dFeHvq'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273681821b926c57bcfa69ff3d6', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02681821b926c57bcfa69ff3d6', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851681821b926c57bcfa69ff3d6', width: 64}
				]),
			id: '37jFIur7xvS8bjE8CeXyWA',
			name: '174/Doppelgänger auf der Rennbahn',
			urlToOpen: 'https://open.spotify.com/album/37jFIur7xvS8bjE8CeXyWA'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27372abd13905aab712f231d087', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0272abd13905aab712f231d087', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485172abd13905aab712f231d087', width: 64}
				]),
			id: '6RlfZAsHvD4G00fxBiWeN1',
			name: '173/Die Skelettbande',
			urlToOpen: 'https://open.spotify.com/album/6RlfZAsHvD4G00fxBiWeN1'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ad024c7a1a0ca65242b8b325', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ad024c7a1a0ca65242b8b325', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ad024c7a1a0ca65242b8b325', width: 64}
				]),
			id: '2z4tH8k3YDSgSB8QQqrkfG',
			name: '172/Das Geheimnis der Moorleiche',
			urlToOpen: 'https://open.spotify.com/album/2z4tH8k3YDSgSB8QQqrkfG'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733800407afe4161e8c89d3667', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023800407afe4161e8c89d3667', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513800407afe4161e8c89d3667', width: 64}
				]),
			id: '2nJDDgf2DvDDtxiTVwyfhW',
			name: '171/Das lebende Gemälde',
			urlToOpen: 'https://open.spotify.com/album/2nJDDgf2DvDDtxiTVwyfhW'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c6e4a9b3e3b91695325953ac', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c6e4a9b3e3b91695325953ac', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c6e4a9b3e3b91695325953ac', width: 64}
				]),
			id: '0zpxGRczKxY7teFkuOitzO',
			name: '170/Schock im Schnee',
			urlToOpen: 'https://open.spotify.com/album/0zpxGRczKxY7teFkuOitzO'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27337146be95d72b5c5c472e6ca', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0237146be95d72b5c5c472e6ca', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485137146be95d72b5c5c472e6ca', width: 64}
				]),
			id: '64DTYY344b4JLlsHlpUG7r',
			name: '169/Tatort Dschungel',
			urlToOpen: 'https://open.spotify.com/album/64DTYY344b4JLlsHlpUG7r'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ee81ed798e222010897ea968', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ee81ed798e222010897ea968', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ee81ed798e222010897ea968', width: 64}
				]),
			id: '4w7Qr51Uw16dBHDcfzgvHk',
			name: '168/Millionencoup im Stadion',
			urlToOpen: 'https://open.spotify.com/album/4w7Qr51Uw16dBHDcfzgvHk'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273dde88856cec700670712e53f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02dde88856cec700670712e53f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851dde88856cec700670712e53f', width: 64}
				]),
			id: '7mu7o53PrOlRVxErUufaSL',
			name: '167/Der Unsichtbare',
			urlToOpen: 'https://open.spotify.com/album/7mu7o53PrOlRVxErUufaSL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730acf6c6c1d9ddb9481361721', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020acf6c6c1d9ddb9481361721', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510acf6c6c1d9ddb9481361721', width: 64}
				]),
			id: '6zI9fZd9Fk9LeUwM7uoWSq',
			name: '166/Das Mädchen mit der Kristallkugel',
			urlToOpen: 'https://open.spotify.com/album/6zI9fZd9Fk9LeUwM7uoWSq'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731535bc54215fad094879f4ca', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021535bc54215fad094879f4ca', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511535bc54215fad094879f4ca', width: 64}
				]),
			id: '0eav6341Txr3YF4aAmJ2O2',
			name: '165/Advent mit Knall-Effekt',
			urlToOpen: 'https://open.spotify.com/album/0eav6341Txr3YF4aAmJ2O2'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ad668f501ed086c0621c45b4', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ad668f501ed086c0621c45b4', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ad668f501ed086c0621c45b4', width: 64}
				]),
			id: '7Dh3Sr5DdK6OT2M7FBUwhg',
			name: '164/Operation Hexen-Graffiti',
			urlToOpen: 'https://open.spotify.com/album/7Dh3Sr5DdK6OT2M7FBUwhg'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734ce7f0a79f866c7747a57ca8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024ce7f0a79f866c7747a57ca8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514ce7f0a79f866c7747a57ca8', width: 64}
				]),
			id: '6nFRXqUzqgusdraaxsOGqa',
			name: '163/Die Makler-Mafia',
			urlToOpen: 'https://open.spotify.com/album/6nFRXqUzqgusdraaxsOGqa'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b2b102f0d2a94f79ecab57ac', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b2b102f0d2a94f79ecab57ac', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b2b102f0d2a94f79ecab57ac', width: 64}
				]),
			id: '4rSBDuSHYujCYFhrazbtnA',
			name: '162/Gefahr für Oskar!',
			urlToOpen: 'https://open.spotify.com/album/4rSBDuSHYujCYFhrazbtnA'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273243ec841a01c9a7b6403103f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02243ec841a01c9a7b6403103f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851243ec841a01c9a7b6403103f', width: 64}
				]),
			id: '6dneQXVs3r2JnZZxcwLtyK',
			name: '161/Ein Yeti in der Millionenstadt',
			urlToOpen: 'https://open.spotify.com/album/6dneQXVs3r2JnZZxcwLtyK'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f94163c3e42c0977fcff28d8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f94163c3e42c0977fcff28d8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f94163c3e42c0977fcff28d8', width: 64}
				]),
			id: '7DPQuaR0bI58tJzkSQMllp',
			name: '160/Das Grauen naht um Zwölf',
			urlToOpen: 'https://open.spotify.com/album/7DPQuaR0bI58tJzkSQMllp'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d9a6c66e971054ceded09e74', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d9a6c66e971054ceded09e74', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d9a6c66e971054ceded09e74', width: 64}
				]),
			id: '4qR8In8uET1hBWHPGmhaWO',
			name: '159/Böses Spiel im Sommercamp',
			urlToOpen: 'https://open.spotify.com/album/4qR8In8uET1hBWHPGmhaWO'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c3e540efa32e14296d2128c9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c3e540efa32e14296d2128c9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c3e540efa32e14296d2128c9', width: 64}
				]),
			id: '3OQqrEZzRYgYDcBIqsTeXS',
			name: '158/Trainer unter Verdacht',
			urlToOpen: 'https://open.spotify.com/album/3OQqrEZzRYgYDcBIqsTeXS'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27341e056bbe1baecfbf8f29f0e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0241e056bbe1baecfbf8f29f0e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485141e056bbe1baecfbf8f29f0e', width: 64}
				]),
			id: '55nP0alEiObRF2c151bhTv',
			name: '157/Oskar und die sieben Zwerge',
			urlToOpen: 'https://open.spotify.com/album/55nP0alEiObRF2c151bhTv'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273371fee3fe0ce20fea57c4bf9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02371fee3fe0ce20fea57c4bf9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851371fee3fe0ce20fea57c4bf9', width: 64}
				]),
			id: '20WDNq4KvOibx87TFa2eXP',
			name: '156/Erpresser fahren Achterbahn',
			urlToOpen: 'https://open.spotify.com/album/20WDNq4KvOibx87TFa2eXP'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27331b05fa607ad79333f314dd3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0231b05fa607ad79333f314dd3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485131b05fa607ad79333f314dd3', width: 64}
				]),
			id: '5XPVfzwtpBFF9CrmLb8Ilm',
			name: '155/Gefangen im Spukhaus',
			urlToOpen: 'https://open.spotify.com/album/5XPVfzwtpBFF9CrmLb8Ilm'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27395b1cd6d77e8c1582c000583', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0295b1cd6d77e8c1582c000583', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485195b1cd6d77e8c1582c000583', width: 64}
				]),
			id: '0K30SpThDKymGkKlRgtUv2',
			name: '154/Das Geheimnis der Burgruine',
			urlToOpen: 'https://open.spotify.com/album/0K30SpThDKymGkKlRgtUv2'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27313eff56f5a91bb50bb62f4a9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0213eff56f5a91bb50bb62f4a9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485113eff56f5a91bb50bb62f4a9', width: 64}
				]),
			id: '4olYXMWX664H8ZJHZbXmAT',
			name: '153/Es geschah in einer Regennacht',
			urlToOpen: 'https://open.spotify.com/album/4olYXMWX664H8ZJHZbXmAT'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27338e1adfee8a4f65e7fd7c89e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0238e1adfee8a4f65e7fd7c89e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485138e1adfee8a4f65e7fd7c89e', width: 64}
				]),
			id: '5j81oYcn0kptiSEPrEHmkF',
			name: '152/Max und Anna, ein diebisches Paar',
			urlToOpen: 'https://open.spotify.com/album/5j81oYcn0kptiSEPrEHmkF'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739a133073376e1b56164f8020', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029a133073376e1b56164f8020', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519a133073376e1b56164f8020', width: 64}
				]),
			id: '7CLvIAy7Nzo03EQYWKa0yn',
			name: '151/Gekauftes Spiel',
			urlToOpen: 'https://open.spotify.com/album/7CLvIAy7Nzo03EQYWKa0yn'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c36317344e1d867cde2f0cb0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c36317344e1d867cde2f0cb0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c36317344e1d867cde2f0cb0', width: 64}
				]),
			id: '0ZqyFeMXxCyIJvYptGlnn1',
			name: '150/Heiße Nächte im Dezember',
			urlToOpen: 'https://open.spotify.com/album/0ZqyFeMXxCyIJvYptGlnn1'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738397ec2d0762245f955098ae', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028397ec2d0762245f955098ae', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518397ec2d0762245f955098ae', width: 64}
				]),
			id: '1OWuX6xSnnC3oebl45X28K',
			name: '149/Tims gefährlichster Gegner',
			urlToOpen: 'https://open.spotify.com/album/1OWuX6xSnnC3oebl45X28K'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b79c95671aa3fe2e9f3eb241', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b79c95671aa3fe2e9f3eb241', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b79c95671aa3fe2e9f3eb241', width: 64}
				]),
			id: '0nFRzugvW1NVT1DUDxpQdb',
			name: '148/Fieser Trick beim Finale',
			urlToOpen: 'https://open.spotify.com/album/0nFRzugvW1NVT1DUDxpQdb'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c7d224d5608869859589315b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c7d224d5608869859589315b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c7d224d5608869859589315b', width: 64}
				]),
			id: '642OtfJ54JziKQWOYbyiEa',
			name: '147/Hölle ohne Hintertür',
			urlToOpen: 'https://open.spotify.com/album/642OtfJ54JziKQWOYbyiEa'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735f9e81f7add380075e2878e4', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025f9e81f7add380075e2878e4', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515f9e81f7add380075e2878e4', width: 64}
				]),
			id: '74Qcbtr7f0KP3VpEgaWoaS',
			name: '146/Nonstop in die Raketenfalle',
			urlToOpen: 'https://open.spotify.com/album/74Qcbtr7f0KP3VpEgaWoaS'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738e00fd7d7faf645afcda4237', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028e00fd7d7faf645afcda4237', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518e00fd7d7faf645afcda4237', width: 64}
				]),
			id: '3vAwRpp0YGKwWzLxctXHXe',
			name: '145/Hinterhalt am schwarzen Fels',
			urlToOpen: 'https://open.spotify.com/album/3vAwRpp0YGKwWzLxctXHXe'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733d8816549b74586cb3a10547', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023d8816549b74586cb3a10547', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513d8816549b74586cb3a10547', width: 64}
				]),
			id: '1DL2rSYjJIWqFpmGIRitMZ',
			name: '144/Schreckensnacht im Schlangenmaul',
			urlToOpen: 'https://open.spotify.com/album/1DL2rSYjJIWqFpmGIRitMZ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730a21e035d47c29480c449d92', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020a21e035d47c29480c449d92', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510a21e035d47c29480c449d92', width: 64}
				]),
			id: '6WKU3Zj4uxvrJnY5Kc03A0',
			name: '143/Das unheimliche Haus',
			urlToOpen: 'https://open.spotify.com/album/6WKU3Zj4uxvrJnY5Kc03A0'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e3ba8b727ae7483ec2affefa', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e3ba8b727ae7483ec2affefa', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e3ba8b727ae7483ec2affefa', width: 64}
				]),
			id: '5SZxeVgh5JUHEgew4IKLsx',
			name: '142/Bankräuber mit Supertrick',
			urlToOpen: 'https://open.spotify.com/album/5SZxeVgh5JUHEgew4IKLsx'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c9aede7c5df48bdab75959b2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c9aede7c5df48bdab75959b2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c9aede7c5df48bdab75959b2', width: 64}
				]),
			id: '34ZBbN1LTl2c2Qxzj2JwF1',
			name: '141/Todesbiss der schwarzen Mamba',
			urlToOpen: 'https://open.spotify.com/album/34ZBbN1LTl2c2Qxzj2JwF1'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27304d5ceb53a7fce99f4085e88', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0204d5ceb53a7fce99f4085e88', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485104d5ceb53a7fce99f4085e88', width: 64}
				]),
			id: '7BTjGCqexmQ947HDHR5e8J',
			name: '140/Draculas Erben',
			urlToOpen: 'https://open.spotify.com/album/7BTjGCqexmQ947HDHR5e8J'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273bbcad65709c19f0c28eb412f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02bbcad65709c19f0c28eb412f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851bbcad65709c19f0c28eb412f', width: 64}
				]),
			id: '7pRJLfr0wOiudzUjSqitzN',
			name: '139/Oskar jagt die Drogendealer',
			urlToOpen: 'https://open.spotify.com/album/7pRJLfr0wOiudzUjSqitzN'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731462e27990f35fe6e75e441c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021462e27990f35fe6e75e441c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511462e27990f35fe6e75e441c', width: 64}
				]),
			id: '78gbDWHGzUfxISjEQjhXXg',
			name: '138/Raubzug mit Bumerang',
			urlToOpen: 'https://open.spotify.com/album/78gbDWHGzUfxISjEQjhXXg'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739f0287a81f67a13fa56ed5fd', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029f0287a81f67a13fa56ed5fd', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519f0287a81f67a13fa56ed5fd', width: 64}
				]),
			id: '3S3RsaMPC1zpjYh9ibwLhb',
			name: '137/Verschleppt ins Tal Diabolo',
			urlToOpen: 'https://open.spotify.com/album/3S3RsaMPC1zpjYh9ibwLhb'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c619c18e27da23800f989474', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c619c18e27da23800f989474', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c619c18e27da23800f989474', width: 64}
				]),
			id: '6Jw6ALN4jEqyhtHPuSGD7e',
			name: '136/Argentinische Entführung',
			urlToOpen: 'https://open.spotify.com/album/6Jw6ALN4jEqyhtHPuSGD7e'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273dfbe5b1152865935244fa679', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02dfbe5b1152865935244fa679', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851dfbe5b1152865935244fa679', width: 64}
				]),
			id: '5GyWEEFbhvsUPk9pVR61p8',
			name: '135/Der Meisterdieb und seine Feinde',
			urlToOpen: 'https://open.spotify.com/album/5GyWEEFbhvsUPk9pVR61p8'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f58036b63184b03727182c58', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f58036b63184b03727182c58', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f58036b63184b03727182c58', width: 64}
				]),
			id: '1xOMCIhM742LDNn6Av7SaY',
			name: '134/Wer stoppt die Weihnachts-Gangster',
			urlToOpen: 'https://open.spotify.com/album/1xOMCIhM742LDNn6Av7SaY'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a4ca4660190a86d43ad24c00', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a4ca4660190a86d43ad24c00', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a4ca4660190a86d43ad24c00', width: 64}
				]),
			id: '6u0Bbe6ewDB23wwN0XbU2J',
			name: '133/Auf vier Pfoten zur Millionenbeute',
			urlToOpen: 'https://open.spotify.com/album/6u0Bbe6ewDB23wwN0XbU2J'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273eb9f37b6c3a118ea9b8f1d73', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02eb9f37b6c3a118ea9b8f1d73', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851eb9f37b6c3a118ea9b8f1d73', width: 64}
				]),
			id: '7C5cT8kDPUKAiyV39QC9y6',
			name: '132/Homejacker machen Überstunden',
			urlToOpen: 'https://open.spotify.com/album/7C5cT8kDPUKAiyV39QC9y6'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273fb8cf29d001ae4ddf073eb1d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02fb8cf29d001ae4ddf073eb1d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851fb8cf29d001ae4ddf073eb1d', width: 64}
				]),
			id: '3Hto454teGDtP3LANx45nV',
			name: '131/Stundenlohn für flotte Gangster',
			urlToOpen: 'https://open.spotify.com/album/3Hto454teGDtP3LANx45nV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d512a9ec2d76217465e6b29d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d512a9ec2d76217465e6b29d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d512a9ec2d76217465e6b29d', width: 64}
				]),
			id: '0readhKQChO0CavM03TBsG',
			name: '130/Die gefährliche Zeugin verschwindet',
			urlToOpen: 'https://open.spotify.com/album/0readhKQChO0CavM03TBsG'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27357c95b17075b762a4a93d921', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0257c95b17075b762a4a93d921', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485157c95b17075b762a4a93d921', width: 64}
				]),
			id: '1TjNjBs1qKh8atmJe9JBcz',
			name: '129/Der Erpresser fährt bis Endstation',
			urlToOpen: 'https://open.spotify.com/album/1TjNjBs1qKh8atmJe9JBcz'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273fa2bd743c7f72911b01a389d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02fa2bd743c7f72911b01a389d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851fa2bd743c7f72911b01a389d', width: 64}
				]),
			id: '5jjQAVPbdRAvDxeCdg8xsL',
			name: '128/Die Gehilfen des Terrors',
			urlToOpen: 'https://open.spotify.com/album/5jjQAVPbdRAvDxeCdg8xsL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ca5147cc80623ffb33a7fc64', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ca5147cc80623ffb33a7fc64', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ca5147cc80623ffb33a7fc64', width: 64}
				]),
			id: '4HNxicEEVUbZHI4GvvBEVH',
			name: '127/Im Schlauchboot durch die Unterwelt',
			urlToOpen: 'https://open.spotify.com/album/4HNxicEEVUbZHI4GvvBEVH'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a297fc91c3a9153ec300f385', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a297fc91c3a9153ec300f385', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a297fc91c3a9153ec300f385', width: 64}
				]),
			id: '59XpRNxoOO21j2bfXr4u8v',
			name: '126/Teddy Talers Höllenfahrt',
			urlToOpen: 'https://open.spotify.com/album/59XpRNxoOO21j2bfXr4u8v'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273dde0a4007eee70fc774e2853', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02dde0a4007eee70fc774e2853', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851dde0a4007eee70fc774e2853', width: 64}
				]),
			id: '6HtJ1gsoOlPlMHl6BBIedU',
			name: '125/Der Mörder aus einer anderen Zeit',
			urlToOpen: 'https://open.spotify.com/album/6HtJ1gsoOlPlMHl6BBIedU'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b8a1fd32c90e60ebba228bcf', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b8a1fd32c90e60ebba228bcf', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b8a1fd32c90e60ebba228bcf', width: 64}
				]),
			id: '3i8iFxVoBzO7HLAmH5WTc8',
			name: '124/Vergebliche Suche nach Gaby',
			urlToOpen: 'https://open.spotify.com/album/3i8iFxVoBzO7HLAmH5WTc8'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f5c7c11baa8937dfdc7ef661', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f5c7c11baa8937dfdc7ef661', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f5c7c11baa8937dfdc7ef661', width: 64}
				]),
			id: '0Uw592E81r73YlcfdrXTqe',
			name: '123/Mordkomplott im Luxus-Klo',
			urlToOpen: 'https://open.spotify.com/album/0Uw592E81r73YlcfdrXTqe'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d8f4468fc42b5077265b6409', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d8f4468fc42b5077265b6409', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d8f4468fc42b5077265b6409', width: 64}
				]),
			id: '0ZQupaN55cZsgjnaZc3ce8',
			name: '122/Der Goldschatz, der vom Himmel fiel',
			urlToOpen: 'https://open.spotify.com/album/0ZQupaN55cZsgjnaZc3ce8'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ba0295b0f6df98c4ca4321fa', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ba0295b0f6df98c4ca4321fa', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ba0295b0f6df98c4ca4321fa', width: 64}
				]),
			id: '3af1Ne9SXRGDBsyhn1OcbX',
			name: '121/Ein cooler Typ aus der Hölle',
			urlToOpen: 'https://open.spotify.com/album/3af1Ne9SXRGDBsyhn1OcbX'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273285379f8d341d5c4f555c9c3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02285379f8d341d5c4f555c9c3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851285379f8d341d5c4f555c9c3', width: 64}
				]),
			id: '6MZ8GjwkBao0glkAguCYpx',
			name: '120/Bei Anruf Angst',
			urlToOpen: 'https://open.spotify.com/album/6MZ8GjwkBao0glkAguCYpx'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27345ee01bfd571760a5c28d853', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0245ee01bfd571760a5c28d853', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485145ee01bfd571760a5c28d853', width: 64}
				]),
			id: '6u7TXxm1pFVUceAkdl5EMo',
			name: '119/Frische Spur nach 70 Jahren',
			urlToOpen: 'https://open.spotify.com/album/6u7TXxm1pFVUceAkdl5EMo'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273db58f1ae9eeaebb2ea04e384', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02db58f1ae9eeaebb2ea04e384', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851db58f1ae9eeaebb2ea04e384', width: 64}
				]),
			id: '5TX9govv5QXwFLZT2fiHSe',
			name: '118/Im Kaufhaus ist der Teufel los',
			urlToOpen: 'https://open.spotify.com/album/5TX9govv5QXwFLZT2fiHSe'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731e8e8f3da90e5e0cb1ace0b8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021e8e8f3da90e5e0cb1ace0b8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511e8e8f3da90e5e0cb1ace0b8', width: 64}
				]),
			id: '2NlUe7bw93isGjrvmXneYt',
			name: '117/Im Schloß der schlafenden Vampire',
			urlToOpen: 'https://open.spotify.com/album/2NlUe7bw93isGjrvmXneYt'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732e7eb038cdad7667dea16f12', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022e7eb038cdad7667dea16f12', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512e7eb038cdad7667dea16f12', width: 64}
				]),
			id: '1qnXN4G8JKVo2cBe3YiBYu',
			name: '116/Klassenfahrt zur Hexenburg',
			urlToOpen: 'https://open.spotify.com/album/1qnXN4G8JKVo2cBe3YiBYu'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734dd918c1dd5f6def93a3ba52', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024dd918c1dd5f6def93a3ba52', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514dd918c1dd5f6def93a3ba52', width: 64}
				]),
			id: '3HLVIwjC3e7nR0blSiR0Cf',
			name: '115/Der Diamant im Bauch der Kobra',
			urlToOpen: 'https://open.spotify.com/album/3HLVIwjC3e7nR0blSiR0Cf'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27348169644f16833f40b7bad9e', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0248169644f16833f40b7bad9e', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485148169644f16833f40b7bad9e', width: 64}
				]),
			id: '1EOt95N1umfsGDDi2RGyLx',
			name: '114/Die Sekte Satans',
			urlToOpen: 'https://open.spotify.com/album/1EOt95N1umfsGDDi2RGyLx'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273842c7654a4a1d72acb2bbda5', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02842c7654a4a1d72acb2bbda5', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851842c7654a4a1d72acb2bbda5', width: 64}
				]),
			id: '47XIAkJhFj1O5J6bFF061G',
			name: '113/Mit heißer Nadel Jagd auf Kids',
			urlToOpen: 'https://open.spotify.com/album/47XIAkJhFj1O5J6bFF061G'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ca1ca0f7bf58b1282db089ad', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ca1ca0f7bf58b1282db089ad', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ca1ca0f7bf58b1282db089ad', width: 64}
				]),
			id: '0hvicgoCbgvXmwjV2FhPOK',
			name: '112/Bombenspaß bei Kies & Knete',
			urlToOpen: 'https://open.spotify.com/album/0hvicgoCbgvXmwjV2FhPOK'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c6de8671affe99160b11ee54', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c6de8671affe99160b11ee54', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c6de8671affe99160b11ee54', width: 64}
				]),
			id: '7v5o8fgiM0AUoibGLX7mNR',
			name: '111/Die tödliche Falle',
			urlToOpen: 'https://open.spotify.com/album/7v5o8fgiM0AUoibGLX7mNR'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730b65872ffc092f8a531a6a9f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020b65872ffc092f8a531a6a9f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510b65872ffc092f8a531a6a9f', width: 64}
				]),
			id: '7aMc9Dk7FhceVhhSRvGVKi',
			name: '110/Das Phantom im Schokoladenmuseum',
			urlToOpen: 'https://open.spotify.com/album/7aMc9Dk7FhceVhhSRvGVKi'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273aaa29403bcbef337b237665b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02aaa29403bcbef337b237665b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851aaa29403bcbef337b237665b', width: 64}
				]),
			id: '0Av7I4rxIH4l2iy4eonNqQ',
			name: '109/Mörderspiel im Burghotel',
			urlToOpen: 'https://open.spotify.com/album/0Av7I4rxIH4l2iy4eonNqQ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273245b83f6ec889cdb5f1aca68', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02245b83f6ec889cdb5f1aca68', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851245b83f6ec889cdb5f1aca68', width: 64}
				]),
			id: '5UowH6UQ4hHv0pDp7XC73F',
			name: '108/Das Konzert bei den Ratten',
			urlToOpen: 'https://open.spotify.com/album/5UowH6UQ4hHv0pDp7XC73F'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2735c1facd4093ff584d49571ad', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e025c1facd4093ff584d49571ad', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048515c1facd4093ff584d49571ad', width: 64}
				]),
			id: '20Ei5hMuzN4aIaubhwZGCh',
			name: '107/Lösegeld für einen Irrtum',
			urlToOpen: 'https://open.spotify.com/album/20Ei5hMuzN4aIaubhwZGCh'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d6fd97244f51f74b10888db9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d6fd97244f51f74b10888db9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d6fd97244f51f74b10888db9', width: 64}
				]),
			id: '6vx49wKEFKejjPiqtr6PZV',
			name: '106/Mädchenraub im Ferienhaus',
			urlToOpen: 'https://open.spotify.com/album/6vx49wKEFKejjPiqtr6PZV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f75e759646e7ab1f83f71773', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f75e759646e7ab1f83f71773', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f75e759646e7ab1f83f71773', width: 64}
				]),
			id: '1rFO6xC24qh08d1wCvKDC8',
			name: '105/Vermißte Kids und Killerpflanzen',
			urlToOpen: 'https://open.spotify.com/album/1rFO6xC24qh08d1wCvKDC8'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e22cfd79b8e932ab30935378', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e22cfd79b8e932ab30935378', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e22cfd79b8e932ab30935378', width: 64}
				]),
			id: '5YwL93GA7APpy21xMum8Wt',
			name: '104/Im Wettbüro des Teufels',
			urlToOpen: 'https://open.spotify.com/album/5YwL93GA7APpy21xMum8Wt'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732340444d98b80cf5e4b92cd4', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022340444d98b80cf5e4b92cd4', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512340444d98b80cf5e4b92cd4', width: 64}
				]),
			id: '0Bgt28WUbkcFYGYFZDkVMk',
			name: '103/Mörderischer Stammbaum',
			urlToOpen: 'https://open.spotify.com/album/0Bgt28WUbkcFYGYFZDkVMk'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27354e9a1c89d3a16ec0aa44a10', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0254e9a1c89d3a16ec0aa44a10', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485154e9a1c89d3a16ec0aa44a10', width: 64}
				]),
			id: '6b6XofBfdNQOrTQ5OYNzxI',
			name: '102/Angst auf der Autobahn',
			urlToOpen: 'https://open.spotify.com/album/6b6XofBfdNQOrTQ5OYNzxI'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a5c1e95d1730d78d54851ab8', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a5c1e95d1730d78d54851ab8', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a5c1e95d1730d78d54851ab8', width: 64}
				]),
			id: '2jU1HQIl8BvRK2k5xd1rnf',
			name: '101/Opfer fliegen 1. Klasse',
			urlToOpen: 'https://open.spotify.com/album/2jU1HQIl8BvRK2k5xd1rnf'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27314ac6c46868f8c51be7d33b2', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0214ac6c46868f8c51be7d33b2', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485114ac6c46868f8c51be7d33b2', width: 64}
				]),
			id: '2roFEQcxTR8srR0sWgm456',
			name: '100/Fieser Trick mit Nr. 100',
			urlToOpen: 'https://open.spotify.com/album/2roFEQcxTR8srR0sWgm456'
		}
		]));
var $author$project$AlbumStorageTkkgr$albumStorage = $elm$core$Array$fromList(
	_List_fromArray(
		[
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e91ea41595937dfdbfc2684f', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e91ea41595937dfdbfc2684f', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e91ea41595937dfdbfc2684f', width: 64}
				]),
			id: '7GEeLJHM26JEPsMphuGdpv',
			name: '099/Hilflos in eisiger Nacht',
			urlToOpen: 'https://open.spotify.com/album/7GEeLJHM26JEPsMphuGdpv'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731b229f1b91cfea58aa02e8a0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021b229f1b91cfea58aa02e8a0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511b229f1b91cfea58aa02e8a0', width: 64}
				]),
			id: '5XIQ7snWep9Ve5R6TEAbKe',
			name: '098/Die Haie vom Lotus-Garten',
			urlToOpen: 'https://open.spotify.com/album/5XIQ7snWep9Ve5R6TEAbKe'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273dcea2a5e46c0dd2765fbff59', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02dcea2a5e46c0dd2765fbff59', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851dcea2a5e46c0dd2765fbff59', width: 64}
				]),
			id: '62ubTJeNMqXACrW43uK1fV',
			name: '097/Die Hand an den Sternen',
			urlToOpen: 'https://open.spotify.com/album/62ubTJeNMqXACrW43uK1fV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27389654b1d7bcbd6004ee5ab10', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0289654b1d7bcbd6004ee5ab10', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485189654b1d7bcbd6004ee5ab10', width: 64}
				]),
			id: '3xv5DyV1HzdZOtHkRwGOul',
			name: '096/Die Entführung des Popstars',
			urlToOpen: 'https://open.spotify.com/album/3xv5DyV1HzdZOtHkRwGOul'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27349b3feca0e3fe45f24e0598c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0249b3feca0e3fe45f24e0598c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485149b3feca0e3fe45f24e0598c', width: 64}
				]),
			id: '4JuBG4ko46TyAF2R1A0APA',
			name: '095/U-Bahn des Schreckens',
			urlToOpen: 'https://open.spotify.com/album/4JuBG4ko46TyAF2R1A0APA'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273046109bd4415a6cbdc28b01c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02046109bd4415a6cbdc28b01c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851046109bd4415a6cbdc28b01c', width: 64}
				]),
			id: '0in2tMW0QlYkCN4xZGMKFw',
			name: '094/In dunkler Nacht am Marmor-Grab',
			urlToOpen: 'https://open.spotify.com/album/0in2tMW0QlYkCN4xZGMKFw'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273aa143b56f3071eb152ef0dce', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02aa143b56f3071eb152ef0dce', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851aa143b56f3071eb152ef0dce', width: 64}
				]),
			id: '2rwdnrSrnLwwNt3fVB4dj5',
			name: '093/Die Opfer mit der kühlen Schnauze',
			urlToOpen: 'https://open.spotify.com/album/2rwdnrSrnLwwNt3fVB4dj5'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734a2b105037b57e7fc496ce85', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024a2b105037b57e7fc496ce85', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514a2b105037b57e7fc496ce85', width: 64}
				]),
			id: '2XWTTxWMfvyYmCOIgSDCbX',
			name: '092/Der grausame Rächer',
			urlToOpen: 'https://open.spotify.com/album/2XWTTxWMfvyYmCOIgSDCbX'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27374a914fe3635503c5bc083f1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0274a914fe3635503c5bc083f1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485174a914fe3635503c5bc083f1', width: 64}
				]),
			id: '4NP8OOY8jxn9vVrc2YHMnY',
			name: '091/Crash-Kids riskieren ihr Leben',
			urlToOpen: 'https://open.spotify.com/album/4NP8OOY8jxn9vVrc2YHMnY'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ca132eb530857af934cd4087', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ca132eb530857af934cd4087', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ca132eb530857af934cd4087', width: 64}
				]),
			id: '1eLwikBnqjNWSaczaR5cgO',
			name: '090/Schmuggler reisen unerkannt',
			urlToOpen: 'https://open.spotify.com/album/1eLwikBnqjNWSaczaR5cgO'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d9786fecfec05cbf45822f76', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d9786fecfec05cbf45822f76', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d9786fecfec05cbf45822f76', width: 64}
				]),
			id: '3MnUfnTrRAtu2NQzUS2QSK',
			name: '089/Feind aus der Vergangenheit',
			urlToOpen: 'https://open.spotify.com/album/3MnUfnTrRAtu2NQzUS2QSK'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ad7fa75922a5d99cfab58200', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ad7fa75922a5d99cfab58200', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ad7fa75922a5d99cfab58200', width: 64}
				]),
			id: '0t5UTq7hP9bwyfOQVwo4t6',
			name: '088/Kampf um das Zauberschwert \"Drachenauge\"',
			urlToOpen: 'https://open.spotify.com/album/0t5UTq7hP9bwyfOQVwo4t6'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739ad0fb607728cd858c925389', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029ad0fb607728cd858c925389', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519ad0fb607728cd858c925389', width: 64}
				]),
			id: '0jDEX8MeGHhO2y6YnG6hSc',
			name: '087/Der böse Geist vom Waisenhaus',
			urlToOpen: 'https://open.spotify.com/album/0jDEX8MeGHhO2y6YnG6hSc'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273592d75216ab0319a2a64b8df', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02592d75216ab0319a2a64b8df', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851592d75216ab0319a2a64b8df', width: 64}
				]),
			id: '4LR2bwS219DfsOZCXUtf9W',
			name: '086/Die Schatzsucher-Mafia schlägt zu',
			urlToOpen: 'https://open.spotify.com/album/4LR2bwS219DfsOZCXUtf9W'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27378e1d87d803c2db12f375b32', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0278e1d87d803c2db12f375b32', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485178e1d87d803c2db12f375b32', width: 64}
				]),
			id: '6wQkT3EBgw4lzKjjK4RLje',
			name: '085/Freiheit für gequälte Tiere',
			urlToOpen: 'https://open.spotify.com/album/6wQkT3EBgw4lzKjjK4RLje'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273dde1a606a87e30906fc2af0c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02dde1a606a87e30906fc2af0c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851dde1a606a87e30906fc2af0c', width: 64}
				]),
			id: '0pqrBK8Iyz8zrFEhdLXUXb',
			name: '084/Dynamit im Kofferraum',
			urlToOpen: 'https://open.spotify.com/album/0pqrBK8Iyz8zrFEhdLXUXb'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27307d765dc1545fb12496fa7a0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0207d765dc1545fb12496fa7a0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485107d765dc1545fb12496fa7a0', width: 64}
				]),
			id: '0aCNZDvswOwzDT0tMmzc0y',
			name: '083/Hilfe! Gaby in Gefahr',
			urlToOpen: 'https://open.spotify.com/album/0aCNZDvswOwzDT0tMmzc0y'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273db8f25c70b738a124b014c07', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02db8f25c70b738a124b014c07', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851db8f25c70b738a124b014c07', width: 64}
				]),
			id: '69eO2hzbouPoPBrcDf4JWx',
			name: '082/Spuk aus dem Jenseits',
			urlToOpen: 'https://open.spotify.com/album/69eO2hzbouPoPBrcDf4JWx'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f4d0be571e417462c30d2c27', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f4d0be571e417462c30d2c27', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f4d0be571e417462c30d2c27', width: 64}
				]),
			id: '2TjBhMvnNmCpvITGAS9p6v',
			name: '081/Horror-Trip im Luxusauto',
			urlToOpen: 'https://open.spotify.com/album/2TjBhMvnNmCpvITGAS9p6v'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27345bb99fa72e0619288231863', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0245bb99fa72e0619288231863', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485145bb99fa72e0619288231863', width: 64}
				]),
			id: '03jgLfxIX1vVDXMn7tjW0e',
			name: '080/Weißes Gift im Nachtexpress',
			urlToOpen: 'https://open.spotify.com/album/03jgLfxIX1vVDXMn7tjW0e'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273fc773fcbd4a488edffc0ed38', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02fc773fcbd4a488edffc0ed38', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851fc773fcbd4a488edffc0ed38', width: 64}
				]),
			id: '3MUa6rKq5BGATlYUMD14jO',
			name: '079/Ein Toter braucht Hilfe',
			urlToOpen: 'https://open.spotify.com/album/3MUa6rKq5BGATlYUMD14jO'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a5ac03828f3261ad117681c9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a5ac03828f3261ad117681c9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a5ac03828f3261ad117681c9', width: 64}
				]),
			id: '4pngmVzpD9i8f4F3cjobAU',
			name: '078/Heißer Draht nach Paradiso',
			urlToOpen: 'https://open.spotify.com/album/4pngmVzpD9i8f4F3cjobAU'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c8913ffe285c4a40b8a5e715', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c8913ffe285c4a40b8a5e715', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c8913ffe285c4a40b8a5e715', width: 64}
				]),
			id: '0rp0SCiA1hcrCJqiiG9dNO',
			name: '077/Der erpresste Erpresser',
			urlToOpen: 'https://open.spotify.com/album/0rp0SCiA1hcrCJqiiG9dNO'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273996d67303bc02ae2b9f1d0a7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02996d67303bc02ae2b9f1d0a7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851996d67303bc02ae2b9f1d0a7', width: 64}
				]),
			id: '6Ju9fXwVzHhLjpzbMzMti5',
			name: '076/Die Goldgräber-Bande',
			urlToOpen: 'https://open.spotify.com/album/6Ju9fXwVzHhLjpzbMzMti5'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730b5e9b27170f88c62f684cd0', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020b5e9b27170f88c62f684cd0', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510b5e9b27170f88c62f684cd0', width: 64}
				]),
			id: '1C0atYAGpLJLcxdSu6iQZJ',
			name: '075/Lösegeld am Henkersberg',
			urlToOpen: 'https://open.spotify.com/album/1C0atYAGpLJLcxdSu6iQZJ'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734a13785cf094239e1e026ec6', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024a13785cf094239e1e026ec6', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514a13785cf094239e1e026ec6', width: 64}
				]),
			id: '1qwf1F06HyFYSvQpcGNuU0',
			name: '074/Im Schattenreich des Dr. Mubase',
			urlToOpen: 'https://open.spotify.com/album/1qwf1F06HyFYSvQpcGNuU0'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739adde3e3fe52106541557b7a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029adde3e3fe52106541557b7a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519adde3e3fe52106541557b7a', width: 64}
				]),
			id: '2pjIisAo6RrFZe4fgoAJNe',
			name: '073/Herr der Schlangeninsel',
			urlToOpen: 'https://open.spotify.com/album/2pjIisAo6RrFZe4fgoAJNe'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738f45285e3e23d91017ac7b21', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028f45285e3e23d91017ac7b21', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518f45285e3e23d91017ac7b21', width: 64}
				]),
			id: '280pPhAMoxhHFqrBe7TopM',
			name: '072/Taschengeld für ein Gespenst',
			urlToOpen: 'https://open.spotify.com/album/280pPhAMoxhHFqrBe7TopM'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273fd671b7a29af945287917c83', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02fd671b7a29af945287917c83', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851fd671b7a29af945287917c83', width: 64}
				]),
			id: '5SWVBdSwIh4erbo6Hw3WO8',
			name: '071/Stimme aus der Unterwelt',
			urlToOpen: 'https://open.spotify.com/album/5SWVBdSwIh4erbo6Hw3WO8'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273720e5294616b584985ebee94', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02720e5294616b584985ebee94', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851720e5294616b584985ebee94', width: 64}
				]),
			id: '3vHzoGBo7WHbIbIEhVyp8H',
			name: '070/Wer hat Tims Mutter entführt?',
			urlToOpen: 'https://open.spotify.com/album/3vHzoGBo7WHbIbIEhVyp8H'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2736058bcee1c037bce33b91655', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e026058bcee1c037bce33b91655', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048516058bcee1c037bce33b91655', width: 64}
				]),
			id: '4li0i9hTORZh4lb2pvH7H4',
			name: '069/Achtung! Die \"Monsters\" kommen',
			urlToOpen: 'https://open.spotify.com/album/4li0i9hTORZh4lb2pvH7H4'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273694483ade1ba284ef7621cc3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02694483ade1ba284ef7621cc3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851694483ade1ba284ef7621cc3', width: 64}
				]),
			id: '5lkSDRBNtYBR7jXqLgGIPM',
			name: '068/Rauschgift-Razzia im Internat',
			urlToOpen: 'https://open.spotify.com/album/5lkSDRBNtYBR7jXqLgGIPM'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273359a21603d49910f557ac94c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02359a21603d49910f557ac94c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851359a21603d49910f557ac94c', width: 64}
				]),
			id: '6d7ve3mWIxMyLtvmrDe3oN',
			name: '067/Hinterhalt im Eulenforst',
			urlToOpen: 'https://open.spotify.com/album/6d7ve3mWIxMyLtvmrDe3oN'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27320d8f9cbbbe6e1db97e4636d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0220d8f9cbbbe6e1db97e4636d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485120d8f9cbbbe6e1db97e4636d', width: 64}
				]),
			id: '2dH5NcZY7KT82TjA3mR0IL',
			name: '066/Gauner mit der \"Goldenen Hand\"',
			urlToOpen: 'https://open.spotify.com/album/2dH5NcZY7KT82TjA3mR0IL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273bf923c0c94c629722180bb34', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02bf923c0c94c629722180bb34', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851bf923c0c94c629722180bb34', width: 64}
				]),
			id: '2ubE3axmR41kSXAjEcluEz',
			name: '065/Sklaven für Wutawia',
			urlToOpen: 'https://open.spotify.com/album/2ubE3axmR41kSXAjEcluEz'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c951dacde6ab695b36c76ba5', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c951dacde6ab695b36c76ba5', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c951dacde6ab695b36c76ba5', width: 64}
				]),
			id: '2IRabdIB4ipjSfWGfJJz1p',
			name: '064/Schwarze Pest aus Indien',
			urlToOpen: 'https://open.spotify.com/album/2IRabdIB4ipjSfWGfJJz1p'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e5efecc16455374e3781baf7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e5efecc16455374e3781baf7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e5efecc16455374e3781baf7', width: 64}
				]),
			id: '2bOBGz1gR4iSubZIpQXAYP',
			name: '063/Die Falle am Fuchsbach',
			urlToOpen: 'https://open.spotify.com/album/2bOBGz1gR4iSubZIpQXAYP'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c2122aa0912f26e80ab1d5ea', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c2122aa0912f26e80ab1d5ea', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c2122aa0912f26e80ab1d5ea', width: 64}
				]),
			id: '3qSQqJtFmTznYTrNBqPyyw',
			name: '062/Terror aus dem \"Pulverfaß\"',
			urlToOpen: 'https://open.spotify.com/album/3qSQqJtFmTznYTrNBqPyyw'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731cb07b8d9aab6f33a94d11a7', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021cb07b8d9aab6f33a94d11a7', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511cb07b8d9aab6f33a94d11a7', width: 64}
				]),
			id: '6gkTtqPnKizQNP2Wku47ye',
			name: '061/Im Schatten des Dämons',
			urlToOpen: 'https://open.spotify.com/album/6gkTtqPnKizQNP2Wku47ye'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731a6435002b84cb33116285ad', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021a6435002b84cb33116285ad', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511a6435002b84cb33116285ad', width: 64}
				]),
			id: '1m43QTxE0cdGCpSaFED1mb',
			name: '060/Der Teufel vom Waiga-See',
			urlToOpen: 'https://open.spotify.com/album/1m43QTxE0cdGCpSaFED1mb'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27338563fae409d33c0f08e4130', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0238563fae409d33c0f08e4130', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485138563fae409d33c0f08e4130', width: 64}
				]),
			id: '49t3y9iAQqThpImvvQos0s',
			name: '059/Trickdieb auf Burg Drachenstein',
			urlToOpen: 'https://open.spotify.com/album/49t3y9iAQqThpImvvQos0s'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273f37407bf2bdf858a591e0672', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02f37407bf2bdf858a591e0672', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851f37407bf2bdf858a591e0672', width: 64}
				]),
			id: '44DE85CejNlCyUQOK1DMym',
			name: '058/Der doppelte Pedro',
			urlToOpen: 'https://open.spotify.com/album/44DE85CejNlCyUQOK1DMym'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27319a29fcc56158c2b120f8910', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0219a29fcc56158c2b120f8910', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485119a29fcc56158c2b120f8910', width: 64}
				]),
			id: '75Sbt9YzxwmT50cdOpQuwi',
			name: '057/Jagt das rote Geisterauto!',
			urlToOpen: 'https://open.spotify.com/album/75Sbt9YzxwmT50cdOpQuwi'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d1dd81b1726d9766d9c7bce3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d1dd81b1726d9766d9c7bce3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d1dd81b1726d9766d9c7bce3', width: 64}
				]),
			id: '1Og3x45AhCqdmif9zWopbY',
			name: '056/Todesgruß vom Gelben Drachen',
			urlToOpen: 'https://open.spotify.com/album/1Og3x45AhCqdmif9zWopbY'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b7f5753d39f3d4f033b1d444', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b7f5753d39f3d4f033b1d444', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b7f5753d39f3d4f033b1d444', width: 64}
				]),
			id: '2Lm9p4iJstI3iwOD8oEZMo',
			name: '055/Der Mörder aus dem Schauerwald',
			urlToOpen: 'https://open.spotify.com/album/2Lm9p4iJstI3iwOD8oEZMo'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b9b80227647ab1d3ca9e04a5', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b9b80227647ab1d3ca9e04a5', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b9b80227647ab1d3ca9e04a5', width: 64}
				]),
			id: '2tQjarBMugwtJGLPISSqkx',
			name: '054/Alarm! Klößchen ist verschwunden',
			urlToOpen: 'https://open.spotify.com/album/2tQjarBMugwtJGLPISSqkx'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733c9649103cc78e9e2d296f56', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023c9649103cc78e9e2d296f56', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513c9649103cc78e9e2d296f56', width: 64}
				]),
			id: '4qoN8RkWifzeVqzLIGBGBL',
			name: '053/Schüsse aus der Rosenhecke',
			urlToOpen: 'https://open.spotify.com/album/4qoN8RkWifzeVqzLIGBGBL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733a9e9b6d7f3cf61502a3f284', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023a9e9b6d7f3cf61502a3f284', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513a9e9b6d7f3cf61502a3f284', width: 64}
				]),
			id: '3GwBNJd3vbi33MkAOgWhWL',
			name: '052/Überfall im Hafen',
			urlToOpen: 'https://open.spotify.com/album/3GwBNJd3vbi33MkAOgWhWL'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273081184f45643a7eafbf6e90a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02081184f45643a7eafbf6e90a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851081184f45643a7eafbf6e90a', width: 64}
				]),
			id: '4WOjS2gDgi6sCFNN2xbXz1',
			name: '051/Gangster auf der Gartenparty',
			urlToOpen: 'https://open.spotify.com/album/4WOjS2gDgi6sCFNN2xbXz1'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273da1f5d303584b0d303e64a20', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02da1f5d303584b0d303e64a20', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851da1f5d303584b0d303e64a20', width: 64}
				]),
			id: '1CAidQFFQWvxTFUZZ94TEm',
			name: '050/Spion auf der Flucht',
			urlToOpen: 'https://open.spotify.com/album/1CAidQFFQWvxTFUZZ94TEm'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273fa12b51f4009ae83a5a8fc0a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02fa12b51f4009ae83a5a8fc0a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851fa12b51f4009ae83a5a8fc0a', width: 64}
				]),
			id: '517mEgMBkbNEOKvbKkAQVy',
			name: '049/Bombe an Bord',
			urlToOpen: 'https://open.spotify.com/album/517mEgMBkbNEOKvbKkAQVy'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a41b51a9cb08c3ca506994bb', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a41b51a9cb08c3ca506994bb', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a41b51a9cb08c3ca506994bb', width: 64}
				]),
			id: '4WgadnXmyPlFzQ6GyHUqRw',
			name: '048/Bestien der Finsternis',
			urlToOpen: 'https://open.spotify.com/album/4WgadnXmyPlFzQ6GyHUqRw'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27355ec92325aab28412e102d91', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0255ec92325aab28412e102d91', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485155ec92325aab28412e102d91', width: 64}
				]),
			id: '1d38ND8yadbLTLEhehVWRp',
			name: '047/Todesfracht im Jaguar',
			urlToOpen: 'https://open.spotify.com/album/1d38ND8yadbLTLEhehVWRp'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ea2e2d51c77af2c80761f50c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ea2e2d51c77af2c80761f50c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ea2e2d51c77af2c80761f50c', width: 64}
				]),
			id: '6epiNHYc23EgElvraBVTUB',
			name: '046/Hotel in Flammen',
			urlToOpen: 'https://open.spotify.com/album/6epiNHYc23EgElvraBVTUB'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273922d41285f4b2ec43fd00cf3', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02922d41285f4b2ec43fd00cf3', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851922d41285f4b2ec43fd00cf3', width: 64}
				]),
			id: '1KNZFZQYNPJOlX3sxrBOSE',
			name: '045/Unternehmen Grüne Hölle',
			urlToOpen: 'https://open.spotify.com/album/1KNZFZQYNPJOlX3sxrBOSE'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739abff053658000ec790c1fb9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029abff053658000ec790c1fb9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519abff053658000ec790c1fb9', width: 64}
				]),
			id: '6L8cRmK9LrR4OYbwIb4prW',
			name: '044/Um Mitternacht am schwarzen Fluß',
			urlToOpen: 'https://open.spotify.com/album/6L8cRmK9LrR4OYbwIb4prW'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739bf6e80db0f2bc72cb9764b9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029bf6e80db0f2bc72cb9764b9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519bf6e80db0f2bc72cb9764b9', width: 64}
				]),
			id: '6LlaB9vjnahov25yQWlGfG',
			name: '043/Gefangen in der Schreckenskammer',
			urlToOpen: 'https://open.spotify.com/album/6LlaB9vjnahov25yQWlGfG'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731fd5761732adf56b2335066b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021fd5761732adf56b2335066b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511fd5761732adf56b2335066b', width: 64}
				]),
			id: '5ww0350exp0oCRS9arplvu',
			name: '042/Anschlag auf den Silberpfeil',
			urlToOpen: 'https://open.spotify.com/album/5ww0350exp0oCRS9arplvu'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2732e68c4b5ef818ac62434654a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e022e68c4b5ef818ac62434654a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048512e68c4b5ef818ac62434654a', width: 64}
				]),
			id: '0Ebu2fMGeXFXX9uJdLPxPO',
			name: '041/Heißes Gold im Silbersee',
			urlToOpen: 'https://open.spotify.com/album/0Ebu2fMGeXFXX9uJdLPxPO'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2734a3c207244523df7f8643f98', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e024a3c207244523df7f8643f98', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048514a3c207244523df7f8643f98', width: 64}
				]),
			id: '07xFaDO6M3YzpSE5FrEJUj',
			name: '040/Duell im Morgengrauen',
			urlToOpen: 'https://open.spotify.com/album/07xFaDO6M3YzpSE5FrEJUj'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27336427b5643980f4230c9de61', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0236427b5643980f4230c9de61', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485136427b5643980f4230c9de61', width: 64}
				]),
			id: '50ns4wTGElvzJtYF7J6TYS',
			name: '039/Die Gift-Party',
			urlToOpen: 'https://open.spotify.com/album/50ns4wTGElvzJtYF7J6TYS'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273fa7461b899e9ffa414480660', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02fa7461b899e9ffa414480660', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851fa7461b899e9ffa414480660', width: 64}
				]),
			id: '2w7g51yGAlnfRpsbmanami',
			name: '038/Die weiße Schmuggler-Yacht',
			urlToOpen: 'https://open.spotify.com/album/2w7g51yGAlnfRpsbmanami'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731850f728e306fbee61161c12', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021850f728e306fbee61161c12', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511850f728e306fbee61161c12', width: 64}
				]),
			id: '3AoA7wKNOW7rmtpzSCijcR',
			name: '036/Das Geschenk des Bösen',
			urlToOpen: 'https://open.spotify.com/album/3AoA7wKNOW7rmtpzSCijcR'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c08dd3915977d2d288220056', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c08dd3915977d2d288220056', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c08dd3915977d2d288220056', width: 64}
				]),
			id: '3PE3WIY7dTLhAS6WzTb2gx',
			name: '035/Die Nacht des Überfalls',
			urlToOpen: 'https://open.spotify.com/album/3PE3WIY7dTLhAS6WzTb2gx'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d696bf8514ef74c119a7fe2d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d696bf8514ef74c119a7fe2d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d696bf8514ef74c119a7fe2d', width: 64}
				]),
			id: '0r50DZDZPJdUgqprZH8Uiz',
			name: '034/Vampir der Autobahn',
			urlToOpen: 'https://open.spotify.com/album/0r50DZDZPJdUgqprZH8Uiz'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c763b243a7894ff32592084a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c763b243a7894ff32592084a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c763b243a7894ff32592084a', width: 64}
				]),
			id: '0dfv6DKH5AQmscC7xXTENC',
			name: '033/Wer raubte das Millionenpferd?',
			urlToOpen: 'https://open.spotify.com/album/0dfv6DKH5AQmscC7xXTENC'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739d741f3f199c4c9ebbfc840c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029d741f3f199c4c9ebbfc840c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519d741f3f199c4c9ebbfc840c', width: 64}
				]),
			id: '4PjUBvlQ01A9LRfZ27reQb',
			name: '032/Wilddiebe im Teufelsmoor',
			urlToOpen: 'https://open.spotify.com/album/4PjUBvlQ01A9LRfZ27reQb'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273e02e06d6cba6b7adf571aa78', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02e02e06d6cba6b7adf571aa78', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851e02e06d6cba6b7adf571aa78', width: 64}
				]),
			id: '1nEMgpdr0RTPYPdAmeblSx',
			name: '031/Die Entführung in der Mondscheingasse',
			urlToOpen: 'https://open.spotify.com/album/1nEMgpdr0RTPYPdAmeblSx'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273152fb7fd712aeb20f0fc91ac', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02152fb7fd712aeb20f0fc91ac', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851152fb7fd712aeb20f0fc91ac', width: 64}
				]),
			id: '28C564LrC7JsVlHe3e0Btv',
			name: '030/Die Mafia kommt zur Geisterstunde',
			urlToOpen: 'https://open.spotify.com/album/28C564LrC7JsVlHe3e0Btv'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b02d7ecc208e9092cd555e95', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b02d7ecc208e9092cd555e95', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b02d7ecc208e9092cd555e95', width: 64}
				]),
			id: '2Sg92NzoOMzEuQIpgIhgOO',
			name: '029/Hundediebe kennen keine Gnade',
			urlToOpen: 'https://open.spotify.com/album/2Sg92NzoOMzEuQIpgIhgOO'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273b66bd26d9591739a99071e55', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02b66bd26d9591739a99071e55', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851b66bd26d9591739a99071e55', width: 64}
				]),
			id: '4QGudxuEAcnfuNllrivq5W',
			name: '028/Verrat im Höllental',
			urlToOpen: 'https://open.spotify.com/album/4QGudxuEAcnfuNllrivq5W'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273fbbd971fa2aad81e984d9e87', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02fbbd971fa2aad81e984d9e87', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851fbbd971fa2aad81e984d9e87', width: 64}
				]),
			id: '34KfrLQf8eqtIlHPiniXgN',
			name: '027/Banditen im Palasthotel',
			urlToOpen: 'https://open.spotify.com/album/34KfrLQf8eqtIlHPiniXgN'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27368ab7480f4013009d6d04a7a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0268ab7480f4013009d6d04a7a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485168ab7480f4013009d6d04a7a', width: 64}
				]),
			id: '6QeaqV74RWxGdh0J4QBIww',
			name: '026/Das Geiseldrama',
			urlToOpen: 'https://open.spotify.com/album/6QeaqV74RWxGdh0J4QBIww'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739b318a565f09633fd1a44028', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029b318a565f09633fd1a44028', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519b318a565f09633fd1a44028', width: 64}
				]),
			id: '5fIqw30fRsl0RNHAamxD0h',
			name: '025/Die Stunde der schwarzen Maske',
			urlToOpen: 'https://open.spotify.com/album/5fIqw30fRsl0RNHAamxD0h'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737b56ce6c9d320d4635a02b6a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027b56ce6c9d320d4635a02b6a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517b56ce6c9d320d4635a02b6a', width: 64}
				]),
			id: '0BdEwpfNwNkJUTwxIXJo5Z',
			name: '024/Gefährliche Diamanten',
			urlToOpen: 'https://open.spotify.com/album/0BdEwpfNwNkJUTwxIXJo5Z'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273cac7baada389d734d3059e1c', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02cac7baada389d734d3059e1c', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851cac7baada389d734d3059e1c', width: 64}
				]),
			id: '26dIpIYfi9fSeEeoHfRRqR',
			name: '023/Kampf der Spione',
			urlToOpen: 'https://open.spotify.com/album/26dIpIYfi9fSeEeoHfRRqR'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273661a14045134ba1609a82e76', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02661a14045134ba1609a82e76', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851661a14045134ba1609a82e76', width: 64}
				]),
			id: '7gHX31YKrpfWBFTlTjWpzt',
			name: '022/In den Klauen des Tigers',
			urlToOpen: 'https://open.spotify.com/album/7gHX31YKrpfWBFTlTjWpzt'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27320443ab0d1a1571908798679', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0220443ab0d1a1571908798679', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485120443ab0d1a1571908798679', width: 64}
				]),
			id: '4CUF3gCdwhOg1EdpSaIH2y',
			name: '021/Die Rache des Bombenlegers',
			urlToOpen: 'https://open.spotify.com/album/4CUF3gCdwhOg1EdpSaIH2y'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2730c2b575f950c215cdf884078', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e020c2b575f950c215cdf884078', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048510c2b575f950c215cdf884078', width: 64}
				]),
			id: '6KmOIZoB1FWJrYwSLMQVKH',
			name: '018/Hexenjagd in Lerchenbach',
			urlToOpen: 'https://open.spotify.com/album/6KmOIZoB1FWJrYwSLMQVKH'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273a97acc8ea0543332cc17489b', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02a97acc8ea0543332cc17489b', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851a97acc8ea0543332cc17489b', width: 64}
				]),
			id: '028hFwVAqF3qtl2rqM5nlD',
			name: '017/Die Doppelgängerin',
			urlToOpen: 'https://open.spotify.com/album/028hFwVAqF3qtl2rqM5nlD'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2737d84da4c1e69811d283525d9', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e027d84da4c1e69811d283525d9', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048517d84da4c1e69811d283525d9', width: 64}
				]),
			id: '2z2U3d7vEXBmQm8IBg0mFj',
			name: '016/X7 antwortet nicht',
			urlToOpen: 'https://open.spotify.com/album/2z2U3d7vEXBmQm8IBg0mFj'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273da0880ac8a1da398eb93c4f1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02da0880ac8a1da398eb93c4f1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851da0880ac8a1da398eb93c4f1', width: 64}
				]),
			id: '3xr2gj74ceKjRFScuN0uWS',
			name: '015/Ufos in Bad Finkenstein',
			urlToOpen: 'https://open.spotify.com/album/3xr2gj74ceKjRFScuN0uWS'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273d9e600e7ebf82dc7c97e223a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02d9e600e7ebf82dc7c97e223a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851d9e600e7ebf82dc7c97e223a', width: 64}
				]),
			id: '2Tnj8gSYW5FKa9qcyG46uS',
			name: '014/Der Schlangenmensch',
			urlToOpen: 'https://open.spotify.com/album/2Tnj8gSYW5FKa9qcyG46uS'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2738291078c1b158b9524dca175', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e028291078c1b158b9524dca175', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048518291078c1b158b9524dca175', width: 64}
				]),
			id: '1pSX9vO6inD71umv5SoDxV',
			name: '013/Die Bettelmönche aus Atlantis',
			urlToOpen: 'https://open.spotify.com/album/1pSX9vO6inD71umv5SoDxV'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273da5bf20facb98f2c9c06ee4d', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02da5bf20facb98f2c9c06ee4d', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851da5bf20facb98f2c9c06ee4d', width: 64}
				]),
			id: '2KaWF3eANzWbtnpEHuxHVh',
			name: '012/Nachts, wenn der Feuerteufel kommt',
			urlToOpen: 'https://open.spotify.com/album/2KaWF3eANzWbtnpEHuxHVh'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273ea903c7255d7bf3e3c8e83f1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02ea903c7255d7bf3e3c8e83f1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851ea903c7255d7bf3e3c8e83f1', width: 64}
				]),
			id: '4yeVIdrGglPUWEl86T2Sgz',
			name: '011/Die Falschmünzer vom Mäuseweg',
			urlToOpen: 'https://open.spotify.com/album/4yeVIdrGglPUWEl86T2Sgz'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273864d69b596d04541756fef52', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02864d69b596d04541756fef52', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851864d69b596d04541756fef52', width: 64}
				]),
			id: '7egcWhxwfDEyfW1iddazLc',
			name: '010/Alarm im Zirkus Sarani!',
			urlToOpen: 'https://open.spotify.com/album/7egcWhxwfDEyfW1iddazLc'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2733b46159957a4c0618ea72883', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e023b46159957a4c0618ea72883', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048513b46159957a4c0618ea72883', width: 64}
				]),
			id: '6fv4ajGQ8VOEWkPGCBM8Bk',
			name: '009/Abenteuer im Ferienlager',
			urlToOpen: 'https://open.spotify.com/album/6fv4ajGQ8VOEWkPGCBM8Bk'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2739eb1152af097e6fce17349c1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e029eb1152af097e6fce17349c1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048519eb1152af097e6fce17349c1', width: 64}
				]),
			id: '6nDOtfqoFRO3cEbvn0dA7F',
			name: '008/Auf der Spur der Vogeljäger',
			urlToOpen: 'https://open.spotify.com/album/6nDOtfqoFRO3cEbvn0dA7F'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273c042f94a6f4458b984b351ff', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02c042f94a6f4458b984b351ff', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851c042f94a6f4458b984b351ff', width: 64}
				]),
			id: '1lHBw6I0KkJIJy7K3azKp0',
			name: '007/Rätsel um die alte Villa',
			urlToOpen: 'https://open.spotify.com/album/1lHBw6I0KkJIJy7K3azKp0'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731f536fc02df72b945d88b2ff', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021f536fc02df72b945d88b2ff', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511f536fc02df72b945d88b2ff', width: 64}
				]),
			id: '5f3BW9l3gt2IceokHZ6nhB',
			name: '006/Angst in der 9a',
			urlToOpen: 'https://open.spotify.com/album/5f3BW9l3gt2IceokHZ6nhB'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273317b3efc19e51a3fe4263cdf', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02317b3efc19e51a3fe4263cdf', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851317b3efc19e51a3fe4263cdf', width: 64}
				]),
			id: '6L5QghMB2McNx1mlxvA9jY',
			name: '005/Das Phantom auf dem Feuerstuhl',
			urlToOpen: 'https://open.spotify.com/album/6L5QghMB2McNx1mlxvA9jY'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27365c75bc6e2837f4d4a83040a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0265c75bc6e2837f4d4a83040a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485165c75bc6e2837f4d4a83040a', width: 64}
				]),
			id: '7C0OqMlXzeiZIB4TZsygY7',
			name: '004/Das Paket mit dem Totenkopf',
			urlToOpen: 'https://open.spotify.com/album/7C0OqMlXzeiZIB4TZsygY7'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b27335d8f58b091f6cbfa745e0fd', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e0235d8f58b091f6cbfa745e0fd', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d0000485135d8f58b091f6cbfa745e0fd', width: 64}
				]),
			id: '4AoqWaIGkLmowNAfQZieas',
			name: '003/Das leere Grab im Moor',
			urlToOpen: 'https://open.spotify.com/album/4AoqWaIGkLmowNAfQZieas'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b273779e7a554bfa1025a8c0af5a', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e02779e7a554bfa1025a8c0af5a', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d00004851779e7a554bfa1025a8c0af5a', width: 64}
				]),
			id: '6Qq9RYcZ4nZfD4IiHRF78v',
			name: '002/Der blinde Hellseher',
			urlToOpen: 'https://open.spotify.com/album/6Qq9RYcZ4nZfD4IiHRF78v'
		},
			{
			covers: _List_fromArray(
				[
					{height: 640, url: 'https://i.scdn.co/image/ab67616d0000b2731619ae75f70ad3f07fff31f1', width: 640},
					{height: 300, url: 'https://i.scdn.co/image/ab67616d00001e021619ae75f70ad3f07fff31f1', width: 300},
					{height: 64, url: 'https://i.scdn.co/image/ab67616d000048511619ae75f70ad3f07fff31f1', width: 64}
				]),
			id: '699XT7D0ROiM2lVjwHAHg9',
			name: '001/Die Jagd nach den Millionendieben',
			urlToOpen: 'https://open.spotify.com/album/699XT7D0ROiM2lVjwHAHg9'
		}
		]));
var $author$project$AlbumStorageDdf$artistInfo = {httpFriendlyShortName: 'ddf', imageUrl: 'https://i.scdn.co/image/ab6761610000e5eb7de827ab626c867816052015', name: 'Die drei ???', shortName: 'DDF'};
var $author$project$AlbumStorageFf$artistInfo = {httpFriendlyShortName: 'ff', imageUrl: 'https://i.scdn.co/image/ab6761610000e5ebfd1fc9ff3040cfb38d7225ac', name: 'Fünf Freunde', shortName: 'FF'};
var $author$project$AlbumStorageTkkg$artistInfo = {httpFriendlyShortName: 'tkkg', imageUrl: 'https://i.scdn.co/image/ab6761610000e5eb1e8366050ddb70f1267cde51', name: 'TKKG', shortName: 'TKKG'};
var $author$project$AlbumStorageTkkgr$artistInfo = {httpFriendlyShortName: 'tkkgr', imageUrl: 'https://i.scdn.co/image/ab6761610000e5eb60367627a2292ba3bc27fe58', name: 'TKKG Retro-Archiv', shortName: 'TKKG(R)'};
var $author$project$ArtistsWithAlbums$albumStorage = _List_fromArray(
	[
		{albums: $author$project$AlbumStorageDdf$albumStorage, artist: $author$project$AlbumStorageDdf$artistInfo},
		{albums: $author$project$AlbumStorageTkkg$albumStorage, artist: $author$project$AlbumStorageTkkg$artistInfo},
		{albums: $author$project$AlbumStorageTkkgr$albumStorage, artist: $author$project$AlbumStorageTkkgr$artistInfo},
		{albums: $author$project$AlbumStorageFf$albumStorage, artist: $author$project$AlbumStorageFf$artistInfo}
	]);
var $elm$core$List$any = F2(
	function (isOkay, list) {
		any:
		while (true) {
			if (!list.b) {
				return false;
			} else {
				var x = list.a;
				var xs = list.b;
				if (isOkay(x)) {
					return true;
				} else {
					var $temp$isOkay = isOkay,
						$temp$list = xs;
					isOkay = $temp$isOkay;
					list = $temp$list;
					continue any;
				}
			}
		}
	});
var $elm$core$Array$filter = F2(
	function (isGood, array) {
		return $elm$core$Array$fromList(
			A3(
				$elm$core$Array$foldr,
				F2(
					function (x, xs) {
						return isGood(x) ? A2($elm$core$List$cons, x, xs) : xs;
					}),
				_List_Nil,
				array));
	});
var $elm_community$list_extra$List$Extra$find = F2(
	function (predicate, list) {
		find:
		while (true) {
			if (!list.b) {
				return $elm$core$Maybe$Nothing;
			} else {
				var first = list.a;
				var rest = list.b;
				if (predicate(first)) {
					return $elm$core$Maybe$Just(first);
				} else {
					var $temp$predicate = predicate,
						$temp$list = rest;
					predicate = $temp$predicate;
					list = $temp$list;
					continue find;
				}
			}
		}
	});
var $elm$core$Maybe$map = F2(
	function (f, maybe) {
		if (maybe.$ === 'Just') {
			var value = maybe.a;
			return $elm$core$Maybe$Just(
				f(value));
		} else {
			return $elm$core$Maybe$Nothing;
		}
	});
var $elm$core$Basics$not = _Basics_not;
var $elm$core$Maybe$withDefault = F2(
	function (_default, maybe) {
		if (maybe.$ === 'Just') {
			var value = maybe.a;
			return value;
		} else {
			return _default;
		}
	});
var $author$project$Main$emptyModel = function () {
	var filteredAlbumNames = _List_fromArray(
		['Outro', 'liest...', 'Originalmusik']);
	var albums = A2(
		$elm$core$Maybe$withDefault,
		$elm$core$Array$empty,
		A2(
			$elm$core$Maybe$map,
			function (a) {
				return a.albums;
			},
			A2(
				$elm_community$list_extra$List$Extra$find,
				function (a) {
					return A2($elm$core$String$contains, 'Die drei', a.artist.name);
				},
				$author$project$ArtistsWithAlbums$albumStorage)));
	var filteredAlbums = A2(
		$elm$core$Array$filter,
		function (a) {
			return !A2(
				$elm$core$List$any,
				function (name) {
					return A2($elm$core$String$contains, name, a.name);
				},
				filteredAlbumNames);
		},
		albums);
	return {albums: filteredAlbums, blacklistedAlbums: _List_Nil, current: 0, isInitialized: false};
}();
var $elm$json$Json$Encode$null = _Json_encodeNull;
var $author$project$Main$fetchBlacklisted = _Platform_outgoingPort(
	'fetchBlacklisted',
	function ($) {
		return $elm$json$Json$Encode$null;
	});
var $author$project$Main$init = function (_v0) {
	return _Utils_Tuple2(
		$author$project$Main$emptyModel,
		$author$project$Main$fetchBlacklisted(_Utils_Tuple0));
};
var $author$project$Main$GotBlacklist = function (a) {
	return {$: 'GotBlacklist', a: a};
};
var $elm$json$Json$Decode$list = _Json_decodeList;
var $elm$json$Json$Decode$string = _Json_decodeString;
var $author$project$Main$blacklistReceiver = _Platform_incomingPort(
	'blacklistReceiver',
	$elm$json$Json$Decode$list($elm$json$Json$Decode$string));
var $author$project$Main$subscriptions = function (_v0) {
	return $author$project$Main$blacklistReceiver($author$project$Main$GotBlacklist);
};
var $elm$core$Platform$Cmd$batch = _Platform_batch;
var $elm$core$Array$length = function (_v0) {
	var len = _v0.a;
	return len;
};
var $elm$core$Debug$log = _Debug_log;
var $elm$core$List$member = F2(
	function (x, xs) {
		return A2(
			$elm$core$List$any,
			function (a) {
				return _Utils_eq(a, x);
			},
			xs);
	});
var $elm$core$Basics$modBy = _Basics_modBy;
var $elm$core$Basics$neq = _Utils_notEqual;
var $elm$core$Platform$Cmd$none = $elm$core$Platform$Cmd$batch(_List_Nil);
var $elm$json$Json$Encode$list = F2(
	function (func, entries) {
		return _Json_wrap(
			A3(
				$elm$core$List$foldl,
				_Json_addEntry(func),
				_Json_emptyArray(_Utils_Tuple0),
				entries));
	});
var $elm$json$Json$Encode$string = _Json_wrap;
var $author$project$Main$setBlacklistedAlbums = _Platform_outgoingPort(
	'setBlacklistedAlbums',
	$elm$json$Json$Encode$list($elm$json$Json$Encode$string));
var $author$project$Main$AlbumsShuffled = function (a) {
	return {$: 'AlbumsShuffled', a: a};
};
var $elm$random$Random$Generate = function (a) {
	return {$: 'Generate', a: a};
};
var $elm$random$Random$Seed = F2(
	function (a, b) {
		return {$: 'Seed', a: a, b: b};
	});
var $elm$core$Bitwise$shiftRightZfBy = _Bitwise_shiftRightZfBy;
var $elm$random$Random$next = function (_v0) {
	var state0 = _v0.a;
	var incr = _v0.b;
	return A2($elm$random$Random$Seed, ((state0 * 1664525) + incr) >>> 0, incr);
};
var $elm$random$Random$initialSeed = function (x) {
	var _v0 = $elm$random$Random$next(
		A2($elm$random$Random$Seed, 0, 1013904223));
	var state1 = _v0.a;
	var incr = _v0.b;
	var state2 = (state1 + x) >>> 0;
	return $elm$random$Random$next(
		A2($elm$random$Random$Seed, state2, incr));
};
var $elm$time$Time$Name = function (a) {
	return {$: 'Name', a: a};
};
var $elm$time$Time$Offset = function (a) {
	return {$: 'Offset', a: a};
};
var $elm$time$Time$Zone = F2(
	function (a, b) {
		return {$: 'Zone', a: a, b: b};
	});
var $elm$time$Time$customZone = $elm$time$Time$Zone;
var $elm$time$Time$Posix = function (a) {
	return {$: 'Posix', a: a};
};
var $elm$time$Time$millisToPosix = $elm$time$Time$Posix;
var $elm$time$Time$now = _Time_now($elm$time$Time$millisToPosix);
var $elm$time$Time$posixToMillis = function (_v0) {
	var millis = _v0.a;
	return millis;
};
var $elm$random$Random$init = A2(
	$elm$core$Task$andThen,
	function (time) {
		return $elm$core$Task$succeed(
			$elm$random$Random$initialSeed(
				$elm$time$Time$posixToMillis(time)));
	},
	$elm$time$Time$now);
var $elm$random$Random$step = F2(
	function (_v0, seed) {
		var generator = _v0.a;
		return generator(seed);
	});
var $elm$random$Random$onEffects = F3(
	function (router, commands, seed) {
		if (!commands.b) {
			return $elm$core$Task$succeed(seed);
		} else {
			var generator = commands.a.a;
			var rest = commands.b;
			var _v1 = A2($elm$random$Random$step, generator, seed);
			var value = _v1.a;
			var newSeed = _v1.b;
			return A2(
				$elm$core$Task$andThen,
				function (_v2) {
					return A3($elm$random$Random$onEffects, router, rest, newSeed);
				},
				A2($elm$core$Platform$sendToApp, router, value));
		}
	});
var $elm$random$Random$onSelfMsg = F3(
	function (_v0, _v1, seed) {
		return $elm$core$Task$succeed(seed);
	});
var $elm$random$Random$Generator = function (a) {
	return {$: 'Generator', a: a};
};
var $elm$random$Random$map = F2(
	function (func, _v0) {
		var genA = _v0.a;
		return $elm$random$Random$Generator(
			function (seed0) {
				var _v1 = genA(seed0);
				var a = _v1.a;
				var seed1 = _v1.b;
				return _Utils_Tuple2(
					func(a),
					seed1);
			});
	});
var $elm$random$Random$cmdMap = F2(
	function (func, _v0) {
		var generator = _v0.a;
		return $elm$random$Random$Generate(
			A2($elm$random$Random$map, func, generator));
	});
_Platform_effectManagers['Random'] = _Platform_createManager($elm$random$Random$init, $elm$random$Random$onEffects, $elm$random$Random$onSelfMsg, $elm$random$Random$cmdMap);
var $elm$random$Random$command = _Platform_leaf('Random');
var $elm$random$Random$generate = F2(
	function (tagger, generator) {
		return $elm$random$Random$command(
			$elm$random$Random$Generate(
				A2($elm$random$Random$map, tagger, generator)));
	});
var $elm$core$Bitwise$and = _Bitwise_and;
var $elm$core$Basics$negate = function (n) {
	return -n;
};
var $elm$core$Bitwise$xor = _Bitwise_xor;
var $elm$random$Random$peel = function (_v0) {
	var state = _v0.a;
	var word = (state ^ (state >>> ((state >>> 28) + 4))) * 277803737;
	return ((word >>> 22) ^ word) >>> 0;
};
var $elm$random$Random$int = F2(
	function (a, b) {
		return $elm$random$Random$Generator(
			function (seed0) {
				var _v0 = (_Utils_cmp(a, b) < 0) ? _Utils_Tuple2(a, b) : _Utils_Tuple2(b, a);
				var lo = _v0.a;
				var hi = _v0.b;
				var range = (hi - lo) + 1;
				if (!((range - 1) & range)) {
					return _Utils_Tuple2(
						(((range - 1) & $elm$random$Random$peel(seed0)) >>> 0) + lo,
						$elm$random$Random$next(seed0));
				} else {
					var threshhold = (((-range) >>> 0) % range) >>> 0;
					var accountForBias = function (seed) {
						accountForBias:
						while (true) {
							var x = $elm$random$Random$peel(seed);
							var seedN = $elm$random$Random$next(seed);
							if (_Utils_cmp(x, threshhold) < 0) {
								var $temp$seed = seedN;
								seed = $temp$seed;
								continue accountForBias;
							} else {
								return _Utils_Tuple2((x % range) + lo, seedN);
							}
						}
					};
					return accountForBias(seed0);
				}
			});
	});
var $elm$random$Random$maxInt = 2147483647;
var $elm$random$Random$minInt = -2147483648;
var $elm_community$random_extra$Random$List$anyInt = A2($elm$random$Random$int, $elm$random$Random$minInt, $elm$random$Random$maxInt);
var $elm$random$Random$map3 = F4(
	function (func, _v0, _v1, _v2) {
		var genA = _v0.a;
		var genB = _v1.a;
		var genC = _v2.a;
		return $elm$random$Random$Generator(
			function (seed0) {
				var _v3 = genA(seed0);
				var a = _v3.a;
				var seed1 = _v3.b;
				var _v4 = genB(seed1);
				var b = _v4.a;
				var seed2 = _v4.b;
				var _v5 = genC(seed2);
				var c = _v5.a;
				var seed3 = _v5.b;
				return _Utils_Tuple2(
					A3(func, a, b, c),
					seed3);
			});
	});
var $elm$core$Bitwise$or = _Bitwise_or;
var $elm$random$Random$independentSeed = $elm$random$Random$Generator(
	function (seed0) {
		var makeIndependentSeed = F3(
			function (state, b, c) {
				return $elm$random$Random$next(
					A2($elm$random$Random$Seed, state, (1 | (b ^ c)) >>> 0));
			});
		var gen = A2($elm$random$Random$int, 0, 4294967295);
		return A2(
			$elm$random$Random$step,
			A4($elm$random$Random$map3, makeIndependentSeed, gen, gen, gen),
			seed0);
	});
var $elm$core$Tuple$second = function (_v0) {
	var y = _v0.b;
	return y;
};
var $elm$core$List$sortBy = _List_sortBy;
var $elm_community$random_extra$Random$List$shuffle = function (list) {
	return A2(
		$elm$random$Random$map,
		function (independentSeed) {
			return A2(
				$elm$core$List$map,
				$elm$core$Tuple$first,
				A2(
					$elm$core$List$sortBy,
					$elm$core$Tuple$second,
					A3(
						$elm$core$List$foldl,
						F2(
							function (item, _v0) {
								var acc = _v0.a;
								var seed = _v0.b;
								var _v1 = A2($elm$random$Random$step, $elm_community$random_extra$Random$List$anyInt, seed);
								var tag = _v1.a;
								var nextSeed = _v1.b;
								return _Utils_Tuple2(
									A2(
										$elm$core$List$cons,
										_Utils_Tuple2(item, tag),
										acc),
									nextSeed);
							}),
						_Utils_Tuple2(_List_Nil, independentSeed),
						list).a));
		},
		$elm$random$Random$independentSeed);
};
var $author$project$Main$startShuffleAlbums = function (albums) {
	var generator = $elm_community$random_extra$Random$List$shuffle(
		$elm$core$Array$toList(albums));
	return A2($elm$random$Random$generate, $author$project$Main$AlbumsShuffled, generator);
};
var $author$project$Main$update = F2(
	function (msg, model) {
		switch (msg.$) {
			case 'Reset':
				return _Utils_Tuple2(
					$author$project$Main$emptyModel,
					$elm$core$Platform$Cmd$batch(
						_List_fromArray(
							[
								$author$project$Main$setBlacklistedAlbums(_List_Nil),
								$author$project$Main$startShuffleAlbums($author$project$Main$emptyModel.albums)
							])));
			case 'GotBlacklist':
				var text = msg.a;
				var albumsToBlacklist = text;
				var filteredAlbums = A2(
					$elm$core$Array$filter,
					function (a) {
						return !A2($elm$core$List$member, a.id, albumsToBlacklist);
					},
					model.albums);
				var _v1 = A2($elm$core$Debug$log, 'GotBlacklist', text);
				return _Utils_Tuple2(
					_Utils_update(
						model,
						{albums: filteredAlbums, blacklistedAlbums: albumsToBlacklist}),
					$author$project$Main$startShuffleAlbums(filteredAlbums));
			case 'NextAlbum':
				var newModel = _Utils_update(
					model,
					{
						current: A2(
							$elm$core$Basics$modBy,
							$elm$core$Array$length(model.albums),
							model.current + 1)
					});
				return _Utils_Tuple2(newModel, $elm$core$Platform$Cmd$none);
			case 'PreviousAlbum':
				var newModel = _Utils_update(
					model,
					{
						current: A2(
							$elm$core$Basics$modBy,
							$elm$core$Array$length(model.albums),
							model.current - 1)
					});
				return _Utils_Tuple2(newModel, $elm$core$Platform$Cmd$none);
			case 'BlackListAlbum':
				var albumId = msg.a;
				var updatedModel = _Utils_update(
					model,
					{
						albums: A2(
							$elm$core$Array$filter,
							function (a) {
								return !_Utils_eq(a.id, albumId);
							},
							model.albums),
						blacklistedAlbums: A2($elm$core$List$cons, albumId, model.blacklistedAlbums)
					});
				var newCmd = $author$project$Main$setBlacklistedAlbums(
					A2($elm$core$List$cons, albumId, model.blacklistedAlbums));
				return _Utils_Tuple2(updatedModel, newCmd);
			default:
				var albums = msg.a;
				return _Utils_Tuple2(
					_Utils_update(
						model,
						{
							albums: $elm$core$Array$fromList(albums),
							isInitialized: true
						}),
					$elm$core$Platform$Cmd$none);
		}
	});
var $author$project$Main$BlackListAlbum = function (a) {
	return {$: 'BlackListAlbum', a: a};
};
var $author$project$Main$NextAlbum = {$: 'NextAlbum'};
var $author$project$Main$PreviousAlbum = {$: 'PreviousAlbum'};
var $author$project$Main$Reset = {$: 'Reset'};
var $elm$html$Html$a = _VirtualDom_node('a');
var $elm$html$Html$Attributes$stringProperty = F2(
	function (key, string) {
		return A2(
			_VirtualDom_property,
			key,
			$elm$json$Json$Encode$string(string));
	});
var $elm$html$Html$Attributes$alt = $elm$html$Html$Attributes$stringProperty('alt');
var $elm$virtual_dom$VirtualDom$attribute = F2(
	function (key, value) {
		return A2(
			_VirtualDom_attribute,
			_VirtualDom_noOnOrFormAction(key),
			_VirtualDom_noJavaScriptOrHtmlUri(value));
	});
var $elm$html$Html$Attributes$attribute = $elm$virtual_dom$VirtualDom$attribute;
var $elm$html$Html$Attributes$class = $elm$html$Html$Attributes$stringProperty('className');
var $elm$core$Basics$composeL = F3(
	function (g, f, x) {
		return g(
			f(x));
	});
var $elm$html$Html$div = _VirtualDom_node('div');
var $elm$core$String$fromFloat = _String_fromNumber;
var $elm$core$Basics$ge = _Utils_ge;
var $elm$core$Array$bitMask = 4294967295 >>> (32 - $elm$core$Array$shiftStep);
var $elm$core$Elm$JsArray$unsafeGet = _JsArray_unsafeGet;
var $elm$core$Array$getHelp = F3(
	function (shift, index, tree) {
		getHelp:
		while (true) {
			var pos = $elm$core$Array$bitMask & (index >>> shift);
			var _v0 = A2($elm$core$Elm$JsArray$unsafeGet, pos, tree);
			if (_v0.$ === 'SubTree') {
				var subTree = _v0.a;
				var $temp$shift = shift - $elm$core$Array$shiftStep,
					$temp$index = index,
					$temp$tree = subTree;
				shift = $temp$shift;
				index = $temp$index;
				tree = $temp$tree;
				continue getHelp;
			} else {
				var values = _v0.a;
				return A2($elm$core$Elm$JsArray$unsafeGet, $elm$core$Array$bitMask & index, values);
			}
		}
	});
var $elm$core$Bitwise$shiftLeftBy = _Bitwise_shiftLeftBy;
var $elm$core$Array$tailIndex = function (len) {
	return (len >>> 5) << 5;
};
var $elm$core$Array$get = F2(
	function (index, _v0) {
		var len = _v0.a;
		var startShift = _v0.b;
		var tree = _v0.c;
		var tail = _v0.d;
		return ((index < 0) || (_Utils_cmp(index, len) > -1)) ? $elm$core$Maybe$Nothing : ((_Utils_cmp(
			index,
			$elm$core$Array$tailIndex(len)) > -1) ? $elm$core$Maybe$Just(
			A2($elm$core$Elm$JsArray$unsafeGet, $elm$core$Array$bitMask & index, tail)) : $elm$core$Maybe$Just(
			A3($elm$core$Array$getHelp, startShift, index, tree)));
	});
var $elm$html$Html$Attributes$href = function (url) {
	return A2(
		$elm$html$Html$Attributes$stringProperty,
		'href',
		_VirtualDom_noJavaScriptUri(url));
};
var $elm$html$Html$Attributes$id = $elm$html$Html$Attributes$stringProperty('id');
var $elm$html$Html$img = _VirtualDom_node('img');
var $elm$core$Array$isEmpty = function (_v0) {
	var len = _v0.a;
	return !len;
};
var $elm$core$List$isEmpty = function (xs) {
	if (!xs.b) {
		return true;
	} else {
		return false;
	}
};
var $elm_community$list_extra$List$Extra$maximumBy = F2(
	function (f, ls) {
		var maxBy = F2(
			function (x, _v1) {
				var y = _v1.a;
				var fy = _v1.b;
				var fx = f(x);
				return (_Utils_cmp(fx, fy) > 0) ? _Utils_Tuple2(x, fx) : _Utils_Tuple2(y, fy);
			});
		if (ls.b) {
			if (!ls.b.b) {
				var l_ = ls.a;
				return $elm$core$Maybe$Just(l_);
			} else {
				var l_ = ls.a;
				var ls_ = ls.b;
				return $elm$core$Maybe$Just(
					A3(
						$elm$core$List$foldl,
						maxBy,
						_Utils_Tuple2(
							l_,
							f(l_)),
						ls_).a);
			}
		} else {
			return $elm$core$Maybe$Nothing;
		}
	});
var $elm$virtual_dom$VirtualDom$Normal = function (a) {
	return {$: 'Normal', a: a};
};
var $elm$virtual_dom$VirtualDom$on = _VirtualDom_on;
var $elm$html$Html$Events$on = F2(
	function (event, decoder) {
		return A2(
			$elm$virtual_dom$VirtualDom$on,
			event,
			$elm$virtual_dom$VirtualDom$Normal(decoder));
	});
var $elm$html$Html$Events$onClick = function (msg) {
	return A2(
		$elm$html$Html$Events$on,
		'click',
		$elm$json$Json$Decode$succeed(msg));
};
var $elm$html$Html$Attributes$src = function (url) {
	return A2(
		$elm$html$Html$Attributes$stringProperty,
		'src',
		_VirtualDom_noJavaScriptOrHtmlUri(url));
};
var $elm$virtual_dom$VirtualDom$style = _VirtualDom_style;
var $elm$html$Html$Attributes$style = $elm$virtual_dom$VirtualDom$style;
var $elm$virtual_dom$VirtualDom$text = _VirtualDom_text;
var $elm$html$Html$text = $elm$virtual_dom$VirtualDom$text;
var $elm$core$Maybe$andThen = F2(
	function (callback, maybeValue) {
		if (maybeValue.$ === 'Just') {
			var value = maybeValue.a;
			return callback(value);
		} else {
			return $elm$core$Maybe$Nothing;
		}
	});
var $elm$regex$Regex$Match = F4(
	function (match, index, number, submatches) {
		return {index: index, match: match, number: number, submatches: submatches};
	});
var $elm$regex$Regex$find = _Regex_findAtMost(_Regex_infinity);
var $elm$regex$Regex$fromStringWith = _Regex_fromStringWith;
var $elm$regex$Regex$fromString = function (string) {
	return A2(
		$elm$regex$Regex$fromStringWith,
		{caseInsensitive: false, multiline: false},
		string);
};
var $elm$core$List$head = function (list) {
	if (list.b) {
		var x = list.a;
		var xs = list.b;
		return $elm$core$Maybe$Just(x);
	} else {
		return $elm$core$Maybe$Nothing;
	}
};
var $elm$regex$Regex$never = _Regex_never;
var $author$project$Main$tryAlbumNumberFrom = function (input) {
	var albumNumber = A2(
		$elm$core$Maybe$withDefault,
		$elm$regex$Regex$never,
		$elm$regex$Regex$fromString('\\d\\d\\d'));
	return A2(
		$elm$core$Maybe$andThen,
		$elm$core$String$toInt,
		A2(
			$elm$core$Maybe$map,
			function (match) {
				return match.match;
			},
			$elm$core$List$head(
				A2($elm$regex$Regex$find, albumNumber, input))));
};
var $author$project$Main$view = function (model) {
	if (!model.isInitialized) {
		return A2(
			$elm$html$Html$div,
			_List_fromArray(
				[
					$elm$html$Html$Attributes$class('white-text status-text-container')
				]),
			_List_fromArray(
				[
					A2(
					$elm$html$Html$div,
					_List_fromArray(
						[
							$elm$html$Html$Attributes$class('status-text')
						]),
					_List_fromArray(
						[
							$elm$html$Html$text('Loading ...')
						]))
				]));
	} else {
		if (model.isInitialized && ($elm$core$Array$isEmpty(model.albums) && A3($elm$core$Basics$composeL, $elm$core$Basics$not, $elm$core$List$isEmpty, model.blacklistedAlbums))) {
			return A2(
				$elm$html$Html$div,
				_List_fromArray(
					[
						$elm$html$Html$Attributes$class('white-text status-text-container')
					]),
				_List_fromArray(
					[
						A2(
						$elm$html$Html$a,
						_List_fromArray(
							[
								$elm$html$Html$Events$onClick($author$project$Main$Reset),
								$elm$html$Html$Attributes$class('status-text'),
								A2($elm$html$Html$Attributes$style, 'cursor', 'pointer')
							]),
						_List_fromArray(
							[
								$elm$html$Html$text(
								'No albums available but ' + ($elm$core$String$fromInt(
									$elm$core$List$length(model.blacklistedAlbums)) + ' are blacklisteed. Clear blacklist?'))
							]))
					]));
		} else {
			var _v0 = A2($elm$core$Array$get, model.current, model.albums);
			if (_v0.$ === 'Nothing') {
				return A2(
					$elm$html$Html$div,
					_List_fromArray(
						[
							$elm$html$Html$Attributes$class('white-text status-text-container')
						]),
					_List_fromArray(
						[
							A2(
							$elm$html$Html$div,
							_List_fromArray(
								[
									$elm$html$Html$Attributes$class('status-text')
								]),
							_List_fromArray(
								[
									$elm$html$Html$text('No album data available :(')
								]))
						]));
			} else {
				var album = _v0.a;
				var xLink = A2(
					$elm$html$Html$a,
					_List_fromArray(
						[
							$elm$html$Html$Attributes$class('ml-05 p-15'),
							$elm$html$Html$Attributes$href('https://x.com/b0wter')
						]),
					_List_fromArray(
						[
							A2(
							$elm$html$Html$img,
							_List_fromArray(
								[
									$elm$html$Html$Attributes$class('social-button'),
									$elm$html$Html$Attributes$src('img/x.svg'),
									$elm$html$Html$Attributes$alt('Link to X')
								]),
							_List_Nil)
						]));
				var largestCover = A2(
					$elm$core$Maybe$withDefault,
					{height: 640, url: 'https://fakeimg.pl/640x640', width: 640},
					A2(
						$elm_community$list_extra$List$Extra$maximumBy,
						function (a) {
							return a.width;
						},
						album.covers));
				var githubLink = A2(
					$elm$html$Html$a,
					_List_fromArray(
						[
							$elm$html$Html$Attributes$class('mr-05 p-15'),
							$elm$html$Html$Attributes$href('https://github.com/b0wter/shuffler')
						]),
					_List_fromArray(
						[
							A2(
							$elm$html$Html$img,
							_List_fromArray(
								[
									$elm$html$Html$Attributes$class('social-button'),
									$elm$html$Html$Attributes$src('img/github.svg'),
									$elm$html$Html$Attributes$alt('Link to GitHub')
								]),
							_List_Nil)
						]));
				var coverMaxWidth = 'min(80vw, ' + ($elm$core$String$fromInt(largestCover.width) + 'px)');
				var coverMaxHeight = 'min(60vh, 90vw, ' + ($elm$core$String$fromInt(largestCover.width) + 'px)');
				var coverCenterY = $elm$core$String$fromInt(50) + '%';
				var coverAspectRatio = largestCover.width / largestCover.height;
				var boxShadowSize = '75px';
				var blockedText = _Utils_eq(model.blacklistedAlbums, _List_Nil) ? 'clear blocked (none)' : ('Blocked: ' + A2($elm$core$String$join, ', ', model.blacklistedAlbums));
				var backgroundImageUrl = largestCover.url;
				var coverSourceSet = backgroundImageUrl + (' ' + ($elm$core$String$fromInt(largestCover.width) + 'w'));
				var backgroundFadeEase = '3000ms';
				var backgroundFadeDuration = '0';
				var albumNumber = A2(
					$elm$core$Maybe$withDefault,
					0,
					$author$project$Main$tryAlbumNumberFrom(album.name));
				var coverCenterX = (albumNumber >= 126) ? ($elm$core$String$fromInt(60) + '%') : ($elm$core$String$fromInt(50) + '%');
				return A2(
					$elm$html$Html$div,
					_List_fromArray(
						[
							$elm$html$Html$Attributes$id('background-image-container'),
							A2($elm$html$Html$Attributes$style, 'background-image', 'url(' + (backgroundImageUrl + ')')),
							A2($elm$html$Html$Attributes$style, 'background-position', coverCenterX + (' ' + coverCenterY))
						]),
					_List_fromArray(
						[
							A2(
							$elm$html$Html$div,
							_List_fromArray(
								[
									$elm$html$Html$Attributes$id('background-color-overlay'),
									A2($elm$html$Html$Attributes$style, '-webkit-transition', 'background ' + (backgroundFadeDuration + ' linear')),
									A2($elm$html$Html$Attributes$style, '-moz-transition', 'background ' + (backgroundFadeDuration + ' linear')),
									A2($elm$html$Html$Attributes$style, '-o-transition', 'background ' + (backgroundFadeDuration + ' linear')),
									A2($elm$html$Html$Attributes$style, 'transition', 'background ' + (backgroundFadeDuration + ' linear'))
								]),
							_List_fromArray(
								[
									A2(
									$elm$html$Html$div,
									_List_fromArray(
										[
											$elm$html$Html$Attributes$id('inner-layout-container'),
											$elm$html$Html$Attributes$class('d-flex flex-column'),
											A2($elm$html$Html$Attributes$style, 'height', '100svh')
										]),
									_List_fromArray(
										[
											A2(
											$elm$html$Html$div,
											_List_fromArray(
												[
													$elm$html$Html$Attributes$id('social-links-container')
												]),
											_List_fromArray(
												[
													A2(
													$elm$html$Html$div,
													_List_fromArray(
														[
															$elm$html$Html$Attributes$class('d-flex justify-content-center align-items-center')
														]),
													_List_fromArray(
														[githubLink, xLink]))
												])),
											A2(
											$elm$html$Html$div,
											_List_fromArray(
												[
													A2($elm$html$Html$Attributes$style, 'flex-grow', '1'),
													A2($elm$html$Html$Attributes$style, 'width', coverMaxWidth),
													A2($elm$html$Html$Attributes$style, 'max-height', coverMaxHeight)
												]),
											_List_fromArray(
												[
													A2(
													$elm$html$Html$div,
													_List_fromArray(
														[
															$elm$html$Html$Attributes$id('cover-container'),
															$elm$html$Html$Attributes$class(''),
															A2($elm$html$Html$Attributes$style, 'width', coverMaxWidth),
															A2($elm$html$Html$Attributes$style, 'position', 'relative'),
															A2($elm$html$Html$Attributes$style, 'height', '100%')
														]),
													_List_fromArray(
														[
															A2(
															$elm$html$Html$a,
															_List_fromArray(
																[
																	$elm$html$Html$Attributes$href(album.urlToOpen)
																]),
															_List_fromArray(
																[
																	A2(
																	$elm$html$Html$img,
																	_List_fromArray(
																		[
																			$elm$html$Html$Attributes$id('cover-img'),
																			A2($elm$html$Html$Attributes$attribute, 'srcset', coverSourceSet),
																			A2($elm$html$Html$Attributes$style, 'position', 'absolute'),
																			A2($elm$html$Html$Attributes$style, 'top', '0'),
																			A2($elm$html$Html$Attributes$style, 'bottom', '0'),
																			A2($elm$html$Html$Attributes$style, 'width', coverMaxWidth),
																			A2($elm$html$Html$Attributes$style, 'z-index', '1')
																		]),
																	_List_Nil)
																])),
															A2(
															$elm$html$Html$div,
															_List_fromArray(
																[
																	$elm$html$Html$Attributes$id('cover-glow'),
																	A2($elm$html$Html$Attributes$style, 'max-width', coverMaxWidth),
																	A2(
																	$elm$html$Html$Attributes$style,
																	'aspect-ratio',
																	$elm$core$String$fromFloat(coverAspectRatio)),
																	A2($elm$html$Html$Attributes$style, 'max-height', coverMaxWidth),
																	A2($elm$html$Html$Attributes$style, 'box-shadow', boxShadowSize + (' ' + (boxShadowSize + (' ' + boxShadowSize)))),
																	A2($elm$html$Html$Attributes$style, 'border-radius', '20.02px'),
																	A2($elm$html$Html$Attributes$style, 'filter', 'blur(7.5vw)')
																]),
															_List_Nil)
														])),
													A2(
													$elm$html$Html$div,
													_List_fromArray(
														[
															$elm$html$Html$Attributes$id('cover-text'),
															A2($elm$html$Html$Attributes$style, 'display', 'none')
														]),
													_List_fromArray(
														[
															$elm$html$Html$text(album.name)
														]))
												])),
											A2(
											$elm$html$Html$div,
											_List_fromArray(
												[
													$elm$html$Html$Attributes$class('d-flex align-items-center justify-content-center'),
													A2($elm$html$Html$Attributes$style, 'z-index', '1')
												]),
											_List_fromArray(
												[
													A2(
													$elm$html$Html$a,
													_List_fromArray(
														[
															$elm$html$Html$Attributes$href('#'),
															$elm$html$Html$Events$onClick($author$project$Main$PreviousAlbum)
														]),
													_List_fromArray(
														[
															A2(
															$elm$html$Html$img,
															_List_fromArray(
																[
																	A2($elm$html$Html$Attributes$style, 'padding', '1.5rem'),
																	A2($elm$html$Html$Attributes$style, 'height', '25px'),
																	A2($elm$html$Html$Attributes$style, 'width', '25px'),
																	A2($elm$html$Html$Attributes$style, 'transform', 'scaleX(-1)'),
																	$elm$html$Html$Attributes$src('img/next.svg')
																]),
															_List_Nil)
														])),
													A2(
													$elm$html$Html$a,
													_List_fromArray(
														[
															$elm$html$Html$Attributes$href(album.urlToOpen)
														]),
													_List_fromArray(
														[
															A2(
															$elm$html$Html$img,
															_List_fromArray(
																[
																	A2($elm$html$Html$Attributes$style, 'height', '10rem'),
																	$elm$html$Html$Attributes$src('img/play.svg'),
																	$elm$html$Html$Attributes$alt('play current album on Spotify')
																]),
															_List_Nil)
														])),
													A2(
													$elm$html$Html$a,
													_List_fromArray(
														[
															$elm$html$Html$Attributes$href('#'),
															$elm$html$Html$Events$onClick($author$project$Main$NextAlbum)
														]),
													_List_fromArray(
														[
															A2(
															$elm$html$Html$img,
															_List_fromArray(
																[
																	$elm$html$Html$Attributes$class('p-15'),
																	$elm$html$Html$Attributes$src('img/next.svg'),
																	$elm$html$Html$Attributes$alt('get next suggestion')
																]),
															_List_Nil)
														]))
												])),
											A2(
											$elm$html$Html$div,
											_List_fromArray(
												[
													A2($elm$html$Html$Attributes$style, 'text-decoration', 'none'),
													A2($elm$html$Html$Attributes$style, 'color', 'white')
												]),
											_List_fromArray(
												[
													A2(
													$elm$html$Html$div,
													_List_Nil,
													_List_fromArray(
														[
															A2(
															$elm$html$Html$div,
															_List_fromArray(
																[
																	A2($elm$html$Html$Attributes$style, 'cursor', 'pointer'),
																	A2($elm$html$Html$Attributes$style, 'font-family', 'urbanist, sans-serif'),
																	A2($elm$html$Html$Attributes$style, 'font-weight', '1000'),
																	A2($elm$html$Html$Attributes$style, 'height', '4rem'),
																	A2($elm$html$Html$Attributes$style, 'text-transform', 'uppercase'),
																	$elm$html$Html$Attributes$class('d-flex justify-content-center align-items-center')
																]),
															_List_fromArray(
																[
																	A2(
																	$elm$html$Html$a,
																	_List_fromArray(
																		[
																			$elm$html$Html$Events$onClick(
																			$author$project$Main$BlackListAlbum(album.id)),
																			$elm$html$Html$Attributes$class('z-2 small-text non-styled-link d-flex align-items-center mr-10')
																		]),
																	_List_fromArray(
																		[
																			A2(
																			$elm$html$Html$img,
																			_List_fromArray(
																				[
																					A2($elm$html$Html$Attributes$style, 'height', '2rem'),
																					$elm$html$Html$Attributes$class('mr-05'),
																					$elm$html$Html$Attributes$src('img/block.svg'),
																					$elm$html$Html$Attributes$alt('block current album')
																				]),
																			_List_Nil),
																			A2(
																			$elm$html$Html$div,
																			_List_Nil,
																			_List_fromArray(
																				[
																					$elm$html$Html$text('block')
																				]))
																		])),
																	$elm$core$List$isEmpty(model.blacklistedAlbums) ? A2(
																	$elm$html$Html$a,
																	_List_fromArray(
																		[
																			$elm$html$Html$Attributes$class('z-2 small-text non-styled-link d-flex align-items-center ml-10 disabled')
																		]),
																	_List_fromArray(
																		[
																			A2(
																			$elm$html$Html$img,
																			_List_fromArray(
																				[
																					A2($elm$html$Html$Attributes$style, 'height', '2rem'),
																					$elm$html$Html$Attributes$class('mr-05'),
																					$elm$html$Html$Attributes$src('img/clear-format-white.svg'),
																					$elm$html$Html$Attributes$alt('clear album blacklist')
																				]),
																			_List_Nil),
																			A2(
																			$elm$html$Html$div,
																			_List_Nil,
																			_List_fromArray(
																				[
																					$elm$html$Html$text('clear blocked')
																				]))
																		])) : A2(
																	$elm$html$Html$a,
																	_List_fromArray(
																		[
																			$elm$html$Html$Events$onClick($author$project$Main$Reset),
																			$elm$html$Html$Attributes$class('z-2 small-text non-styled-link d-flex align-items-center ml-10')
																		]),
																	_List_fromArray(
																		[
																			A2(
																			$elm$html$Html$img,
																			_List_fromArray(
																				[
																					A2($elm$html$Html$Attributes$style, 'height', '2rem'),
																					$elm$html$Html$Attributes$class('mr-05'),
																					$elm$html$Html$Attributes$src('img/clear-format-white.svg'),
																					$elm$html$Html$Attributes$alt('clear album blacklist')
																				]),
																			_List_Nil),
																			A2(
																			$elm$html$Html$div,
																			_List_Nil,
																			_List_fromArray(
																				[
																					$elm$html$Html$text(
																					'clear blocked (' + ($elm$core$String$fromInt(
																						$elm$core$List$length(model.blacklistedAlbums)) + ')'))
																				]))
																		]))
																]))
														]))
												]))
										]))
								]))
						]));
			}
		}
	}
};
var $author$project$Main$main = $elm$browser$Browser$element(
	{init: $author$project$Main$init, subscriptions: $author$project$Main$subscriptions, update: $author$project$Main$update, view: $author$project$Main$view});
_Platform_export({'Main':{'init':$author$project$Main$main(
	$elm$json$Json$Decode$succeed(
		{}))(0)}});}(this));