package com.sun.org.apache.bcel.internal.verifier.structurals;

import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.ObjectType;

/* loaded from: classes10.dex */
public class ExceptionHandler {
    private ObjectType catchtype;
    private InstructionHandle handlerpc;

    public ExceptionHandler(ObjectType objectType, InstructionHandle instructionHandle) {
        this.catchtype = objectType;
        this.handlerpc = instructionHandle;
    }

    public ObjectType getExceptionType() {
        return this.catchtype;
    }

    public InstructionHandle getHandlerStart() {
        return this.handlerpc;
    }
}
