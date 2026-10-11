package com.sun.org.apache.xalan.internal.xsltc.compiler.util;

import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.CHECKCAST;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.DLOAD;
import com.sun.org.apache.bcel.internal.generic.DSTORE;
import com.sun.org.apache.bcel.internal.generic.GOTO;
import com.sun.org.apache.bcel.internal.generic.IFEQ;
import com.sun.org.apache.bcel.internal.generic.IFNE;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.INVOKESTATIC;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.Instruction;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.StackInstruction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;

/* loaded from: classes10.dex */
public final class RealType extends NumberType {
    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction ADD() {
        return InstructionConstants.DADD;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction CMP(boolean z) {
        return z ? InstructionConstants.DCMPG : InstructionConstants.DCMPL;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction DIV() {
        return InstructionConstants.DDIV;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction DUP() {
        return InstructionConstants.DUP2;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction LOAD(int i) {
        return new DLOAD(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction MUL() {
        return InstructionConstants.DMUL;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction NEG() {
        return InstructionConstants.DNEG;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction POP() {
        return InstructionConstants.POP2;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction REM() {
        return InstructionConstants.DREM;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction STORE(int i) {
        return new DSTORE(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction SUB() {
        return InstructionConstants.DSUB;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public int distanceTo(Type type) {
        if (type == this) {
            return 0;
        }
        return type == Type.Int ? 1 : Integer.MAX_VALUE;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public boolean identicalTo(Type type) {
        return this == type;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public com.sun.org.apache.bcel.internal.generic.Type toJCType() {
        return com.sun.org.apache.bcel.internal.generic.Type.DOUBLE;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public String toSignature() {
        return SardineUtil.DEFAULT_NAMESPACE_PREFIX;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public String toString() {
        return "real";
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public void translateBox(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        translateTo(classGenerator, methodGenerator, Type.Reference);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public void translateFrom(ClassGenerator classGenerator, MethodGenerator methodGenerator, Class cls) {
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (cls == Character.TYPE || cls == Byte.TYPE || cls == Short.TYPE || cls == Integer.TYPE) {
            instructionList.append(InstructionConstants.I2D);
            return;
        }
        if (cls == Long.TYPE) {
            instructionList.append(InstructionConstants.L2D);
            return;
        }
        if (cls == Float.TYPE) {
            instructionList.append(InstructionConstants.F2D);
        } else if (cls == Double.TYPE) {
            instructionList.append(InstructionConstants.NOP);
        } else {
            classGenerator.getParser().reportError(2, new ErrorMsg("DATA_CONVERSION_ERR", toString(), cls.getName()));
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, Type type) {
        if (type == Type.String) {
            translateTo(classGenerator, methodGenerator, (StringType) type);
            return;
        }
        if (type == Type.Boolean) {
            translateTo(classGenerator, methodGenerator, (BooleanType) type);
            return;
        }
        if (type == Type.Reference) {
            translateTo(classGenerator, methodGenerator, (ReferenceType) type);
        } else if (type == Type.Int) {
            translateTo(classGenerator, methodGenerator, (IntType) type);
        } else {
            classGenerator.getParser().reportError(2, new ErrorMsg("DATA_CONVERSION_ERR", toString(), type.toString()));
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public FlowList translateToDesynthesized(ClassGenerator classGenerator, MethodGenerator methodGenerator, BooleanType booleanType) {
        FlowList flowList = new FlowList();
        classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        instructionList.append(InstructionConstants.DUP2);
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("real_to_boolean_tmp", com.sun.org.apache.bcel.internal.generic.Type.DOUBLE, instructionList.getEnd(), null);
        instructionList.append(new DSTORE(addLocalVariable.getIndex()));
        instructionList.append(InstructionConstants.DCONST_0);
        Instruction instruction = InstructionConstants.DCMPG;
        instructionList.append(instruction);
        flowList.add(instructionList.append((BranchInstruction) new IFEQ(null)));
        instructionList.append(new DLOAD(addLocalVariable.getIndex()));
        instructionList.append(new DLOAD(addLocalVariable.getIndex()));
        instructionList.append(instruction);
        flowList.add(instructionList.append((BranchInstruction) new IFNE(null)));
        return flowList;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public void translateUnBox(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        instructionList.append(new CHECKCAST(constantPool.addClass(Constants.DOUBLE_CLASS)));
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.DOUBLE_CLASS, Constants.DOUBLE_VALUE, Constants.DOUBLE_VALUE_SIG)));
    }

    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, StringType stringType) {
        methodGenerator.getInstructionList().append(new INVOKESTATIC(classGenerator.getConstantPool().addMethodref(Constants.BASIS_LIBRARY_CLASS, "realToString", "(D)Ljava/lang/String;")));
    }

    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, BooleanType booleanType) {
        InstructionList instructionList = methodGenerator.getInstructionList();
        FlowList translateToDesynthesized = translateToDesynthesized(classGenerator, methodGenerator, booleanType);
        instructionList.append(InstructionConstants.ICONST_1);
        BranchHandle append = instructionList.append((BranchInstruction) new GOTO(null));
        translateToDesynthesized.backPatch(instructionList.append(InstructionConstants.ICONST_0));
        append.setTarget(instructionList.append(InstructionConstants.NOP));
    }

    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, IntType intType) {
        methodGenerator.getInstructionList().append(new INVOKESTATIC(classGenerator.getConstantPool().addMethodref(Constants.BASIS_LIBRARY_CLASS, "realToInt", "(D)I")));
    }

    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, ReferenceType referenceType) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        instructionList.append(new NEW(constantPool.addClass(Constants.DOUBLE_CLASS)));
        StackInstruction stackInstruction = InstructionConstants.DUP_X2;
        instructionList.append(stackInstruction);
        instructionList.append(stackInstruction);
        instructionList.append(InstructionConstants.POP);
        instructionList.append(new INVOKESPECIAL(constantPool.addMethodref(Constants.DOUBLE_CLASS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(D)V")));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, Class cls) {
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (cls == Character.TYPE) {
            instructionList.append(InstructionConstants.D2I);
            instructionList.append(InstructionConstants.I2C);
            return;
        }
        if (cls == Byte.TYPE) {
            instructionList.append(InstructionConstants.D2I);
            instructionList.append(InstructionConstants.I2B);
            return;
        }
        if (cls == Short.TYPE) {
            instructionList.append(InstructionConstants.D2I);
            instructionList.append(InstructionConstants.I2S);
            return;
        }
        if (cls == Integer.TYPE) {
            instructionList.append(InstructionConstants.D2I);
            return;
        }
        if (cls == Long.TYPE) {
            instructionList.append(InstructionConstants.D2L);
            return;
        }
        if (cls == Float.TYPE) {
            instructionList.append(InstructionConstants.D2F);
            return;
        }
        if (cls == Double.TYPE) {
            instructionList.append(InstructionConstants.NOP);
        } else if (cls.isAssignableFrom(Double.class)) {
            translateTo(classGenerator, methodGenerator, Type.Reference);
        } else {
            classGenerator.getParser().reportError(2, new ErrorMsg("DATA_CONVERSION_ERR", toString(), cls.getName()));
        }
    }
}
