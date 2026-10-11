package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.onyx.android.sdk.base.data.Operators;
import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.GOTO;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class LogicalExpr extends Expression {
    public static final int AND = 1;

    /* renamed from: OR */
    public static final int f64094OR = 0;
    private static final String[] Ops = {Operators.OR, Operators.AND};
    private Expression _left;
    private final int _op;
    private Expression _right;

    public LogicalExpr(int i, Expression expression, Expression expression2) {
        this._op = i;
        this._left = expression;
        expression.setParent(this);
        this._right = expression2;
        expression2.setParent(this);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public Object evaluateAtCompileTime() {
        Object evaluateAtCompileTime = this._left.evaluateAtCompileTime();
        Object evaluateAtCompileTime2 = this._right.evaluateAtCompileTime();
        if (evaluateAtCompileTime == null || evaluateAtCompileTime2 == null) {
            return null;
        }
        if (this._op == 1) {
            Boolean bool = Boolean.TRUE;
            return (evaluateAtCompileTime == bool && evaluateAtCompileTime2 == bool) ? bool : Boolean.FALSE;
        }
        Boolean bool2 = Boolean.TRUE;
        return (evaluateAtCompileTime == bool2 || evaluateAtCompileTime2 == bool2) ? bool2 : Boolean.FALSE;
    }

    public int getOp() {
        return this._op;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public boolean hasLastCall() {
        return this._left.hasLastCall() || this._right.hasLastCall();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public boolean hasPositionCall() {
        return this._left.hasPositionCall() || this._right.hasPositionCall();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void setParser(Parser parser) {
        super.setParser(parser);
        this._left.setParser(parser);
        this._right.setParser(parser);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        return Ops[this._op] + '(' + this._left + ", " + this._right + ')';
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        translateDesynthesized(classGenerator, methodGenerator);
        synthesize(classGenerator, methodGenerator);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public void translateDesynthesized(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        InstructionList instructionList = methodGenerator.getInstructionList();
        getParent();
        if (this._op != 1) {
            this._left.translateDesynthesized(classGenerator, methodGenerator);
            BranchHandle append = instructionList.append((BranchInstruction) new GOTO(null));
            this._right.translateDesynthesized(classGenerator, methodGenerator);
            this._left._trueList.backPatch(append);
            this._left._falseList.backPatch(append.getNext());
            this._falseList.append(this._right._falseList);
            this._trueList.add(append).append(this._right._trueList);
            return;
        }
        this._left.translateDesynthesized(classGenerator, methodGenerator);
        com.sun.org.apache.bcel.internal.generic.Instruction instruction = InstructionConstants.NOP;
        InstructionHandle append2 = instructionList.append(instruction);
        this._right.translateDesynthesized(classGenerator, methodGenerator);
        InstructionHandle append3 = instructionList.append(instruction);
        this._falseList.append(this._right._falseList.append(this._left._falseList));
        Expression expression = this._left;
        if ((expression instanceof LogicalExpr) && ((LogicalExpr) expression).getOp() == 0) {
            this._left.backPatchTrueList(append2);
        } else {
            Expression expression2 = this._left;
            if (expression2 instanceof NotCall) {
                expression2.backPatchTrueList(append2);
            } else {
                this._trueList.append(expression2._trueList);
            }
        }
        Expression expression3 = this._right;
        if ((expression3 instanceof LogicalExpr) && ((LogicalExpr) expression3).getOp() == 0) {
            this._right.backPatchTrueList(append3);
            return;
        }
        Expression expression4 = this._right;
        if (expression4 instanceof NotCall) {
            expression4.backPatchTrueList(append3);
        } else {
            this._trueList.append(expression4._trueList);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Type typeCheck = this._left.typeCheck(symbolTable);
        Type typeCheck2 = this._right.typeCheck(symbolTable);
        MethodType lookupPrimop = lookupPrimop(symbolTable, Ops[this._op], new MethodType(Type.Void, typeCheck, typeCheck2));
        if (lookupPrimop == null) {
            throw new TypeCheckError(this);
        }
        Type type = (Type) lookupPrimop.argsType().elementAt(0);
        if (!type.identicalTo(typeCheck)) {
            this._left = new CastExpr(this._left, type);
        }
        if (!((Type) lookupPrimop.argsType().elementAt(1)).identicalTo(typeCheck2)) {
            this._right = new CastExpr(this._right, type);
        }
        Type resultType = lookupPrimop.resultType();
        this._type = resultType;
        return resultType;
    }
}
