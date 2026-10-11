package com.sun.org.apache.bcel.internal.classfile;

import java.util.Stack;

/* loaded from: classes10.dex */
public class DescendingVisitor implements Visitor {
    private JavaClass clazz;
    private Stack stack = new Stack();
    private Visitor visitor;

    public DescendingVisitor(JavaClass javaClass, Visitor visitor) {
        this.clazz = javaClass;
        this.visitor = visitor;
    }

    public Object current() {
        return this.stack.peek();
    }

    public Object predecessor() {
        return predecessor(0);
    }

    public void visit() {
        this.clazz.accept(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitCode(Code code) {
        this.stack.push(code);
        code.accept(this.visitor);
        for (CodeException codeException : code.getExceptionTable()) {
            codeException.accept(this);
        }
        for (Attribute attribute : code.getAttributes()) {
            attribute.accept(this);
        }
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitCodeException(CodeException codeException) {
        this.stack.push(codeException);
        codeException.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantClass(ConstantClass constantClass) {
        this.stack.push(constantClass);
        constantClass.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantDouble(ConstantDouble constantDouble) {
        this.stack.push(constantDouble);
        constantDouble.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantFieldref(ConstantFieldref constantFieldref) {
        this.stack.push(constantFieldref);
        constantFieldref.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantFloat(ConstantFloat constantFloat) {
        this.stack.push(constantFloat);
        constantFloat.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantInteger(ConstantInteger constantInteger) {
        this.stack.push(constantInteger);
        constantInteger.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantInterfaceMethodref(ConstantInterfaceMethodref constantInterfaceMethodref) {
        this.stack.push(constantInterfaceMethodref);
        constantInterfaceMethodref.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantLong(ConstantLong constantLong) {
        this.stack.push(constantLong);
        constantLong.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantMethodref(ConstantMethodref constantMethodref) {
        this.stack.push(constantMethodref);
        constantMethodref.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantNameAndType(ConstantNameAndType constantNameAndType) {
        this.stack.push(constantNameAndType);
        constantNameAndType.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantPool(ConstantPool constantPool) {
        this.stack.push(constantPool);
        constantPool.accept(this.visitor);
        Constant[] constantPool2 = constantPool.getConstantPool();
        for (int i = 1; i < constantPool2.length; i++) {
            Constant constant = constantPool2[i];
            if (constant != null) {
                constant.accept(this);
            }
        }
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantString(ConstantString constantString) {
        this.stack.push(constantString);
        constantString.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantUtf8(ConstantUtf8 constantUtf8) {
        this.stack.push(constantUtf8);
        constantUtf8.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantValue(ConstantValue constantValue) {
        this.stack.push(constantValue);
        constantValue.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitDeprecated(Deprecated deprecated) {
        this.stack.push(deprecated);
        deprecated.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitExceptionTable(ExceptionTable exceptionTable) {
        this.stack.push(exceptionTable);
        exceptionTable.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitField(Field field) {
        this.stack.push(field);
        field.accept(this.visitor);
        for (Attribute attribute : field.getAttributes()) {
            attribute.accept(this);
        }
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitInnerClass(InnerClass innerClass) {
        this.stack.push(innerClass);
        innerClass.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitInnerClasses(InnerClasses innerClasses) {
        this.stack.push(innerClasses);
        innerClasses.accept(this.visitor);
        for (InnerClass innerClass : innerClasses.getInnerClasses()) {
            innerClass.accept(this);
        }
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitJavaClass(JavaClass javaClass) {
        this.stack.push(javaClass);
        javaClass.accept(this.visitor);
        for (Field field : javaClass.getFields()) {
            field.accept(this);
        }
        for (Method method : javaClass.getMethods()) {
            method.accept(this);
        }
        for (Attribute attribute : javaClass.getAttributes()) {
            attribute.accept(this);
        }
        javaClass.getConstantPool().accept(this);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitLineNumber(LineNumber lineNumber) {
        this.stack.push(lineNumber);
        lineNumber.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitLineNumberTable(LineNumberTable lineNumberTable) {
        this.stack.push(lineNumberTable);
        lineNumberTable.accept(this.visitor);
        for (LineNumber lineNumber : lineNumberTable.getLineNumberTable()) {
            lineNumber.accept(this);
        }
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitLocalVariable(LocalVariable localVariable) {
        this.stack.push(localVariable);
        localVariable.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitLocalVariableTable(LocalVariableTable localVariableTable) {
        this.stack.push(localVariableTable);
        localVariableTable.accept(this.visitor);
        for (LocalVariable localVariable : localVariableTable.getLocalVariableTable()) {
            localVariable.accept(this);
        }
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitMethod(Method method) {
        this.stack.push(method);
        method.accept(this.visitor);
        for (Attribute attribute : method.getAttributes()) {
            attribute.accept(this);
        }
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitSignature(Signature signature) {
        this.stack.push(signature);
        signature.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitSourceFile(SourceFile sourceFile) {
        this.stack.push(sourceFile);
        sourceFile.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitStackMap(StackMap stackMap) {
        this.stack.push(stackMap);
        stackMap.accept(this.visitor);
        for (StackMapEntry stackMapEntry : stackMap.getStackMap()) {
            stackMapEntry.accept(this);
        }
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitStackMapEntry(StackMapEntry stackMapEntry) {
        this.stack.push(stackMapEntry);
        stackMapEntry.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitSynthetic(Synthetic synthetic) {
        this.stack.push(synthetic);
        synthetic.accept(this.visitor);
        this.stack.pop();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitUnknown(Unknown unknown) {
        this.stack.push(unknown);
        unknown.accept(this.visitor);
        this.stack.pop();
    }

    public Object predecessor(int i) {
        int size = this.stack.size();
        if (size < 2 || i < 0) {
            return null;
        }
        return this.stack.elementAt(size - (i + 2));
    }
}
