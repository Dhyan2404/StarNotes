package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.Message;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes6.dex */
public final class MapEntry<K, V> extends AbstractMessage {

    /* renamed from: e */
    public final K f37697e;

    /* renamed from: f */
    public final V f37698f;

    /* renamed from: g */
    public final C6793b<K, V> f37699g;

    /* renamed from: h */
    public volatile int f37700h;

    /* loaded from: classes6.dex */
    public static class Builder<K, V> extends AbstractMessage.Builder<Builder<K, V>> {

        /* renamed from: e */
        public final C6793b<K, V> f37701e;

        /* renamed from: f */
        public K f37702f;

        /* renamed from: g */
        public V f37703g;

        /* renamed from: h */
        public boolean f37704h;

        /* renamed from: i */
        public boolean f37705i;

        public Builder<K, V> clearKey() {
            this.f37702f = this.f37701e.f37716b;
            this.f37704h = false;
            return this;
        }

        public Builder<K, V> clearValue() {
            this.f37703g = this.f37701e.f37718d;
            this.f37705i = false;
            return this;
        }

        /* renamed from: e */
        public final void m29389e(Descriptors.FieldDescriptor field) {
            if (field.getContainingType() == this.f37701e.f37706e) {
                return;
            }
            throw new RuntimeException("Wrong FieldDescriptor \"" + field.getFullName() + "\" used in message \"" + this.f37701e.f37706e.getFullName());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            TreeMap treeMap = new TreeMap();
            for (Descriptors.FieldDescriptor fieldDescriptor : this.f37701e.f37706e.getFields()) {
                if (hasField(fieldDescriptor)) {
                    treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                }
            }
            return Collections.unmodifiableMap(treeMap);
        }

        @Override // com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return this.f37701e.f37706e;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getField(Descriptors.FieldDescriptor field) {
            m29389e(field);
            Object key = field.getNumber() == 1 ? getKey() : getValue();
            return field.getType() == Descriptors.FieldDescriptor.Type.ENUM ? field.getEnumType().findValueByNumberCreatingIfUnknown(((Integer) key).intValue()) : key;
        }

