package com.google.protobuf;

import com.google.protobuf.FieldSet;
import com.google.protobuf.LazyField;
import com.google.protobuf.WireFormat;
import com.sunia.HTREnginev2.htd;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

@htd
/* renamed from: com.google.protobuf.v */
/* loaded from: classes6.dex */
public final class C6885v<T> implements InterfaceC6889z<T> {

    /* renamed from: a */
    public final MessageLite f38186a;

    /* renamed from: b */
    public final AbstractC6858c0<?, ?> f38187b;

    /* renamed from: c */
    public final boolean f38188c;

    /* renamed from: d */
    public final AbstractC6873j<?> f38189d;

    public C6885v(AbstractC6858c0<?, ?> unknownFieldSchema, AbstractC6873j<?> extensionSchema, MessageLite defaultInstance) {
        this.f38187b = unknownFieldSchema;
        this.f38188c = extensionSchema.mo30265e(defaultInstance);
        this.f38189d = extensionSchema;
        this.f38186a = defaultInstance;
    }

    /* renamed from: l */
    public static <T> C6885v<T> m30406l(AbstractC6858c0<?, ?> unknownFieldSchema, AbstractC6873j<?> extensionSchema, MessageLite defaultInstance) {
        return new C6885v<>(unknownFieldSchema, extensionSchema, defaultInstance);
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: a */
    public void mo30366a(T message, T other) {
        C6854a0.m29767J(this.f38187b, message, other);
        if (this.f38188c) {
            C6854a0.m29765H(this.f38189d, message, other);
        }
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: b */
    public final boolean mo30367b(T message) {
        return this.f38189d.mo30263c(message).m29140E();
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: c */
    public boolean mo30368c(T message, T other) {
        if (!this.f38187b.mo29986g(message).equals(this.f38187b.mo29986g(other))) {
            return false;
        }
        if (this.f38188c) {
            return this.f38189d.mo30263c(message).equals(this.f38189d.mo30263c(other));
        }
        return true;
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: d */
    public int mo30369d(T message) {
        int hashCode = this.f38187b.mo29986g(message).hashCode();
        return this.f38188c ? (hashCode * 53) + this.f38189d.mo30263c(message).hashCode() : hashCode;
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: e */
    public void mo30371e(T message, Writer writer) throws IOException {
        Iterator<Map.Entry<?, Object>> m29141I = this.f38189d.mo30263c(message).m29141I();
        while (m29141I.hasNext()) {
            Map.Entry<?, Object> next = m29141I.next();
            FieldSet.FieldDescriptorLite fieldDescriptorLite = (FieldSet.FieldDescriptorLite) next.getKey();
            if (fieldDescriptorLite.getLiteJavaType() != WireFormat.JavaType.MESSAGE || fieldDescriptorLite.isRepeated() || fieldDescriptorLite.isPacked()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof LazyField.C6786b) {
                writer.mo29741o(fieldDescriptorLite.getNumber(), ((LazyField.C6786b) next).m29352a().toByteString());
            } else {
                writer.mo29741o(fieldDescriptorLite.getNumber(), next.getValue());
            }
        }
        m30410n(this.f38187b, message, writer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cb A[EDGE_INSN: B:24:0x00cb->B:25:0x00cb BREAK  A[LOOP:1: B:10:0x006d->B:18:0x006d], SYNTHETIC] */
    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo30373f(T r11, byte[] r12, int r13, int r14, com.google.protobuf.C6855b.b r15) throws java.io.IOException {
        /*
            r10 = this;
            r0 = r11
            com.google.protobuf.GeneratedMessageLite r0 = (com.google.protobuf.GeneratedMessageLite) r0
            com.google.protobuf.UnknownFieldSetLite r1 = r0.unknownFields
            com.google.protobuf.UnknownFieldSetLite r2 = com.google.protobuf.UnknownFieldSetLite.getDefaultInstance()
            if (r1 != r2) goto L11
            com.google.protobuf.UnknownFieldSetLite r1 = com.google.protobuf.UnknownFieldSetLite.m29632k()
            r0.unknownFields = r1
        L11:
            com.google.protobuf.GeneratedMessageLite$ExtendableMessage r11 = (com.google.protobuf.GeneratedMessageLite.ExtendableMessage) r11
            com.google.protobuf.FieldSet r11 = r11.m29267x()
            r0 = 0
            r2 = r0
        L19:
            if (r13 >= r14) goto Ld7
            int r4 = com.google.protobuf.C6855b.m29844I(r12, r13, r15)
            int r13 = r15.f37998a
            int r3 = com.google.protobuf.WireFormat.f37968k
            r5 = 2
            if (r13 == r3) goto L6b
            int r3 = com.google.protobuf.WireFormat.getTagWireType(r13)
            if (r3 != r5) goto L66
            com.google.protobuf.j<?> r2 = r10.f38189d
            com.google.protobuf.ExtensionRegistryLite r3 = r15.f38001d
            com.google.protobuf.MessageLite r5 = r10.f38186a
            int r6 = com.google.protobuf.WireFormat.getTagFieldNumber(r13)
            java.lang.Object r2 = r2.mo30262b(r3, r5, r6)
            r8 = r2
            com.google.protobuf.GeneratedMessageLite$GeneratedExtension r8 = (com.google.protobuf.GeneratedMessageLite.GeneratedExtension) r8
            if (r8 == 0) goto L5b
            com.sunia.HTREnginev2.d9l r13 = com.sunia.HTREnginev2.d9l.m53616a()
            com.google.protobuf.MessageLite r2 = r8.getMessageDefaultInstance()
            java.lang.Class r2 = r2.getClass()
            com.google.protobuf.z r13 = r13.m53624i(r2)
            int r13 = com.google.protobuf.C6855b.m29867p(r13, r12, r4, r14, r15)
            com.google.protobuf.GeneratedMessageLite$b r2 = r8.f37585d
            java.lang.Object r3 = r15.f38000c
            r11.m29145P(r2, r3)
            goto L64
        L5b:
            r2 = r13
            r3 = r12
            r5 = r14
            r6 = r1
            r7 = r15
            int r13 = com.google.protobuf.C6855b.m29842G(r2, r3, r4, r5, r6, r7)
        L64:
            r2 = r8
            goto L19
        L66:
            int r13 = com.google.protobuf.C6855b.m29851P(r13, r12, r4, r14, r15)
            goto L19
        L6b:
            r13 = 0
            r3 = r0
        L6d:
            if (r4 >= r14) goto Lcb
            int r4 = com.google.protobuf.C6855b.m29844I(r12, r4, r15)
            int r6 = r15.f37998a
            int r7 = com.google.protobuf.WireFormat.getTagFieldNumber(r6)
            int r8 = com.google.protobuf.WireFormat.getTagWireType(r6)
            if (r7 == r5) goto Lac
            r9 = 3
            if (r7 == r9) goto L83
            goto Lc1
        L83:
            if (r2 == 0) goto La1
            com.sunia.HTREnginev2.d9l r6 = com.sunia.HTREnginev2.d9l.m53616a()
            com.google.protobuf.MessageLite r7 = r2.getMessageDefaultInstance()
            java.lang.Class r7 = r7.getClass()
            com.google.protobuf.z r6 = r6.m53624i(r7)
            int r4 = com.google.protobuf.C6855b.m29867p(r6, r12, r4, r14, r15)
            com.google.protobuf.GeneratedMessageLite$b r6 = r2.f37585d
            java.lang.Object r7 = r15.f38000c
            r11.m29145P(r6, r7)
            goto L6d
        La1:
            if (r8 != r5) goto Lc1
            int r4 = com.google.protobuf.C6855b.m29853b(r12, r4, r15)
            java.lang.Object r3 = r15.f38000c
            com.google.protobuf.ByteString r3 = (com.google.protobuf.ByteString) r3
            goto L6d
        Lac:
            if (r8 != 0) goto Lc1
            int r4 = com.google.protobuf.C6855b.m29844I(r12, r4, r15)
            int r13 = r15.f37998a
            com.google.protobuf.j<?> r2 = r10.f38189d
            com.google.protobuf.ExtensionRegistryLite r6 = r15.f38001d
            com.google.protobuf.MessageLite r7 = r10.f38186a
            java.lang.Object r2 = r2.mo30262b(r6, r7, r13)
            com.google.protobuf.GeneratedMessageLite$GeneratedExtension r2 = (com.google.protobuf.GeneratedMessageLite.GeneratedExtension) r2
            goto L6d
        Lc1:
            int r7 = com.google.protobuf.WireFormat.f37969l
            if (r6 != r7) goto Lc6
            goto Lcb
        Lc6:
            int r4 = com.google.protobuf.C6855b.m29851P(r6, r12, r4, r14, r15)
            goto L6d
        Lcb:
            if (r3 == 0) goto Ld4
            int r13 = com.google.protobuf.WireFormat.m29722a(r13, r5)
            r1.m29644n(r13, r3)
        Ld4:
            r13 = r4
            goto L19
        Ld7:
            if (r13 != r14) goto Lda
            return
        Lda:
            com.google.protobuf.InvalidProtocolBufferException r10 = com.google.protobuf.InvalidProtocolBufferException.parseFailure()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C6885v.mo30373f(java.lang.Object, byte[], int, int, com.google.protobuf.b$b):void");
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: g */
    public void mo30375g(T message) {
        this.f38187b.mo29989j(message);
        this.f38189d.mo30266f(message);
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: h */
    public int mo30377h(T message) {
        int m30407j = m30407j(this.f38187b, message) + 0;
        return this.f38188c ? m30407j + this.f38189d.mo30263c(message).m29158v() : m30407j;
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: i */
    public void mo30379i(T message, InterfaceC6888y reader, ExtensionRegistryLite extensionRegistry) throws IOException {
        m30408k(this.f38187b, this.f38189d, message, reader, extensionRegistry);
    }

    /* renamed from: j */
    public final <UT, UB> int m30407j(AbstractC6858c0<UT, UB> schema, T message) {
        return schema.mo29988i(schema.mo29986g(message));
    }

    /* renamed from: k */
    public final <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> void m30408k(AbstractC6858c0<UT, UB> unknownFieldSchema, AbstractC6873j<ET> extensionSchema, T message, InterfaceC6888y reader, ExtensionRegistryLite extensionRegistry) throws IOException {
        UB mo29985f = unknownFieldSchema.mo29985f(message);
        FieldSet<ET> mo30264d = extensionSchema.mo30264d(message);
        do {
            try {
                if (reader.mo29917F() == Integer.MAX_VALUE) {
                    return;
                }
            } finally {
                unknownFieldSchema.mo29994o(message, mo29985f);
            }
        } while (m30409m(reader, extensionRegistry, extensionSchema, mo30264d, unknownFieldSchema, mo29985f));
    }

    /* renamed from: m */
    public final <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> boolean m30409m(InterfaceC6888y reader, ExtensionRegistryLite extensionRegistry, AbstractC6873j<ET> extensionSchema, FieldSet<ET> extensions, AbstractC6858c0<UT, UB> unknownFieldSchema, UB unknownFields) throws IOException {
        int tag = reader.getTag();
        if (tag != WireFormat.f37968k) {
            if (WireFormat.getTagWireType(tag) != 2) {
                return reader.mo29955k();
            }
            Object mo30262b = extensionSchema.mo30262b(extensionRegistry, this.f38186a, WireFormat.getTagFieldNumber(tag));
            if (mo30262b == null) {
                return unknownFieldSchema.m29992m(unknownFields, reader);
            }
            extensionSchema.mo30268h(reader, mo30262b, extensionRegistry, extensions);
            return true;
        }
        Object obj = null;
        int i = 0;
        ByteString byteString = null;
        while (reader.mo29917F() != Integer.MAX_VALUE) {
            int tag2 = reader.getTag();
            if (tag2 == WireFormat.f37970m) {
                i = reader.mo29936a();
                obj = extensionSchema.mo30262b(extensionRegistry, this.f38186a, i);
            } else if (tag2 == WireFormat.f37971n) {
                if (obj != null) {
                    extensionSchema.mo30268h(reader, obj, extensionRegistry, extensions);
                } else {
                    byteString = reader.mo29913B();
                }
            } else if (!reader.mo29955k()) {
                break;
            }
        }
        if (reader.getTag() != WireFormat.f37969l) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        if (byteString != null) {
            if (obj != null) {
                extensionSchema.mo30269i(byteString, obj, extensionRegistry, extensions);
            } else {
                unknownFieldSchema.mo29983d(unknownFields, i, byteString);
            }
        }
        return true;
    }

    /* renamed from: n */
    public final <UT, UB> void m30410n(AbstractC6858c0<UT, UB> unknownFieldSchema, T message, Writer writer) throws IOException {
        unknownFieldSchema.mo29998s(unknownFieldSchema.mo29986g(message), writer);
    }

    @Override // com.google.protobuf.InterfaceC6889z
    public T newInstance() {
        MessageLite messageLite = this.f38186a;
        return messageLite instanceof GeneratedMessageLite ? (T) ((GeneratedMessageLite) messageLite).m29257q() : (T) messageLite.newBuilderForType().buildPartial();
    }
}
