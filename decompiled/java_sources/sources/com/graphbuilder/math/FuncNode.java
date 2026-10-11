package com.graphbuilder.math;

import com.graphbuilder.struc.Bag;

/* loaded from: classes4.dex */
public class FuncNode extends TermNode {

    /* renamed from: a */
    public Bag f38859a;

    /* renamed from: b */
    public double[] f38860b;

    public FuncNode(String str, boolean z) {
        super(str, z);
        this.f38859a = new Bag(1);
        this.f38860b = new double[1];
    }

    public void add(Expression expression) {
        insert(expression, this.f38859a.size());
    }

    public Expression child(int i) {
        return (Expression) this.f38859a.get(i);
    }

    @Override // com.graphbuilder.math.Expression
    public double eval(VarMap varMap, FuncMap funcMap) {
        int size = this.f38859a.size();
        for (int i = 0; i < size; i++) {
            this.f38860b[i] = child(i).eval(varMap, funcMap);
        }
        double mo30860of = funcMap.getFunction(this.name, size).mo30860of(this.f38860b, size);
        return this.negate ? -mo30860of : mo30860of;
    }

    public void insert(Expression expression, int i) {
        checkBeforeAccept(expression);
        int capacity = this.f38859a.getCapacity();
        this.f38859a.insert(expression, i);
        int capacity2 = this.f38859a.getCapacity();
        if (capacity != capacity2) {
            this.f38860b = new double[capacity2];
        }
        expression.parent = this;
    }

    public int numChildren() {
        return this.f38859a.size();
    }

    public void remove(Expression expression) {
        int size = this.f38859a.size();
        this.f38859a.remove(expression);
        if (size != this.f38859a.size()) {
            expression.parent = null;
        }
    }
}
