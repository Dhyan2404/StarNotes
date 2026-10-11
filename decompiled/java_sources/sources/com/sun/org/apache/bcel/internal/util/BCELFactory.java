package com.sun.org.apache.bcel.internal.util;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.classfile.Utility;
import com.sun.org.apache.bcel.internal.generic.AllocationInstruction;
import com.sun.org.apache.bcel.internal.generic.ArrayInstruction;
import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.CHECKCAST;
import com.sun.org.apache.bcel.internal.generic.CPInstruction;
import com.sun.org.apache.bcel.internal.generic.CodeExceptionGen;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.ConstantPushInstruction;
import com.sun.org.apache.bcel.internal.generic.EmptyVisitor;
import com.sun.org.apache.bcel.internal.generic.FieldInstruction;
import com.sun.org.apache.bcel.internal.generic.IINC;
import com.sun.org.apache.bcel.internal.generic.INSTANCEOF;
import com.sun.org.apache.bcel.internal.generic.Instruction;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InvokeInstruction;
import com.sun.org.apache.bcel.internal.generic.LDC;
import com.sun.org.apache.bcel.internal.generic.LDC2_W;
import com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction;
import com.sun.org.apache.bcel.internal.generic.MULTIANEWARRAY;
import com.sun.org.apache.bcel.internal.generic.MethodGen;
import com.sun.org.apache.bcel.internal.generic.NEWARRAY;
import com.sun.org.apache.bcel.internal.generic.ObjectType;
import com.sun.org.apache.bcel.internal.generic.RET;
import com.sun.org.apache.bcel.internal.generic.ReturnInstruction;
import com.sun.org.apache.bcel.internal.generic.Select;
import com.sun.org.apache.bcel.internal.generic.Type;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.commons.collections4.MapUtils;

/* loaded from: classes10.dex */
class BCELFactory extends EmptyVisitor {
    private ConstantPoolGen _cp;
    private MethodGen _mg;
    private PrintWriter _out;
    private HashMap branch_map = new HashMap();
    private ArrayList branches = new ArrayList();

    public BCELFactory(MethodGen methodGen, PrintWriter printWriter) {
        this._mg = methodGen;
        this._cp = methodGen.getConstantPool();
        this._out = printWriter;
    }

    private void createConstant(Object obj) {
        String obj2 = obj.toString();
        if (obj instanceof String) {
            obj2 = '\"' + Utility.convertString(obj.toString()) + '\"';
        } else if (obj instanceof Character) {
            obj2 = "(char)0x" + Integer.toHexString(((Character) obj).charValue());
        }
        this._out.println("il.append(new PUSH(_cp, " + obj2 + "));");
    }

    private void updateBranchTargets() {
        Iterator it2 = this.branches.iterator();
        while (it2.hasNext()) {
            BranchInstruction branchInstruction = (BranchInstruction) it2.next();
            BranchHandle branchHandle = (BranchHandle) this.branch_map.get(branchInstruction);
            String str = branchInstruction.getName() + "_" + branchHandle.getPosition();
            int position = branchHandle.getTarget().getPosition();
            this._out.println(MapUtils.f104930a + str + ".setTarget(ih_" + position + ");");
            if (branchInstruction instanceof Select) {
                InstructionHandle[] targets = ((Select) branchInstruction).getTargets();
                for (int i = 0; i < targets.length; i++) {
                    int position2 = targets[i].getPosition();
                    this._out.println(MapUtils.f104930a + str + ".setTarget(" + i + ", ih_" + position2 + ");");
                }
            }
        }
    }

    private void updateExceptionHandlers() {
        for (CodeExceptionGen codeExceptionGen : this._mg.getExceptionHandlers()) {
            this._out.println("    method.addExceptionHandler(ih_" + codeExceptionGen.getStartPC().getPosition() + ", ih_" + codeExceptionGen.getEndPC().getPosition() + ", ih_" + codeExceptionGen.getHandlerPC().getPosition() + ", " + (codeExceptionGen.getCatchType() == null ? "null" : BCELifier.printType(codeExceptionGen.getCatchType())) + ");");
        }
    }

    private boolean visitInstruction(Instruction instruction) {
        if (InstructionConstants.INSTRUCTIONS[instruction.getOpcode()] == null || (instruction instanceof ConstantPushInstruction) || (instruction instanceof ReturnInstruction)) {
            return false;
        }
        this._out.println("il.append(InstructionConstants." + instruction.getName().toUpperCase() + ");");
        return true;
    }

