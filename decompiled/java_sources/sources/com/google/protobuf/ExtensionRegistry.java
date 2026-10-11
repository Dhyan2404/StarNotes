package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Extension;
import com.google.protobuf.GeneratedMessage;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes6.dex */
public class ExtensionRegistry extends ExtensionRegistryLite {

    /* renamed from: k */
    public static final ExtensionRegistry f37410k = new ExtensionRegistry(true);

    /* renamed from: g */
    public final Map<String, ExtensionInfo> f37411g;

    /* renamed from: h */
    public final Map<String, ExtensionInfo> f37412h;

    /* renamed from: i */
    public final Map<C6731b, ExtensionInfo> f37413i;

    /* renamed from: j */
    public final Map<C6731b, ExtensionInfo> f37414j;

    /* loaded from: classes6.dex */
    public static final class ExtensionInfo {
        public final Message defaultInstance;
        public final Descriptors.FieldDescriptor descriptor;

        public /* synthetic */ ExtensionInfo(Descriptors.FieldDescriptor fieldDescriptor, Message message, C6730a c6730a) {
            this(fieldDescriptor, message);
        }

        public ExtensionInfo(final Descriptors.FieldDescriptor descriptor) {
            this.descriptor = descriptor;
            this.defaultInstance = null;
        }

        public ExtensionInfo(final Descriptors.FieldDescriptor descriptor, final Message defaultInstance) {
            this.descriptor = descriptor;
            this.defaultInstance = defaultInstance;
        }
    }

    /* renamed from: com.google.protobuf.ExtensionRegistry$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6730a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f37415a;

        static {
            int[] iArr = new int[Extension.ExtensionType.values().length];
            f37415a = iArr;
            try {
                iArr[Extension.ExtensionType.IMMUTABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37415a[Extension.ExtensionType.MUTABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.protobuf.ExtensionRegistry$b */
    /* loaded from: classes6.dex */
    public static final class C6731b {

        /* renamed from: a */
        public final Descriptors.Descriptor f37416a;

        /* renamed from: b */
        public final int f37417b;

        public C6731b(final Descriptors.Descriptor descriptor, final int number) {
            this.f37416a = descriptor;
            this.f37417b = number;
        }

        public boolean equals(final Object obj) {
            if (!(obj instanceof C6731b)) {
                return false;
            }
            C6731b c6731b = (C6731b) obj;
            return this.f37416a == c6731b.f37416a && this.f37417b == c6731b.f37417b;
        }

        public int hashCode() {
            return (this.f37416a.hashCode() * 65535) + this.f37417b;
        }
    }

