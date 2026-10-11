package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeSetType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ReferenceType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class FilterExpr extends Expression {
    private final Vector _predicates;
    private Expression _primary;

    public FilterExpr(Expression expression, Vector vector) {
        this._primary = expression;
        this._predicates = vector;
        expression.setParent(this);
    }

    public Expression getExpr() {
        Expression expression = this._primary;
        return expression instanceof CastExpr ? ((CastExpr) expression).getExpr() : expression;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void setParser(Parser parser) {
        super.setParser(parser);
        this._primary.setParser(parser);
        Vector vector = this._predicates;
        if (vector != null) {
            int size = vector.size();
            for (int i = 0; i < size; i++) {
                Expression expression = (Expression) this._predicates.elementAt(i);
                expression.setParser(parser);
                expression.setParent(this);
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        return "filter-expr(" + this._primary + ", " + this._predicates + MotionUtils.f31762d;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        if (this._predicates.size() > 0) {
            translatePredicates(classGenerator, methodGenerator);
        } else {
            this._primary.translate(classGenerator, methodGenerator);
        }
    }

    public void translatePredicates(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (this._predicates.size() == 0) {
            translate(classGenerator, methodGenerator);
            return;
        }
        int addMethodref = constantPool.addMethodref(Constants.CURRENT_NODE_LIST_ITERATOR, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ZLcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListFilter;ILcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)V");
        Predicate predicate = (Predicate) this._predicates.lastElement();
        this._predicates.remove(predicate);
        translatePredicates(classGenerator, methodGenerator);
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("filter_expr_tmp1", Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), instructionList.getEnd(), null);
        instructionList.append(new ASTORE(addLocalVariable.getIndex()));
        predicate.translate(classGenerator, methodGenerator);
        LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable("filter_expr_tmp2", Util.getJCRefType(Constants.CURRENT_NODE_LIST_FILTER_SIG), instructionList.getEnd(), null);
        instructionList.append(new ASTORE(addLocalVariable2.getIndex()));
        instructionList.append(new NEW(constantPool.addClass(Constants.CURRENT_NODE_LIST_ITERATOR)));
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(new ALOAD(addLocalVariable.getIndex()));
        instructionList.append(InstructionConstants.ICONST_1);
        instructionList.append(new ALOAD(addLocalVariable2.getIndex()));
        instructionList.append(methodGenerator.loadCurrentNode());
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new INVOKESPECIAL(addMethodref));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Type typeCheck = this._primary.typeCheck(symbolTable);
        if (!(typeCheck instanceof NodeSetType)) {
            if (!(typeCheck instanceof ReferenceType)) {
                throw new TypeCheckError(this);
            }
            this._primary = new CastExpr(this._primary, Type.NodeSet);
        }
        int size = this._predicates.size();
        for (int i = 0; i < size; i++) {
            Predicate predicate = (Predicate) this._predicates.elementAt(i);
            predicate.dontOptimize();
            predicate.typeCheck(symbolTable);
        }
        Type type = Type.NodeSet;
        this._type = type;
        return type;
    }
}
