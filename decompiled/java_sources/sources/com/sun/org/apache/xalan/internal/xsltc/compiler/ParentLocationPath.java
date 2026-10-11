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
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class ParentLocationPath extends RelativeLocationPath {
    private boolean _axisMismatch;
    private boolean _orderNodes = false;
    private final RelativeLocationPath _path;
    private Expression _step;
    private Type stype;

    public ParentLocationPath(RelativeLocationPath relativeLocationPath, Expression expression) {
        this._axisMismatch = false;
        this._path = relativeLocationPath;
        this._step = expression;
        relativeLocationPath.setParent(this);
        this._step.setParent(this);
        if (this._step instanceof Step) {
            this._axisMismatch = checkAxisMismatch();
        }
    }

    public boolean checkAxisMismatch() {
        int axis = this._path.getAxis();
        int axis2 = ((Step) this._step).getAxis();
        if (((axis == 0 || axis == 1) && (axis2 == 3 || axis2 == 4 || axis2 == 5 || axis2 == 10 || axis2 == 11 || axis2 == 12)) || ((axis == 3 && axis2 == 0) || axis2 == 1 || axis2 == 10 || axis2 == 11 || axis == 4 || axis == 5 || (((axis == 6 || axis == 7) && (axis2 == 6 || axis2 == 10 || axis2 == 11 || axis2 == 12)) || ((axis == 11 || axis == 12) && (axis2 == 4 || axis2 == 5 || axis2 == 6 || axis2 == 7 || axis2 == 10 || axis2 == 11 || axis2 == 12))))) {
            return true;
        }
        if (axis2 != 6 || axis != 3) {
            return false;
        }
        RelativeLocationPath relativeLocationPath = this._path;
        return (relativeLocationPath instanceof Step) && ((Step) relativeLocationPath).getNodeType() == 2;
    }

    public void enableNodeOrdering() {
        SyntaxTreeNode parent = getParent();
        if (parent instanceof ParentLocationPath) {
            ((ParentLocationPath) parent).enableNodeOrdering();
        } else {
            this._orderNodes = true;
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.RelativeLocationPath
    public int getAxis() {
        return this._path.getAxis();
    }

    public RelativeLocationPath getPath() {
        return this._path;
    }

    public Expression getStep() {
        return this._step;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.RelativeLocationPath
    public void setAxis(int i) {
        this._path.setAxis(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void setParser(Parser parser) {
        super.setParser(parser);
        this._step.setParser(parser);
        this._path.setParser(parser);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        return "ParentLocationPath(" + this._path + ", " + this._step + ')';
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        this._path.translate(classGenerator, methodGenerator);
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("parent_location_path_tmp1", Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), instructionList.getEnd(), null);
        instructionList.append(new ASTORE(addLocalVariable.getIndex()));
        this._step.translate(classGenerator, methodGenerator);
        LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable("parent_location_path_tmp2", Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), instructionList.getEnd(), null);
        instructionList.append(new ASTORE(addLocalVariable2.getIndex()));
        int addMethodref = constantPool.addMethodref(Constants.STEP_ITERATOR_CLASS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V");
        instructionList.append(new NEW(constantPool.addClass(Constants.STEP_ITERATOR_CLASS)));
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(new ALOAD(addLocalVariable.getIndex()));
        instructionList.append(new ALOAD(addLocalVariable2.getIndex()));
        instructionList.append(new INVOKESPECIAL(addMethodref));
        Expression expression = this._step;
        if (expression instanceof ParentLocationPath) {
            expression = ((ParentLocationPath) expression).getStep();
        }
        RelativeLocationPath relativeLocationPath = this._path;
        if ((relativeLocationPath instanceof Step) && (expression instanceof Step)) {
            int axis = ((Step) relativeLocationPath).getAxis();
            int axis2 = ((Step) expression).getAxis();
            if ((axis == 5 && axis2 == 3) || (axis == 11 && axis2 == 10)) {
                instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.NODE_ITERATOR_BASE, "includeSelf", "()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;")));
            }
        }
        if (this._orderNodes) {
            int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, Constants.ORDER_ITERATOR, Constants.ORDER_ITERATOR_SIG);
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(InstructionConstants.SWAP);
            instructionList.append(methodGenerator.loadContextNode());
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 3));
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        this.stype = this._step.typeCheck(symbolTable);
        this._path.typeCheck(symbolTable);
        if (this._axisMismatch) {
            enableNodeOrdering();
        }
        Type type = Type.NodeSet;
        this._type = type;
        return type;
    }
}
