package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKESTATIC;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.RealType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.StringType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class FormatNumberCall extends FunctionCall {
    private Expression _format;
    private Expression _name;
    private QName _resolvedQName;
    private Expression _value;

    public FormatNumberCall(QName qName, Vector vector) {
        super(qName, vector);
        this._resolvedQName = null;
        this._value = argument(0);
        this._format = argument(1);
        this._name = argumentCount() == 3 ? argument(2) : null;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.FunctionCall, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        this._value.translate(classGenerator, methodGenerator);
        this._format.translate(classGenerator, methodGenerator);
        int addMethodref = constantPool.addMethodref(Constants.BASIS_LIBRARY_CLASS, "formatNumber", "(DLjava/lang/String;Ljava/text/DecimalFormat;)Ljava/lang/String;");
        int addMethodref2 = constantPool.addMethodref(Constants.TRANSLET_CLASS, "getDecimalFormat", "(Ljava/lang/String;)Ljava/text/DecimalFormat;");
        instructionList.append(classGenerator.loadTranslet());
        Expression expression = this._name;
        if (expression == null) {
            instructionList.append(new PUSH(constantPool, ""));
        } else {
            QName qName = this._resolvedQName;
            if (qName != null) {
                instructionList.append(new PUSH(constantPool, qName.toString()));
            } else {
                expression.translate(classGenerator, methodGenerator);
            }
        }
        instructionList.append(new INVOKEVIRTUAL(addMethodref2));
        instructionList.append(new INVOKESTATIC(addMethodref));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.FunctionCall, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        getStylesheet().numberFormattingUsed();
        if (!(this._value.typeCheck(symbolTable) instanceof RealType)) {
            this._value = new CastExpr(this._value, Type.Real);
        }
        if (!(this._format.typeCheck(symbolTable) instanceof StringType)) {
            this._format = new CastExpr(this._format, Type.String);
        }
        if (argumentCount() == 3) {
            Type typeCheck = this._name.typeCheck(symbolTable);
            Expression expression = this._name;
            if (expression instanceof LiteralExpr) {
                this._resolvedQName = getParser().getQNameIgnoreDefaultNs(((LiteralExpr) expression).getValue());
            } else if (!(typeCheck instanceof StringType)) {
                this._name = new CastExpr(this._name, Type.String);
            }
        }
        Type type = Type.String;
        this._type = type;
        return type;
    }
}
