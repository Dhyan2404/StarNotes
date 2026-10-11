package com.google.protobuf;

import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;

/* renamed from: com.google.protobuf.e0 */
/* loaded from: classes6.dex */
public class C6868e0 extends AbstractC6858c0<UnknownFieldSet, UnknownFieldSet.Builder> {
    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSet mo29986g(Object message) {
        return ((GeneratedMessageV3) message).unknownFields;
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: B, reason: merged with bridge method [inline-methods] */
    public int mo29987h(UnknownFieldSet message) {
        return message.getSerializedSize();
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public int mo29988i(UnknownFieldSet unknowns) {
        return unknowns.getSerializedSizeAsMessageSet();
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSet mo29990k(UnknownFieldSet message, UnknownFieldSet other) {
        return message.toBuilder().mergeFrom(other).build();
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSet.Builder mo29993n() {
        return UnknownFieldSet.newBuilder();
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public void mo29994o(Object message, UnknownFieldSet.Builder builder) {
        ((GeneratedMessageV3) message).unknownFields = builder.build();
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: G, reason: merged with bridge method [inline-methods] */
    public void mo29995p(Object message, UnknownFieldSet fields) {
        ((GeneratedMessageV3) message).unknownFields = fields;
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSet mo29997r(UnknownFieldSet.Builder fields) {
        return fields.build();
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public void mo29998s(UnknownFieldSet message, Writer writer) throws IOException {
        message.m29608b(writer);
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: J, reason: merged with bridge method [inline-methods] */
    public void mo29999t(UnknownFieldSet message, Writer writer) throws IOException {
        message.m29609c(writer);
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: j */
    public void mo29989j(Object message) {
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: q */
    public boolean mo29996q(InterfaceC6888y reader) {
        return reader.mo29911j();
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public void mo29980a(UnknownFieldSet.Builder fields, int number, int value) {
        fields.mergeField(number, UnknownFieldSet.Field.newBuilder().addFixed32(value).build());
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public void mo29981b(UnknownFieldSet.Builder fields, int number, long value) {
        fields.mergeField(number, UnknownFieldSet.Field.newBuilder().addFixed64(value).build());
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public void mo29982c(UnknownFieldSet.Builder fields, int number, UnknownFieldSet subFieldSet) {
        fields.mergeField(number, UnknownFieldSet.Field.newBuilder().addGroup(subFieldSet).build());
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public void mo29983d(UnknownFieldSet.Builder fields, int number, ByteString value) {
        fields.mergeField(number, UnknownFieldSet.Field.newBuilder().addLengthDelimited(value).build());
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public void mo29984e(UnknownFieldSet.Builder fields, int number, long value) {
        fields.mergeField(number, UnknownFieldSet.Field.newBuilder().addVarint(value).build());
    }

    @Override // com.google.protobuf.AbstractC6858c0
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSet.Builder mo29985f(Object message) {
        return ((GeneratedMessageV3) message).unknownFields.toBuilder();
    }
}
