package com.google.protobuf;

import com.sunia.HTREnginev2.htd;
import java.io.IOException;

@htd
/* renamed from: com.google.protobuf.d0 */
/* loaded from: classes6.dex */
public class C6866d0 extends AbstractC6858c0<UnknownFieldSetLite, UnknownFieldSetLite> {
    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSetLite mo29986g(Object message) {
        return ((GeneratedMessageLite) message).unknownFields;
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: B, reason: merged with bridge method [inline-methods] */
    public int mo29987h(UnknownFieldSetLite unknowns) {
        return unknowns.getSerializedSize();
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public int mo29988i(UnknownFieldSetLite unknowns) {
        return unknowns.getSerializedSizeAsMessageSet();
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSetLite mo29990k(UnknownFieldSetLite target, UnknownFieldSetLite source) {
        return UnknownFieldSetLite.getDefaultInstance().equals(source) ? target : UnknownFieldSetLite.getDefaultInstance().equals(target) ? UnknownFieldSetLite.m29631j(target, source) : target.m29640g(source);
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSetLite mo29993n() {
        return UnknownFieldSetLite.m29632k();
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public void mo29994o(Object message, UnknownFieldSetLite fields) {
        mo29995p(message, fields);
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: G, reason: merged with bridge method [inline-methods] */
    public void mo29995p(Object message, UnknownFieldSetLite fields) {
        ((GeneratedMessageLite) message).unknownFields = fields;
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSetLite mo29997r(UnknownFieldSetLite fields) {
        fields.makeImmutable();
        return fields;
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public void mo29998s(UnknownFieldSetLite fields, Writer writer) throws IOException {
        fields.m29645p(writer);
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: J, reason: merged with bridge method [inline-methods] */
    public void mo29999t(UnknownFieldSetLite fields, Writer writer) throws IOException {
        fields.writeTo(writer);
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: j */
    public void mo29989j(Object message) {
        mo29986g(message).makeImmutable();
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: q */
    public boolean mo29996q(InterfaceC6888y reader) {
        return false;
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public void mo29980a(UnknownFieldSetLite fields, int number, int value) {
        fields.m29644n(WireFormat.m29722a(number, 5), Integer.valueOf(value));
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public void mo29981b(UnknownFieldSetLite fields, int number, long value) {
        fields.m29644n(WireFormat.m29722a(number, 1), Long.valueOf(value));
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public void mo29982c(UnknownFieldSetLite fields, int number, UnknownFieldSetLite subFieldSet) {
        fields.m29644n(WireFormat.m29722a(number, 3), subFieldSet);
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public void mo29983d(UnknownFieldSetLite fields, int number, ByteString value) {
        fields.m29644n(WireFormat.m29722a(number, 2), value);
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public void mo29984e(UnknownFieldSetLite fields, int number, long value) {
        fields.m29644n(WireFormat.m29722a(number, 0), Long.valueOf(value));
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSetLite mo29985f(Object message) {
        UnknownFieldSetLite mo29986g = mo29986g(message);
        if (mo29986g != UnknownFieldSetLite.getDefaultInstance()) {
            return mo29986g;
        }
        UnknownFieldSetLite m29632k = UnknownFieldSetLite.m29632k();
        mo29995p(message, m29632k);
        return m29632k;
    }
}
