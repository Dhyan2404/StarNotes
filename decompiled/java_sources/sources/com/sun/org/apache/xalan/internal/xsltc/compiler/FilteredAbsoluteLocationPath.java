package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;

/* loaded from: classes10.dex */
final class FilteredAbsoluteLocationPath extends Expression {
    private Expression _path;

    public FilteredAbsoluteLocationPath() {
        this._path = null;
    }

    public Expression getPath() {
        return this._path;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void setParser(Parser parser) {
        super.setParser(parser);
        Expression expression = this._path;
        if (expression != null) {
            expression.setParser(parser);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FilteredAbsoluteLocationPath(");
        Expression expression = this._path;
        sb.append(expression != null ? expression.toString() : "null");
        sb.append(')');
        return sb.toString();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (this._path == null) {
            int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getIterator", "()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;");
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 1));
            return;
        }
        int addMethodref = constantPool.addMethodref(Constants.DUP_FILTERED_ITERATOR, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V");
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("filtered_absolute_location_path_tmp", Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), instructionList.getEnd(), null);
        this._path.translate(classGenerator, methodGenerator);
        instructionList.append(new ASTORE(addLocalVariable.getIndex()));
        instructionList.append(new NEW(constantPool.addClass(Constants.DUP_FILTERED_ITERATOR)));
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(new ALOAD(addLocalVariable.getIndex()));
        instructionList.append(new INVOKESPECIAL(addMethodref));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Expression expression = this._path;
        if (expression != null && (expression.typeCheck(symbolTable) instanceof NodeType)) {
            this._path = new CastExpr(this._path, Type.NodeSet);
        }
        Type type = Type.NodeSet;
        this._type = type;
        return type;
    }

    public FilteredAbsoluteLocationPath(Expression expression) {
        this._path = expression;
        if (expression != null) {
            expression.setParent(this);
        }
    }
}
