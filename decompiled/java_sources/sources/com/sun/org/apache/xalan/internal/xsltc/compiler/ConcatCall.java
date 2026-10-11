package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class ConcatCall extends FunctionCall {
    public ConcatCall(QName qName, Vector vector) {
        super(qName, vector);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.FunctionCall, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        int argumentCount = argumentCount();
        if (argumentCount == 0) {
            instructionList.append(new PUSH(constantPool, ""));
            return;
        }
        if (argumentCount == 1) {
            argument().translate(classGenerator, methodGenerator);
            return;
        }
        int addMethodref = constantPool.addMethodref(Constants.STRING_BUFFER_CLASS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V");
        INVOKEVIRTUAL invokevirtual = new INVOKEVIRTUAL(constantPool.addMethodref(Constants.STRING_BUFFER_CLASS, RequestParameters.SUBRESOURCE_APPEND, "(Ljava/lang/String;)Ljava/lang/StringBuffer;"));
        int addMethodref2 = constantPool.addMethodref(Constants.STRING_BUFFER_CLASS, "toString", "()Ljava/lang/String;");
        instructionList.append(new NEW(constantPool.addClass(Constants.STRING_BUFFER_CLASS)));
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(new INVOKESPECIAL(addMethodref));
        for (int i = 0; i < argumentCount; i++) {
            argument(i).translate(classGenerator, methodGenerator);
            instructionList.append(invokevirtual);
        }
        instructionList.append(new INVOKEVIRTUAL(addMethodref2));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.FunctionCall, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        for (int i = 0; i < argumentCount(); i++) {
            Expression argument = argument(i);
            Type typeCheck = argument.typeCheck(symbolTable);
            Type type = Type.String;
            if (!typeCheck.identicalTo(type)) {
                setArgument(i, new CastExpr(argument, type));
            }
        }
        Type type2 = Type.String;
        this._type = type2;
        return type2;
    }
}
