package com.sun.org.apache.bcel.internal.verifier.structurals;

import com.sun.org.apache.bcel.internal.generic.ATHROW;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.GotoInstruction;
import com.sun.org.apache.bcel.internal.generic.Instruction;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.JsrInstruction;
import com.sun.org.apache.bcel.internal.generic.MethodGen;
import com.sun.org.apache.bcel.internal.generic.RET;
import com.sun.org.apache.bcel.internal.generic.ReturnInstruction;
import com.sun.org.apache.bcel.internal.generic.Select;
import com.sun.org.apache.bcel.internal.verifier.exc.AssertionViolatedException;
import com.sun.org.apache.bcel.internal.verifier.exc.StructuralCodeConstraintException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class ControlFlowGraph {
    private final ExceptionHandlers exceptionhandlers;
    private Hashtable instructionContexts = new Hashtable();
    private final MethodGen method_gen;
    private final Subroutines subroutines;

    /* loaded from: classes10.dex */
    public class InstructionContextImpl implements InstructionContext {
        private int TAG;
        private ArrayList executionPredecessors = null;
        private HashMap inFrames;
        private InstructionHandle instruction;
        private HashMap outFrames;

        public InstructionContextImpl(InstructionHandle instructionHandle) {
            if (instructionHandle == null) {
                throw new AssertionViolatedException("Cannot instantiate InstructionContextImpl from NULL.");
            }
            this.instruction = instructionHandle;
            this.inFrames = new HashMap();
            this.outFrames = new HashMap();
        }

        private InstructionHandle[] _getSuccessors() {
            InstructionHandle[] instructionHandleArr = new InstructionHandle[0];
            InstructionHandle[] instructionHandleArr2 = new InstructionHandle[1];
            InstructionHandle[] instructionHandleArr3 = new InstructionHandle[2];
            Instruction instruction = getInstruction().getInstruction();
            if (instruction instanceof RET) {
                if (ControlFlowGraph.this.subroutines.subroutineOf(getInstruction()) == null) {
                    throw new AssertionViolatedException("Asking for successors of a RET in dead code?!");
                }
                throw new AssertionViolatedException("DID YOU REALLY WANT TO ASK FOR RET'S SUCCS?");
            }
            if ((instruction instanceof ReturnInstruction) || (instruction instanceof ATHROW)) {
                return instructionHandleArr;
            }
            if (instruction instanceof JsrInstruction) {
                instructionHandleArr2[0] = ((JsrInstruction) instruction).getTarget();
                return instructionHandleArr2;
            }
            if (instruction instanceof GotoInstruction) {
                instructionHandleArr2[0] = ((GotoInstruction) instruction).getTarget();
                return instructionHandleArr2;
            }
            if (!(instruction instanceof BranchInstruction)) {
                instructionHandleArr2[0] = getInstruction().getNext();
                return instructionHandleArr2;
            }
            if (!(instruction instanceof Select)) {
                instructionHandleArr3[0] = getInstruction().getNext();
                instructionHandleArr3[1] = ((BranchInstruction) instruction).getTarget();
                return instructionHandleArr3;
            }
            Select select = (Select) instruction;
            InstructionHandle[] targets = select.getTargets();
            InstructionHandle[] instructionHandleArr4 = new InstructionHandle[targets.length + 1];
            instructionHandleArr4[0] = select.getTarget();
            System.arraycopy(targets, 0, instructionHandleArr4, 1, targets.length);
            return instructionHandleArr4;
        }

        private void extendMessageWithFlow(StructuralCodeConstraintException structuralCodeConstraintException) {
            structuralCodeConstraintException.extendMessage("", "Execution flow:\n" + getExecutionChain());
        }

        private String getExecutionChain() {
            String instructionContextImpl = toString();
            for (int size = this.executionPredecessors.size() - 1; size >= 0; size--) {
                instructionContextImpl = this.executionPredecessors.get(size) + "\n" + instructionContextImpl;
            }
            return instructionContextImpl;
        }

        private InstructionContextImpl lastExecutionJSR() {
            int i = 0;
            for (int size = this.executionPredecessors.size() - 1; size >= 0; size--) {
                InstructionContextImpl instructionContextImpl = (InstructionContextImpl) this.executionPredecessors.get(size);
                Instruction instruction = instructionContextImpl.getInstruction().getInstruction();
                if (instruction instanceof RET) {
                    i++;
                }
                if ((instruction instanceof JsrInstruction) && i - 1 == -1) {
                    return instructionContextImpl;
                }
            }
            return null;
        }

        private boolean mergeInFrames(Frame frame) {
            Frame frame2 = (Frame) this.inFrames.get(lastExecutionJSR());
            OperandStack clone = frame2.getStack().getClone();
            LocalVariables clone2 = frame2.getLocals().getClone();
            try {
                frame2.getStack().merge(frame.getStack());
                frame2.getLocals().merge(frame.getLocals());
                return (clone.equals(frame2.getStack()) && clone2.equals(frame2.getLocals())) ? false : true;
            } catch (StructuralCodeConstraintException e) {
                extendMessageWithFlow(e);
                throw e;
            }
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.InstructionContext
        public boolean execute(Frame frame, ArrayList arrayList, InstConstraintVisitor instConstraintVisitor, ExecutionVisitor executionVisitor) {
            this.executionPredecessors = (ArrayList) arrayList.clone();
            if (lastExecutionJSR() == null && ControlFlowGraph.this.subroutines.subroutineOf(getInstruction()) != ControlFlowGraph.this.subroutines.getTopLevel()) {
                throw new AssertionViolatedException("Huh?! Am I '" + this + "' part of a subroutine or not?");
            }
            if (lastExecutionJSR() != null && ControlFlowGraph.this.subroutines.subroutineOf(getInstruction()) == ControlFlowGraph.this.subroutines.getTopLevel()) {
                throw new AssertionViolatedException("Huh?! Am I '" + this + "' part of a subroutine or not?");
            }
            Frame frame2 = (Frame) this.inFrames.get(lastExecutionJSR());
            if (frame2 == null) {
                this.inFrames.put(lastExecutionJSR(), frame);
            } else {
                if (frame2.equals(frame) || !mergeInFrames(frame)) {
                    return false;
                }
                frame = frame2;
            }
            Frame clone = frame.getClone();
            try {
                instConstraintVisitor.setFrame(clone);
                getInstruction().accept(instConstraintVisitor);
                executionVisitor.setFrame(clone);
                getInstruction().accept(executionVisitor);
                this.outFrames.put(lastExecutionJSR(), clone);
                return true;
            } catch (StructuralCodeConstraintException e) {
                e.extendMessage("", "\nInstructionHandle: " + getInstruction() + "\n");
                StringBuilder sb = new StringBuilder();
                sb.append("\nExecution Frame:\n");
                sb.append(clone);
                e.extendMessage("", sb.toString());
                extendMessageWithFlow(e);
                throw e;
            }
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.InstructionContext
        public ExceptionHandler[] getExceptionHandlers() {
            return ControlFlowGraph.this.exceptionhandlers.getExceptionHandlers(getInstruction());
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.InstructionContext
        public InstructionHandle getInstruction() {
            return this.instruction;
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.InstructionContext
        public Frame getOutFrame(ArrayList arrayList) {
            this.executionPredecessors = arrayList;
            Frame frame = (Frame) this.outFrames.get(lastExecutionJSR());
            if (frame != null) {
                return frame.getClone();
            }
            throw new AssertionViolatedException("outFrame not set! This:\n" + this + "\nExecutionChain: " + getExecutionChain() + "\nOutFrames: '" + this.outFrames + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.InstructionContext
        public InstructionContext[] getSuccessors() {
            return ControlFlowGraph.this.contextsOf(_getSuccessors());
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.InstructionContext
        public int getTag() {
            return this.TAG;
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.InstructionContext
        public void setTag(int i) {
            this.TAG = i;
        }

        public String toString() {
            return getInstruction().toString(false) + "\t[InstructionContext]";
        }
    }

    public ControlFlowGraph(MethodGen methodGen) {
        this.subroutines = new Subroutines(methodGen);
        this.exceptionhandlers = new ExceptionHandlers(methodGen);
        for (InstructionHandle instructionHandle : methodGen.getInstructionList().getInstructionHandles()) {
            this.instructionContexts.put(instructionHandle, new InstructionContextImpl(instructionHandle));
        }
        this.method_gen = methodGen;
    }

    public InstructionContext contextOf(InstructionHandle instructionHandle) {
        InstructionContext instructionContext = (InstructionContext) this.instructionContexts.get(instructionHandle);
        if (instructionContext != null) {
            return instructionContext;
        }
        throw new AssertionViolatedException("InstructionContext requested for an InstructionHandle that's not known!");
    }

    public InstructionContext[] contextsOf(InstructionHandle[] instructionHandleArr) {
        InstructionContext[] instructionContextArr = new InstructionContext[instructionHandleArr.length];
        for (int i = 0; i < instructionHandleArr.length; i++) {
            instructionContextArr[i] = contextOf(instructionHandleArr[i]);
        }
        return instructionContextArr;
    }

    public InstructionContext[] getInstructionContexts() {
        return (InstructionContext[]) this.instructionContexts.values().toArray(new InstructionContext[this.instructionContexts.values().size()]);
    }

    public boolean isDead(InstructionHandle instructionHandle) {
        return this.instructionContexts.containsKey(instructionHandle);
    }
}
