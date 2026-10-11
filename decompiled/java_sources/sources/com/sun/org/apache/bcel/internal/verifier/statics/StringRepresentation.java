package com.sun.org.apache.bcel.internal.verifier.statics;

import com.sun.org.apache.bcel.internal.classfile.Code;
import com.sun.org.apache.bcel.internal.classfile.CodeException;
import com.sun.org.apache.bcel.internal.classfile.ConstantClass;
import com.sun.org.apache.bcel.internal.classfile.ConstantDouble;
import com.sun.org.apache.bcel.internal.classfile.ConstantFieldref;
import com.sun.org.apache.bcel.internal.classfile.ConstantFloat;
import com.sun.org.apache.bcel.internal.classfile.ConstantInteger;
import com.sun.org.apache.bcel.internal.classfile.ConstantInterfaceMethodref;
import com.sun.org.apache.bcel.internal.classfile.ConstantLong;
import com.sun.org.apache.bcel.internal.classfile.ConstantMethodref;
import com.sun.org.apache.bcel.internal.classfile.ConstantNameAndType;
import com.sun.org.apache.bcel.internal.classfile.ConstantPool;
import com.sun.org.apache.bcel.internal.classfile.ConstantString;
import com.sun.org.apache.bcel.internal.classfile.ConstantUtf8;
import com.sun.org.apache.bcel.internal.classfile.ConstantValue;
import com.sun.org.apache.bcel.internal.classfile.Deprecated;
import com.sun.org.apache.bcel.internal.classfile.EmptyVisitor;
import com.sun.org.apache.bcel.internal.classfile.ExceptionTable;
import com.sun.org.apache.bcel.internal.classfile.Field;
import com.sun.org.apache.bcel.internal.classfile.InnerClass;
import com.sun.org.apache.bcel.internal.classfile.InnerClasses;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import com.sun.org.apache.bcel.internal.classfile.LineNumber;
import com.sun.org.apache.bcel.internal.classfile.LineNumberTable;
import com.sun.org.apache.bcel.internal.classfile.LocalVariable;
import com.sun.org.apache.bcel.internal.classfile.LocalVariableTable;
import com.sun.org.apache.bcel.internal.classfile.Method;
import com.sun.org.apache.bcel.internal.classfile.Node;
import com.sun.org.apache.bcel.internal.classfile.Signature;
import com.sun.org.apache.bcel.internal.classfile.SourceFile;
import com.sun.org.apache.bcel.internal.classfile.StackMap;
import com.sun.org.apache.bcel.internal.classfile.Synthetic;
import com.sun.org.apache.bcel.internal.classfile.Unknown;
import com.sun.org.apache.bcel.internal.classfile.Visitor;
import com.sun.org.apache.bcel.internal.verifier.exc.AssertionViolatedException;

/* loaded from: classes10.dex */
public class StringRepresentation extends EmptyVisitor implements Visitor {

    /* renamed from: n */
    private Node f64082n;
    private String tostring;

    public StringRepresentation(Node node) {
        this.f64082n = node;
        node.accept(this);
    }

    public String toString() {
        String str = this.tostring;
        if (str != null) {
            return str;
        }
        throw new AssertionViolatedException("Please adapt '" + getClass() + "' to deal with objects of class '" + this.f64082n.getClass() + "'.");
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitCode(Code code) {
        this.tostring = "<CODE>";
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitCodeException(CodeException codeException) {
        this.tostring = toString(codeException);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantClass(ConstantClass constantClass) {
        this.tostring = toString(constantClass);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantDouble(ConstantDouble constantDouble) {
        this.tostring = toString(constantDouble);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantFieldref(ConstantFieldref constantFieldref) {
        this.tostring = toString(constantFieldref);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantFloat(ConstantFloat constantFloat) {
        this.tostring = toString(constantFloat);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantInteger(ConstantInteger constantInteger) {
        this.tostring = toString(constantInteger);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantInterfaceMethodref(ConstantInterfaceMethodref constantInterfaceMethodref) {
        this.tostring = toString(constantInterfaceMethodref);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantLong(ConstantLong constantLong) {
        this.tostring = toString(constantLong);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantMethodref(ConstantMethodref constantMethodref) {
        this.tostring = toString(constantMethodref);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantNameAndType(ConstantNameAndType constantNameAndType) {
        this.tostring = toString(constantNameAndType);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantPool(ConstantPool constantPool) {
        this.tostring = toString(constantPool);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantString(ConstantString constantString) {
        this.tostring = toString(constantString);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantUtf8(ConstantUtf8 constantUtf8) {
        this.tostring = toString(constantUtf8);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitConstantValue(ConstantValue constantValue) {
        this.tostring = toString(constantValue);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitDeprecated(Deprecated deprecated) {
        this.tostring = toString(deprecated);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitExceptionTable(ExceptionTable exceptionTable) {
        this.tostring = toString(exceptionTable);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitField(Field field) {
        this.tostring = toString(field);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitInnerClass(InnerClass innerClass) {
        this.tostring = toString(innerClass);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitInnerClasses(InnerClasses innerClasses) {
        this.tostring = toString(innerClasses);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitJavaClass(JavaClass javaClass) {
        this.tostring = toString(javaClass);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitLineNumber(LineNumber lineNumber) {
        this.tostring = toString(lineNumber);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitLineNumberTable(LineNumberTable lineNumberTable) {
        this.tostring = "<LineNumberTable: " + toString(lineNumberTable) + ">";
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitLocalVariable(LocalVariable localVariable) {
        this.tostring = toString(localVariable);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitLocalVariableTable(LocalVariableTable localVariableTable) {
        this.tostring = "<LocalVariableTable: " + toString(localVariableTable) + ">";
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitMethod(Method method) {
        this.tostring = toString(method);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitSignature(Signature signature) {
        this.tostring = toString(signature);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitSourceFile(SourceFile sourceFile) {
        this.tostring = toString(sourceFile);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitStackMap(StackMap stackMap) {
        this.tostring = toString(stackMap);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitSynthetic(Synthetic synthetic) {
        this.tostring = toString(synthetic);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitUnknown(Unknown unknown) {
        this.tostring = toString(unknown);
    }

    private String toString(Node node) {
        try {
            return node.toString();
        } catch (ClassFormatError unused) {
            String name = node.getClass().getName();
            return "<<" + name.substring(name.lastIndexOf(".") + 1) + ">>";
        } catch (RuntimeException unused2) {
            String name2 = node.getClass().getName();
            return "<<" + name2.substring(name2.lastIndexOf(".") + 1) + ">>";
        }
    }
}
