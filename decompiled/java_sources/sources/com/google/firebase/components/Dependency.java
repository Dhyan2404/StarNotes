package com.google.firebase.components;

import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;

/* loaded from: classes6.dex */
public final class Dependency {

    /* renamed from: a */
    public final Qualified<?> f35827a;

    /* renamed from: b */
    public final int f35828b;

    /* renamed from: c */
    public final int f35829c;

    public Dependency(Class<?> cls, int i, int i2) {
        this((Qualified<?>) Qualified.unqualified(cls), i, i2);
    }

    /* renamed from: a */
    public static String m28050a(int i) {
        if (i == 0) {
            return DevicePublicKeyStringDef.DIRECT;
        }
        if (i == 1) {
            return CouchFieldKey.KEY_PROVIDER;
        }
        if (i == 2) {
            return "deferred";
        }
        throw new AssertionError("Unsupported injection: " + i);
    }

    public static Dependency deferred(Class<?> cls) {
        return new Dependency(cls, 0, 2);
    }

    @Deprecated
    public static Dependency optional(Class<?> cls) {
        return new Dependency(cls, 0, 0);
    }

    public static Dependency optionalProvider(Class<?> cls) {
        return new Dependency(cls, 0, 1);
    }

    public static Dependency required(Class<?> cls) {
        return new Dependency(cls, 1, 0);
    }

    public static Dependency requiredProvider(Class<?> cls) {
        return new Dependency(cls, 1, 1);
    }

    public static Dependency setOf(Class<?> cls) {
        return new Dependency(cls, 2, 0);
    }

    public static Dependency setOfProvider(Class<?> cls) {
        return new Dependency(cls, 2, 1);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Dependency)) {
            return false;
        }
        Dependency dependency = (Dependency) obj;
        return this.f35827a.equals(dependency.f35827a) && this.f35828b == dependency.f35828b && this.f35829c == dependency.f35829c;
    }

    public Qualified<?> getInterface() {
        return this.f35827a;
    }

    public int hashCode() {
        return this.f35829c ^ ((((this.f35827a.hashCode() ^ 1000003) * 1000003) ^ this.f35828b) * 1000003);
    }

    public boolean isDeferred() {
        return this.f35829c == 2;
    }

    public boolean isDirectInjection() {
        return this.f35829c == 0;
    }

    public boolean isRequired() {
        return this.f35828b == 1;
    }

    public boolean isSet() {
        return this.f35828b == 2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f35827a);
        sb.append(", type=");
        int i = this.f35828b;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : ExtensionNamespaceContext.EXSLT_SET_PREFIX);
        sb.append(", injection=");
        sb.append(m28050a(this.f35829c));
        sb.append("}");
        return sb.toString();
    }

    public Dependency(Qualified<?> qualified, int i, int i2) {
        this.f35827a = (Qualified) Preconditions.checkNotNull(qualified, "Null dependency anInterface.");
        this.f35828b = i;
        this.f35829c = i2;
    }

    public static Dependency deferred(Qualified<?> qualified) {
        return new Dependency(qualified, 0, 2);
    }

    public static Dependency optionalProvider(Qualified<?> qualified) {
        return new Dependency(qualified, 0, 1);
    }

    public static Dependency required(Qualified<?> qualified) {
        return new Dependency(qualified, 1, 0);
    }

    public static Dependency requiredProvider(Qualified<?> qualified) {
        return new Dependency(qualified, 1, 1);
    }

    public static Dependency setOf(Qualified<?> qualified) {
        return new Dependency(qualified, 2, 0);
    }

    public static Dependency setOfProvider(Qualified<?> qualified) {
        return new Dependency(qualified, 2, 1);
    }
}
