package org.apache.commons.text.diff;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes12.dex */
public class ReplacementsFinder<T> implements CommandVisitor<T> {

    /* renamed from: a */
    public final List<T> f110026a = new ArrayList();

    /* renamed from: b */
    public final List<T> f110027b = new ArrayList();

    /* renamed from: c */
    public int f110028c = 0;

    /* renamed from: d */
    public final ReplacementsHandler<T> f110029d;

    public ReplacementsFinder(ReplacementsHandler<T> replacementsHandler) {
        this.f110029d = replacementsHandler;
    }

    @Override // org.apache.commons.text.diff.CommandVisitor
    public void visitDeleteCommand(T t) {
        this.f110027b.add(t);
    }

    @Override // org.apache.commons.text.diff.CommandVisitor
    public void visitInsertCommand(T t) {
        this.f110026a.add(t);
    }

    @Override // org.apache.commons.text.diff.CommandVisitor
    public void visitKeepCommand(T t) {
        if (this.f110027b.isEmpty() && this.f110026a.isEmpty()) {
            this.f110028c++;
            return;
        }
        this.f110029d.handleReplacement(this.f110028c, this.f110027b, this.f110026a);
        this.f110027b.clear();
        this.f110026a.clear();
        this.f110028c = 1;
    }
}
