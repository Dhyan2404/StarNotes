package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.FieldSet;
import com.google.protobuf.Message;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes6.dex */
public final class DynamicMessage extends AbstractMessage {

    /* renamed from: e */
    public final Descriptors.Descriptor f37381e;

    /* renamed from: f */
    public final FieldSet<Descriptors.FieldDescriptor> f37382f;

    /* renamed from: g */
    public final Descriptors.FieldDescriptor[] f37383g;

    /* renamed from: h */
    public final UnknownFieldSet f37384h;

    /* renamed from: i */
    public int f37385i = -1;

    /* loaded from: classes6.dex */
    public static final class Builder extends AbstractMessage.Builder<Builder> {

        /* renamed from: e */
        public final Descriptors.Descriptor f37386e;

        /* renamed from: f */
        public FieldSet.C6740b<Descriptors.FieldDescriptor> f37387f;

        /* renamed from: g */
        public final Descriptors.FieldDescriptor[] f37388g;

        /* renamed from: h */
        public UnknownFieldSet f37389h;

        public /* synthetic */ Builder(Descriptors.Descriptor descriptor, C6725a c6725a) {
            this(descriptor);
        }

        /* renamed from: g */
        public static Message.Builder m29049g(Object o) {
            if (o instanceof Message.Builder) {
                return (Message.Builder) o;
            }
            if (o instanceof LazyField) {
                o = ((LazyField) o).getValue();
            }
            if (o instanceof Message) {
                return ((Message) o).toBuilder();
            }
            throw new IllegalArgumentException(String.format("Cannot convert %s to Message.Builder", o.getClass()));
        }

