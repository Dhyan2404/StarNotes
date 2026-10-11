package com.google.protobuf;

import com.google.protobuf.Descriptors;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

/* loaded from: classes6.dex */
public class TypeRegistry {

    /* renamed from: b */
    public static final Logger f37913b = Logger.getLogger(TypeRegistry.class.getName());

    /* renamed from: a */
    public final Map<String, Descriptors.Descriptor> f37914a;

    /* loaded from: classes6.dex */
    public static final class Builder {

        /* renamed from: a */
        public final Set<String> f37915a;

        /* renamed from: b */
        public Map<String, Descriptors.Descriptor> f37916b;

        /* renamed from: a */
        public final void m29598a(Descriptors.FileDescriptor file) {
            if (this.f37915a.add(file.getFullName())) {
                Iterator<Descriptors.FileDescriptor> it2 = file.getDependencies().iterator();
                while (it2.hasNext()) {
                    m29598a(it2.next());
                }
                Iterator<Descriptors.Descriptor> it3 = file.getMessageTypes().iterator();
                while (it3.hasNext()) {
                    m29599b(it3.next());
                }
            }
        }

        public Builder add(Descriptors.Descriptor messageType) {
            if (this.f37916b != null) {
                m29598a(messageType.getFile());
                return this;
            }
            throw new IllegalStateException("A TypeRegistry.Builder can only be used once.");
        }

        /* renamed from: b */
        public final void m29599b(Descriptors.Descriptor message) {
            Iterator<Descriptors.Descriptor> it2 = message.getNestedTypes().iterator();
            while (it2.hasNext()) {
                m29599b(it2.next());
            }
            if (!this.f37916b.containsKey(message.getFullName())) {
                this.f37916b.put(message.getFullName(), message);
                return;
            }
            TypeRegistry.f37913b.warning("Type " + message.getFullName() + " is added multiple times.");
        }

        public TypeRegistry build() {
            TypeRegistry typeRegistry = new TypeRegistry(this.f37916b);
            this.f37916b = null;
            return typeRegistry;
        }

        public Builder() {
            this.f37915a = new HashSet();
            this.f37916b = new HashMap();
        }

        public Builder add(Iterable<Descriptors.Descriptor> messageTypes) {
            if (this.f37916b != null) {
                Iterator<Descriptors.Descriptor> it2 = messageTypes.iterator();
                while (it2.hasNext()) {
                    m29598a(it2.next().getFile());
                }
                return this;
            }
            throw new IllegalStateException("A TypeRegistry.Builder can only be used once.");
        }
    }

    /* renamed from: com.google.protobuf.TypeRegistry$b */
    /* loaded from: classes6.dex */
    public static class C6833b {

        /* renamed from: a */
        public static final TypeRegistry f37917a = new TypeRegistry(Collections.emptyMap());
    }

    public TypeRegistry(Map<String, Descriptors.Descriptor> types) {
        this.f37914a = types;
    }

    /* renamed from: b */
    public static String m29597b(String typeUrl) throws InvalidProtocolBufferException {
        String[] split = typeUrl.split("/");
        if (split.length != 1) {
            return split[split.length - 1];
        }
        throw new InvalidProtocolBufferException("Invalid type url found: " + typeUrl);
    }

    public static TypeRegistry getEmptyTypeRegistry() {
        return C6833b.f37917a;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public Descriptors.Descriptor find(String name) {
        return this.f37914a.get(name);
    }

    public final Descriptors.Descriptor getDescriptorForTypeUrl(String typeUrl) throws InvalidProtocolBufferException {
        return find(m29597b(typeUrl));
    }
}
