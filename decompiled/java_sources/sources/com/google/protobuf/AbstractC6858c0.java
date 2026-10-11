package com.google.protobuf;

import com.sunia.HTREnginev2.htd;
import java.io.IOException;

@htd
/* renamed from: com.google.protobuf.c0 */
/* loaded from: classes6.dex */
public abstract class AbstractC6858c0<T, B> {
    /* renamed from: a */
    public abstract void mo29980a(B fields, int number, int value);

    /* renamed from: b */
    public abstract void mo29981b(B fields, int number, long value);

    /* renamed from: c */
    public abstract void mo29982c(B fields, int number, T subFieldSet);

    /* renamed from: d */
    public abstract void mo29983d(B fields, int number, ByteString value);

    /* renamed from: e */
    public abstract void mo29984e(B fields, int number, long value);

    /* renamed from: f */
    public abstract B mo29985f(Object message);

    /* renamed from: g */
    public abstract T mo29986g(Object message);

    /* renamed from: h */
    public abstract int mo29987h(T unknowns);

    /* renamed from: i */
    public abstract int mo29988i(T message);

    /* renamed from: j */
    public abstract void mo29989j(Object message);

    /* renamed from: k */
    public abstract T mo29990k(T destination, T source);

    /* renamed from: l */
    public final void m29991l(B unknownFields, InterfaceC6888y reader) throws IOException {
        while (reader.mo29917F() != Integer.MAX_VALUE && m29992m(unknownFields, reader)) {
        }
    }

    /* renamed from: m */
    public final boolean m29992m(B unknownFields, InterfaceC6888y reader) throws IOException {
        int tag = reader.getTag();
        int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType == 0) {
            mo29984e(unknownFields, tagFieldNumber, reader.mo29957l());
            return true;
        }
        if (tagWireType == 1) {
            mo29981b(unknownFields, tagFieldNumber, reader.mo29922K());
            return true;
        }
        if (tagWireType == 2) {
            mo29983d(unknownFields, tagFieldNumber, reader.mo29913B());
            return true;
        }
        if (tagWireType != 3) {
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            mo29980a(unknownFields, tagFieldNumber, reader.mo29974u());
            return true;
        }
        B mo29993n = mo29993n();
        int m29722a = WireFormat.m29722a(tagFieldNumber, 4);
        m29991l(mo29993n, reader);
        if (m29722a != reader.getTag()) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        mo29982c(unknownFields, tagFieldNumber, mo29997r(mo29993n));
        return true;
    }

    /* renamed from: n */
    public abstract B mo29993n();

    /* renamed from: o */
    public abstract void mo29994o(Object message, B builder);

    /* renamed from: p */
    public abstract void mo29995p(Object message, T fields);

    /* renamed from: q */
    public abstract boolean mo29996q(InterfaceC6888y reader);

    /* renamed from: r */
    public abstract T mo29997r(B fields);

    /* renamed from: s */
    public abstract void mo29998s(T unknownFields, Writer writer) throws IOException;

    /* renamed from: t */
    public abstract void mo29999t(T unknownFields, Writer writer) throws IOException;
}
