package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class StringLengthCall extends FunctionCall {
    public StringLengthCall(QName qName, Vector vector) {
        super(qName, vector);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.FunctionCall, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (argumentCount() > 0) {
            argument().translate(classGenerator, methodGenerator);
        } else {
            instructionList.append(methodGenerator.loadContextNode());
            Type.Node.translateTo(classGenerator, methodGenerator, Type.String);
        }
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref("java.lang.String", "length", "()I")));
    }
}
