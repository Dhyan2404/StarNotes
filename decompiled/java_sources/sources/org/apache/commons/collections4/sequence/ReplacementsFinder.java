package org.apache.commons.collections4.sequence;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes11.dex */
public class ReplacementsFinder<T> implements CommandVisitor<T> {

    /* renamed from: a */
    public final List<T> f105288a = new ArrayList();

    /* renamed from: b */
    public final List<T> f105289b = new ArrayList();

    /* renamed from: c */
    public int f105290c = 0;

    /* renamed from: d */
    public final ReplacementsHandler<T> f105291d;

    public ReplacementsFinder(ReplacementsHandler<T> replacementsHandler) {
        this.f105291d = replacementsHandler;
    }

    @Override // org.apache.commons.collections4.sequence.CommandVisitor
    public void visitDeleteCommand(T t) {
        this.f105289b.add(t);
    }

    @Override // org.apache.commons.collections4.sequence.CommandVisitor
    public void visitInsertCommand(T t) {
        this.f105288a.add(t);
    }

    @Override // org.apache.commons.collections4.sequence.CommandVisitor
    public void visitKeepCommand(T t) {
        if (this.f105289b.isEmpty() && this.f105288a.isEmpty()) {
            this.f105290c++;
            return;
        }
        this.f105291d.handleReplacement(this.f105290c, this.f105289b, this.f105288a);
        this.f105289b.clear();
        this.f105288a.clear();
        this.f105290c = 1;
    }
}
