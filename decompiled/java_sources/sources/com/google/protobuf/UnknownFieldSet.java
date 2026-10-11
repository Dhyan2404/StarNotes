package com.google.protobuf;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLite;
import com.google.protobuf.Writer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes6.dex */
public final class UnknownFieldSet implements MessageLite {

    /* renamed from: f */
    public static final UnknownFieldSet f37922f = new UnknownFieldSet(new TreeMap());

    /* renamed from: g */
    public static final Parser f37923g = new Parser();

    /* renamed from: e */
    public final TreeMap<Integer, Field> f37924e;

    /* loaded from: classes6.dex */
    public static final class Builder implements MessageLite.Builder {

        /* renamed from: e */
        public TreeMap<Integer, Field.Builder> f37925e = new TreeMap<>();

        /* renamed from: a */
        public static /* synthetic */ Builder m29610a() {
            return m29611b();
        }

        /* renamed from: b */
        public static Builder m29611b() {
            return new Builder();
        }

        public Builder addField(int number, Field field) {
            if (number > 0) {
                this.f37925e.put(Integer.valueOf(number), Field.newBuilder(field));
                return this;
            }
            throw new IllegalArgumentException(number + " is not a valid field number.");
        }

        public Map<Integer, Field> asMap() {
            TreeMap treeMap = new TreeMap();
            for (Map.Entry<Integer, Field.Builder> entry : this.f37925e.entrySet()) {
                treeMap.put(entry.getKey(), entry.getValue().build());
            }
            return Collections.unmodifiableMap(treeMap);
        }

        /* renamed from: c */
        public final Field.Builder m29612c(int number) {
            if (number == 0) {
                return null;
            }
            Field.Builder builder = this.f37925e.get(Integer.valueOf(number));
            if (builder != null) {
                return builder;
            }
            Field.Builder newBuilder = Field.newBuilder();
            this.f37925e.put(Integer.valueOf(number), newBuilder);
            return newBuilder;
        }

        public Builder clearField(int number) {
            if (number > 0) {
                if (this.f37925e.containsKey(Integer.valueOf(number))) {
                    this.f37925e.remove(Integer.valueOf(number));
                }
                return this;
            }
            throw new IllegalArgumentException(number + " is not a valid field number.");
        }

