package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ReferenceType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import com.sun.org.apache.xml.internal.utils.XML11Char;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class WithParam extends Instruction {
    private boolean _doParameterOptimization = false;
    protected String _escapedName;
    private QName _name;
    private Expression _select;

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void display(int i) {
        indent(i);
        Util.println("with-param " + this._name);
        if (this._select != null) {
            indent(i + 4);
            Util.println("select " + this._select.toString());
        }
        displayContents(i + 4);
    }

    public String getEscapedName() {
        return this._escapedName;
    }

    public QName getName() {
        return this._name;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        String attribute = getAttribute("name");
        if (attribute.length() > 0) {
            if (!XML11Char.isXML11ValidQName(attribute)) {
                parser.reportError(3, new ErrorMsg("INVALID_QNAME_ERR", (Object) attribute, (SyntaxTreeNode) this));
            }
            setName(parser.getQNameIgnoreDefaultNs(attribute));
        } else {
            reportError(this, parser, ErrorMsg.REQUIRED_ATTR_ERR, "name");
        }
        if (getAttribute("select").length() > 0) {
            this._select = parser.parseExpression(this, "select", null);
        }
        parseChildren(parser);
    }

    public void setDoParameterOptimization(boolean z) {
        this._doParameterOptimization = z;
    }

    public void setName(QName qName) {
        this._name = qName;
        this._escapedName = Util.escape(qName.getStringRep());
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (this._doParameterOptimization) {
            translateValue(classGenerator, methodGenerator);
            return;
        }
        String escape = Util.escape(getEscapedName());
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new PUSH(constantPool, escape));
        translateValue(classGenerator, methodGenerator);
        instructionList.append(new PUSH(constantPool, false));
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.TRANSLET_CLASS, Constants.ADD_PARAMETER, Constants.ADD_PARAMETER_SIG)));
        instructionList.append(InstructionConstants.POP);
    }

    public void translateValue(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        Expression expression = this._select;
        if (expression != null) {
            expression.translate(classGenerator, methodGenerator);
            this._select.startIterator(classGenerator, methodGenerator);
        } else if (hasContents()) {
            compileResultTree(classGenerator, methodGenerator);
        } else {
            methodGenerator.getInstructionList().append(new PUSH(classGenerator.getConstantPool(), ""));
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Expression expression = this._select;
        if (expression == null) {
            typeCheckContents(symbolTable);
        } else if (!(expression.typeCheck(symbolTable) instanceof ReferenceType)) {
            this._select = new CastExpr(this._select, Type.Reference);
        }
        return Type.Void;
    }
}
