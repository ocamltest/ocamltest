(*
 * Copyright (C) 2008-2010 Citrix Systems
 * Copyright (C) 2008-2010 Jonathan Knowles
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation; version 2.1 only. with the special
 * exception on linking described in file LICENSE.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *)

open Ocamltest

module Numbers = struct

	let add = make_test_case "add"
		"Tests that adding one number to another gives the correct result."
		begin fun () ->
			Thread.delay 0.5;
			assert_equal (Example.Numbers.add 0 0) 0;
			assert_equal (Example.Numbers.add 1 0) 1;
			assert_equal (Example.Numbers.add 1 1) 2;
		end

	let sub = make_test_case "sub"
		"Tests that subtracting one number from another gives the correct result."
		begin fun () ->
			Thread.delay 0.5;
			assert_equal (Example.Numbers.sub 0 0) 0;
			assert_equal (Example.Numbers.sub 1 0) 1;
			assert_equal (Example.Numbers.sub 1 1) 0;
		end

	let tests = make_module_test_suite "Numbers"
		[add; sub;]

end

module Strings = struct

	let upper = make_test_case "upper"
		"Tests that strings convert to upper-case correctly."
		begin fun () ->
			Thread.delay 0.5;
			assert_equal (Example.Strings.upper "string") "STRING";
			assert_equal (Example.Strings.upper "String") "STRING";
			assert_equal (Example.Strings.upper "STRING") "STRING";
		end

	let lower = make_test_case "lower"
		"Tests that strings convert to lower-case correctly."
		begin fun () ->
			Thread.delay 0.5;
			assert_equal (Example.Strings.lower "string") "string";
			assert_equal (Example.Strings.lower "String") "string";
			assert_equal (Example.Strings.lower "STRING") "string";
		end

	let tests = make_module_test_suite "Strings"
		[upper; lower;]

end

let tests = make_module_test_suite "Example"
	[Numbers.tests; Strings.tests;]

let () = make_command_line_interface tests
