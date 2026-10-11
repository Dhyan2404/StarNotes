package com.sunia.HTREnginev2;

import com.google.protobuf.AbstractC6873j;
import com.google.protobuf.C6875l;

@htd
/* loaded from: classes6.dex */
public final class m5g {

    /* renamed from: a */
    public static final AbstractC6873j<?> f77201a = new C6875l();

    /* renamed from: b */
    public static final AbstractC6873j<?> f77202b = m55545c();

    /* renamed from: a */
    public static AbstractC6873j<?> m55543a() {
        AbstractC6873j<?> abstractC6873j = f77202b;
        if (abstractC6873j != null) {
            return abstractC6873j;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* renamed from: b */
    public static AbstractC6873j<?> m55544b() {
        return f77201a;
    }

    /* renamed from: c */
    public static AbstractC6873j<?> m55545c() {
        try {
            return (AbstractC6873j) Class.forName("com.google.protobuf.k").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