        public K getKey() {
            return this.f37702f;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.FieldDescriptor field, int index) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.FieldDescriptor field) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public UnknownFieldSet getUnknownFields() {
            return UnknownFieldSet.getDefaultInstance();
        }

        public V getValue() {
            return this.f37703g;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.FieldDescriptor field) {
            m29389e(field);
            return field.getNumber() == 1 ? this.f37704h : this.f37705i;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return MapEntry.m29386l(this.f37701e, this.f37703g);
        }

        @Override // com.google.protobuf.Message.Builder
        public Message.Builder newBuilderForField(Descriptors.FieldDescriptor field) {
            m29389e(field);
            if (field.getNumber() == 2 && field.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                return ((Message) this.f37703g).newBuilderForType();
            }
            throw new RuntimeException("\"" + field.getFullName() + "\" is not a message value field.");
        }

        public Builder<K, V> setKey(K key) {
            this.f37702f = key;
            this.f37704h = true;
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        public Builder<K, V> setUnknownFields(UnknownFieldSet unknownFields) {
            return this;
        }

        public Builder<K, V> setValue(V value) {
            this.f37703g = value;
            this.f37705i = true;
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        public Builder<K, V> addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.google.protobuf.Message.Builder
        public Builder<K, V> clearField(Descriptors.FieldDescriptor field) {
            m29389e(field);
            if (field.getNumber() == 1) {
                clearKey();
            } else {
                clearValue();
            }
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.Message.Builder
        public Builder<K, V> setField(Descriptors.FieldDescriptor field, Object value) {
            m29389e(field);
            if (value != null) {
                if (field.getNumber() == 1) {
                    setKey(value);
                } else {
                    if (field.getType() == Descriptors.FieldDescriptor.Type.ENUM) {
                        value = Integer.valueOf(((Descriptors.EnumValueDescriptor) value).getNumber());
                    } else if (field.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && !this.f37701e.f37718d.getClass().isInstance(value)) {
                        value = ((Message) this.f37701e.f37718d).toBuilder().mergeFrom((Message) value).build();
                    }
                    setValue(value);
                }
                return this;
            }
            throw new NullPointerException(field.getFullName() + " is null");
        }

        @Override // com.google.protobuf.Message.Builder
        public Builder<K, V> setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        public Builder(C6793b<K, V> metadata) {
            this(metadata, metadata.f37716b, metadata.f37718d, false, false);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public MapEntry<K, V> build() {
            MapEntry<K, V> buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public MapEntry<K, V> buildPartial() {
            return new MapEntry<>(this.f37701e, this.f37702f, this.f37703g);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MapEntry<K, V> getDefaultInstanceForType() {
            C6793b<K, V> c6793b = this.f37701e;
            return new MapEntry<>(c6793b, c6793b.f37716b, c6793b.f37718d);
        }

        public Builder(C6793b<K, V> metadata, K key, V value, boolean hasKey, boolean hasValue) {
            this.f37701e = metadata;
            this.f37702f = key;
            this.f37703g = value;
            this.f37704h = hasKey;
            this.f37705i = hasValue;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* renamed from: clone */
        public Builder<K, V> mo72165clone() {
            return new Builder<>(this.f37701e, this.f37702f, this.f37703g, this.f37704h, this.f37705i);
        }
    }

    /* renamed from: com.google.protobuf.MapEntry$b */
    /* loaded from: classes6.dex */
    public static final class C6793b<K, V> extends MapEntryLite.C6795b<K, V> {

        /* renamed from: e */
        public final Descriptors.Descriptor f37706e;

        /* renamed from: f */
        public final Parser<MapEntry<K, V>> f37707f;

        /* renamed from: com.google.protobuf.MapEntry$b$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractParser<MapEntry<K, V>> {
            public a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public MapEntry<K, V> parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MapEntry<>(C6793b.this, input, extensionRegistry);
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

        public C6793b(Descriptors.Descriptor descriptor, MapEntry<K, V> defaultInstance, WireFormat.FieldType keyType, WireFormat.FieldType valueType) {
            super(keyType, defaultInstance.f37697e, valueType, defaultInstance.f37698f);
            this.f37706e = descriptor;
            this.f37707f = new a();
        }
    }

    /* renamed from: l */
    public static <V> boolean m29386l(C6793b metadata, V value) {
        if (metadata.f37717c.getJavaType() == WireFormat.JavaType.MESSAGE) {
            return ((MessageLite) value).isInitialized();
        }
        return true;
    }

    public static <K, V> MapEntry<K, V> newDefaultInstance(Descriptors.Descriptor descriptor, WireFormat.FieldType keyType, K defaultKey, WireFormat.FieldType valueType, V defaultValue) {
        return new MapEntry<>(descriptor, keyType, defaultKey, valueType, defaultValue);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.MessageOrBuilder
    public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
        TreeMap treeMap = new TreeMap();
        for (Descriptors.FieldDescriptor fieldDescriptor : this.f37699g.f37706e.getFields()) {
            if (hasField(fieldDescriptor)) {
                treeMap.put(fieldDescriptor, getField(fieldDescriptor));
            }
        }
        return Collections.unmodifiableMap(treeMap);
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Descriptors.Descriptor getDescriptorForType() {
        return this.f37699g.f37706e;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getField(Descriptors.FieldDescriptor field) {
        m29387j(field);
        Object key = field.getNumber() == 1 ? getKey() : getValue();
        return field.getType() == Descriptors.FieldDescriptor.Type.ENUM ? field.getEnumType().findValueByNumberCreatingIfUnknown(((Integer) key).intValue()) : key;
    }

    public K getKey() {
        return this.f37697e;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<MapEntry<K, V>> getParserForType() {
        return this.f37699g.f37707f;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getRepeatedField(Descriptors.FieldDescriptor field, int index) {
        throw new RuntimeException("There is no repeated field in a map entry message.");
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public int getRepeatedFieldCount(Descriptors.FieldDescriptor field) {
        throw new RuntimeException("There is no repeated field in a map entry message.");
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        if (this.f37700h != -1) {
            return this.f37700h;
        }
        int m29391a = MapEntryLite.m29391a(this.f37699g, this.f37697e, this.f37698f);
        this.f37700h = m29391a;
        return m29391a;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public UnknownFieldSet getUnknownFields() {
        return UnknownFieldSet.getDefaultInstance();
    }

    public V getValue() {
        return this.f37698f;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public boolean hasField(Descriptors.FieldDescriptor field) {
        m29387j(field);
        return true;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public boolean isInitialized() {
        return m29386l(this.f37699g, this.f37698f);
    }

    /* renamed from: j */
    public final void m29387j(Descriptors.FieldDescriptor field) {
        if (field.getContainingType() == this.f37699g.f37706e) {
            return;
        }
        throw new RuntimeException("Wrong FieldDescriptor \"" + field.getFullName() + "\" used in message \"" + this.f37699g.f37706e.getFullName());
    }

    /* renamed from: k */
    public final C6793b<K, V> m29388k() {
        return this.f37699g;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream output) throws IOException {
        MapEntryLite.m29394e(output, this.f37699g, this.f37697e, this.f37698f);
    }

    public MapEntry(Descriptors.Descriptor descriptor, WireFormat.FieldType keyType, K defaultKey, WireFormat.FieldType valueType, V defaultValue) {
        this.f37700h = -1;
        this.f37697e = defaultKey;
        this.f37698f = defaultValue;
        this.f37699g = new C6793b<>(descriptor, this, keyType, valueType);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public MapEntry<K, V> getDefaultInstanceForType() {
        C6793b<K, V> c6793b = this.f37699g;
        return new MapEntry<>(c6793b, c6793b.f37716b, c6793b.f37718d);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder<K, V> newBuilderForType() {
        return new Builder<>(this.f37699g);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder<K, V> toBuilder() {
        return new Builder<>(this.f37699g, this.f37697e, this.f37698f, true, true);
    }

    public MapEntry(C6793b metadata, K key, V value) {
        this.f37700h = -1;
        this.f37697e = key;
        this.f37698f = value;
        this.f37699g = metadata;
    }

    public MapEntry(C6793b<K, V> c6793b, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this.f37700h = -1;
        try {
            this.f37699g = c6793b;
            Map.Entry m29392c = MapEntryLite.m29392c(codedInputStream, c6793b, extensionRegistryLite);
            this.f37697e = (K) m29392c.getKey();
            this.f37698f = (V) m29392c.getValue();
        } catch (InvalidProtocolBufferException e) {
            throw e.setUnfinishedMessage(this);
        } catch (IOException e2) {
            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
        }
    }
}
