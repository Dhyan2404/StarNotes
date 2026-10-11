package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.CHECKCAST;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.ICONST;
import com.sun.org.apache.bcel.internal.generic.ILOAD;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.ISTORE;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import com.sun.org.apache.xml.internal.dtm.Axis;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class Step extends RelativeLocationPath {
    private int _axis;
    private boolean _hadPredicates = false;
    private int _nodeType;
    private Vector _predicates;

    public Step(int i, int i2, Vector vector) {
        this._axis = i;
        this._nodeType = i2;
        this._predicates = vector;
    }

    private boolean hasParentLocationPath() {
        return getParent() instanceof ParentLocationPath;
    }

    private boolean hasParentPattern() {
        SyntaxTreeNode parent = getParent();
        return (parent instanceof ParentPattern) || (parent instanceof ParentLocationPath) || (parent instanceof UnionPathExpr) || (parent instanceof FilterParentPath);
    }

    private boolean hasPredicates() {
        Vector vector = this._predicates;
        return vector != null && vector.size() > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.sun.org.apache.xalan.internal.xsltc.compiler.Step] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode] */
    private boolean isPredicate() {
        while (this != 0) {
            this = this.getParent();
            if (this instanceof Predicate) {
                return true;
            }
        }
        return false;
    }

    public void addPredicates(Vector vector) {
        Vector vector2 = this._predicates;
        if (vector2 == null) {
            this._predicates = vector;
        } else {
            vector2.addAll(vector);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.RelativeLocationPath
    public int getAxis() {
        return this._axis;
    }

    public int getNodeType() {
        return this._nodeType;
    }

    public Vector getPredicates() {
        return this._predicates;
    }

    public boolean isAbbreviatedDDot() {
        return this._nodeType == -1 && this._axis == 10;
    }

    public boolean isAbbreviatedDot() {
        return this._nodeType == -1 && this._axis == 13;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.RelativeLocationPath
    public void setAxis(int i) {
        this._axis = i;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void setParser(Parser parser) {
        super.setParser(parser);
        Vector vector = this._predicates;
        if (vector != null) {
            int size = vector.size();
            for (int i = 0; i < size; i++) {
                Predicate predicate = (Predicate) this._predicates.elementAt(i);
                predicate.setParser(parser);
                predicate.setParent(this);
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("step(\"");
        stringBuffer.append(Axis.getNames(this._axis));
        stringBuffer.append("\", ");
        stringBuffer.append(this._nodeType);
        Vector vector = this._predicates;
        if (vector != null) {
            int size = vector.size();
            for (int i = 0; i < size; i++) {
                Predicate predicate = (Predicate) this._predicates.elementAt(i);
                stringBuffer.append(", ");
                stringBuffer.append(predicate.toString());
            }
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        String str;
        int i;
        int i2;
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (hasPredicates()) {
            translatePredicates(classGenerator, methodGenerator);
            return;
        }
        XSLTC xsltc = getParser().getXSLTC();
        if (this._nodeType >= 14) {
            str = (String) xsltc.getNamesIndex().elementAt(this._nodeType - 14);
            i = str.lastIndexOf(42);
        } else {
            str = null;
            i = 0;
        }
        if (this._axis == 2 && (i2 = this._nodeType) != 2 && i2 != -1 && !hasParentPattern() && i == 0) {
            int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getTypedAxisIterator", "(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;");
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(new PUSH(constantPool, 2));
            instructionList.append(new PUSH(constantPool, this._nodeType));
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 3));
            return;
        }
        SyntaxTreeNode parent = getParent();
        if (isAbbreviatedDot()) {
            if (this._type == Type.Node) {
                instructionList.append(methodGenerator.loadContextNode());
                return;
            }
            if (!(parent instanceof ParentLocationPath)) {
                int addInterfaceMethodref2 = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getAxisIterator", "(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;");
                instructionList.append(methodGenerator.loadDOM());
                instructionList.append(new PUSH(constantPool, this._axis));
                instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref2, 2));
                return;
            }
            int addMethodref = constantPool.addMethodref(Constants.SINGLETON_ITERATOR, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(I)V");
            instructionList.append(new NEW(constantPool.addClass(Constants.SINGLETON_ITERATOR)));
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(methodGenerator.loadContextNode());
            instructionList.append(new INVOKESPECIAL(addMethodref));
            return;
        }
        if ((parent instanceof ParentLocationPath) && (parent.getParent() instanceof ParentLocationPath) && this._nodeType == 1 && !this._hadPredicates) {
            this._nodeType = -1;
        }
        int i3 = this._nodeType;
        if (i3 != -1) {
            if (i3 != 1) {
                if (i3 == 2) {
                    this._axis = 2;
                } else if (i > 1) {
                    int registerNamespace = xsltc.registerNamespace(this._axis == 2 ? str.substring(0, i - 2) : str.substring(0, i - 1));
                    int addInterfaceMethodref3 = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getNamespaceAxisIterator", "(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;");
                    instructionList.append(methodGenerator.loadDOM());
                    instructionList.append(new PUSH(constantPool, this._axis));
                    instructionList.append(new PUSH(constantPool, registerNamespace));
                    instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref3, 3));
                    return;
                }
            }
            int addInterfaceMethodref4 = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getTypedAxisIterator", "(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;");
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(new PUSH(constantPool, this._axis));
            instructionList.append(new PUSH(constantPool, this._nodeType));
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref4, 3));
            return;
        }
        int addInterfaceMethodref5 = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getAxisIterator", "(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;");
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(new PUSH(constantPool, this._axis));
        instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref5, 2));
    }

    public void translatePredicates(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (this._predicates.size() == 0) {
            translate(classGenerator, methodGenerator);
            return;
        }
        Predicate predicate = (Predicate) this._predicates.lastElement();
        this._predicates.remove(predicate);
        if (predicate.isNodeValueTest()) {
            Step step = predicate.getStep();
            instructionList.append(methodGenerator.loadDOM());
            if (step.isAbbreviatedDot()) {
                translate(classGenerator, methodGenerator);
                instructionList.append(new ICONST(0));
            } else {
                ParentLocationPath parentLocationPath = new ParentLocationPath(this, step);
                step._parent = parentLocationPath;
                this._parent = parentLocationPath;
                try {
                    parentLocationPath.typeCheck(getParser().getSymbolTable());
                } catch (TypeCheckError unused) {
                }
                parentLocationPath.translate(classGenerator, methodGenerator);
                instructionList.append(new ICONST(1));
            }
            predicate.translate(classGenerator, methodGenerator);
            instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.DOM_INTF, Constants.GET_NODE_VALUE_ITERATOR, Constants.GET_NODE_VALUE_ITERATOR_SIG), 5));
            return;
        }
        if (predicate.isNthDescendant()) {
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(new ICONST(predicate.getPosType()));
            predicate.translate(classGenerator, methodGenerator);
            instructionList.append(new ICONST(0));
            instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getNthDescendant", "(IIZ)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), 4));
            return;
        }
        if (predicate.isNthPositionFilter()) {
            int addMethodref = constantPool.addMethodref(Constants.NTH_ITERATOR_CLASS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)V");
            translatePredicates(classGenerator, methodGenerator);
            LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("step_tmp1", Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), instructionList.getEnd(), null);
            instructionList.append(new ASTORE(addLocalVariable.getIndex()));
            predicate.translate(classGenerator, methodGenerator);
            LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable("step_tmp2", Util.getJCRefType("I"), instructionList.getEnd(), null);
            instructionList.append(new ISTORE(addLocalVariable2.getIndex()));
            instructionList.append(new NEW(constantPool.addClass(Constants.NTH_ITERATOR_CLASS)));
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(new ALOAD(addLocalVariable.getIndex()));
            instructionList.append(new ILOAD(addLocalVariable2.getIndex()));
            instructionList.append(new INVOKESPECIAL(addMethodref));
            return;
        }
        int addMethodref2 = constantPool.addMethodref(Constants.CURRENT_NODE_LIST_ITERATOR, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListFilter;ILcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)V");
        translatePredicates(classGenerator, methodGenerator);
        LocalVariableGen addLocalVariable3 = methodGenerator.addLocalVariable("step_tmp1", Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), instructionList.getEnd(), null);
        instructionList.append(new ASTORE(addLocalVariable3.getIndex()));
        predicate.translateFilter(classGenerator, methodGenerator);
        LocalVariableGen addLocalVariable4 = methodGenerator.addLocalVariable("step_tmp2", Util.getJCRefType(Constants.CURRENT_NODE_LIST_FILTER_SIG), instructionList.getEnd(), null);
        instructionList.append(new ASTORE(addLocalVariable4.getIndex()));
        instructionList.append(new NEW(constantPool.addClass(Constants.CURRENT_NODE_LIST_ITERATOR)));
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(new ALOAD(addLocalVariable3.getIndex()));
        instructionList.append(new ALOAD(addLocalVariable4.getIndex()));
        instructionList.append(methodGenerator.loadCurrentNode());
        instructionList.append(classGenerator.loadTranslet());
        if (classGenerator.isExternal()) {
            instructionList.append(new CHECKCAST(constantPool.addClass(classGenerator.getClassName())));
        }
        instructionList.append(new INVOKESPECIAL(addMethodref2));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        this._hadPredicates = hasPredicates();
        if (isAbbreviatedDot()) {
            this._type = (hasParentPattern() || hasPredicates() || hasParentLocationPath()) ? Type.NodeSet : Type.Node;
        } else {
            this._type = Type.NodeSet;
        }
        Vector vector = this._predicates;
        if (vector != null) {
            int size = vector.size();
            for (int i = 0; i < size; i++) {
                ((Expression) this._predicates.elementAt(i)).typeCheck(symbolTable);
            }
        }
        return this._type;
    }
}