    public void start() {
        if (this._mg.isAbstract() || this._mg.isNative()) {
            return;
        }
        for (InstructionHandle start = this._mg.getInstructionList().getStart(); start != null; start = start.getNext()) {
            Instruction instruction = start.getInstruction();
            boolean z = instruction instanceof BranchInstruction;
            if (z) {
                this.branch_map.put(instruction, start);
            }
            if (!start.hasTargeters()) {
                this._out.print(MapUtils.f104930a);
            } else if (z) {
                this._out.println("    InstructionHandle ih_" + start.getPosition() + AndroidTreeView.f47214k);
            } else {
                this._out.print("    InstructionHandle ih_" + start.getPosition() + CloudStorageConstants.OPERATION_EQUAL);
            }
            if (!visitInstruction(instruction)) {
                instruction.accept(this);
            }
        }
        updateBranchTargets();
        updateExceptionHandlers();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitAllocationInstruction(AllocationInstruction allocationInstruction) {
        short dimensions;
        Type type = allocationInstruction instanceof CPInstruction ? ((CPInstruction) allocationInstruction).getType(this._cp) : ((NEWARRAY) allocationInstruction).getType();
        short opcode = ((Instruction) allocationInstruction).getOpcode();
        if (opcode != 197) {
            switch (opcode) {
                case 187:
                    this._out.println("il.append(_factory.createNew(\"" + ((ObjectType) type).getClassName() + "\"));");
                    return;
                case 188:
                case 189:
                    dimensions = 1;
                    break;
                default:
                    throw new RuntimeException("Oops: " + ((int) opcode));
            }
        } else {
            dimensions = ((MULTIANEWARRAY) allocationInstruction).getDimensions();
        }
        this._out.println("il.append(_factory.createNewArray(" + BCELifier.printType(type) + ", (short) " + ((int) dimensions) + "));");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitArrayInstruction(ArrayInstruction arrayInstruction) {
        short opcode = arrayInstruction.getOpcode();
        Type type = arrayInstruction.getType(this._cp);
        String str = opcode < 79 ? "Load" : "Store";
        this._out.println("il.append(_factory.createArray" + str + MotionUtils.f31761c + BCELifier.printType(type) + "));");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitBranchInstruction(BranchInstruction branchInstruction) {
        BranchHandle branchHandle = (BranchHandle) this.branch_map.get(branchInstruction);
        int position = branchHandle.getPosition();
        String str = branchInstruction.getName() + "_" + position;
        String str2 = "null";
        if (branchInstruction instanceof Select) {
            this.branches.add(branchInstruction);
            StringBuffer stringBuffer = new StringBuffer("new int[] { ");
            int[] matchs = ((Select) branchInstruction).getMatchs();
            for (int i = 0; i < matchs.length; i++) {
                stringBuffer.append(matchs[i]);
                if (i < matchs.length - 1) {
                    stringBuffer.append(", ");
                }
            }
            stringBuffer.append(" }");
            this._out.print("    Select " + str + " = new " + branchInstruction.getName().toUpperCase() + MotionUtils.f31761c + ((Object) stringBuffer) + ", new InstructionHandle[] { ");
            for (int i2 = 0; i2 < matchs.length; i2++) {
                this._out.print("null");
                if (i2 < matchs.length - 1) {
                    this._out.print(", ");
                }
            }
            this._out.println(");");
        } else {
            int position2 = branchHandle.getTarget().getPosition();
            if (position > position2) {
                str2 = "ih_" + position2;
            } else {
                this.branches.add(branchInstruction);
            }
            this._out.println("    BranchInstruction " + str + " = _factory.createBranchInstruction(Constants." + branchInstruction.getName().toUpperCase() + ", " + str2 + ");");
        }
        if (!branchHandle.hasTargeters()) {
            this._out.println("    il.append(" + str + ");");
            return;
        }
        this._out.println("    ih_" + position + " = il.append(" + str + ");");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitCHECKCAST(CHECKCAST checkcast) {
        Type type = checkcast.getType(this._cp);
        this._out.println("il.append(_factory.createCheckCast(" + BCELifier.printType(type) + "));");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitConstantPushInstruction(ConstantPushInstruction constantPushInstruction) {
        createConstant(constantPushInstruction.getValue());
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFieldInstruction(FieldInstruction fieldInstruction) {
        short opcode = fieldInstruction.getOpcode();
        String className = fieldInstruction.getClassName(this._cp);
        String fieldName = fieldInstruction.getFieldName(this._cp);
        Type fieldType = fieldInstruction.getFieldType(this._cp);
        this._out.println("il.append(_factory.createFieldAccess(\"" + className + "\", \"" + fieldName + "\", " + BCELifier.printType(fieldType) + ", Constants." + Constants.OPCODE_NAMES[opcode].toUpperCase() + "));");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitINSTANCEOF(INSTANCEOF r3) {
        Type type = r3.getType(this._cp);
        this._out.println("il.append(new INSTANCEOF(_cp.addClass(" + BCELifier.printType(type) + ")));");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitInvokeInstruction(InvokeInstruction invokeInstruction) {
        short opcode = invokeInstruction.getOpcode();
        String className = invokeInstruction.getClassName(this._cp);
        String methodName = invokeInstruction.getMethodName(this._cp);
        Type returnType = invokeInstruction.getReturnType(this._cp);
        Type[] argumentTypes = invokeInstruction.getArgumentTypes(this._cp);
        this._out.println("il.append(_factory.createInvoke(\"" + className + "\", \"" + methodName + "\", " + BCELifier.printType(returnType) + ", " + BCELifier.printArgumentTypes(argumentTypes) + ", Constants." + Constants.OPCODE_NAMES[opcode].toUpperCase() + "));");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLDC(LDC ldc) {
        createConstant(ldc.getValue(this._cp));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLDC2_W(LDC2_W ldc2_w) {
        createConstant(ldc2_w.getValue(this._cp));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLocalVariableInstruction(LocalVariableInstruction localVariableInstruction) {
        short opcode = localVariableInstruction.getOpcode();
        Type type = localVariableInstruction.getType(this._cp);
        if (opcode == 132) {
            this._out.println("il.append(new IINC(" + localVariableInstruction.getIndex() + ", " + ((IINC) localVariableInstruction).getIncrement() + "));");
            return;
        }
        String str = opcode < 54 ? "Load" : "Store";
        this._out.println("il.append(_factory.create" + str + MotionUtils.f31761c + BCELifier.printType(type) + ", " + localVariableInstruction.getIndex() + "));");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitRET(RET ret) {
        this._out.println("il.append(new RET(" + ret.getIndex() + ")));");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitReturnInstruction(ReturnInstruction returnInstruction) {
        Type type = returnInstruction.getType(this._cp);
        this._out.println("il.append(_factory.createReturn(" + BCELifier.printType(type) + "));");
    }
}
