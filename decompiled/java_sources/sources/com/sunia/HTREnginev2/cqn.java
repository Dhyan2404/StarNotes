package com.sunia.HTREnginev2;

import java.util.Objects;
import onyx.org.apache.commons.io.function.IOFunction;
import onyx.org.apache.commons.io.function.IOTriFunction;
import onyx.org.apache.commons.io.function.Uncheck;
import onyx.org.apache.commons.io.output.UncheckedAppendable;

/* loaded from: classes11.dex */
public final class cqn implements UncheckedAppendable {

    /* renamed from: e */
    public final Appendable f67089e;

    public cqn(Appendable appendable) {
        Objects.requireNonNull(appendable, "appendable");
        this.f67089e = appendable;
    }

    public String toString() {
        return this.f67089e.toString();
    }

    @Override // onyx.org.apache.commons.io.output.UncheckedAppendable, java.lang.Appendable
    public UncheckedAppendable append(char c) {
        final Appendable appendable = this.f67089e;
        appendable.getClass();
        Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.bqn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return appendable.append(((Character) obj).charValue());
            }
        }, Character.valueOf(c));
        return this;
    }

    @Override // onyx.org.apache.commons.io.output.UncheckedAppendable, java.lang.Appendable
    public UncheckedAppendable append(CharSequence charSequence) {
        final Appendable appendable = this.f67089e;
        appendable.getClass();
        Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.aqn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return appendable.append((CharSequence) obj);
            }
        }, charSequence);
        return this;
    }

    @Override // onyx.org.apache.commons.io.output.UncheckedAppendable, java.lang.Appendable
    public UncheckedAppendable append(CharSequence charSequence, int i, int i2) {
        final Appendable appendable = this.f67089e;
        appendable.getClass();
        Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.zpn
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return appendable.append((CharSequence) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
            }
        }, charSequence, Integer.valueOf(i), Integer.valueOf(i2));
        return this;
    }
}
