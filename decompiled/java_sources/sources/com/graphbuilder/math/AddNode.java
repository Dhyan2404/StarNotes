package com.graphbuilder.math;

/* loaded from: classes4.dex */
public class AddNode extends OpNode {
    public AddNode(Expression expression, Expression expression2) {
        super(expression, expression2);
    }

    @Override // com.graphbuilder.math.Expression
    public double eval(VarMap varMap, FuncMap funcMap) {
        return this.leftChild.eval(varMap, funcMap) + this.rightChild.eval(varMap, funcMap);
    }

    @Override // com.graphbuilder.math.OpNode
    public String getSymbol() {
        return "+";
    }
}
