package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.WireFormat;
import com.sunia.HTREnginev2.d9l;
import com.sunia.HTREnginev2.dun;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.protobuf.k */
/* loaded from: classes6.dex */
public final class C6874k extends AbstractC6873j<Descriptors.FieldDescriptor> {

    /* renamed from: a */
    public static final long f38132a = m30272l();

    /* renamed from: com.google.protobuf.k$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38133a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f38133a = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38133a[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38133a[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38133a[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38133a[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38133a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38133a[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38133a[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38133a[WireFormat.FieldType.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f38133a[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f38133a[WireFormat.FieldType.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f38133a[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f38133a[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f38133a[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f38133a[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f38133a[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f38133a[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f38133a[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* renamed from: l */
    public static <T> long m30272l() {
        return dun.m53735Z(GeneratedMessageV3.ExtendableMessage.class.getDeclaredField("extensions"));
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: a */
    public int mo30261a(Map.Entry<?, ?> extension) {
        return ((Descriptors.FieldDescriptor) extension.getKey()).getNumber();
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: b */
    public Object mo30262b(ExtensionRegistryLite extensionRegistry, MessageLite defaultInstance, int number) {
        return ((ExtensionRegistry) extensionRegistry).findImmutableExtensionByNumber(((Message) defaultInstance).getDescriptorForType(), number);
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: c */
    public FieldSet<Descriptors.FieldDescriptor> mo30263c(Object message) {
        return (FieldSet) dun.m53726Q(message, f38132a);
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: d */
    public FieldSet<Descriptors.FieldDescriptor> mo30264d(Object message) {
        FieldSet<Descriptors.FieldDescriptor> mo30263c = mo30263c(message);
        if (!mo30263c.m29139D()) {
            return mo30263c;
        }
        FieldSet<Descriptors.FieldDescriptor> clone = mo30263c.clone();
        mo30271k(message, clone);
        return clone;
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: e */
    public boolean mo30265e(MessageLite prototype) {
        return prototype instanceof GeneratedMessageV3.ExtendableMessage;
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: f */
    public void mo30266f(Object message) {
        mo30263c(message).m29142J();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0026. Please report as an issue. */
    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: g */
    public <UT, UB> UB mo30267g(Object obj, InterfaceC6888y interfaceC6888y, Object obj2, ExtensionRegistryLite extensionRegistryLite, FieldSet<Descriptors.FieldDescriptor> fieldSet, UB ub, AbstractC6858c0<UT, UB> abstractC6858c0) throws IOException {
        Object valueOf;
        Object m29157u;
        ArrayList arrayList;
        ArrayList arrayList2;
        ExtensionRegistry.ExtensionInfo extensionInfo = (ExtensionRegistry.ExtensionInfo) obj2;
        int number = extensionInfo.descriptor.getNumber();
        if (extensionInfo.descriptor.isRepeated() && extensionInfo.descriptor.isPacked()) {
            switch (a.f38133a[extensionInfo.descriptor.getLiteType().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29921J(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29919H(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29925N(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29963o(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29950h(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29971s(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29916E(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                case 8:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29940c(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                case 9:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29927P(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                case 10:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29923L(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                case 11:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29948g(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                case 12:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29942d(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                case 13:
                    arrayList = new ArrayList();
                    interfaceC6888y.mo29977x(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                case 14:
                    ArrayList arrayList3 = new ArrayList();
                    interfaceC6888y.mo29926O(arrayList3);
                    arrayList2 = new ArrayList();
                    Iterator<Integer> it2 = arrayList3.iterator();
                    while (it2.hasNext()) {
                        int intValue = it2.next().intValue();
                        Descriptors.EnumValueDescriptor findValueByNumber = extensionInfo.descriptor.getEnumType().findValueByNumber(intValue);
                        if (findValueByNumber != null) {
                            arrayList2.add(findValueByNumber);
                        } else {
                            ub = (UB) C6854a0.m29772O(obj, number, intValue, ub, abstractC6858c0);
                        }
                    }
                    fieldSet.m29145P(extensionInfo.descriptor, arrayList2);
                    break;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + extensionInfo.descriptor.getLiteType());
            }
        } else {
            if (extensionInfo.descriptor.getLiteType() != WireFormat.FieldType.ENUM) {
                switch (a.f38133a[extensionInfo.descriptor.getLiteType().ordinal()]) {
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
                        valueOf = interfaceC6888y.mo29965p(extensionInfo.defaultInstance.getClass(), extensionRegistryLite);
                        break;
                    case 18:
                        valueOf = interfaceC6888y.mo29973t(extensionInfo.defaultInstance.getClass(), extensionRegistryLite);
                        break;
                    default:
                        valueOf = null;
                        break;
                }
            } else {
                int mo29969r = interfaceC6888y.mo29969r();
                valueOf = extensionInfo.descriptor.getEnumType().findValueByNumber(mo29969r);
                if (valueOf == null) {
                    return (UB) C6854a0.m29772O(obj, number, mo29969r, ub, abstractC6858c0);
                }
            }
            if (extensionInfo.descriptor.isRepeated()) {
                fieldSet.m29151h(extensionInfo.descriptor, valueOf);
            } else {
                int i = a.f38133a[extensionInfo.descriptor.getLiteType().ordinal()];
                if ((i == 17 || i == 18) && (m29157u = fieldSet.m29157u(extensionInfo.descriptor)) != null) {
                    valueOf = Internal.m29346d(m29157u, valueOf);
                }
                fieldSet.m29145P(extensionInfo.descriptor, valueOf);
            }
        }
        return ub;
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: h */
    public void mo30268h(InterfaceC6888y reader, Object extension, ExtensionRegistryLite extensionRegistry, FieldSet<Descriptors.FieldDescriptor> extensions) throws IOException {
        ExtensionRegistry.ExtensionInfo extensionInfo = (ExtensionRegistry.ExtensionInfo) extension;
        if (!ExtensionRegistryLite.isEagerlyParseMessageSets()) {
            extensions.m29145P(extensionInfo.descriptor, new LazyField(extensionInfo.defaultInstance, extensionRegistry, reader.mo29913B()));
        } else {
            extensions.m29145P(extensionInfo.descriptor, reader.mo29973t(extensionInfo.defaultInstance.getClass(), extensionRegistry));
        }
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: i */
    public void mo30269i(ByteString data, Object extension, ExtensionRegistryLite extensionRegistry, FieldSet<Descriptors.FieldDescriptor> extensions) throws IOException {
        ExtensionRegistry.ExtensionInfo extensionInfo = (ExtensionRegistry.ExtensionInfo) extension;
        Message buildPartial = extensionInfo.defaultInstance.newBuilderForType().buildPartial();
        if (!ExtensionRegistryLite.isEagerlyParseMessageSets()) {
            extensions.m29145P(extensionInfo.descriptor, new LazyField(extensionInfo.defaultInstance, extensionRegistry, data));
            return;
        }
        AbstractC6857c m29909V = AbstractC6857c.m29909V(ByteBuffer.wrap(data.toByteArray()), true);
        d9l.m53616a().m53621f(buildPartial, m29909V, extensionRegistry);
        extensions.m29145P(extensionInfo.descriptor, buildPartial);
        if (m29909V.mo29917F() != Integer.MAX_VALUE) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: j */
    public void mo30270j(Writer writer, Map.Entry<?, ?> extension) throws IOException {
        Descriptors.FieldDescriptor fieldDescriptor = (Descriptors.FieldDescriptor) extension.getKey();
        if (!fieldDescriptor.isRepeated()) {
            switch (a.f38133a[fieldDescriptor.getLiteType().ordinal()]) {
                case 1:
                    writer.writeDouble(fieldDescriptor.getNumber(), ((Double) extension.getValue()).doubleValue());
                    return;
                case 2:
                    writer.writeFloat(fieldDescriptor.getNumber(), ((Float) extension.getValue()).floatValue());
                    return;
                case 3:
                    writer.writeInt64(fieldDescriptor.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 4:
                    writer.writeUInt64(fieldDescriptor.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 5:
                    writer.writeInt32(fieldDescriptor.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 6:
                    writer.writeFixed64(fieldDescriptor.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 7:
                    writer.writeFixed32(fieldDescriptor.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 8:
                    writer.writeBool(fieldDescriptor.getNumber(), ((Boolean) extension.getValue()).booleanValue());
                    return;
                case 9:
                    writer.writeUInt32(fieldDescriptor.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 10:
                    writer.writeSFixed32(fieldDescriptor.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 11:
                    writer.writeSFixed64(fieldDescriptor.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 12:
                    writer.writeSInt32(fieldDescriptor.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 13:
                    writer.writeSInt64(fieldDescriptor.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 14:
                    writer.writeInt32(fieldDescriptor.getNumber(), ((Descriptors.EnumValueDescriptor) extension.getValue()).getNumber());
                    return;
                case 15:
                    writer.writeBytes(fieldDescriptor.getNumber(), (ByteString) extension.getValue());
                    return;
                case 16:
                    writer.writeString(fieldDescriptor.getNumber(), (String) extension.getValue());
                    return;
                case 17:
                    writer.mo29725B(fieldDescriptor.getNumber(), extension.getValue());
                    return;
                case 18:
                    writer.mo29752z(fieldDescriptor.getNumber(), extension.getValue());
                    return;
                default:
                    return;
            }
        }
        switch (a.f38133a[fieldDescriptor.getLiteType().ordinal()]) {
            case 1:
                C6854a0.m29781X(fieldDescriptor.getNumber(), (List) extension.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 2:
                C6854a0.m29795f0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 3:
                C6854a0.m29807l0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 4:
                C6854a0.m29762E0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 5:
                C6854a0.m29803j0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 6:
                C6854a0.m29791d0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 7:
                C6854a0.m29787b0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 8:
                C6854a0.m29777T(fieldDescriptor.getNumber(), (List) extension.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 9:
                C6854a0.m29758C0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 10:
                C6854a0.m29819r0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 11:
                C6854a0.m29823t0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 12:
                C6854a0.m29827v0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 13:
                C6854a0.m29831x0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 14:
                List list = (List) extension.getValue();
                ArrayList arrayList = new ArrayList();
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(Integer.valueOf(((Descriptors.EnumValueDescriptor) it2.next()).getNumber()));
                }
                C6854a0.m29803j0(fieldDescriptor.getNumber(), arrayList, writer, fieldDescriptor.isPacked());
                return;
            case 15:
                C6854a0.m29779V(fieldDescriptor.getNumber(), (List) extension.getValue(), writer);
                return;
            case 16:
                C6854a0.m29754A0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer);
                return;
            case 17:
                C6854a0.m29797g0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer);
                return;
            case 18:
                C6854a0.m29813o0(fieldDescriptor.getNumber(), (List) extension.getValue(), writer);
                return;
            default:
                return;
        }
    }

    @Override // com.google.protobuf.AbstractC6873j
    /* renamed from: k */
    public void mo30271k(Object message, FieldSet<Descriptors.FieldDescriptor> extensions) {
        dun.m53775t0(message, f38132a, extensions);
    }
}
