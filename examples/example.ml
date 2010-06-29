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

module Numbers = struct

	let add x y = x + y
	let sub x y = x - y

end

module Strings = struct

	let upper x = String.uppercase x
	let lower x = String.lowercase x

end
