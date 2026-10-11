package com.graphbuilder.math;

/* loaded from: classes4.dex */
public class VarNode extends TermNode {
    public VarNode(String str, boolean z) {
        super(str, z);
    }

    @Override // com.graphbuilder.math.Expression
    public double eval(VarMap varMap, FuncMap funcMap) {
        double value = varMap.getValue(this.name);
        return this.negate ? -value : value;
    }
}
