package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.GETFIELD;
import com.sun.org.apache.bcel.internal.generic.INVOKESTATIC;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class DocumentCall extends FunctionCall {
    private Expression _arg1;
    private Type _arg1Type;
    private Expression _arg2;

    public DocumentCall(QName qName, Vector vector) {
        super(qName, vector);
        this._arg1 = null;
        this._arg2 = null;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.FunctionCall, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        int argumentCount = argumentCount();
        int addFieldref = constantPool.addFieldref(classGenerator.getClassName(), Constants.DOM_FIELD, Constants.DOM_INTF_SIG);
        int addMethodref = constantPool.addMethodref(Constants.LOAD_DOCUMENT_CLASS, "documentF", argumentCount == 1 ? "(Ljava/lang/Object;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;" : "(Ljava/lang/Object;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;");
        this._arg1.translate(classGenerator, methodGenerator);
        if (this._arg1Type == Type.NodeSet) {
            this._arg1.startIterator(classGenerator, methodGenerator);
        }
        if (argumentCount == 2) {
            this._arg2.translate(classGenerator, methodGenerator);
            this._arg2.startIterator(classGenerator, methodGenerator);
        }
        instructionList.append(new PUSH(constantPool, getStylesheet().getSystemId()));
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(new GETFIELD(addFieldref));
        instructionList.append(new INVOKESTATIC(addMethodref));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.FunctionCall, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Type type;
        int argumentCount = argumentCount();
        if (argumentCount < 1 || argumentCount > 2) {
            throw new TypeCheckError(new ErrorMsg(ErrorMsg.ILLEGAL_ARG_ERR, (SyntaxTreeNode) this));
        }
        if (getStylesheet() == null) {
            throw new TypeCheckError(new ErrorMsg(ErrorMsg.ILLEGAL_ARG_ERR, (SyntaxTreeNode) this));
        }
        Expression argument = argument(0);
        this._arg1 = argument;
        if (argument == null) {
            throw new TypeCheckError(new ErrorMsg(ErrorMsg.DOCUMENT_ARG_ERR, (SyntaxTreeNode) this));
        }
        Type typeCheck = argument.typeCheck(symbolTable);
        this._arg1Type = typeCheck;
        Type type2 = Type.NodeSet;
        if (typeCheck != type2 && typeCheck != (type = Type.String)) {
            this._arg1 = new CastExpr(this._arg1, type);
        }
        if (argumentCount == 2) {
            Expression argument2 = argument(1);
            this._arg2 = argument2;
            if (argument2 == null) {
                throw new TypeCheckError(new ErrorMsg(ErrorMsg.DOCUMENT_ARG_ERR, (SyntaxTreeNode) this));
            }
            Type typeCheck2 = argument2.typeCheck(symbolTable);
            if (typeCheck2.identicalTo(Type.Node)) {
                this._arg2 = new CastExpr(this._arg2, type2);
            } else if (!typeCheck2.identicalTo(type2)) {
                throw new TypeCheckError(new ErrorMsg(ErrorMsg.DOCUMENT_ARG_ERR, (SyntaxTreeNode) this));
            }
        }
        this._type = type2;
        return type2;
    }
}
