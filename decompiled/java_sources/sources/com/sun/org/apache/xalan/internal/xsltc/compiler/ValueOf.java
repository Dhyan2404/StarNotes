package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class ValueOf extends Instruction {
    private boolean _escaping = true;
    private boolean _isString = false;
    private Expression _select;

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void display(int i) {
        indent(i);
        Util.println("ValueOf");
        indent(i + 4);
        Util.println("select " + this._select.toString());
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        Expression parseExpression = parser.parseExpression(this, "select", null);
        this._select = parseExpression;
        if (parseExpression.isDummy()) {
            reportError(this, parser, ErrorMsg.REQUIRED_ATTR_ERR, "select");
            return;
        }
        String attribute = getAttribute(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_DISABLE_OUTPUT_ESCAPING);
        if (attribute == null || !attribute.equals("yes")) {
            return;
        }
        this._escaping = false;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.OUTPUT_HANDLER, "setEscaping", "(Z)Z");
        if (!this._escaping) {
            instructionList.append(methodGenerator.loadHandler());
            instructionList.append(new PUSH(constantPool, false));
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
        }
        if (this._isString) {
            int addMethodref = constantPool.addMethodref(Constants.TRANSLET_CLASS, "characters", Constants.CHARACTERSW_SIG);
            instructionList.append(classGenerator.loadTranslet());
            this._select.translate(classGenerator, methodGenerator);
            instructionList.append(methodGenerator.loadHandler());
            instructionList.append(new INVOKEVIRTUAL(addMethodref));
        } else {
            int addInterfaceMethodref2 = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "characters", Constants.CHARACTERS_SIG);
            instructionList.append(methodGenerator.loadDOM());
            this._select.translate(classGenerator, methodGenerator);
            instructionList.append(methodGenerator.loadHandler());
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref2, 3));
        }
        if (this._escaping) {
            return;
        }
        instructionList.append(methodGenerator.loadHandler());
        instructionList.append(InstructionConstants.SWAP);
        instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
        instructionList.append(InstructionConstants.POP);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Type typeCheck = this._select.typeCheck(symbolTable);
        if (typeCheck != null) {
            Type type = Type.Node;
            if (!typeCheck.identicalTo(type)) {
                if (typeCheck.identicalTo(Type.NodeSet)) {
                    this._select = new CastExpr(this._select, type);
                } else {
                    this._isString = true;
                    Type type2 = Type.String;
                    if (!typeCheck.identicalTo(type2)) {
                        this._select = new CastExpr(this._select, type2);
                    }
                    this._isString = true;
                }
            }
        }
        return Type.Void;
    }
}
