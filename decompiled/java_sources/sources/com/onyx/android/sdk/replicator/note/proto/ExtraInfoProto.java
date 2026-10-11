package com.onyx.android.sdk.replicator.note.proto;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
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
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes8.dex */
public final class ExtraInfoProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45580a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45581b;

    /* renamed from: c */
    public static Descriptors.FileDescriptor f45582c;

    /* loaded from: classes8.dex */
    public static final class ExtraInfo extends GeneratedMessageV3 implements ExtraInfoOrBuilder {
        public static final int APPVERSIONCODE_FIELD_NUMBER = 2;
        public static final int DOCUMENTID_FIELD_NUMBER = 4;
        public static final int DOCVERSION_FIELD_NUMBER = 1;
        public static final int EXPORTPDFPAGESRESULT_FIELD_NUMBER = 5;
        public static final int USERID_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int appVersionCode_;
        private int docVersion_;
        private volatile Object documentId_;
        private volatile Object exportPdfPagesResult_;
        private byte memoizedIsInitialized;
        private volatile Object userId_;
        private static final ExtraInfo DEFAULT_INSTANCE = new ExtraInfo();
        private static final Parser<ExtraInfo> PARSER = new C7749a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ExtraInfoOrBuilder {

            /* renamed from: i */
            public int f45583i;

            /* renamed from: j */
            public int f45584j;

            /* renamed from: k */
            public Object f45585k;

            /* renamed from: l */
            public Object f45586l;

            /* renamed from: m */
            public Object f45587m;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7750a c7750a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ExtraInfoProto.f45580a;
            }

            public Builder clearAppVersionCode() {
                this.f45584j = 0;
                onChanged();
                return this;
            }

            public Builder clearDocVersion() {
                this.f45583i = 0;
                onChanged();
                return this;
            }

            public Builder clearDocumentId() {
                this.f45586l = ExtraInfo.getDefaultInstance().getDocumentId();
                onChanged();
                return this;
            }

            public Builder clearExportPdfPagesResult() {
                this.f45587m = ExtraInfo.getDefaultInstance().getExportPdfPagesResult();
                onChanged();
                return this;
            }

            public Builder clearUserId() {
                this.f45585k = ExtraInfo.getDefaultInstance().getUserId();
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
            public int getAppVersionCode() {
                return this.f45584j;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ExtraInfoProto.f45580a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
            public int getDocVersion() {
                return this.f45583i;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
            public String getDocumentId() {
                Object obj = this.f45586l;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45586l = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
            public ByteString getDocumentIdBytes() {
                Object obj = this.f45586l;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45586l = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
            public String getExportPdfPagesResult() {
                Object obj = this.f45587m;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45587m = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
            public ByteString getExportPdfPagesResultBytes() {
                Object obj = this.f45587m;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45587m = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
            public String getUserId() {
                Object obj = this.f45585k;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45585k = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
            public ByteString getUserIdBytes() {
                Object obj = this.f45585k;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45585k = copyFromUtf8;
                return copyFromUtf8;
            }

            /* renamed from: h */
            public final void m35239h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ExtraInfoProto.f45581b.ensureFieldAccessorsInitialized(ExtraInfo.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setAppVersionCode(int i) {
                this.f45584j = i;
                onChanged();
                return this;
            }

            public Builder setDocVersion(int i) {
                this.f45583i = i;
                onChanged();
                return this;
            }

            public Builder setDocumentId(String str) {
                str.getClass();
                this.f45586l = str;
                onChanged();
                return this;
            }

            public Builder setDocumentIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45586l = byteString;
                onChanged();
                return this;
            }

            public Builder setExportPdfPagesResult(String str) {
                str.getClass();
                this.f45587m = str;
                onChanged();
                return this;
            }

            public Builder setExportPdfPagesResultBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45587m = byteString;
                onChanged();
                return this;
            }

            public Builder setUserId(String str) {
                str.getClass();
                this.f45585k = str;
                onChanged();
                return this;
            }

            public Builder setUserIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45585k = byteString;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7750a c7750a) {
                this();
            }

            public Builder() {
                this.f45585k = "";
                this.f45586l = "";
                this.f45587m = "";
                m35239h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ExtraInfo build() {
                ExtraInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ExtraInfo buildPartial() {
                ExtraInfo extraInfo = new ExtraInfo(this, (C7750a) null);
                extraInfo.docVersion_ = this.f45583i;
                extraInfo.appVersionCode_ = this.f45584j;
                extraInfo.userId_ = this.f45585k;
                extraInfo.documentId_ = this.f45586l;
                extraInfo.exportPdfPagesResult_ = this.f45587m;
                onBuilt();
                return extraInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ExtraInfo getDefaultInstanceForType() {
                return ExtraInfo.getDefaultInstance();
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
                this.f45583i = 0;
                this.f45584j = 0;
                this.f45585k = "";
                this.f45586l = "";
                this.f45587m = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ExtraInfo) {
                    return mergeFrom((ExtraInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45585k = "";
                this.f45586l = "";
                this.f45587m = "";
                m35239h();
            }

            public Builder mergeFrom(ExtraInfo extraInfo) {
                if (extraInfo == ExtraInfo.getDefaultInstance()) {
                    return this;
                }
                if (extraInfo.getDocVersion() != 0) {
                    setDocVersion(extraInfo.getDocVersion());
                }
                if (extraInfo.getAppVersionCode() != 0) {
                    setAppVersionCode(extraInfo.getAppVersionCode());
                }
                if (!extraInfo.getUserId().isEmpty()) {
                    this.f45585k = extraInfo.userId_;
                    onChanged();
                }
                if (!extraInfo.getDocumentId().isEmpty()) {
                    this.f45586l = extraInfo.documentId_;
                    onChanged();
                }
                if (!extraInfo.getExportPdfPagesResult().isEmpty()) {
                    this.f45587m = extraInfo.exportPdfPagesResult_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) extraInfo).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfo.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfo.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto$ExtraInfo r3 = (com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfo) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto$ExtraInfo r4 = (com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfo) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfo.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto$ExtraInfo$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto$ExtraInfo$a */
        /* loaded from: classes8.dex */
        public class C7749a extends AbstractParser<ExtraInfo> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public ExtraInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ExtraInfo(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ ExtraInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7750a c7750a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ExtraInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ExtraInfoProto.f45580a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ExtraInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ExtraInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ExtraInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ExtraInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ExtraInfo)) {
                return super.equals(obj);
            }
            ExtraInfo extraInfo = (ExtraInfo) obj;
            return (((((getDocVersion() == extraInfo.getDocVersion()) && getAppVersionCode() == extraInfo.getAppVersionCode()) && getUserId().equals(extraInfo.getUserId())) && getDocumentId().equals(extraInfo.getDocumentId())) && getExportPdfPagesResult().equals(extraInfo.getExportPdfPagesResult())) && this.unknownFields.equals(extraInfo.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
        public int getAppVersionCode() {
            return this.appVersionCode_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
        public int getDocVersion() {
            return this.docVersion_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
        public String getDocumentId() {
            Object obj = this.documentId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.documentId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
        public ByteString getDocumentIdBytes() {
            Object obj = this.documentId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.documentId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
        public String getExportPdfPagesResult() {
            Object obj = this.exportPdfPagesResult_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.exportPdfPagesResult_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
        public ByteString getExportPdfPagesResultBytes() {
            Object obj = this.exportPdfPagesResult_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.exportPdfPagesResult_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ExtraInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.docVersion_;
            int computeInt32Size = i2 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i2) : 0;
            int i3 = this.appVersionCode_;
            if (i3 != 0) {
                computeInt32Size += CodedOutputStream.computeInt32Size(2, i3);
            }
            if (!getUserIdBytes().isEmpty()) {
                computeInt32Size += GeneratedMessageV3.computeStringSize(3, this.userId_);
            }
            if (!getDocumentIdBytes().isEmpty()) {
                computeInt32Size += GeneratedMessageV3.computeStringSize(4, this.documentId_);
            }
            if (!getExportPdfPagesResultBytes().isEmpty()) {
                computeInt32Size += GeneratedMessageV3.computeStringSize(5, this.exportPdfPagesResult_);
            }
            int serializedSize = computeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
        public String getUserId() {
            Object obj = this.userId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.userId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto.ExtraInfoOrBuilder
        public ByteString getUserIdBytes() {
            Object obj = this.userId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = ((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getDocVersion()) * 37) + 2) * 53) + getAppVersionCode()) * 37) + 3) * 53) + getUserId().hashCode()) * 37) + 4) * 53) + getDocumentId().hashCode()) * 37) + 5) * 53) + getExportPdfPagesResult().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ExtraInfoProto.f45581b.ensureFieldAccessorsInitialized(ExtraInfo.class, Builder.class);
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
            int i = this.docVersion_;
            if (i != 0) {
                codedOutputStream.writeInt32(1, i);
            }
            int i2 = this.appVersionCode_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(2, i2);
            }
            if (!getUserIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.userId_);
            }
            if (!getDocumentIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.documentId_);
            }
            if (!getExportPdfPagesResultBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.exportPdfPagesResult_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ ExtraInfo(GeneratedMessageV3.Builder builder, C7750a c7750a) {
            this(builder);
        }

        public static Builder newBuilder(ExtraInfo extraInfo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(extraInfo);
        }

        public static ExtraInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private ExtraInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ExtraInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExtraInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ExtraInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ExtraInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7750a c7750a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7750a) : new Builder(c7750a).mergeFrom(this);
        }

        public static ExtraInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ExtraInfo() {
            this.memoizedIsInitialized = (byte) -1;
            this.docVersion_ = 0;
            this.appVersionCode_ = 0;
            this.userId_ = "";
            this.documentId_ = "";
            this.exportPdfPagesResult_ = "";
        }

        public static ExtraInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ExtraInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ExtraInfo parseFrom(InputStream inputStream) throws IOException {
            return (ExtraInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ExtraInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExtraInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ExtraInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ExtraInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        private ExtraInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                if (readTag == 8) {
                                    this.docVersion_ = codedInputStream.readInt32();
                                } else if (readTag == 16) {
                                    this.appVersionCode_ = codedInputStream.readInt32();
                                } else if (readTag == 26) {
                                    this.userId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 34) {
                                    this.documentId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag != 42) {
                                    if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                    }
                                } else {
                                    this.exportPdfPagesResult_ = codedInputStream.readStringRequireUtf8();
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static ExtraInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExtraInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface ExtraInfoOrBuilder extends MessageOrBuilder {
        int getAppVersionCode();

        int getDocVersion();

        String getDocumentId();

        ByteString getDocumentIdBytes();

        String getExportPdfPagesResult();

        ByteString getExportPdfPagesResultBytes();

        String getUserId();

        ByteString getUserIdBytes();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto$a */
    /* loaded from: classes8.dex */
    public class C7750a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = ExtraInfoProto.f45582c = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0014ExtraInfoProto.proto\"y\n\tExtraInfo\u0012\u0012\n\ndocVersion\u0018\u0001 \u0001(\u0005\u0012\u0016\n\u000eappVersionCode\u0018\u0002 \u0001(\u0005\u0012\u000e\n\u0006userId\u0018\u0003 \u0001(\t\u0012\u0012\n\ndocumentId\u0018\u0004 \u0001(\t\u0012\u001c\n\u0014exportPdfPagesResult\u0018\u0005 \u0001(\tB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7750a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45580a = descriptor;
        f45581b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"DocVersion", "AppVersionCode", "UserId", "DocumentId", "ExportPdfPagesResult"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45582c;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
