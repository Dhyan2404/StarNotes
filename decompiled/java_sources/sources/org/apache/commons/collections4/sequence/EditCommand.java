package org.apache.commons.collections4.sequence;

/* loaded from: classes11.dex */
public abstract class EditCommand<T> {

    /* renamed from: a */
    public final T f105284a;

    public EditCommand(T t) {
        this.f105284a = t;
    }

    public abstract void accept(CommandVisitor<T> commandVisitor);

    public T getObject() {
        return this.f105284a;
    }
}
