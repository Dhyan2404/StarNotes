package org.apache.http.config;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public final class RegistryBuilder<I> {

    /* renamed from: a */
    public final Map<String, I> f110264a = new HashMap();

    public static <I> RegistryBuilder<I> create() {
        return new RegistryBuilder<>();
    }

    public Registry<I> build() {
        return new Registry<>(this.f110264a);
    }

    public RegistryBuilder<I> register(String str, I i) {
        Args.notEmpty(str, "ID");
        Args.notNull(i, "Item");
        this.f110264a.put(str.toLowerCase(Locale.ROOT), i);
        return this;
    }

    public String toString() {
        return this.f110264a.toString();
    }
}
