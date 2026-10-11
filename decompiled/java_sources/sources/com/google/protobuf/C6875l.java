package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MessageLite;
import com.google.protobuf.WireFormat;
import com.sunia.HTREnginev2.d9l;
import com.sunia.HTREnginev2.htd;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@htd
/* renamed from: com.google.protobuf.l */
/* loaded from: classes6.dex */
public final class C6875l extends AbstractC6873j<GeneratedMessageLite.C6763b> {

    /* renamed from: com.google.protobuf.l$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38134a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f38134a = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38134a[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38134a[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38134a[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38134a[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38134a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38134a[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38134a[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38134a[WireFormat.FieldType.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f38134a[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f38134a[WireFormat.FieldType.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f38134a[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f38134a[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f38134a[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f38134a[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f38134a[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f38134a[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f38134a[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: a */
    public int mo30261a(Map.Entry<?, ?> extension) {
        return ((GeneratedMessageLite.C6763b) extension.getKey()).getNumber();
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: b */
    public Object mo30262b(ExtensionRegistryLite extensionRegistry, MessageLite defaultInstance, int number) {
        return extensionRegistry.findLiteExtensionByNumber(defaultInstance, number);
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: c */
    public FieldSet<GeneratedMessageLite.C6763b> mo30263c(Object message) {
        return ((GeneratedMessageLite.ExtendableMessage) message).extensions;
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: d */
    public FieldSet<GeneratedMessageLite.C6763b> mo30264d(Object message) {
        return ((GeneratedMessageLite.ExtendableMessage) message).m29267x();
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: e */
    public boolean mo30265e(MessageLite prototype) {
        return prototype instanceof GeneratedMessageLite.ExtendableMessage;
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: f */
    public void mo30266f(Object message) {
        mo30263c(message).m29142J();
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: g */
    public <UT, UB> UB mo30267g(Object obj, InterfaceC6888y interfaceC6888y, Object obj2, ExtensionRegistryLite extensionRegistryLite, FieldSet<GeneratedMessageLite.C6763b> fieldSet, UB ub, AbstractC6858c0<UT, UB> abstractC6858c0) throws IOException {
        Object valueOf;
        Object m29157u;
        ArrayList arrayList;
        GeneratedMessageLite.GeneratedExtension generatedExtension = (GeneratedMessageLite.GeneratedExtension) obj2;
        int number = generatedExtension.getNumber();
        if (generatedExtension.f37585d.isRepeated() && generatedExtension.f37585d.isPacked()) {
            switch (a.f38134a[generatedExtension.getLiteType().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29921J(arrayList);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29919H(arrayList);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29925N(arrayList);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29963o(arrayList);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29950h(arrayList);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29971s(arrayList);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29916E(arrayList);
                    break;
                case 8:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29940c(arrayList);
                    break;
                case 9:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29927P(arrayList);
                    break;
                case 10:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29923L(arrayList);
                    break;
                case 11:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29948g(arrayList);
                    break;
                case 12:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29942d(arrayList);
                    break;
                case 13:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29977x(arrayList);
                    break;
                case 14:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29926O(arrayList);
                    ub = (UB) C6854a0.m29755B(obj, number, arrayList, generatedExtension.f37585d.getEnumType(), ub, abstractC6858c0);
                    break;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + generatedExtension.f37585d.getLiteType());
            }
            fieldSet.m29145P(generatedExtension.f37585d, arrayList);
        } else {
            if (generatedExtension.getLiteType() != WireFormat.FieldType.ENUM) {
                switch (a.f38134a[generatedExtension.getLiteType().ordinal()]) {
                    case 1:
                        valueOf = Double.valueOf(interfaceC6888y.readDouble());
                        break;
                    case 2:
                        valueOf = Float.valueOf(interfaceC6888y.readFloat());
                        break;
                    case 3:
                        valueOf = Long.valueOf(interfaceC6888y.mo29957l());
                        break;
                    case 4:
                        valueOf = Long.valueOf(interfaceC6888y.mo29914C());
                        break;
                    case 5:
                        valueOf = Integer.valueOf(interfaceC6888y.mo29969r());
                        break;
                    case 6:
                        valueOf = Long.valueOf(interfaceC6888y.mo29922K());
                        break;
                    case 7:
                        valueOf = Integer.valueOf(interfaceC6888y.mo29974u());
                        break;
                    case 8:
                        valueOf = Boolean.valueOf(interfaceC6888y.mo29959m());
                        break;
                    case 9:
                        valueOf = Integer.valueOf(interfaceC6888y.mo29936a());
                        break;
                    case 10:
                        valueOf = Integer.valueOf(interfaceC6888y.mo29930S());
                        break;
                    case 11:
                        valueOf = Long.valueOf(interfaceC6888y.mo29978y());
                        break;
                    case 12:
                        valueOf = Integer.valueOf(interfaceC6888y.mo29979z());
                        break;
                    case 13:
                        valueOf = Long.valueOf(interfaceC6888y.mo29929R());
                        break;
                    case 14:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 15:
                        valueOf = interfaceC6888y.mo29913B();
                        break;
                    case 16:
                        valueOf = interfaceC6888y.mo29975v();
                        break;
                    case 17:
                        if (!generatedExtension.isRepeated()) {
                            Object m29157u2 = fieldSet.m29157u(generatedExtension.f37585d);
                            if (m29157u2 instanceof GeneratedMessageLite) {
                                InterfaceC6889z m53625j = d9l.m53616a().m53625j(m29157u2);
                                if (!((GeneratedMessageLite) m29157u2).m29255o()) {
                                    Object newInstance = m53625j.newInstance();
                                    m53625j.mo30366a(newInstance, m29157u2);
                                    fieldSet.m29145P(generatedExtension.f37585d, newInstance);
                                    m29157u2 = newInstance;
                                }
                                interfaceC6888y.mo29915D(m29157u2, m53625j, extensionRegistryLite);
                                return ub;
                            }
                        }
                        valueOf = interfaceC6888y.mo29965p(generatedExtension.getMessageDefaultInstance().getClass(), extensionRegistryLite);
                        break;
                    case 18:
                        if (!generatedExtension.isRepeated()) {
                            Object m29157u3 = fieldSet.m29157u(generatedExtension.f37585d);
                            if (m29157u3 instanceof GeneratedMessageLite) {
                                InterfaceC6889z m53625j2 = d9l.m53616a().m53625j(m29157u3);
                                if (!((GeneratedMessageLite) m29157u3).m29255o()) {
                                    Object newInstance2 = m53625j2.newInstance();
                                    m53625j2.mo30366a(newInstance2, m29157u3);
                                    fieldSet.m29145P(generatedExtension.f37585d, newInstance2);
                                    m29157u3 = newInstance2;
                                }
                                interfaceC6888y.mo29952i(m29157u3, m53625j2, extensionRegistryLite);
                                return ub;
                            }
                        }
                        valueOf = interfaceC6888y.mo29973t(generatedExtension.getMessageDefaultInstance().getClass(), extensionRegistryLite);
                        break;
                    default:
                        valueOf = null;
                        break;
                }
            } else {
                int mo29969r = interfaceC6888y.mo29969r();
                if (generatedExtension.f37585d.getEnumType().findValueByNumber(mo29969r) == null) {
                    return (UB) C6854a0.m29772O(obj, number, mo29969r, ub, abstractC6858c0);
                }
                valueOf = Integer.valueOf(mo29969r);
            }
            if (generatedExtension.isRepeated()) {
                fieldSet.m29151h(generatedExtension.f37585d, valueOf);
            } else {
                int i = a.f38134a[generatedExtension.getLiteType().ordinal()];
                if ((i == 17 || i == 18) && (m29157u = fieldSet.m29157u(generatedExtension.f37585d)) != null) {
                    valueOf = Internal.m29346d(m29157u, valueOf);
                }
                fieldSet.m29145P(generatedExtension.f37585d, valueOf);
            }
        }
        return ub;
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: h */
    public void mo30268h(InterfaceC6888y reader, Object extensionObject, ExtensionRegistryLite extensionRegistry, FieldSet<GeneratedMessageLite.C6763b> extensions) throws IOException {
        GeneratedMessageLite.GeneratedExtension generatedExtension = (GeneratedMessageLite.GeneratedExtension) extensionObject;
        extensions.m29145P(generatedExtension.f37585d, reader.mo29973t(generatedExtension.getMessageDefaultInstance().getClass(), extensionRegistry));
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: i */
    public void mo30269i(ByteString data, Object extensionObject, ExtensionRegistryLite extensionRegistry, FieldSet<GeneratedMessageLite.C6763b> extensions) throws IOException {
        GeneratedMessageLite.GeneratedExtension generatedExtension = (GeneratedMessageLite.GeneratedExtension) extensionObject;
        MessageLite.Builder newBuilderForType = generatedExtension.getMessageDefaultInstance().newBuilderForType();
        CodedInputStream newCodedInput = data.newCodedInput();
        newBuilderForType.mergeFrom(newCodedInput, extensionRegistry);
        extensions.m29145P(generatedExtension.f37585d, newBuilderForType.buildPartial());
        newCodedInput.checkLastTagWas(0);
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: j */
    public void mo30270j(Writer writer, Map.Entry<?, ?> extension) throws IOException {
        GeneratedMessageLite.C6763b c6763b = (GeneratedMessageLite.C6763b) extension.getKey();
        if (!c6763b.isRepeated()) {
            switch (a.f38134a[c6763b.getLiteType().ordinal()]) {
                case 1:
                    writer.writeDouble(c6763b.getNumber(), ((Double) extension.getValue()).doubleValue());
                    return;
                case 2:
                    writer.writeFloat(c6763b.getNumber(), ((Float) extension.getValue()).floatValue());
                    return;
                case 3:
                    writer.writeInt64(c6763b.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 4:
                    writer.writeUInt64(c6763b.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 5:
                    writer.writeInt32(c6763b.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 6:
                    writer.writeFixed64(c6763b.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 7:
                    writer.writeFixed32(c6763b.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 8:
                    writer.writeBool(c6763b.getNumber(), ((Boolean) extension.getValue()).booleanValue());
                    return;
                case 9:
                    writer.writeUInt32(c6763b.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 10:
                    writer.writeSFixed32(c6763b.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 11:
                    writer.writeSFixed64(c6763b.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 12:
                    writer.writeSInt32(c6763b.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 13:
                    writer.writeSInt64(c6763b.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 14:
                    writer.writeInt32(c6763b.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 15:
                    writer.writeBytes(c6763b.getNumber(), (ByteString) extension.getValue());
                    return;
                case 16:
                    writer.writeString(c6763b.getNumber(), (String) extension.getValue());
                    return;
                case 17:
                    writer.mo29734h(c6763b.getNumber(), extension.getValue(), d9l.m53616a().m53624i(extension.getValue().getClass()));
                    return;
                case 18:
                    writer.mo29737k(c6763b.getNumber(), extension.getValue(), d9l.m53616a().m53624i(extension.getValue().getClass()));
                    return;
                default:
                    return;
            }
        }
        switch (a.f38134a[c6763b.getLiteType().ordinal()]) {
            case 1:
                C6854a0.m29781X(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 2:
                C6854a0.m29795f0(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 3:
                C6854a0.m29807l0(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 4:
                C6854a0.m29762E0(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 5:
                C6854a0.m29803j0(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 6:
                C6854a0.m29791d0(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 7:
                C6854a0.m29787b0(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 8:
                C6854a0.m29777T(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 9:
                C6854a0.m29758C0(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 10:
                C6854a0.m29819r0(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 11:
                C6854a0.m29823t0(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 12:
                C6854a0.m29827v0(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 13:
                C6854a0.m29831x0(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 14:
                C6854a0.m29803j0(c6763b.getNumber(), (List) extension.getValue(), writer, c6763b.isPacked());
                return;
            case 15:
                C6854a0.m29779V(c6763b.getNumber(), (List) extension.getValue(), writer);
                return;
            case 16:
                C6854a0.m29754A0(c6763b.getNumber(), (List) extension.getValue(), writer);
                return;
            case 17:
                List list = (List) extension.getValue();
                if (list == null || list.isEmpty()) {
                    return;
                }
                C6854a0.m29799h0(c6763b.getNumber(), (List) extension.getValue(), writer, d9l.m53616a().m53624i(list.get(0).getClass()));
                return;
            case 18:
                List list2 = (List) extension.getValue();
                if (list2 == null || list2.isEmpty()) {
                    return;
                }
                C6854a0.m29815p0(c6763b.getNumber(), (List) extension.getValue(), writer, d9l.m53616a().m53624i(list2.get(0).getClass()));
                return;
            default:
                return;
        }
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: k */
    public void mo30271k(Object message, FieldSet<GeneratedMessageLite.C6763b> extensions) {
        ((GeneratedMessageLite.ExtendableMessage) message).extensions = extensions;
    }
}
