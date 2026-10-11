package com.sun.org.apache.bcel.internal.verifier.structurals;

import com.sun.org.apache.bcel.internal.generic.InstructionHandle;

/* loaded from: classes10.dex */
public interface Subroutine {
    boolean contains(InstructionHandle instructionHandle);

    int[] getAccessedLocalsIndices();

    InstructionHandle[] getEnteringJsrInstructions();

    InstructionHandle[] getInstructions();

    InstructionHandle getLeavingRET();

    int[] getRecursivelyAccessedLocalsIndices();

    Subroutine[] subSubs();
}
