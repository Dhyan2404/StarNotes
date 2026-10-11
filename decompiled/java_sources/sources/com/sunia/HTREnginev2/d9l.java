package com.sunia.HTREnginev2;

import com.google.protobuf.C6884u;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.InterfaceC6888y;
import com.google.protobuf.InterfaceC6889z;
import com.google.protobuf.Internal;
import com.google.protobuf.Writer;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

@htd
/* loaded from: classes6.dex */
public final class d9l {

    /* renamed from: c */
    public static final d9l f67652c = new d9l();

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, InterfaceC6889z<?>> f67654b = new ConcurrentHashMap();

    /* renamed from: a */
    public final n4m f67653a = new e8j();

    /* renamed from: a */
    public static d9l m53616a() {
        return f67652c;
    }

    /* renamed from: b */
    public int m53617b() {
        int i = 0;
        for (InterfaceC6889z<?> interfaceC6889z : this.f67654b.values()) {
            if (interfaceC6889z instanceof C6884u) {
                i += ((C6884u) interfaceC6889z).m30401x();
            }
        }
        return i;
    }

    /* renamed from: c */
    public <T> boolean m53618c(T message) {
        return m53625j(message).mo30367b(message);
    }

    /* renamed from: d */
    public <T> void m53619d(T message) {
        m53625j(message).mo30375g(message);
    }

    /* renamed from: e */
    public <T> void m53620e(T message, InterfaceC6888y reader) throws IOException {
        m53621f(message, reader, ExtensionRegistryLite.getEmptyRegistry());
    }

    /* renamed from: f */
    public <T> void m53621f(T message, InterfaceC6888y reader, ExtensionRegistryLite extensionRegistry) throws IOException {
        m53625j(message).mo30379i(message, reader, extensionRegistry);
    }

    /* renamed from: g */
    public InterfaceC6889z<?> m53622g(Class<?> messageType, InterfaceC6889z<?> schema) {
        Internal.m29344b(messageType, "messageType");
        Internal.m29344b(schema, "schema");
        return this.f67654b.putIfAbsent(messageType, schema);
    }

    @bnd
    /* renamed from: h */
    public InterfaceC6889z<?> m53623h(Class<?> messageType, InterfaceC6889z<?> schema) {
        Internal.m29344b(messageType, "messageType");
        Internal.m29344b(schema, "schema");
        return this.f67654b.put(messageType, schema);
    }

    /* renamed from: i */
    public <T> InterfaceC6889z<T> m53624i(Class<T> cls) {
        Internal.m29344b(cls, "messageType");
        InterfaceC6889z<T> interfaceC6889z = (InterfaceC6889z) this.f67654b.get(cls);
        if (interfaceC6889z != null) {
            return interfaceC6889z;
        }
        InterfaceC6889z<T> mo53941a = this.f67653a.mo53941a(cls);
        InterfaceC6889z<T> interfaceC6889z2 = (InterfaceC6889z<T>) m53622g(cls, mo53941a);
        return interfaceC6889z2 != null ? interfaceC6889z2 : mo53941a;
    }

    /* renamed from: j */
    public <T> InterfaceC6889z<T> m53625j(T message) {
        return m53624i(message.getClass());
    }

    /* renamed from: k */
    public <T> void m53626k(T message, Writer writer) throws IOException {
        m53625j(message).mo30371e(message, writer);
    }
}
