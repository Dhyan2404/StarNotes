package com.google.protobuf;

import com.google.protobuf.C6855b;
import com.sunia.HTREnginev2.htd;
import java.io.IOException;

@htd
/* renamed from: com.google.protobuf.z */
/* loaded from: classes6.dex */
public interface InterfaceC6889z<T> {
    /* renamed from: a */
    void mo30366a(T message, T other);

    /* renamed from: b */
    boolean mo30367b(T message);

    /* renamed from: c */
    boolean mo30368c(T message, T other);

    /* renamed from: d */
    int mo30369d(T message);

    /* renamed from: e */
    void mo30371e(T message, Writer writer) throws IOException;

    /* renamed from: f */
    void mo30373f(T message, byte[] data, int position, int limit, C6855b.b registers) throws IOException;

    /* renamed from: g */
    void mo30375g(T message);

    /* renamed from: h */
    int mo30377h(T message);

    /* renamed from: i */
    void mo30379i(T message, InterfaceC6888y reader, ExtensionRegistryLite extensionRegistry) throws IOException;

    T newInstance();
}
