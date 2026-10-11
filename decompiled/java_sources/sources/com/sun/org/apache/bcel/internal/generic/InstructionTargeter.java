package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public interface InstructionTargeter {
    boolean containsTarget(InstructionHandle instructionHandle);

    void updateTarget(InstructionHandle instructionHandle, InstructionHandle instructionHandle2);
}
