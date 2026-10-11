package com.onyx.android.sdk.replicator.note.proto;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.onyx.android.sdk.replicator.note.proto.FontProto;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes8.dex */
public final class AppDataProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45521a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45522b;

    /* renamed from: c */
    public static Descriptors.FileDescriptor f45523c;

    /* loaded from: classes8.dex */
    public static final class DataCollection extends GeneratedMessageV3 implements DataCollectionOrBuilder {
        public static final int FONTLIST_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private FontProto.FontList fontList_;
        private byte memoizedIsInitialized;
        private static final DataCollection DEFAULT_INSTANCE = new DataCollection();
        private static final Parser<DataCollection> PARSER = new C7738a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DataCollectionOrBuilder {

            /* renamed from: i */
            public FontProto.FontList f45524i;

            /* renamed from: j */
            public SingleFieldBuilderV3<FontProto.FontList, FontProto.FontList.Builder, FontProto.FontListOrBuilder> f45525j;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7739a c7739a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AppDataProto.f45521a;
            }

            public Builder clearFontList() {
                if (this.f45525j == null) {
                    this.f45524i = null;
                    onChanged();
                } else {
                    this.f45524i = null;
                    this.f45525j = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return AppDataProto.f45521a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.AppDataProto.DataCollectionOrBuilder
            public FontProto.FontList getFontList() {
                SingleFieldBuilderV3<FontProto.FontList, FontProto.FontList.Builder, FontProto.FontListOrBuilder> singleFieldBuilderV3 = this.f45525j;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                FontProto.FontList fontList = this.f45524i;
                return fontList == null ? FontProto.FontList.getDefaultInstance() : fontList;
            }

            public FontProto.FontList.Builder getFontListBuilder() {
                onChanged();
                return m35200h().getBuilder();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.AppDataProto.DataCollectionOrBuilder
            public FontProto.FontListOrBuilder getFontListOrBuilder() {
                SingleFieldBuilderV3<FontProto.FontList, FontProto.FontList.Builder, FontProto.FontListOrBuilder> singleFieldBuilderV3 = this.f45525j;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                FontProto.FontList fontList = this.f45524i;
                return fontList == null ? FontProto.FontList.getDefaultInstance() : fontList;
            }

            /* renamed from: h */
            public final SingleFieldBuilderV3<FontProto.FontList, FontProto.FontList.Builder, FontProto.FontListOrBuilder> m35200h() {
                if (this.f45525j == null) {
                    this.f45525j = new SingleFieldBuilderV3<>(getFontList(), getParentForChildren(), isClean());
                    this.f45524i = null;
                }
                return this.f45525j;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.AppDataProto.DataCollectionOrBuilder
            public boolean hasFontList() {
                return (this.f45525j == null && this.f45524i == null) ? false : true;
            }

            /* renamed from: i */
            public final void m35201i() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AppDataProto.f45522b.ensureFieldAccessorsInitialized(DataCollection.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFontList(FontProto.FontList fontList) {
                SingleFieldBuilderV3<FontProto.FontList, FontProto.FontList.Builder, FontProto.FontListOrBuilder> singleFieldBuilderV3 = this.f45525j;
                if (singleFieldBuilderV3 == null) {
                    FontProto.FontList fontList2 = this.f45524i;
                    if (fontList2 != null) {
                        this.f45524i = FontProto.FontList.newBuilder(fontList2).mergeFrom(fontList).buildPartial();
                    } else {
                        this.f45524i = fontList;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(fontList);
                }
                return this;
            }

            public Builder setFontList(FontProto.FontList fontList) {
                SingleFieldBuilderV3<FontProto.FontList, FontProto.FontList.Builder, FontProto.FontListOrBuilder> singleFieldBuilderV3 = this.f45525j;
                if (singleFieldBuilderV3 == null) {
                    fontList.getClass();
                    this.f45524i = fontList;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(fontList);
                }
                return this;
            }

            public /* synthetic */ Builder(C7739a c7739a) {
                this();
            }

            public Builder() {
                this.f45524i = null;
                m35201i();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DataCollection build() {
                DataCollection buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DataCollection buildPartial() {
                DataCollection dataCollection = new DataCollection(this, (C7739a) null);
                SingleFieldBuilderV3<FontProto.FontList, FontProto.FontList.Builder, FontProto.FontListOrBuilder> singleFieldBuilderV3 = this.f45525j;
                if (singleFieldBuilderV3 == null) {
                    dataCollection.fontList_ = this.f45524i;
                } else {
                    dataCollection.fontList_ = singleFieldBuilderV3.build();
                }
                onBuilt();
                return dataCollection;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public DataCollection getDefaultInstanceForType() {
                return DataCollection.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFieldsProto3(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                if (this.f45525j == null) {
                    this.f45524i = null;
                } else {
                    this.f45524i = null;
                    this.f45525j = null;
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45524i = null;
                m35201i();
            }

            public Builder setFontList(FontProto.FontList.Builder builder) {
                SingleFieldBuilderV3<FontProto.FontList, FontProto.FontList.Builder, FontProto.FontListOrBuilder> singleFieldBuilderV3 = this.f45525j;
                if (singleFieldBuilderV3 == null) {
                    this.f45524i = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof DataCollection) {
                    return mergeFrom((DataCollection) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(DataCollection dataCollection) {
                if (dataCollection == DataCollection.getDefaultInstance()) {
                    return this;
                }
                if (dataCollection.hasFontList()) {
                    mergeFontList(dataCollection.getFontList());
                }
                mergeUnknownFields(((GeneratedMessageV3) dataCollection).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.AppDataProto.DataCollection.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.AppDataProto.DataCollection.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.AppDataProto$DataCollection r3 = (com.onyx.android.sdk.replicator.note.proto.AppDataProto.DataCollection) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.onyx.android.sdk.replicator.note.proto.AppDataProto$DataCollection r4 = (com.onyx.android.sdk.replicator.note.proto.AppDataProto.DataCollection) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.AppDataProto.DataCollection.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.AppDataProto$DataCollection$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.AppDataProto$DataCollection$a */
        /* loaded from: classes8.dex */
        public class C7738a extends AbstractParser<DataCollection> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public DataCollection parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new DataCollection(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ DataCollection(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7739a c7739a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static DataCollection getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AppDataProto.f45521a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DataCollection parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DataCollection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DataCollection parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<DataCollection> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DataCollection)) {
                return super.equals(obj);
            }
            DataCollection dataCollection = (DataCollection) obj;
            boolean z = hasFontList() == dataCollection.hasFontList();
            if (hasFontList()) {
                z = z && getFontList().equals(dataCollection.getFontList());
            }
            return z && this.unknownFields.equals(dataCollection.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.AppDataProto.DataCollectionOrBuilder
        public FontProto.FontList getFontList() {
            FontProto.FontList fontList = this.fontList_;
            return fontList == null ? FontProto.FontList.getDefaultInstance() : fontList;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.AppDataProto.DataCollectionOrBuilder
        public FontProto.FontListOrBuilder getFontListOrBuilder() {
            return getFontList();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DataCollection> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeMessageSize = (this.fontList_ != null ? 0 + CodedOutputStream.computeMessageSize(1, getFontList()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeMessageSize;
            return computeMessageSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.AppDataProto.DataCollectionOrBuilder
        public boolean hasFontList() {
            return this.fontList_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasFontList()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getFontList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AppDataProto.f45522b.ensureFieldAccessorsInitialized(DataCollection.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.fontList_ != null) {
                codedOutputStream.writeMessage(1, getFontList());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ DataCollection(GeneratedMessageV3.Builder builder, C7739a c7739a) {
            this(builder);
        }

        public static Builder newBuilder(DataCollection dataCollection) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(dataCollection);
        }

        public static DataCollection parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private DataCollection(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DataCollection parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DataCollection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DataCollection parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public DataCollection getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7739a c7739a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7739a) : new Builder(c7739a).mergeFrom(this);
        }

        public static DataCollection parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private DataCollection() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DataCollection parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static DataCollection parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        private DataCollection(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag != 10) {
                                    if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                    }
                                } else {
                                    FontProto.FontList fontList = this.fontList_;
                                    FontProto.FontList.Builder builder = fontList != null ? fontList.toBuilder() : null;
                                    FontProto.FontList fontList2 = (FontProto.FontList) codedInputStream.readMessage(FontProto.FontList.parser(), extensionRegistryLite);
                                    this.fontList_ = fontList2;
                                    if (builder != null) {
                                        builder.mergeFrom(fontList2);
                                        this.fontList_ = builder.buildPartial();
                                    }
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static DataCollection parseFrom(InputStream inputStream) throws IOException {
            return (DataCollection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static DataCollection parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DataCollection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DataCollection parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DataCollection) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static DataCollection parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DataCollection) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface DataCollectionOrBuilder extends MessageOrBuilder {
        FontProto.FontList getFontList();

        FontProto.FontListOrBuilder getFontListOrBuilder();

        boolean hasFontList();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.AppDataProto$a */
    /* loaded from: classes8.dex */
    public class C7739a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = AppDataProto.f45523c = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0012AppDataProto.proto\u001a\u000fFontProto.proto\"-\n\u000eDataCollection\u0012\u001b\n\bfontList\u0018\u0001 \u0001(\u000b2\t.FontListB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[]{FontProto.getDescriptor()}, new C7739a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45521a = descriptor;
        f45522b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"FontList"});
        FontProto.getDescriptor();
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45523c;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
