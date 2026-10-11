package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.sunia.HTREnginev2.l5g;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes6.dex */
public class ExtensionRegistryLite {

    /* renamed from: b */
    public static volatile boolean f37418b = false;

    /* renamed from: c */
    public static boolean f37419c = true;

    /* renamed from: d */
    public static final String f37420d = "com.google.protobuf.Extension";

    /* renamed from: e */
    public static volatile ExtensionRegistryLite f37421e;

    /* renamed from: f */
    public static final ExtensionRegistryLite f37422f = new ExtensionRegistryLite(true);

    /* renamed from: a */
    public final Map<C6733b, GeneratedMessageLite.GeneratedExtension<?, ?>> f37423a;

    /* renamed from: com.google.protobuf.ExtensionRegistryLite$a */
    /* loaded from: classes6.dex */
    public static class C6732a {

        /* renamed from: a */
        public static final Class<?> f37424a = m29075a();

        /* renamed from: a */
        public static Class<?> m29075a() {
            return Extension.class;
        }
    }

    /* renamed from: com.google.protobuf.ExtensionRegistryLite$b */
    /* loaded from: classes6.dex */
    public static final class C6733b {

        /* renamed from: a */
        public final Object f37425a;

        /* renamed from: b */
        public final int f37426b;

        public C6733b(final Object object, final int number) {
            this.f37425a = object;
            this.f37426b = number;
        }

        public boolean equals(final Object obj) {
            if (!(obj instanceof C6733b)) {
                return false;
            }
            C6733b c6733b = (C6733b) obj;
            return this.f37425a == c6733b.f37425a && this.f37426b == c6733b.f37426b;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f37425a) * 65535) + this.f37426b;
        }
    }

    public ExtensionRegistryLite() {
        this.f37423a = new HashMap();
    }

    public static ExtensionRegistryLite getEmptyRegistry() {
        if (!f37419c) {
            return f37422f;
        }
        ExtensionRegistryLite extensionRegistryLite = f37421e;
        if (extensionRegistryLite == null) {
            synchronized (ExtensionRegistryLite.class) {
                extensionRegistryLite = f37421e;
                if (extensionRegistryLite == null) {
                    extensionRegistryLite = l5g.m55382b();
                    f37421e = extensionRegistryLite;
                }
            }
        }
        return extensionRegistryLite;
    }

    public static boolean isEagerlyParseMessageSets() {
        return f37418b;
    }

    public static ExtensionRegistryLite newInstance() {
        return f37419c ? l5g.m55381a() : new ExtensionRegistryLite();
    }

    public static void setEagerlyParseMessageSets(boolean isEagerlyParse) {
        f37418b = isEagerlyParse;
    }

    public final void add(final GeneratedMessageLite.GeneratedExtension<?, ?> extension) {
        this.f37423a.put(new C6733b(extension.getContainingTypeDefaultInstance(), extension.getNumber()), extension);
    }

    public <ContainingType extends MessageLite> GeneratedMessageLite.GeneratedExtension<ContainingType, ?> findLiteExtensionByNumber(final ContainingType containingTypeDefaultInstance, final int fieldNumber) {
        return (GeneratedMessageLite.GeneratedExtension) this.f37423a.get(new C6733b(containingTypeDefaultInstance, fieldNumber));
    }

    public ExtensionRegistryLite getUnmodifiable() {
        return new ExtensionRegistryLite(this);
    }

    public ExtensionRegistryLite(ExtensionRegistryLite other) {
        if (other == f37422f) {
            this.f37423a = Collections.emptyMap();
        } else {
            this.f37423a = Collections.unmodifiableMap(other.f37423a);
        }
    }

    public final void add(ExtensionLite<?, ?> extension) {
        if (GeneratedMessageLite.GeneratedExtension.class.isAssignableFrom(extension.getClass())) {
            add((GeneratedMessageLite.GeneratedExtension<?, ?>) extension);
        }
        if (f37419c && l5g.m55384d(this)) {
            try {
                getClass().getMethod("add", C6732a.f37424a).invoke(this, extension);
            } catch (Exception e) {
                throw new IllegalArgumentException(String.format("Could not invoke ExtensionRegistry#add for %s", extension), e);
            }
        }
    }

    public ExtensionRegistryLite(boolean empty) {
        this.f37423a = Collections.emptyMap();
    }
}
