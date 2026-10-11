package com.google.protobuf;

import com.google.protobuf.FieldSet;
import com.google.protobuf.FieldSet.FieldDescriptorLite;
import com.sunia.HTREnginev2.htd;
import java.io.IOException;
import java.util.Map;

@htd
/* renamed from: com.google.protobuf.j */
/* loaded from: classes6.dex */
public abstract class AbstractC6873j<T extends FieldSet.FieldDescriptorLite<T>> {
    /* renamed from: a */
    public abstract int mo30261a(Map.Entry<?, ?> extension);

    /* renamed from: b */
    public abstract Object mo30262b(ExtensionRegistryLite extensionRegistry, MessageLite defaultInstance, int number);

    /* renamed from: c */
    public abstract FieldSet<T> mo30263c(Object message);

    /* renamed from: d */
    public abstract FieldSet<T> mo30264d(Object message);

    /* renamed from: e */
    public abstract boolean mo30265e(MessageLite prototype);

    /* renamed from: f */
    public abstract void mo30266f(Object message);

    /* renamed from: g */
    public abstract <UT, UB> UB mo30267g(Object containerMessage, InterfaceC6888y reader, Object extension, ExtensionRegistryLite extensionRegistry, FieldSet<T> extensions, UB unknownFields, AbstractC6858c0<UT, UB> unknownFieldSchema) throws IOException;

    /* renamed from: h */
    public abstract void mo30268h(InterfaceC6888y reader, Object extension, ExtensionRegistryLite extensionRegistry, FieldSet<T> extensions) throws IOException;

    /* renamed from: i */
    public abstract void mo30269i(ByteString data, Object extension, ExtensionRegistryLite extensionRegistry, FieldSet<T> extensions) throws IOException;

    /* renamed from: j */
    public abstract void mo30270j(Writer writer, Map.Entry<?, ?> extension) throws IOException;

    /* renamed from: k */
    public abstract void mo30271k(Object message, FieldSet<T> extensions);
}
