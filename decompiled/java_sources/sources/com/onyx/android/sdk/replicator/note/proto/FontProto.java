package com.onyx.android.sdk.replicator.note.proto;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
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
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.RepeatedFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes8.dex */
public final class FontProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45620a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45621b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45622c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45623d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45624e;

    /* loaded from: classes8.dex */
    public static final class Font extends GeneratedMessageV3 implements FontOrBuilder {
        public static final int CREATEDAT_FIELD_NUMBER = 2;
        public static final int FORMAT_FIELD_NUMBER = 5;
        public static final int MD5_FIELD_NUMBER = 7;
        public static final int NAME_FIELD_NUMBER = 4;
        public static final int UNIQUEID_FIELD_NUMBER = 1;
        public static final int UPDATEDAT_FIELD_NUMBER = 3;
        public static final int URL_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private long createdAt_;
        private volatile Object format_;
        private volatile Object md5_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private volatile Object uniqueId_;
        private long updatedAt_;
        private volatile Object url_;
        private static final Font DEFAULT_INSTANCE = new Font();
        private static final Parser<Font> PARSER = new C7757a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FontOrBuilder {

            /* renamed from: i */
            public Object f45625i;

            /* renamed from: j */
            public long f45626j;

            /* renamed from: k */
            public long f45627k;

            /* renamed from: l */
            public Object f45628l;

            /* renamed from: m */
            public Object f45629m;

            /* renamed from: n */
            public Object f45630n;

            /* renamed from: o */
            public Object f45631o;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7759a c7759a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return FontProto.f45622c;
            }

            public Builder clearCreatedAt() {
                this.f45626j = 0L;
                onChanged();
                return this;
            }

            public Builder clearFormat() {
                this.f45629m = Font.getDefaultInstance().getFormat();
                onChanged();
                return this;
            }

            public Builder clearMd5() {
                this.f45631o = Font.getDefaultInstance().getMd5();
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.f45628l = Font.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder clearUniqueId() {
                this.f45625i = Font.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45627k = 0L;
                onChanged();
                return this;
            }

            public Builder clearUrl() {
                this.f45630n = Font.getDefaultInstance().getUrl();
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
            public long getCreatedAt() {
                return this.f45626j;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return FontProto.f45622c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
            public String getFormat() {
                Object obj = this.f45629m;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45629m = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
            public ByteString getFormatBytes() {
                Object obj = this.f45629m;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45629m = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
            public String getMd5() {
                Object obj = this.f45631o;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45631o = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
            public ByteString getMd5Bytes() {
                Object obj = this.f45631o;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45631o = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
            public String getName() {
                Object obj = this.f45628l;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45628l = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
            public ByteString getNameBytes() {
                Object obj = this.f45628l;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45628l = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
            public String getUniqueId() {
                Object obj = this.f45625i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45625i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
            public ByteString getUniqueIdBytes() {
                Object obj = this.f45625i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45625i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
            public long getUpdatedAt() {
                return this.f45627k;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
            public String getUrl() {
                Object obj = this.f45630n;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45630n = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
            public ByteString getUrlBytes() {
                Object obj = this.f45630n;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45630n = copyFromUtf8;
                return copyFromUtf8;
            }

            /* renamed from: h */
            public final void m35268h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return FontProto.f45623d.ensureFieldAccessorsInitialized(Font.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setCreatedAt(long j) {
                this.f45626j = j;
                onChanged();
                return this;
            }

            public Builder setFormat(String str) {
                str.getClass();
                this.f45629m = str;
                onChanged();
                return this;
            }

            public Builder setFormatBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45629m = byteString;
                onChanged();
                return this;
            }

            public Builder setMd5(String str) {
                str.getClass();
                this.f45631o = str;
                onChanged();
                return this;
            }

            public Builder setMd5Bytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45631o = byteString;
                onChanged();
                return this;
            }

            public Builder setName(String str) {
                str.getClass();
                this.f45628l = str;
                onChanged();
                return this;
            }

            public Builder setNameBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45628l = byteString;
                onChanged();
                return this;
            }

            public Builder setUniqueId(String str) {
                str.getClass();
                this.f45625i = str;
                onChanged();
                return this;
            }

            public Builder setUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45625i = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45627k = j;
                onChanged();
                return this;
            }

            public Builder setUrl(String str) {
                str.getClass();
                this.f45630n = str;
                onChanged();
                return this;
            }

            public Builder setUrlBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45630n = byteString;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7759a c7759a) {
                this();
            }

            public Builder() {
                this.f45625i = "";
                this.f45628l = "";
                this.f45629m = "";
                this.f45630n = "";
                this.f45631o = "";
                m35268h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Font build() {
                Font buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Font buildPartial() {
                Font font = new Font(this, (C7759a) null);
                font.uniqueId_ = this.f45625i;
                font.createdAt_ = this.f45626j;
                font.updatedAt_ = this.f45627k;
                font.name_ = this.f45628l;
                font.format_ = this.f45629m;
                font.url_ = this.f45630n;
                font.md5_ = this.f45631o;
                onBuilt();
                return font;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Font getDefaultInstanceForType() {
                return Font.getDefaultInstance();
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
                this.f45625i = "";
                this.f45626j = 0L;
                this.f45627k = 0L;
                this.f45628l = "";
                this.f45629m = "";
                this.f45630n = "";
                this.f45631o = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof Font) {
                    return mergeFrom((Font) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45625i = "";
                this.f45628l = "";
                this.f45629m = "";
                this.f45630n = "";
                this.f45631o = "";
                m35268h();
            }

            public Builder mergeFrom(Font font) {
                if (font == Font.getDefaultInstance()) {
                    return this;
                }
                if (!font.getUniqueId().isEmpty()) {
                    this.f45625i = font.uniqueId_;
                    onChanged();
                }
                if (font.getCreatedAt() != 0) {
                    setCreatedAt(font.getCreatedAt());
                }
                if (font.getUpdatedAt() != 0) {
                    setUpdatedAt(font.getUpdatedAt());
                }
                if (!font.getName().isEmpty()) {
                    this.f45628l = font.name_;
                    onChanged();
                }
                if (!font.getFormat().isEmpty()) {
                    this.f45629m = font.format_;
                    onChanged();
                }
                if (!font.getUrl().isEmpty()) {
                    this.f45630n = font.url_;
                    onChanged();
                }
                if (!font.getMd5().isEmpty()) {
                    this.f45631o = font.md5_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) font).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.FontProto.Font.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.FontProto.Font.access$2500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.FontProto$Font r3 = (com.onyx.android.sdk.replicator.note.proto.FontProto.Font) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.FontProto$Font r4 = (com.onyx.android.sdk.replicator.note.proto.FontProto.Font) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.FontProto.Font.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.FontProto$Font$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.FontProto$Font$a */
        /* loaded from: classes8.dex */
        public class C7757a extends AbstractParser<Font> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public Font parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Font(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ Font(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7759a c7759a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static Font getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return FontProto.f45622c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Font parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Font) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Font parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<Font> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Font)) {
                return super.equals(obj);
            }
            Font font = (Font) obj;
            return (((((((getUniqueId().equals(font.getUniqueId())) && (getCreatedAt() > font.getCreatedAt() ? 1 : (getCreatedAt() == font.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > font.getUpdatedAt() ? 1 : (getUpdatedAt() == font.getUpdatedAt() ? 0 : -1)) == 0) && getName().equals(font.getName())) && getFormat().equals(font.getFormat())) && getUrl().equals(font.getUrl())) && getMd5().equals(font.getMd5())) && this.unknownFields.equals(font.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
        public String getFormat() {
            Object obj = this.format_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.format_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
        public ByteString getFormatBytes() {
            Object obj = this.format_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.format_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
        public String getMd5() {
            Object obj = this.md5_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.md5_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
        public ByteString getMd5Bytes() {
            Object obj = this.md5_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.md5_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.name_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Font> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = getUniqueIdBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.uniqueId_);
            long j = this.createdAt_;
            if (j != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(2, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(3, j2);
            }
            if (!getNameBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(4, this.name_);
            }
            if (!getFormatBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.format_);
            }
            if (!getUrlBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(6, this.url_);
            }
            if (!getMd5Bytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(7, this.md5_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
        public ByteString getUniqueIdBytes() {
            Object obj = this.uniqueId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.uniqueId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
        public String getUrl() {
            Object obj = this.url_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.url_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontOrBuilder
        public ByteString getUrlBytes() {
            Object obj = this.url_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.url_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = ((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 3) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 4) * 53) + getName().hashCode()) * 37) + 5) * 53) + getFormat().hashCode()) * 37) + 6) * 53) + getUrl().hashCode()) * 37) + 7) * 53) + getMd5().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return FontProto.f45623d.ensureFieldAccessorsInitialized(Font.class, Builder.class);
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
            if (!getUniqueIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.uniqueId_);
            }
            long j = this.createdAt_;
            if (j != 0) {
                codedOutputStream.writeInt64(2, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                codedOutputStream.writeInt64(3, j2);
            }
            if (!getNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.name_);
            }
            if (!getFormatBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.format_);
            }
            if (!getUrlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.url_);
            }
            if (!getMd5Bytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.md5_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ Font(GeneratedMessageV3.Builder builder, C7759a c7759a) {
            this(builder);
        }

        public static Builder newBuilder(Font font) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(font);
        }

        public static Font parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private Font(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Font parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Font) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Font parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Font getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7759a c7759a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7759a) : new Builder(c7759a).mergeFrom(this);
        }

        public static Font parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Font() {
            this.memoizedIsInitialized = (byte) -1;
            this.uniqueId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.name_ = "";
            this.format_ = "";
            this.url_ = "";
            this.md5_ = "";
        }

        public static Font parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static Font parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Font parseFrom(InputStream inputStream) throws IOException {
            return (Font) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Font parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Font) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Font parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Font) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Font parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Font) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        private Font(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                this.uniqueId_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 16) {
                                this.createdAt_ = codedInputStream.readInt64();
                            } else if (readTag == 24) {
                                this.updatedAt_ = codedInputStream.readInt64();
                            } else if (readTag == 34) {
                                this.name_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 42) {
                                this.format_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 50) {
                                this.url_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 58) {
                                if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            } else {
                                this.md5_ = codedInputStream.readStringRequireUtf8();
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }
    }

    /* loaded from: classes8.dex */
    public static final class FontList extends GeneratedMessageV3 implements FontListOrBuilder {
        private static final FontList DEFAULT_INSTANCE = new FontList();
        private static final Parser<FontList> PARSER = new C7758a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<Font> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FontListOrBuilder {

            /* renamed from: i */
            public int f45632i;

            /* renamed from: j */
            public List<Font> f45633j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> f45634k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7759a c7759a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return FontProto.f45620a;
            }

            public Builder addAllProto(Iterable<? extends Font> iterable) {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                if (repeatedFieldBuilderV3 == null) {
                    m35270h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45633j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(Font font) {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                if (repeatedFieldBuilderV3 == null) {
                    font.getClass();
                    m35270h();
                    this.f45633j.add(font);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(font);
                }
                return this;
            }

            public Font.Builder addProtoBuilder() {
                return m35271i().addBuilder(Font.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45633j = Collections.emptyList();
                    this.f45632i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return FontProto.f45620a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontListOrBuilder
            public Font getProto(int i) {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                return repeatedFieldBuilderV3 == null ? this.f45633j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public Font.Builder getProtoBuilder(int i) {
                return m35271i().getBuilder(i);
            }

            public List<Font.Builder> getProtoBuilderList() {
                return m35271i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                return repeatedFieldBuilderV3 == null ? this.f45633j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontListOrBuilder
            public List<Font> getProtoList() {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45633j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontListOrBuilder
            public FontOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                return repeatedFieldBuilderV3 == null ? this.f45633j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontListOrBuilder
            public List<? extends FontOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45633j);
            }

            /* renamed from: h */
            public final void m35270h() {
                if ((this.f45632i & 1) != 1) {
                    this.f45633j = new ArrayList(this.f45633j);
                    this.f45632i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> m35271i() {
                if (this.f45634k == null) {
                    this.f45634k = new RepeatedFieldBuilderV3<>(this.f45633j, (this.f45632i & 1) == 1, getParentForChildren(), isClean());
                    this.f45633j = null;
                }
                return this.f45634k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return FontProto.f45621b.ensureFieldAccessorsInitialized(FontList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35272j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35271i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                if (repeatedFieldBuilderV3 == null) {
                    m35270h();
                    this.f45633j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, Font font) {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                if (repeatedFieldBuilderV3 == null) {
                    font.getClass();
                    m35270h();
                    this.f45633j.set(i, font);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, font);
                }
                return this;
            }

            public /* synthetic */ Builder(C7759a c7759a) {
                this();
            }

            public Builder() {
                this.f45633j = Collections.emptyList();
                m35272j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FontList build() {
                FontList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FontList buildPartial() {
                FontList fontList = new FontList(this, (C7759a) null);
                int i = this.f45632i;
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45633j = Collections.unmodifiableList(this.f45633j);
                        this.f45632i &= -2;
                    }
                    fontList.proto_ = this.f45633j;
                } else {
                    fontList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return fontList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public FontList getDefaultInstanceForType() {
                return FontList.getDefaultInstance();
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

            public Font.Builder addProtoBuilder(int i) {
                return m35271i().addBuilder(i, Font.getDefaultInstance());
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
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45633j = Collections.emptyList();
                    this.f45632i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45633j = Collections.emptyList();
                m35272j();
            }

            public Builder addProto(int i, Font font) {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                if (repeatedFieldBuilderV3 == null) {
                    font.getClass();
                    m35270h();
                    this.f45633j.add(i, font);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, font);
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
                if (message instanceof FontList) {
                    return mergeFrom((FontList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, Font.Builder builder) {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                if (repeatedFieldBuilderV3 == null) {
                    m35270h();
                    this.f45633j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(FontList fontList) {
                if (fontList == FontList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45634k == null) {
                    if (!fontList.proto_.isEmpty()) {
                        if (this.f45633j.isEmpty()) {
                            this.f45633j = fontList.proto_;
                            this.f45632i &= -2;
                        } else {
                            m35270h();
                            this.f45633j.addAll(fontList.proto_);
                        }
                        onChanged();
                    }
                } else if (!fontList.proto_.isEmpty()) {
                    if (this.f45634k.isEmpty()) {
                        this.f45634k.dispose();
                        this.f45634k = null;
                        this.f45633j = fontList.proto_;
                        this.f45632i &= -2;
                        this.f45634k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35271i() : null;
                    } else {
                        this.f45634k.addAllMessages(fontList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) fontList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(Font.Builder builder) {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                if (repeatedFieldBuilderV3 == null) {
                    m35270h();
                    this.f45633j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, Font.Builder builder) {
                RepeatedFieldBuilderV3<Font, Font.Builder, FontOrBuilder> repeatedFieldBuilderV3 = this.f45634k;
                if (repeatedFieldBuilderV3 == null) {
                    m35270h();
                    this.f45633j.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.FontProto.FontList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.FontProto.FontList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.FontProto$FontList r3 = (com.onyx.android.sdk.replicator.note.proto.FontProto.FontList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.FontProto$FontList r4 = (com.onyx.android.sdk.replicator.note.proto.FontProto.FontList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.FontProto.FontList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.FontProto$FontList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.FontProto$FontList$a */
        /* loaded from: classes8.dex */
        public class C7758a extends AbstractParser<FontList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public FontList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FontList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ FontList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7759a c7759a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static FontList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return FontProto.f45620a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FontList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FontList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FontList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<FontList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FontList)) {
                return super.equals(obj);
            }
            FontList fontList = (FontList) obj;
            return (getProtoList().equals(fontList.getProtoList())) && this.unknownFields.equals(fontList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<FontList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontListOrBuilder
        public Font getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontListOrBuilder
        public List<Font> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontListOrBuilder
        public FontOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FontProto.FontListOrBuilder
        public List<? extends FontOrBuilder> getProtoOrBuilderList() {
            return this.proto_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.proto_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(1, this.proto_.get(i3));
            }
            int serializedSize = i2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (getProtoCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getProtoList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return FontProto.f45621b.ensureFieldAccessorsInitialized(FontList.class, Builder.class);
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
            for (int i = 0; i < this.proto_.size(); i++) {
                codedOutputStream.writeMessage(1, this.proto_.get(i));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ FontList(GeneratedMessageV3.Builder builder, C7759a c7759a) {
            this(builder);
        }

        public static Builder newBuilder(FontList fontList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(fontList);
        }

        public static FontList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private FontList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FontList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FontList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FontList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FontList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7759a c7759a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7759a) : new Builder(c7759a).mergeFrom(this);
        }

        public static FontList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private FontList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static FontList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static FontList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FontList parseFrom(InputStream inputStream) throws IOException {
            return (FontList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private FontList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (true) {
                if (z) {
                    break;
                }
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag != 10) {
                                if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            } else {
                                if (!(z2 & true)) {
                                    this.proto_ = new ArrayList();
                                    z2 |= true;
                                }
                                this.proto_.add((Font) codedInputStream.readMessage(Font.parser(), extensionRegistryLite));
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    if (z2 & true) {
                        this.proto_ = Collections.unmodifiableList(this.proto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static FontList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FontList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FontList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FontList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static FontList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FontList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface FontListOrBuilder extends MessageOrBuilder {
        Font getProto(int i);

        int getProtoCount();

        List<Font> getProtoList();

        FontOrBuilder getProtoOrBuilder(int i);

        List<? extends FontOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface FontOrBuilder extends MessageOrBuilder {
        long getCreatedAt();

        String getFormat();

        ByteString getFormatBytes();

        String getMd5();

        ByteString getMd5Bytes();

        String getName();

        ByteString getNameBytes();

        String getUniqueId();

        ByteString getUniqueIdBytes();

        long getUpdatedAt();

        String getUrl();

        ByteString getUrlBytes();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.FontProto$a */
    /* loaded from: classes8.dex */
    public class C7759a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = FontProto.f45624e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u000fFontProto.proto\" \n\bFontList\u0012\u0014\n\u0005proto\u0018\u0001 \u0003(\u000b2\u0005.Font\"v\n\u0004Font\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\f\n\u0004name\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006format\u0018\u0005 \u0001(\t\u0012\u000b\n\u0003url\u0018\u0006 \u0001(\t\u0012\u000b\n\u0003md5\u0018\u0007 \u0001(\tB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7759a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45620a = descriptor;
        f45621b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45622c = descriptor2;
        f45623d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"UniqueId", "CreatedAt", "UpdatedAt", "Name", "Format", SsManifestParser.C4934e.f26671A, "Md5"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45624e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