        public boolean hasField(int number) {
            return this.f37925e.containsKey(Integer.valueOf(number));
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.MessageLite.Builder
        public boolean mergeDelimitedFrom(InputStream input) throws IOException {
            int read = input.read();
            if (read == -1) {
                return false;
            }
            mergeFrom((InputStream) new AbstractMessageLite.Builder.C6642a(input, CodedInputStream.readRawVarint32(read, input)));
            return true;
        }

        public Builder mergeField(int number, final Field field) {
            if (number > 0) {
                if (hasField(number)) {
                    m29612c(number).mergeFrom(field);
                } else {
                    addField(number, field);
                }
                return this;
            }
            throw new IllegalArgumentException(number + " is not a valid field number.");
        }

        public boolean mergeFieldFrom(int tag, CodedInputStream input) throws IOException {
            int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
            int tagWireType = WireFormat.getTagWireType(tag);
            if (tagWireType == 0) {
                m29612c(tagFieldNumber).addVarint(input.readInt64());
                return true;
            }
            if (tagWireType == 1) {
                m29612c(tagFieldNumber).addFixed64(input.readFixed64());
                return true;
            }
            if (tagWireType == 2) {
                m29612c(tagFieldNumber).addLengthDelimited(input.readBytes());
                return true;
            }
            if (tagWireType == 3) {
                Builder newBuilder = UnknownFieldSet.newBuilder();
                input.readGroup(tagFieldNumber, newBuilder, ExtensionRegistry.getEmptyRegistry());
                m29612c(tagFieldNumber).addGroup(newBuilder.build());
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            m29612c(tagFieldNumber).addFixed32(input.readFixed32());
            return true;
        }

        public Builder mergeLengthDelimitedField(int number, ByteString value) {
            if (number > 0) {
                m29612c(number).addLengthDelimited(value);
                return this;
            }
            throw new IllegalArgumentException(number + " is not a valid field number.");
        }

        public Builder mergeVarintField(int number, int value) {
            if (number > 0) {
                m29612c(number).addVarint(value);
                return this;
            }
            throw new IllegalArgumentException(number + " is not a valid field number.");
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public UnknownFieldSet build() {
            if (this.f37925e.isEmpty()) {
                return UnknownFieldSet.getDefaultInstance();
            }
            TreeMap treeMap = new TreeMap();
            for (Map.Entry<Integer, Field.Builder> entry : this.f37925e.entrySet()) {
                treeMap.put(entry.getKey(), entry.getValue().build());
            }
            return new UnknownFieldSet(treeMap);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public UnknownFieldSet buildPartial() {
            return build();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder clear() {
            this.f37925e = new TreeMap<>();
            return this;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public UnknownFieldSet getDefaultInstanceForType() {
            return UnknownFieldSet.getDefaultInstance();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Builder m72166clone() {
            Builder newBuilder = UnknownFieldSet.newBuilder();
            for (Map.Entry<Integer, Field.Builder> entry : this.f37925e.entrySet()) {
                newBuilder.f37925e.put(entry.getKey(), entry.getValue().m72167clone());
            }
            return newBuilder;
        }

        @Override // com.google.protobuf.MessageLite.Builder
        public boolean mergeDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return mergeDelimitedFrom(input);
        }

        public Builder mergeFrom(UnknownFieldSet other) {
            if (other != UnknownFieldSet.getDefaultInstance()) {
                for (Map.Entry entry : other.f37924e.entrySet()) {
                    mergeField(((Integer) entry.getKey()).intValue(), (Field) entry.getValue());
                }
            }
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream input) throws IOException {
            int readTag;
            do {
                readTag = input.readTag();
                if (readTag == 0) {
                    break;
                }
            } while (mergeFieldFrom(readTag, input));
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(ByteString data) throws InvalidProtocolBufferException {
            try {
                CodedInputStream newCodedInput = data.newCodedInput();
                mergeFrom(newCodedInput);
                newCodedInput.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", e2);
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(byte[] data) throws InvalidProtocolBufferException {
            try {
                CodedInputStream newInstance = CodedInputStream.newInstance(data);
                mergeFrom(newInstance);
                newInstance.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(InputStream input) throws IOException {
            CodedInputStream newInstance = CodedInputStream.newInstance(input);
            mergeFrom(newInstance);
            newInstance.checkLastTagWas(0);
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return mergeFrom(input);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return mergeFrom(data);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException {
            try {
                CodedInputStream newInstance = CodedInputStream.newInstance(data, off, len);
                mergeFrom(newInstance);
                newInstance.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return mergeFrom(data);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(byte[] data, int off, int len, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return mergeFrom(data, off, len);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return mergeFrom(input);
        }

        @Override // com.google.protobuf.MessageLite.Builder
        public Builder mergeFrom(MessageLite m) {
            if (m instanceof UnknownFieldSet) {
                return mergeFrom((UnknownFieldSet) m);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
    }

    /* loaded from: classes6.dex */
    public static final class Field {

        /* renamed from: f */
        public static final Field f37926f = newBuilder().build();

        /* renamed from: a */
        public List<Long> f37927a;

        /* renamed from: b */
        public List<Integer> f37928b;

        /* renamed from: c */
        public List<Long> f37929c;

        /* renamed from: d */
        public List<ByteString> f37930d;

        /* renamed from: e */
        public List<UnknownFieldSet> f37931e;

        /* loaded from: classes6.dex */
        public static final class Builder {

            /* renamed from: a */
            public Field f37932a = new Field();

            /* renamed from: a */
            public static /* synthetic */ Builder m29627a() {
                return m29628b();
            }

            /* renamed from: b */
            public static Builder m29628b() {
                return new Builder();
            }

            public Builder addFixed32(int value) {
                if (this.f37932a.f37928b == null) {
                    this.f37932a.f37928b = new ArrayList();
                }
                this.f37932a.f37928b.add(Integer.valueOf(value));
                return this;
            }

            public Builder addFixed64(long value) {
                if (this.f37932a.f37929c == null) {
                    this.f37932a.f37929c = new ArrayList();
                }
                this.f37932a.f37929c.add(Long.valueOf(value));
                return this;
            }

            public Builder addGroup(UnknownFieldSet value) {
                if (this.f37932a.f37931e == null) {
                    this.f37932a.f37931e = new ArrayList();
                }
                this.f37932a.f37931e.add(value);
                return this;
            }

            public Builder addLengthDelimited(ByteString value) {
                if (this.f37932a.f37930d == null) {
                    this.f37932a.f37930d = new ArrayList();
                }
                this.f37932a.f37930d.add(value);
                return this;
            }

            public Builder addVarint(long value) {
                if (this.f37932a.f37927a == null) {
                    this.f37932a.f37927a = new ArrayList();
                }
                this.f37932a.f37927a.add(Long.valueOf(value));
                return this;
            }

            public Field build() {
                Field field = new Field();
                if (this.f37932a.f37927a == null) {
                    field.f37927a = Collections.emptyList();
                } else {
                    field.f37927a = Collections.unmodifiableList(new ArrayList(this.f37932a.f37927a));
                }
                if (this.f37932a.f37928b == null) {
                    field.f37928b = Collections.emptyList();
                } else {
                    field.f37928b = Collections.unmodifiableList(new ArrayList(this.f37932a.f37928b));
                }
                if (this.f37932a.f37929c == null) {
                    field.f37929c = Collections.emptyList();
                } else {
                    field.f37929c = Collections.unmodifiableList(new ArrayList(this.f37932a.f37929c));
                }
                if (this.f37932a.f37930d == null) {
                    field.f37930d = Collections.emptyList();
                } else {
                    field.f37930d = Collections.unmodifiableList(new ArrayList(this.f37932a.f37930d));
                }
                if (this.f37932a.f37931e == null) {
                    field.f37931e = Collections.emptyList();
                } else {
                    field.f37931e = Collections.unmodifiableList(new ArrayList(this.f37932a.f37931e));
                }
                return field;
            }

            public Builder clear() {
                this.f37932a = new Field();
                return this;
            }

            public Builder mergeFrom(Field other) {
                if (!other.f37927a.isEmpty()) {
                    if (this.f37932a.f37927a == null) {
                        this.f37932a.f37927a = new ArrayList();
                    }
                    this.f37932a.f37927a.addAll(other.f37927a);
                }
                if (!other.f37928b.isEmpty()) {
                    if (this.f37932a.f37928b == null) {
                        this.f37932a.f37928b = new ArrayList();
                    }
                    this.f37932a.f37928b.addAll(other.f37928b);
                }
                if (!other.f37929c.isEmpty()) {
                    if (this.f37932a.f37929c == null) {
                        this.f37932a.f37929c = new ArrayList();
                    }
                    this.f37932a.f37929c.addAll(other.f37929c);
                }
                if (!other.f37930d.isEmpty()) {
                    if (this.f37932a.f37930d == null) {
                        this.f37932a.f37930d = new ArrayList();
                    }
                    this.f37932a.f37930d.addAll(other.f37930d);
                }
                if (!other.f37931e.isEmpty()) {
                    if (this.f37932a.f37931e == null) {
                        this.f37932a.f37931e = new ArrayList();
                    }
                    this.f37932a.f37931e.addAll(other.f37931e);
                }
                return this;
            }

            /* renamed from: clone, reason: merged with bridge method [inline-methods] */
            public Builder m72167clone() {
                Field field = new Field();
                if (this.f37932a.f37927a == null) {
                    field.f37927a = null;
                } else {
                    field.f37927a = new ArrayList(this.f37932a.f37927a);
                }
                if (this.f37932a.f37928b == null) {
                    field.f37928b = null;
                } else {
                    field.f37928b = new ArrayList(this.f37932a.f37928b);
                }
                if (this.f37932a.f37929c == null) {
                    field.f37929c = null;
                } else {
                    field.f37929c = new ArrayList(this.f37932a.f37929c);
                }
                if (this.f37932a.f37930d == null) {
                    field.f37930d = null;
                } else {
                    field.f37930d = new ArrayList(this.f37932a.f37930d);
                }
                if (this.f37932a.f37931e == null) {
                    field.f37931e = null;
                } else {
                    field.f37931e = new ArrayList(this.f37932a.f37931e);
                }
                Builder builder = new Builder();
                builder.f37932a = field;
                return builder;
            }
        }

        public static Field getDefaultInstance() {
            return f37926f;
        }

        public static Builder newBuilder() {
            return Builder.m29627a();
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other instanceof Field) {
                return Arrays.equals(m29624l(), ((Field) other).m29624l());
            }
            return false;
        }

        public List<Integer> getFixed32List() {
            return this.f37928b;
        }

        public List<Long> getFixed64List() {
            return this.f37929c;
        }

        public List<UnknownFieldSet> getGroupList() {
            return this.f37931e;
        }

        public List<ByteString> getLengthDelimitedList() {
            return this.f37930d;
        }

        public int getSerializedSize(int fieldNumber) {
            Iterator<Long> it2 = this.f37927a.iterator();
            int i = 0;
            while (it2.hasNext()) {
                i += CodedOutputStream.computeUInt64Size(fieldNumber, it2.next().longValue());
            }
            Iterator<Integer> it3 = this.f37928b.iterator();
            while (it3.hasNext()) {
                i += CodedOutputStream.computeFixed32Size(fieldNumber, it3.next().intValue());
            }
            Iterator<Long> it4 = this.f37929c.iterator();
            while (it4.hasNext()) {
                i += CodedOutputStream.computeFixed64Size(fieldNumber, it4.next().longValue());
            }
            Iterator<ByteString> it5 = this.f37930d.iterator();
            while (it5.hasNext()) {
                i += CodedOutputStream.computeBytesSize(fieldNumber, it5.next());
            }
            Iterator<UnknownFieldSet> it6 = this.f37931e.iterator();
            while (it6.hasNext()) {
                i += CodedOutputStream.computeGroupSize(fieldNumber, it6.next());
            }
            return i;
        }

        public int getSerializedSizeAsMessageSetExtension(int fieldNumber) {
            Iterator<ByteString> it2 = this.f37930d.iterator();
            int i = 0;
            while (it2.hasNext()) {
                i += CodedOutputStream.computeRawMessageSetExtensionSize(fieldNumber, it2.next());
            }
            return i;
        }

        public List<Long> getVarintList() {
            return this.f37927a;
        }

        public int hashCode() {
            return Arrays.hashCode(m29624l());
        }

        /* renamed from: l */
        public final Object[] m29624l() {
            return new Object[]{this.f37927a, this.f37928b, this.f37929c, this.f37930d, this.f37931e};
        }

        /* renamed from: m */
        public final void m29625m(int fieldNumber, Writer writer) throws IOException {
            if (writer.mo29738l() != Writer.FieldOrder.DESCENDING) {
                Iterator<ByteString> it2 = this.f37930d.iterator();
                while (it2.hasNext()) {
                    writer.mo29741o(fieldNumber, it2.next());
                }
            } else {
                List<ByteString> list = this.f37930d;
                ListIterator<ByteString> listIterator = list.listIterator(list.size());
                while (listIterator.hasPrevious()) {
                    writer.mo29741o(fieldNumber, listIterator.previous());
                }
            }
        }

        /* renamed from: n */
        public void m29626n(int fieldNumber, Writer writer) throws IOException {
            writer.mo29726C(fieldNumber, this.f37927a, false);
            writer.mo29729c(fieldNumber, this.f37928b, false);
            writer.mo29745s(fieldNumber, this.f37929c, false);
            writer.mo29732f(fieldNumber, this.f37930d);
            if (writer.mo29738l() == Writer.FieldOrder.ASCENDING) {
                for (int i = 0; i < this.f37931e.size(); i++) {
                    writer.mo29744r(fieldNumber);
                    this.f37931e.get(i).m29609c(writer);
                    writer.mo29731e(fieldNumber);
                }
                return;
            }
            for (int size = this.f37931e.size() - 1; size >= 0; size--) {
                writer.mo29731e(fieldNumber);
                this.f37931e.get(size).m29609c(writer);
                writer.mo29744r(fieldNumber);
            }
        }

        public ByteString toByteString(int fieldNumber) {
            try {
                ByteString.C6651f newCodedBuilder = ByteString.newCodedBuilder(getSerializedSize(fieldNumber));
                writeTo(fieldNumber, newCodedBuilder.m28632b());
                return newCodedBuilder.m28631a();
            } catch (IOException e) {
                throw new RuntimeException("Serializing to a ByteString should never fail with an IOException", e);
            }
        }

        public void writeAsMessageSetExtensionTo(int fieldNumber, CodedOutputStream output) throws IOException {
            Iterator<ByteString> it2 = this.f37930d.iterator();
            while (it2.hasNext()) {
                output.writeRawMessageSetExtension(fieldNumber, it2.next());
            }
        }

        public void writeTo(int fieldNumber, CodedOutputStream output) throws IOException {
            Iterator<Long> it2 = this.f37927a.iterator();
            while (it2.hasNext()) {
                output.writeUInt64(fieldNumber, it2.next().longValue());
            }
            Iterator<Integer> it3 = this.f37928b.iterator();
            while (it3.hasNext()) {
                output.writeFixed32(fieldNumber, it3.next().intValue());
            }
            Iterator<Long> it4 = this.f37929c.iterator();
            while (it4.hasNext()) {
                output.writeFixed64(fieldNumber, it4.next().longValue());
            }
            Iterator<ByteString> it5 = this.f37930d.iterator();
            while (it5.hasNext()) {
                output.writeBytes(fieldNumber, it5.next());
            }
            Iterator<UnknownFieldSet> it6 = this.f37931e.iterator();
            while (it6.hasNext()) {
                output.writeGroup(fieldNumber, it6.next());
            }
        }

        public Field() {
        }

        public static Builder newBuilder(Field copyFrom) {
            return newBuilder().mergeFrom(copyFrom);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Parser extends AbstractParser<UnknownFieldSet> {
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

        @Override // com.google.protobuf.Parser
        public UnknownFieldSet parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            Builder newBuilder = UnknownFieldSet.newBuilder();
            try {
                newBuilder.mergeFrom(input);
                return newBuilder.buildPartial();
            } catch (InvalidProtocolBufferException e) {
                throw e.setUnfinishedMessage(newBuilder.buildPartial());
            } catch (IOException e2) {
                throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(newBuilder.buildPartial());
            }
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseFrom(data, extensionRegistry);
        }
    }

    public static UnknownFieldSet getDefaultInstance() {
        return f37922f;
    }

    public static Builder newBuilder() {
        return Builder.m29610a();
    }

    public static UnknownFieldSet parseFrom(CodedInputStream input) throws IOException {
        return newBuilder().mergeFrom(input).build();
    }

    public Map<Integer, Field> asMap() {
        return (Map) this.f37924e.clone();
    }

    /* renamed from: b */
    public void m29608b(Writer writer) throws IOException {
        if (writer.mo29738l() == Writer.FieldOrder.DESCENDING) {
            for (Map.Entry<Integer, Field> entry : this.f37924e.descendingMap().entrySet()) {
                entry.getValue().m29625m(entry.getKey().intValue(), writer);
            }
            return;
        }
        for (Map.Entry<Integer, Field> entry2 : this.f37924e.entrySet()) {
            entry2.getValue().m29625m(entry2.getKey().intValue(), writer);
        }
    }

    /* renamed from: c */
    public void m29609c(Writer writer) throws IOException {
        if (writer.mo29738l() == Writer.FieldOrder.DESCENDING) {
            for (Map.Entry<Integer, Field> entry : this.f37924e.descendingMap().entrySet()) {
                entry.getValue().m29626n(entry.getKey().intValue(), writer);
            }
            return;
        }
        for (Map.Entry<Integer, Field> entry2 : this.f37924e.entrySet()) {
            entry2.getValue().m29626n(entry2.getKey().intValue(), writer);
        }
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UnknownFieldSet) && this.f37924e.equals(((UnknownFieldSet) other).f37924e);
    }

    public Field getField(int number) {
        Field field = this.f37924e.get(Integer.valueOf(number));
        return field == null ? Field.getDefaultInstance() : field;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = 0;
        if (!this.f37924e.isEmpty()) {
            for (Map.Entry<Integer, Field> entry : this.f37924e.entrySet()) {
                i += entry.getValue().getSerializedSize(entry.getKey().intValue());
            }
        }
        return i;
    }

    public int getSerializedSizeAsMessageSet() {
        int i = 0;
        for (Map.Entry<Integer, Field> entry : this.f37924e.entrySet()) {
            i += entry.getValue().getSerializedSizeAsMessageSetExtension(entry.getKey().intValue());
        }
        return i;
    }

    public boolean hasField(int number) {
        return this.f37924e.containsKey(Integer.valueOf(number));
    }

    public int hashCode() {
        if (this.f37924e.isEmpty()) {
            return 0;
        }
        return this.f37924e.hashCode();
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder
    public boolean isInitialized() {
        return true;
    }

    @Override // com.google.protobuf.MessageLite
    public byte[] toByteArray() {
        try {
            byte[] bArr = new byte[getSerializedSize()];
            CodedOutputStream newInstance = CodedOutputStream.newInstance(bArr);
            writeTo(newInstance);
            newInstance.checkNoSpaceLeft();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    @Override // com.google.protobuf.MessageLite
    public ByteString toByteString() {
        try {
            ByteString.C6651f newCodedBuilder = ByteString.newCodedBuilder(getSerializedSize());
            writeTo(newCodedBuilder.m28632b());
            return newCodedBuilder.m28631a();
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a ByteString threw an IOException (should never happen).", e);
        }
    }

    public String toString() {
        return TextFormat.printer().printToString(this);
    }

    public void writeAsMessageSetTo(CodedOutputStream output) throws IOException {
        for (Map.Entry<Integer, Field> entry : this.f37924e.entrySet()) {
            entry.getValue().writeAsMessageSetExtensionTo(entry.getKey().intValue(), output);
        }
    }

    @Override // com.google.protobuf.MessageLite
    public void writeDelimitedTo(OutputStream output) throws IOException {
        CodedOutputStream newInstance = CodedOutputStream.newInstance(output);
        newInstance.writeUInt32NoTag(getSerializedSize());
        writeTo(newInstance);
        newInstance.flush();
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream output) throws IOException {
        for (Map.Entry<Integer, Field> entry : this.f37924e.entrySet()) {
            entry.getValue().writeTo(entry.getKey().intValue(), output);
        }
    }

    public UnknownFieldSet(TreeMap<Integer, Field> fields) {
        this.f37924e = fields;
    }

    public static Builder newBuilder(UnknownFieldSet copyFrom) {
        return newBuilder().mergeFrom(copyFrom);
    }

    public static UnknownFieldSet parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return newBuilder().mergeFrom(data).build();
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public UnknownFieldSet getDefaultInstanceForType() {
        return f37922f;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public final Parser getParserForType() {
        return f37923g;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return newBuilder().mergeFrom(this);
    }

    public static UnknownFieldSet parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return newBuilder().mergeFrom(data).build();
    }

    public static UnknownFieldSet parseFrom(InputStream input) throws IOException {
        return newBuilder().mergeFrom(input).build();
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(OutputStream output) throws IOException {
        CodedOutputStream newInstance = CodedOutputStream.newInstance(output);
        writeTo(newInstance);
        newInstance.flush();
    }
}
