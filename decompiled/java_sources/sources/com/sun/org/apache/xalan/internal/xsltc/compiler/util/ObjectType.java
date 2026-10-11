package com.sun.org.apache.xalan.internal.xsltc.compiler.util;

import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.GOTO;
import com.sun.org.apache.bcel.internal.generic.IFNULL;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.Instruction;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;

/* loaded from: classes10.dex */
public final class ObjectType extends Type {
    private Class _clazz;
    private String _javaClassName;

    public ObjectType(String str) {
        this._clazz = Object.class;
        this._javaClassName = str;
        try {
            this._clazz = ObjectFactory.findProviderClass(str, ObjectFactory.findClassLoader(), true);
        } catch (ClassNotFoundException unused) {
            this._clazz = null;
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction LOAD(int i) {
        return new ALOAD(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction STORE(int i) {
        return new ASTORE(i);
    }

    public boolean equals(Object obj) {
        return obj instanceof ObjectType;
    }

    public Class getJavaClass() {
        return this._clazz;
    }

    public String getJavaClassName() {
        return this._javaClassName;
    }

    public int hashCode() {
        return Object.class.hashCode();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public boolean identicalTo(Type type) {
        return this == type;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public com.sun.org.apache.bcel.internal.generic.Type toJCType() {
        return Util.getJCRefType(toSignature());
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public String toSignature() {
        StringBuffer stringBuffer = new StringBuffer("L");
        stringBuffer.append(this._javaClassName.replace('.', '/'));
        stringBuffer.append(';');
        return stringBuffer.toString();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public String toString() {
        return this._javaClassName;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public void translateFrom(ClassGenerator classGenerator, MethodGenerator methodGenerator, Class cls) {
        methodGenerator.getInstructionList().append(InstructionConstants.NOP);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, Type type) {
        if (type == Type.String) {
            translateTo(classGenerator, methodGenerator, (StringType) type);
        } else {
            classGenerator.getParser().reportError(2, new ErrorMsg("DATA_CONVERSION_ERR", toString(), type.toString()));
        }
    }

    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, StringType stringType) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        instructionList.append(InstructionConstants.DUP);
        BranchHandle append = instructionList.append((BranchInstruction) new IFNULL(null));
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(this._javaClassName, "toString", "()Ljava/lang/String;")));
        BranchHandle append2 = instructionList.append((BranchInstruction) new GOTO(null));
        append.setTarget(instructionList.append(InstructionConstants.POP));
        instructionList.append(new PUSH(constantPool, ""));
        append2.setTarget(instructionList.append(InstructionConstants.NOP));
    }

    public ObjectType(Class cls) {
        this._javaClassName = Constants.OBJECT_CLASS;
        this._clazz = cls;
        this._javaClassName = cls.getName();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, Class cls) {
        if (cls.isAssignableFrom(this._clazz)) {
            methodGenerator.getInstructionList().append(InstructionConstants.NOP);
        } else {
            classGenerator.getParser().reportError(2, new ErrorMsg("DATA_CONVERSION_ERR", toString(), cls.getClass().toString()));
        }
    }
}
