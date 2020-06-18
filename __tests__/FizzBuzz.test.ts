//FizzBuzz.test.ts
/// <reference types="jest" />

import {fizzBuzz} from "../services/fizzBuzz";
test("FizzBuzz test", () =>{
    expect(fizzBuzz(2)).toBe("1 2 ");
    expect(fizzBuzz(3)).toBe("1 2 Fizz ");
});


import {pup} from "../services/pup";
test("Pup 2", async () =>{
    var result = await pup(2);
    expect(result).toBe("1 2 ");
});