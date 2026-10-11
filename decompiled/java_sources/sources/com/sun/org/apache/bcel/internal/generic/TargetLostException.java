package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public final class TargetLostException extends Exception {
    private InstructionHandle[] targets;

    public TargetLostException(InstructionHandle[] instructionHandleArr, String str) {
        super(str);
        this.targets = instructionHandleArr;
    }

    public InstructionHandle[] getTargets() {
        return this.targets;
    }
}
