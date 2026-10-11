package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.BooleanType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import org.apache.http.HttpHeaders;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.sun.org.apache.xalan.internal.xsltc.compiler.If */
/* loaded from: classes10.dex */
public final class C13291If extends Instruction {
    private boolean _ignore = false;
    private Expression _test;

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void display(int i) {
        indent(i);
        Util.println(HttpHeaders.f110097IF);
        int i2 = i + 4;
        indent(i2);
        System.out.print("test ");
        Util.println(this._test.toString());
        displayContents(i2);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        Expression parseExpression = parser.parseExpression(this, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_TEST, null);
        this._test = parseExpression;
        if (parseExpression.isDummy()) {
            reportError(this, parser, ErrorMsg.REQUIRED_ATTR_ERR, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_TEST);
            return;
        }
        Object evaluateAtCompileTime = this._test.evaluateAtCompileTime();
        if (evaluateAtCompileTime != null && (evaluateAtCompileTime instanceof Boolean)) {
            this._ignore = !((Boolean) evaluateAtCompileTime).booleanValue();
        }
        parseChildren(parser);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        InstructionList instructionList = methodGenerator.getInstructionList();
        this._test.translateDesynthesized(classGenerator, methodGenerator);
        InstructionHandle end = instructionList.getEnd();
        if (!this._ignore) {
            translateContents(classGenerator, methodGenerator);
        }
        this._test.backPatchFalseList(instructionList.append(InstructionConstants.NOP));
        this._test.backPatchTrueList(end.getNext());
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        if (!(this._test.typeCheck(symbolTable) instanceof BooleanType)) {
            this._test = new CastExpr(this._test, Type.Boolean);
        }
        if (!this._ignore) {
            typeCheckContents(symbolTable);
        }
        return Type.Void;
    }
}
