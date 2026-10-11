package com.sun.org.apache.bcel.internal.verifier.structurals;

import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.Repository;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import com.sun.org.apache.bcel.internal.classfile.Method;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.JsrInstruction;
import com.sun.org.apache.bcel.internal.generic.MethodGen;
import com.sun.org.apache.bcel.internal.generic.ObjectType;
import com.sun.org.apache.bcel.internal.generic.RET;
import com.sun.org.apache.bcel.internal.generic.ReturnInstruction;
import com.sun.org.apache.bcel.internal.generic.ReturnaddressType;
import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.bcel.internal.verifier.PassVerifier;
import com.sun.org.apache.bcel.internal.verifier.VerificationResult;
import com.sun.org.apache.bcel.internal.verifier.Verifier;
import com.sun.org.apache.bcel.internal.verifier.exc.AssertionViolatedException;
import com.sun.org.apache.bcel.internal.verifier.exc.VerifierConstraintViolatedException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Random;
import java.util.Vector;

/* loaded from: classes10.dex */
public final class Pass3bVerifier extends PassVerifier {
    private static final boolean DEBUG = true;
    private int method_no;
    private Verifier myOwner;

    /* loaded from: classes10.dex */
    public static final class InstructionContextQueue {
        private Vector ecs;
        private Vector ics;

        private InstructionContextQueue() {
            this.ics = new Vector();
            this.ecs = new Vector();
        }

        public void add(InstructionContext instructionContext, ArrayList arrayList) {
            this.ics.add(instructionContext);
            this.ecs.add(arrayList);
        }

        public ArrayList getEC(int i) {
            return (ArrayList) this.ecs.get(i);
        }

        public InstructionContext getIC(int i) {
            return (InstructionContext) this.ics.get(i);
        }

        public boolean isEmpty() {
            return this.ics.isEmpty();
        }

        public void remove() {
            remove(0);
        }

        public int size() {
            return this.ics.size();
        }

        public void remove(int i) {
            this.ics.remove(i);
            this.ecs.remove(i);
        }
    }