        /* renamed from: f */
        public final DynamicMessage m29050f() throws InvalidProtocolBufferException {
            if (isInitialized()) {
                return buildPartial();
            }
            Descriptors.Descriptor descriptor = this.f37386e;
            FieldSet<Descriptors.FieldDescriptor> m29169b = this.f37387f.m29169b();
            Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f37388g;
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) new DynamicMessage(descriptor, m29169b, (Descriptors.FieldDescriptor[]) Arrays.copyOf(fieldDescriptorArr, fieldDescriptorArr.length), this.f37389h)).asInvalidProtocolBufferException();
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            return this.f37387f.m29174h();
        }

        @Override // com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return this.f37386e;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getField(Descriptors.FieldDescriptor field) {
            m29051h(field);
            Object m29175i = this.f37387f.m29175i(field);
            return m29175i == null ? field.isRepeated() ? Collections.emptyList() : field.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE ? DynamicMessage.getDefaultInstance(field.getMessageType()) : field.getDefaultValue() : m29175i;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Message.Builder getFieldBuilder(Descriptors.FieldDescriptor field) {
            m29051h(field);
            if (field.isMapField()) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }
            if (field.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }
            Object m29176j = this.f37387f.m29176j(field);
            Message.Builder builder = m29176j == null ? new Builder(field.getMessageType()) : m29049g(m29176j);
            this.f37387f.m29184v(field, builder);
            return builder;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneof) {
            m29052i(oneof);
            return this.f37388g[oneof.getIndex()];
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.FieldDescriptor field, int index) {
            m29051h(field);
            return this.f37387f.m29177k(field, index);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Message.Builder getRepeatedFieldBuilder(Descriptors.FieldDescriptor field, int index) {
            m29051h(field);
            if (field.isMapField()) {
                throw new UnsupportedOperationException("Map fields cannot be repeated");
            }
            if (field.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }
            Message.Builder m29049g = m29049g(this.f37387f.m29178l(field, index));
            this.f37387f.m29185w(field, index, m29049g);
            return m29049g;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.FieldDescriptor field) {
            m29051h(field);
            return this.f37387f.m29179m(field);
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public UnknownFieldSet getUnknownFields() {
            return this.f37389h;
        }

        /* renamed from: h */
        public final void m29051h(Descriptors.FieldDescriptor field) {
            if (field.getContainingType() != this.f37386e) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.FieldDescriptor field) {
            m29051h(field);
            return this.f37387f.m29180n(field);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageOrBuilder
        public boolean hasOneof(Descriptors.OneofDescriptor oneof) {
            m29052i(oneof);
            return this.f37388g[oneof.getIndex()] != null;
        }

        /* renamed from: i */
        public final void m29052i(Descriptors.OneofDescriptor oneof) {
            if (oneof.getContainingType() != this.f37386e) {
                throw new IllegalArgumentException("OneofDescriptor does not match message type.");
            }
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            for (Descriptors.FieldDescriptor fieldDescriptor : this.f37386e.getFields()) {
                if (fieldDescriptor.isRequired() && !this.f37387f.m29180n(fieldDescriptor)) {
                    return false;
                }
            }
            return this.f37387f.m29181o();
        }

        /* renamed from: j */
        public final void m29053j(Descriptors.FieldDescriptor field, Object value) {
            int i = C6726b.f37391a[field.getType().ordinal()];
            if (i != 1) {
                if (i == 2 && (value instanceof Message.Builder)) {
                    throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(field.getNumber()), field.getLiteType().getJavaType(), value.getClass().getName()));
                }
            } else {
                Internal.m29343a(value);
                if (!(value instanceof Descriptors.EnumValueDescriptor)) {
                    throw new IllegalArgumentException("DynamicMessage should use EnumValueDescriptor to set Enum Value.");
                }
            }
        }

        /* renamed from: k */
        public final void m29054k(Descriptors.FieldDescriptor field, Object value) {
            if (!field.isRepeated()) {
                m29053j(field, value);
                return;
            }
            Iterator it2 = ((List) value).iterator();
            while (it2.hasNext()) {
                m29053j(field, it2.next());
            }
        }

        public Builder(Descriptors.Descriptor type) {
            this.f37386e = type;
            this.f37387f = FieldSet.m29117M();
            this.f37389h = UnknownFieldSet.getDefaultInstance();
            this.f37388g = new Descriptors.FieldDescriptor[type.toProto().getOneofDeclCount()];
        }

        @Override // com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            m29051h(field);
            m29053j(field, value);
            this.f37387f.m29168a(field, value);
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor field) {
            m29051h(field);
            Descriptors.OneofDescriptor containingOneof = field.getContainingOneof();
            if (containingOneof != null) {
                int index = containingOneof.getIndex();
                Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f37388g;
                if (fieldDescriptorArr[index] == field) {
                    fieldDescriptorArr[index] = null;
                }
            }
            this.f37387f.m29172e(field);
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        public Builder newBuilderForField(Descriptors.FieldDescriptor field) {
            m29051h(field);
            if (field.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                return new Builder(field.getMessageType());
            }
            throw new IllegalArgumentException("newBuilderForField is only valid for fields with message type.");
        }

        @Override // com.google.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor field, Object value) {
            m29051h(field);
            m29054k(field, value);
            Descriptors.OneofDescriptor containingOneof = field.getContainingOneof();
            if (containingOneof != null) {
                int index = containingOneof.getIndex();
                Descriptors.FieldDescriptor fieldDescriptor = this.f37388g[index];
                if (fieldDescriptor != null && fieldDescriptor != field) {
                    this.f37387f.m29172e(fieldDescriptor);
                }
                this.f37388g[index] = field;
            } else if (!field.hasPresence() && !field.isRepeated() && value.equals(field.getDefaultValue())) {
                this.f37387f.m29172e(field);
                return this;
            }
            this.f37387f.m29184v(field, value);
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
            m29051h(field);
            m29053j(field, value);
            this.f37387f.m29185w(field, index, value);
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        public Builder setUnknownFields(UnknownFieldSet unknownFields) {
            this.f37389h = unknownFields;
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public DynamicMessage build() {
            if (isInitialized()) {
                return buildPartial();
            }
            Descriptors.Descriptor descriptor = this.f37386e;
            FieldSet<Descriptors.FieldDescriptor> m29169b = this.f37387f.m29169b();
            Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f37388g;
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) new DynamicMessage(descriptor, m29169b, (Descriptors.FieldDescriptor[]) Arrays.copyOf(fieldDescriptorArr, fieldDescriptorArr.length), this.f37389h));
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public DynamicMessage buildPartial() {
            if (this.f37386e.getOptions().getMapEntry()) {
                for (Descriptors.FieldDescriptor fieldDescriptor : this.f37386e.getFields()) {
                    if (fieldDescriptor.isOptional() && !this.f37387f.m29180n(fieldDescriptor)) {
                        if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                            this.f37387f.m29184v(fieldDescriptor, DynamicMessage.getDefaultInstance(fieldDescriptor.getMessageType()));
                        } else {
                            this.f37387f.m29184v(fieldDescriptor, fieldDescriptor.getDefaultValue());
                        }
                    }
                }
            }
            Descriptors.Descriptor descriptor = this.f37386e;
            FieldSet<Descriptors.FieldDescriptor> m29171d = this.f37387f.m29171d();
            Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f37388g;
            return new DynamicMessage(descriptor, m29171d, (Descriptors.FieldDescriptor[]) Arrays.copyOf(fieldDescriptorArr, fieldDescriptorArr.length), this.f37389h);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
            m29052i(oneof);
            Descriptors.FieldDescriptor fieldDescriptor = this.f37388g[oneof.getIndex()];
            if (fieldDescriptor != null) {
                clearField(fieldDescriptor);
            }
            return this;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public DynamicMessage getDefaultInstanceForType() {
            return DynamicMessage.getDefaultInstance(this.f37386e);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(Message other) {
            if (other instanceof DynamicMessage) {
                DynamicMessage dynamicMessage = (DynamicMessage) other;
                if (dynamicMessage.f37381e == this.f37386e) {
                    this.f37387f.m29182p(dynamicMessage.f37382f);
                    mergeUnknownFields(dynamicMessage.f37384h);
                    int i = 0;
                    while (true) {
                        Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f37388g;
                        if (i >= fieldDescriptorArr.length) {
                            return this;
                        }
                        if (fieldDescriptorArr[i] == null) {
                            fieldDescriptorArr[i] = dynamicMessage.f37383g[i];
                        } else if (dynamicMessage.f37383g[i] != null && this.f37388g[i] != dynamicMessage.f37383g[i]) {
                            this.f37387f.m29172e(this.f37388g[i]);
                            this.f37388g[i] = dynamicMessage.f37383g[i];
                        }
                        i++;
                    }
                } else {
                    throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
                }
            } else {
                return (Builder) super.mergeFrom(other);
            }
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder mergeUnknownFields(UnknownFieldSet unknownFields) {
            this.f37389h = UnknownFieldSet.newBuilder(this.f37389h).mergeFrom(unknownFields).build();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder clear() {
            this.f37387f = FieldSet.m29117M();
            this.f37389h = UnknownFieldSet.getDefaultInstance();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* renamed from: clone */
        public Builder mo72165clone() {
            Builder builder = new Builder(this.f37386e);
            builder.f37387f.m29182p(this.f37387f.m29169b());
            builder.mergeUnknownFields(this.f37389h);
            Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f37388g;
            System.arraycopy(fieldDescriptorArr, 0, builder.f37388g, 0, fieldDescriptorArr.length);
            return builder;
        }
    }

    /* renamed from: com.google.protobuf.DynamicMessage$a */
    /* loaded from: classes6.dex */
    public class C6725a extends AbstractParser<DynamicMessage> {
        public C6725a() {
        }

        @Override // com.google.protobuf.Parser
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public DynamicMessage parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            Builder newBuilder = DynamicMessage.newBuilder(DynamicMessage.this.f37381e);
            try {
                newBuilder.mergeFrom(input, extensionRegistry);
                return newBuilder.buildPartial();
            } catch (InvalidProtocolBufferException e) {
                throw e.setUnfinishedMessage(newBuilder.buildPartial());
            } catch (IOException e2) {
                throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(newBuilder.buildPartial());
            }
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseDelimitedFrom(InputStream input) throws InvalidProtocolBufferException {
            return super.parseDelimitedFrom(input);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return super.parseFrom(data);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialDelimitedFrom(InputStream input) throws InvalidProtocolBufferException {
            return super.parsePartialDelimitedFrom(input);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(ByteString data) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(data);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseDelimitedFrom(input, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parsePartialDelimitedFrom(input, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(CodedInputStream input) throws InvalidProtocolBufferException {
            return super.parseFrom(input);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(CodedInputStream input) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(input);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseFrom(input, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(InputStream input) throws InvalidProtocolBufferException {
            return super.parseFrom(input);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(InputStream input) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(input);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseFrom(input, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(input, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return super.parseFrom(data);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(byte[] data) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(data);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(data, off, len);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return super.parseFrom(data);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(byte[] data, int off, int len, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(data, off, len, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException {
            return super.parseFrom(data, off, len);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(byte[] data, int off, int len, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseFrom(data, off, len, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseFrom(data, extensionRegistry);
        }
    }

    /* renamed from: com.google.protobuf.DynamicMessage$b */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6726b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f37391a;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.Type.values().length];
            f37391a = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37391a[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public DynamicMessage(Descriptors.Descriptor type, FieldSet<Descriptors.FieldDescriptor> fields, Descriptors.FieldDescriptor[] oneofCases, UnknownFieldSet unknownFields) {
        this.f37381e = type;
        this.f37382f = fields;
        this.f37383g = oneofCases;
        this.f37384h = unknownFields;
    }

    public static DynamicMessage getDefaultInstance(Descriptors.Descriptor type) {
        return new DynamicMessage(type, FieldSet.m29136s(), new Descriptors.FieldDescriptor[type.toProto().getOneofDeclCount()], UnknownFieldSet.getDefaultInstance());
    }

    /* renamed from: k */
    public static boolean m29046k(Descriptors.Descriptor type, FieldSet<Descriptors.FieldDescriptor> fields) {
        for (Descriptors.FieldDescriptor fieldDescriptor : type.getFields()) {
            if (fieldDescriptor.isRequired() && !fields.m29137B(fieldDescriptor)) {
                return false;
            }
        }
        return fields.m29140E();
    }

    public static Builder newBuilder(Descriptors.Descriptor type) {
        return new Builder(type, null);
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor type, CodedInputStream input) throws IOException {
        return newBuilder(type).mergeFrom(input).m29050f();
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
        return this.f37382f.m29156t();
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Descriptors.Descriptor getDescriptorForType() {
        return this.f37381e;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getField(Descriptors.FieldDescriptor field) {
        verifyContainingType(field);
        Object m29157u = this.f37382f.m29157u(field);
        return m29157u == null ? field.isRepeated() ? Collections.emptyList() : field.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE ? getDefaultInstance(field.getMessageType()) : field.getDefaultValue() : m29157u;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageOrBuilder
    public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneof) {
        m29047l(oneof);
        return this.f37383g[oneof.getIndex()];
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<DynamicMessage> getParserForType() {
        return new C6725a();
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getRepeatedField(Descriptors.FieldDescriptor field, int index) {
        verifyContainingType(field);
        return this.f37382f.m29160x(field, index);
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public int getRepeatedFieldCount(Descriptors.FieldDescriptor field) {
        verifyContainingType(field);
        return this.f37382f.m29161y(field);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int m29162z;
        int serializedSize;
        int i = this.f37385i;
        if (i != -1) {
            return i;
        }
        if (this.f37381e.getOptions().getMessageSetWireFormat()) {
            m29162z = this.f37382f.m29158v();
            serializedSize = this.f37384h.getSerializedSizeAsMessageSet();
        } else {
            m29162z = this.f37382f.m29162z();
            serializedSize = this.f37384h.getSerializedSize();
        }
        int i2 = m29162z + serializedSize;
        this.f37385i = i2;
        return i2;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public UnknownFieldSet getUnknownFields() {
        return this.f37384h;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public boolean hasField(Descriptors.FieldDescriptor field) {
        verifyContainingType(field);
        return this.f37382f.m29137B(field);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageOrBuilder
    public boolean hasOneof(Descriptors.OneofDescriptor oneof) {
        m29047l(oneof);
        return this.f37383g[oneof.getIndex()] != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public boolean isInitialized() {
        return m29046k(this.f37381e, this.f37382f);
    }

    /* renamed from: l */
    public final void m29047l(Descriptors.OneofDescriptor oneof) {
        if (oneof.getContainingType() != this.f37381e) {
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }
    }

    public final void verifyContainingType(Descriptors.FieldDescriptor field) {
        if (field.getContainingType() != this.f37381e) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream output) throws IOException {
        if (this.f37381e.getOptions().getMessageSetWireFormat()) {
            this.f37382f.m29148V(output);
            this.f37384h.writeAsMessageSetTo(output);
        } else {
            this.f37382f.m29150X(output);
            this.f37384h.writeTo(output);
        }
    }

    public static Builder newBuilder(Message prototype) {
        return new Builder(prototype.getDescriptorForType(), null).mergeFrom(prototype);
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor type, CodedInputStream input, ExtensionRegistry extensionRegistry) throws IOException {
        return newBuilder(type).mergeFrom(input, (ExtensionRegistryLite) extensionRegistry).m29050f();
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor type, ByteString data) throws InvalidProtocolBufferException {
        return newBuilder(type).mergeFrom(data).m29050f();
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public DynamicMessage getDefaultInstanceForType() {
        return getDefaultInstance(this.f37381e);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return new Builder(this.f37381e, null);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return newBuilderForType().mergeFrom((Message) this);
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor type, ByteString data, ExtensionRegistry extensionRegistry) throws InvalidProtocolBufferException {
        return newBuilder(type).mergeFrom(data, (ExtensionRegistryLite) extensionRegistry).m29050f();
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor type, byte[] data) throws InvalidProtocolBufferException {
        return newBuilder(type).mergeFrom(data).m29050f();
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor type, byte[] data, ExtensionRegistry extensionRegistry) throws InvalidProtocolBufferException {
        return newBuilder(type).mergeFrom(data, (ExtensionRegistryLite) extensionRegistry).m29050f();
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor type, InputStream input) throws IOException {
        return newBuilder(type).mergeFrom(input).m29050f();
    }

    public static DynamicMessage parseFrom(Descriptors.Descriptor type, InputStream input, ExtensionRegistry extensionRegistry) throws IOException {
        return newBuilder(type).mergeFrom(input, (ExtensionRegistryLite) extensionRegistry).m29050f();
    }
}
