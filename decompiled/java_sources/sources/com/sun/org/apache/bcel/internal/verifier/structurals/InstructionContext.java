package com.sun.org.apache.bcel.internal.verifier.structurals;

import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import java.util.ArrayList;

/* loaded from: classes10.dex */
public interface InstructionContext {
    boolean execute(Frame frame, ArrayList arrayList, InstConstraintVisitor instConstraintVisitor, ExecutionVisitor executionVisitor);

    ExceptionHandler[] getExceptionHandlers();

    InstructionHandle getInstruction();

    Frame getOutFrame(ArrayList arrayList);

    InstructionContext[] getSuccessors();

    int getTag();

    void setTag(int i);
}
