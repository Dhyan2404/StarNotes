package org.apache.commons.math3.linear;

import org.apache.commons.math3.FieldElement;

/* loaded from: classes12.dex */
public class DefaultFieldMatrixPreservingVisitor<T extends FieldElement<T>> implements FieldMatrixPreservingVisitor<T> {

    /* renamed from: a */
    public final T f108473a;

    public DefaultFieldMatrixPreservingVisitor(T t) {
        this.f108473a = t;
    }

    @Override // org.apache.commons.math3.linear.FieldMatrixPreservingVisitor
    public T end() {
        return this.f108473a;
    }

    @Override // org.apache.commons.math3.linear.FieldMatrixPreservingVisitor
    public void start(int i, int i2, int i3, int i4, int i5, int i6) {
    }

    @Override // org.apache.commons.math3.linear.FieldMatrixPreservingVisitor
    public void visit(int i, int i2, T t) {
    }
}