    public Pass3bVerifier(Verifier verifier, int i) {
        this.myOwner = verifier;
        this.method_no = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v10, types: [com.sun.org.apache.bcel.internal.verifier.structurals.InstructionContext] */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v9 */
    private void circulationPump(ControlFlowGraph controlFlowGraph, InstructionContext instructionContext, Frame frame, InstConstraintVisitor instConstraintVisitor, ExecutionVisitor executionVisitor) {
        ?? r13;
        new Random();
        C132361 c132361 = null;
        InstructionContextQueue instructionContextQueue = new InstructionContextQueue();
        instructionContext.execute(frame, new ArrayList(), instConstraintVisitor, executionVisitor);
        instructionContextQueue.add(instructionContext, new ArrayList());
        while (true) {
            int i = 0;
            if (instructionContextQueue.isEmpty()) {
                InstructionHandle instruction = instructionContext.getInstruction();
                do {
                    if ((instruction.getInstruction() instanceof ReturnInstruction) && !controlFlowGraph.isDead(instruction)) {
                        InstructionContext contextOf = controlFlowGraph.contextOf(instruction);
                        Frame outFrame = contextOf.getOutFrame(new ArrayList());
                        LocalVariables locals = outFrame.getLocals();
                        for (int i2 = 0; i2 < locals.maxLocals(); i2++) {
                            if (locals.get(i2) instanceof UninitializedObjectType) {
                                addMessage("Warning: ReturnInstruction '" + contextOf + "' may leave method with an uninitialized object in the local variables array '" + locals + "'.");
                            }
                        }
                        OperandStack stack = outFrame.getStack();
                        for (int i3 = 0; i3 < stack.size(); i3++) {
                            if (stack.peek(i3) instanceof UninitializedObjectType) {
                                addMessage("Warning: ReturnInstruction '" + contextOf + "' may leave method with an uninitialized object on the operand stack '" + stack + "'.");
                            }
                        }
                    }
                    instruction = instruction.getNext();
                } while (instruction != null);
                return;
            }
            InstructionContext ic = instructionContextQueue.getIC(0);
            ArrayList ec = instructionContextQueue.getEC(0);
            instructionContextQueue.remove(0);
            ArrayList arrayList = (ArrayList) ec.clone();
            ArrayList arrayList2 = (ArrayList) ec.clone();
            arrayList2.add(ic);
            if (ic.getInstruction().getInstruction() instanceof RET) {
                InstructionContext contextOf2 = controlFlowGraph.contextOf(((ReturnaddressType) ic.getOutFrame(arrayList).getLocals().get(((RET) ic.getInstruction().getInstruction()).getIndex())).getTarget());
                int size = arrayList.size() - 1;
                int i4 = 0;
                while (true) {
                    if (size < 0) {
                        r13 = c132361;
                        break;
                    }
                    if (i4 < 0) {
                        throw new AssertionViolatedException("More RET than JSR in execution chain?!");
                    }
                    if (((InstructionContext) arrayList.get(size)).getInstruction().getInstruction() instanceof JsrInstruction) {
                        if (i4 == 0) {
                            r13 = (InstructionContext) arrayList.get(size);
                            break;
                        }
                        i4--;
                    }
                    if (((InstructionContext) arrayList.get(size)).getInstruction().getInstruction() instanceof RET) {
                        i4++;
                    }
                    size--;
                }
                if (r13 == 0) {
                    throw new AssertionViolatedException("RET without a JSR before in ExecutionChain?! EC: '" + arrayList + "'.");
                }
                JsrInstruction jsrInstruction = (JsrInstruction) r13.getInstruction().getInstruction();
                if (contextOf2 != controlFlowGraph.contextOf(jsrInstruction.physicalSuccessor())) {
                    throw new AssertionViolatedException("RET '" + ic.getInstruction() + "' info inconsistent: jump back to '" + contextOf2 + "' or '" + controlFlowGraph.contextOf(jsrInstruction.physicalSuccessor()) + "'?");
                }
                if (contextOf2.execute(ic.getOutFrame(arrayList), arrayList2, instConstraintVisitor, executionVisitor)) {
                    instructionContextQueue.add(contextOf2, (ArrayList) arrayList2.clone());
                }
            } else {
                for (InstructionContext instructionContext2 : ic.getSuccessors()) {
                    if (instructionContext2.execute(ic.getOutFrame(arrayList), arrayList2, instConstraintVisitor, executionVisitor)) {
                        instructionContextQueue.add(instructionContext2, (ArrayList) arrayList2.clone());
                    }
                }
            }
            ExceptionHandler[] exceptionHandlers = ic.getExceptionHandlers();
            while (i < exceptionHandlers.length) {
                InstructionContext contextOf3 = controlFlowGraph.contextOf(exceptionHandlers[i].getHandlerStart());
                if (contextOf3.execute(new Frame(ic.getOutFrame(arrayList).getLocals(), new OperandStack(ic.getOutFrame(arrayList).getStack().maxStack(), exceptionHandlers[i].getExceptionType() == null ? Type.THROWABLE : exceptionHandlers[i].getExceptionType())), new ArrayList(), instConstraintVisitor, executionVisitor)) {
                    instructionContextQueue.add(contextOf3, new ArrayList());
                }
                i++;
                c132361 = null;
            }
        }
    }

    @Override // com.sun.org.apache.bcel.internal.verifier.PassVerifier
    public VerificationResult do_verify() {
        if (!this.myOwner.doPass3a(this.method_no).equals(VerificationResult.VR_OK)) {
            return VerificationResult.VR_NOTYET;
        }
        JavaClass lookupClass = Repository.lookupClass(this.myOwner.getClassName());
        ConstantPoolGen constantPoolGen = new ConstantPoolGen(lookupClass.getConstantPool());
        InstConstraintVisitor instConstraintVisitor = new InstConstraintVisitor();
        instConstraintVisitor.setConstantPoolGen(constantPoolGen);
        ExecutionVisitor executionVisitor = new ExecutionVisitor();
        executionVisitor.setConstantPoolGen(constantPoolGen);
        Method[] methods = lookupClass.getMethods();
        try {
            MethodGen methodGen = new MethodGen(methods[this.method_no], this.myOwner.getClassName(), constantPoolGen);
            instConstraintVisitor.setMethodGen(methodGen);
            if (!methodGen.isAbstract() && !methodGen.isNative()) {
                ControlFlowGraph controlFlowGraph = new ControlFlowGraph(methodGen);
                Frame frame = new Frame(methodGen.getMaxLocals(), methodGen.getMaxStack());
                if (!methodGen.isStatic()) {
                    if (methodGen.getName().equals(Constants.CONSTRUCTOR_NAME)) {
                        Frame._this = new UninitializedObjectType(new ObjectType(lookupClass.getClassName()));
                        frame.getLocals().set(0, Frame._this);
                    } else {
                        Frame._this = null;
                        frame.getLocals().set(0, new ObjectType(lookupClass.getClassName()));
                    }
                }
                Type[] argumentTypes = methodGen.getArgumentTypes();
                int i = 0;
                for (int i2 = 0; i2 < argumentTypes.length; i2++) {
                    Type type = argumentTypes[i2];
                    if (type == Type.SHORT || type == Type.BYTE || type == Type.CHAR || type == Type.BOOLEAN) {
                        argumentTypes[i2] = Type.INT;
                    }
                    frame.getLocals().set(i + i2 + (methodGen.isStatic() ? 0 : 1), argumentTypes[i2]);
                    if (argumentTypes[i2].getSize() == 2) {
                        i++;
                        frame.getLocals().set(i + i2 + (methodGen.isStatic() ? 0 : 1), Type.UNKNOWN);
                    }
                }
                circulationPump(controlFlowGraph, controlFlowGraph.contextOf(methodGen.getInstructionList().getStart()), frame, instConstraintVisitor, executionVisitor);
            }
            return VerificationResult.VR_OK;
        } catch (VerifierConstraintViolatedException e) {
            e.extendMessage("Constraint violated in method '" + methods[this.method_no] + "':\n", "");
            return new VerificationResult(2, e.getMessage());
        } catch (RuntimeException e2) {
            StringWriter stringWriter = new StringWriter();
            e2.printStackTrace(new PrintWriter(stringWriter));
            throw new AssertionViolatedException("Some RuntimeException occured while verify()ing class '" + lookupClass.getClassName() + "', method '" + methods[this.method_no] + "'. Original RuntimeException's stack trace:\n---\n" + stringWriter + "---\n");
        }
    }

    public int getMethodNo() {
        return this.method_no;
    }
}
