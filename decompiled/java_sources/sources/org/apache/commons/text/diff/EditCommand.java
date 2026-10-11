package org.apache.commons.text.diff;

/* loaded from: classes12.dex */
public abstract class EditCommand<T> {

    /* renamed from: a */
    public final T f110022a;

    public EditCommand(T t) {
        this.f110022a = t;
    }

    public abstract void accept(CommandVisitor<T> commandVisitor);

    public T getObject() {
        return this.f110022a;
    }
}
