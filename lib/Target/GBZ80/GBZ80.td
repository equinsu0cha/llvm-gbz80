//===-- GBZ80.td - Describe the GBZ80 Target Machine ----*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
// This is the top level entry point for the GBZ80 target.
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Target-independent interfaces
//===----------------------------------------------------------------------===//

include "llvm/Target/Target.td"

//===----------------------------------------------------------------------===//
// Target-dependent interfaces
//===----------------------------------------------------------------------===//

include "GBZ80RegisterInfo.td"
include "GBZ80InstrInfo.td"
include "GBZ80CallingConv.td"

def GBZ80InstrInfo : InstrInfo;

def GBZ80 : Target {
  // Pull in Instruction Info:
  let InstructionSet = GBZ80InstrInfo;
}
