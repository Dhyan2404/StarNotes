package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeSetType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ReferenceType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class FilterParentPath extends Expression {
    private Expression _filterExpr;
    private boolean _hasDescendantAxis = false;
    private Expression _path;

    public FilterParentPath(Expression expression, Expression expression2) {
        this._path = expression2;
        expression2.setParent(this);
        this._filterExpr = expression;
        expression.setParent(this);
    }

    public void setDescendantAxis() {
        this._hasDescendantAxis = true;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void setParser(Parser parser) {
        super.setParser(parser);
        this._filterExpr.setParser(parser);
        this._path.setParser(parser);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        return "FilterParentPath(" + this._filterExpr + ", " + this._path + ')';
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        int addMethodref = constantPool.addMethodref(Constants.STEP_ITERATOR_CLASS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V");
        this._filterExpr.translate(classGenerator, methodGenerator);
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("filter_parent_path_tmp1", Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), instructionList.getEnd(), null);
        instructionList.append(new ASTORE(addLocalVariable.getIndex()));
        this._path.translate(classGenerator, methodGenerator);
        LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable("filter_parent_path_tmp2", Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), instructionList.getEnd(), null);
        instructionList.append(new ASTORE(addLocalVariable2.getIndex()));
        instructionList.append(new NEW(constantPool.addClass(Constants.STEP_ITERATOR_CLASS)));
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(new ALOAD(addLocalVariable.getIndex()));
        instructionList.append(new ALOAD(addLocalVariable2.getIndex()));
        instructionList.append(new INVOKESPECIAL(addMethodref));
        if (this._hasDescendantAxis) {
            instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.NODE_ITERATOR_BASE, "includeSelf", "()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;")));
        }
        if ((getParent() instanceof RelativeLocationPath) || (getParent() instanceof FilterParentPath)) {
            return;
        }
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, Constants.ORDER_ITERATOR, Constants.ORDER_ITERATOR_SIG);
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(InstructionConstants.SWAP);
        instructionList.append(methodGenerator.loadContextNode());
        instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 3));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Type typeCheck = this._filterExpr.typeCheck(symbolTable);
        if (!(typeCheck instanceof NodeSetType)) {
            if (typeCheck instanceof ReferenceType) {
                this._filterExpr = new CastExpr(this._filterExpr, Type.NodeSet);
            } else {
                if (!(typeCheck instanceof NodeType)) {
                    throw new TypeCheckError(this);
                }
                this._filterExpr = new CastExpr(this._filterExpr, Type.NodeSet);
            }
        }
        if (!(this._path.typeCheck(symbolTable) instanceof NodeSetType)) {
            this._path = new CastExpr(this._path, Type.NodeSet);
        }
        Type type = Type.NodeSet;
        this._type = type;
        return type;
    }
}