    public ExtensionRegistry() {
        this.f37411g = new HashMap();
        this.f37412h = new HashMap();
        this.f37413i = new HashMap();
        this.f37414j = new HashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static ExtensionInfo m29072b(Extension<?, ?> extension) {
        C6730a c6730a = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (extension.getDescriptor().getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
            return new ExtensionInfo(extension.getDescriptor(), objArr2 == true ? 1 : 0, objArr == true ? 1 : 0);
        }
        if (extension.getMessageDefaultInstance() != null) {
            return new ExtensionInfo(extension.getDescriptor(), extension.getMessageDefaultInstance(), c6730a);
        }
        throw new IllegalStateException("Registered message-type extension had null default instance: " + extension.getDescriptor().getFullName());
    }

    public static ExtensionRegistry getEmptyRegistry() {
        return f37410k;
    }

    public static ExtensionRegistry newInstance() {
        return new ExtensionRegistry();
    }

    /* renamed from: a */
    public final void m29073a(final ExtensionInfo extension, final Extension.ExtensionType extensionType) {
        Map<String, ExtensionInfo> map;
        Map<C6731b, ExtensionInfo> map2;
        if (!extension.descriptor.isExtension()) {
            throw new IllegalArgumentException("ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field.");
        }
        int i = C6730a.f37415a[extensionType.ordinal()];
        if (i == 1) {
            map = this.f37411g;
            map2 = this.f37413i;
        } else {
            if (i != 2) {
                return;
            }
            map = this.f37412h;
            map2 = this.f37414j;
        }
        map.put(extension.descriptor.getFullName(), extension);
        map2.put(new C6731b(extension.descriptor.getContainingType(), extension.descriptor.getNumber()), extension);
        Descriptors.FieldDescriptor fieldDescriptor = extension.descriptor;
        if (fieldDescriptor.getContainingType().getOptions().getMessageSetWireFormat() && fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && fieldDescriptor.isOptional() && fieldDescriptor.getExtensionScope() == fieldDescriptor.getMessageType()) {
            map.put(fieldDescriptor.getMessageType().getFullName(), extension);
        }
    }

    public void add(final Extension<?, ?> extension) {
        if (extension.getExtensionType() == Extension.ExtensionType.IMMUTABLE || extension.getExtensionType() == Extension.ExtensionType.MUTABLE) {
            m29073a(m29072b(extension), extension.getExtensionType());
        }
    }

    @Deprecated
    public ExtensionInfo findExtensionByName(final String fullName) {
        return findImmutableExtensionByName(fullName);
    }

    @Deprecated
    public ExtensionInfo findExtensionByNumber(final Descriptors.Descriptor containingType, final int fieldNumber) {
        return findImmutableExtensionByNumber(containingType, fieldNumber);
    }

    public ExtensionInfo findImmutableExtensionByName(final String fullName) {
        return this.f37411g.get(fullName);
    }

    public ExtensionInfo findImmutableExtensionByNumber(final Descriptors.Descriptor containingType, final int fieldNumber) {
        return this.f37413i.get(new C6731b(containingType, fieldNumber));
    }

    public ExtensionInfo findMutableExtensionByName(final String fullName) {
        return this.f37412h.get(fullName);
    }

    public ExtensionInfo findMutableExtensionByNumber(final Descriptors.Descriptor containingType, final int fieldNumber) {
        return this.f37414j.get(new C6731b(containingType, fieldNumber));
    }

    public Set<ExtensionInfo> getAllImmutableExtensionsByExtendedType(final String fullName) {
        HashSet hashSet = new HashSet();
        for (C6731b c6731b : this.f37413i.keySet()) {
            if (c6731b.f37416a.getFullName().equals(fullName)) {
                hashSet.add(this.f37413i.get(c6731b));
            }
        }
        return hashSet;
    }

    public Set<ExtensionInfo> getAllMutableExtensionsByExtendedType(final String fullName) {
        HashSet hashSet = new HashSet();
        for (C6731b c6731b : this.f37414j.keySet()) {
            if (c6731b.f37416a.getFullName().equals(fullName)) {
                hashSet.add(this.f37414j.get(c6731b));
            }
        }
        return hashSet;
    }

    @Override // com.google.protobuf.ExtensionRegistryLite
    public ExtensionRegistry getUnmodifiable() {
        return new ExtensionRegistry(this);
    }

    public void add(final GeneratedMessage.GeneratedExtension<?, ?> extension) {
        add((Extension<?, ?>) extension);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void add(Descriptors.FieldDescriptor fieldDescriptor) {
        if (fieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
            ExtensionInfo extensionInfo = new ExtensionInfo(fieldDescriptor, null, 0 == true ? 1 : 0);
            m29073a(extensionInfo, Extension.ExtensionType.IMMUTABLE);
            m29073a(extensionInfo, Extension.ExtensionType.MUTABLE);
            return;
        }
        throw new IllegalArgumentException("ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension.");
    }

    public ExtensionRegistry(ExtensionRegistry other) {
        super(other);
        this.f37411g = Collections.unmodifiableMap(other.f37411g);
        this.f37412h = Collections.unmodifiableMap(other.f37412h);
        this.f37413i = Collections.unmodifiableMap(other.f37413i);
        this.f37414j = Collections.unmodifiableMap(other.f37414j);
    }

    public void add(final Descriptors.FieldDescriptor type, final Message defaultInstance) {
        if (type.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
            m29073a(new ExtensionInfo(type, defaultInstance, null), Extension.ExtensionType.IMMUTABLE);
            return;
        }
        throw new IllegalArgumentException("ExtensionRegistry.add() provided a default instance for a non-message extension.");
    }

    public ExtensionRegistry(boolean empty) {
        super(ExtensionRegistryLite.f37422f);
        this.f37411g = Collections.emptyMap();
        this.f37412h = Collections.emptyMap();
        this.f37413i = Collections.emptyMap();
        this.f37414j = Collections.emptyMap();
    }
}
