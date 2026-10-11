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
import org.apache.poi.smtp.MIMEHeaders;

/* loaded from: classes8.dex */
public final class FTSContentProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45588a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45589b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45590c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45591d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45592e;

    /* loaded from: classes8.dex */
    public static final class FTSContent extends GeneratedMessageV3 implements FTSContentOrBuilder {
        public static final int CHARRECTLIST_FIELD_NUMBER = 8;
        public static final int CONTENT_FIELD_NUMBER = 6;
        public static final int CREATEDAT_FIELD_NUMBER = 2;
        public static final int MATRIXVALUES_FIELD_NUMBER = 9;
        public static final int PAGEUNIQUEID_FIELD_NUMBER = 5;
        public static final int RECT_FIELD_NUMBER = 7;
        public static final int TYPE_FIELD_NUMBER = 4;
        public static final int UNIQUEID_FIELD_NUMBER = 1;
        public static final int UPDATEDAT_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object charRectList_;
        private volatile Object content_;
        private long createdAt_;
        private volatile Object matrixValues_;
        private byte memoizedIsInitialized;
        private volatile Object pageUniqueId_;
        private volatile Object rect_;
        private volatile Object type_;
        private volatile Object uniqueId_;
        private long updatedAt_;
        private static final FTSContent DEFAULT_INSTANCE = new FTSContent();
        private static final Parser<FTSContent> PARSER = new C7751a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FTSContentOrBuilder {

            /* renamed from: i */
            public Object f45593i;

            /* renamed from: j */
            public long f45594j;

            /* renamed from: k */
            public long f45595k;

            /* renamed from: l */
            public Object f45596l;

            /* renamed from: m */
            public Object f45597m;

            /* renamed from: n */
            public Object f45598n;

            /* renamed from: o */
            public Object f45599o;

            /* renamed from: p */
            public Object f45600p;

            /* renamed from: q */
            public Object f45601q;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7753a c7753a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return FTSContentProto.f45590c;
            }

            public Builder clearCharRectList() {
                this.f45600p = FTSContent.getDefaultInstance().getCharRectList();
                onChanged();
                return this;
            }

            public Builder clearContent() {
                this.f45598n = FTSContent.getDefaultInstance().getContent();
                onChanged();
                return this;
            }

            public Builder clearCreatedAt() {
                this.f45594j = 0L;
                onChanged();
                return this;
            }

            public Builder clearMatrixValues() {
                this.f45601q = FTSContent.getDefaultInstance().getMatrixValues();
                onChanged();
                return this;
            }

            public Builder clearPageUniqueId() {
                this.f45597m = FTSContent.getDefaultInstance().getPageUniqueId();
                onChanged();
                return this;
            }

            public Builder clearRect() {
                this.f45599o = FTSContent.getDefaultInstance().getRect();
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.f45596l = FTSContent.getDefaultInstance().getType();
                onChanged();
                return this;
            }

            public Builder clearUniqueId() {
                this.f45593i = FTSContent.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45595k = 0L;
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public String getCharRectList() {
                Object obj = this.f45600p;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45600p = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public ByteString getCharRectListBytes() {
                Object obj = this.f45600p;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45600p = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public String getContent() {
                Object obj = this.f45598n;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45598n = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public ByteString getContentBytes() {
                Object obj = this.f45598n;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45598n = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public long getCreatedAt() {
                return this.f45594j;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return FTSContentProto.f45590c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public String getMatrixValues() {
                Object obj = this.f45601q;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45601q = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public ByteString getMatrixValuesBytes() {
                Object obj = this.f45601q;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45601q = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public String getPageUniqueId() {
                Object obj = this.f45597m;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45597m = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public ByteString getPageUniqueIdBytes() {
                Object obj = this.f45597m;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45597m = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public String getRect() {
                Object obj = this.f45599o;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45599o = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public ByteString getRectBytes() {
                Object obj = this.f45599o;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45599o = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public String getType() {
                Object obj = this.f45596l;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45596l = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public ByteString getTypeBytes() {
                Object obj = this.f45596l;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45596l = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public String getUniqueId() {
                Object obj = this.f45593i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45593i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public ByteString getUniqueIdBytes() {
                Object obj = this.f45593i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45593i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
            public long getUpdatedAt() {
                return this.f45595k;
            }

            /* renamed from: h */
            public final void m35246h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return FTSContentProto.f45591d.ensureFieldAccessorsInitialized(FTSContent.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setCharRectList(String str) {
                str.getClass();
                this.f45600p = str;
                onChanged();
                return this;
            }

            public Builder setCharRectListBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45600p = byteString;
                onChanged();
                return this;
            }

            public Builder setContent(String str) {
                str.getClass();
                this.f45598n = str;
                onChanged();
                return this;
            }

            public Builder setContentBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45598n = byteString;
                onChanged();
                return this;
            }

            public Builder setCreatedAt(long j) {
                this.f45594j = j;
                onChanged();
                return this;
            }

            public Builder setMatrixValues(String str) {
                str.getClass();
                this.f45601q = str;
                onChanged();
                return this;
            }

            public Builder setMatrixValuesBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45601q = byteString;
                onChanged();
                return this;
            }

            public Builder setPageUniqueId(String str) {
                str.getClass();
                this.f45597m = str;
                onChanged();
                return this;
            }

            public Builder setPageUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45597m = byteString;
                onChanged();
                return this;
            }

            public Builder setRect(String str) {
                str.getClass();
                this.f45599o = str;
                onChanged();
                return this;
            }

            public Builder setRectBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45599o = byteString;
                onChanged();
                return this;
            }

            public Builder setType(String str) {
                str.getClass();
                this.f45596l = str;
                onChanged();
                return this;
            }

            public Builder setTypeBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45596l = byteString;
                onChanged();
                return this;
            }

            public Builder setUniqueId(String str) {
                str.getClass();
                this.f45593i = str;
                onChanged();
                return this;
            }

            public Builder setUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45593i = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45595k = j;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7753a c7753a) {
                this();
            }

            public Builder() {
                this.f45593i = "";
                this.f45596l = "";
                this.f45597m = "";
                this.f45598n = "";
                this.f45599o = "";
                this.f45600p = "";
                this.f45601q = "";
                m35246h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FTSContent build() {
                FTSContent buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FTSContent buildPartial() {
                FTSContent fTSContent = new FTSContent(this, (C7753a) null);
                fTSContent.uniqueId_ = this.f45593i;
                fTSContent.createdAt_ = this.f45594j;
                fTSContent.updatedAt_ = this.f45595k;
                fTSContent.type_ = this.f45596l;
                fTSContent.pageUniqueId_ = this.f45597m;
                fTSContent.content_ = this.f45598n;
                fTSContent.rect_ = this.f45599o;
                fTSContent.charRectList_ = this.f45600p;
                fTSContent.matrixValues_ = this.f45601q;
                onBuilt();
                return fTSContent;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public FTSContent getDefaultInstanceForType() {
                return FTSContent.getDefaultInstance();
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
                this.f45593i = "";
                this.f45594j = 0L;
                this.f45595k = 0L;
                this.f45596l = "";
                this.f45597m = "";
                this.f45598n = "";
                this.f45599o = "";
                this.f45600p = "";
                this.f45601q = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof FTSContent) {
                    return mergeFrom((FTSContent) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(FTSContent fTSContent) {
                if (fTSContent == FTSContent.getDefaultInstance()) {
                    return this;
                }
                if (!fTSContent.getUniqueId().isEmpty()) {
                    this.f45593i = fTSContent.uniqueId_;
                    onChanged();
                }
                if (fTSContent.getCreatedAt() != 0) {
                    setCreatedAt(fTSContent.getCreatedAt());
                }
                if (fTSContent.getUpdatedAt() != 0) {
                    setUpdatedAt(fTSContent.getUpdatedAt());
                }
                if (!fTSContent.getType().isEmpty()) {
                    this.f45596l = fTSContent.type_;
                    onChanged();
                }
                if (!fTSContent.getPageUniqueId().isEmpty()) {
                    this.f45597m = fTSContent.pageUniqueId_;
                    onChanged();
                }
                if (!fTSContent.getContent().isEmpty()) {
                    this.f45598n = fTSContent.content_;
                    onChanged();
                }
                if (!fTSContent.getRect().isEmpty()) {
                    this.f45599o = fTSContent.rect_;
                    onChanged();
                }
                if (!fTSContent.getCharRectList().isEmpty()) {
                    this.f45600p = fTSContent.charRectList_;
                    onChanged();
                }
                if (!fTSContent.getMatrixValues().isEmpty()) {
                    this.f45601q = fTSContent.matrixValues_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) fTSContent).unknownFields);
                onChanged();
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45593i = "";
                this.f45596l = "";
                this.f45597m = "";
                this.f45598n = "";
                this.f45599o = "";
                this.f45600p = "";
                this.f45601q = "";
                m35246h();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContent.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContent.access$2700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.FTSContentProto$FTSContent r3 = (com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContent) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.FTSContentProto$FTSContent r4 = (com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContent) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContent.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.FTSContentProto$FTSContent$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.FTSContentProto$FTSContent$a */
        /* loaded from: classes8.dex */
        public class C7751a extends AbstractParser<FTSContent> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public FTSContent parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FTSContent(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ FTSContent(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7753a c7753a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static FTSContent getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return FTSContentProto.f45590c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FTSContent parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FTSContent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FTSContent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<FTSContent> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FTSContent)) {
                return super.equals(obj);
            }
            FTSContent fTSContent = (FTSContent) obj;
            return (((((((((getUniqueId().equals(fTSContent.getUniqueId())) && (getCreatedAt() > fTSContent.getCreatedAt() ? 1 : (getCreatedAt() == fTSContent.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > fTSContent.getUpdatedAt() ? 1 : (getUpdatedAt() == fTSContent.getUpdatedAt() ? 0 : -1)) == 0) && getType().equals(fTSContent.getType())) && getPageUniqueId().equals(fTSContent.getPageUniqueId())) && getContent().equals(fTSContent.getContent())) && getRect().equals(fTSContent.getRect())) && getCharRectList().equals(fTSContent.getCharRectList())) && getMatrixValues().equals(fTSContent.getMatrixValues())) && this.unknownFields.equals(fTSContent.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public String getCharRectList() {
            Object obj = this.charRectList_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.charRectList_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public ByteString getCharRectListBytes() {
            Object obj = this.charRectList_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.charRectList_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public String getContent() {
            Object obj = this.content_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.content_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public ByteString getContentBytes() {
            Object obj = this.content_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.content_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public String getMatrixValues() {
            Object obj = this.matrixValues_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.matrixValues_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public ByteString getMatrixValuesBytes() {
            Object obj = this.matrixValues_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.matrixValues_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public String getPageUniqueId() {
            Object obj = this.pageUniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pageUniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public ByteString getPageUniqueIdBytes() {
            Object obj = this.pageUniqueId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pageUniqueId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<FTSContent> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public String getRect() {
            Object obj = this.rect_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.rect_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public ByteString getRectBytes() {
            Object obj = this.rect_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.rect_ = copyFromUtf8;
            return copyFromUtf8;
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
            if (!getTypeBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(4, this.type_);
            }
            if (!getPageUniqueIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.pageUniqueId_);
            }
            if (!getContentBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(6, this.content_);
            }
            if (!getRectBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(7, this.rect_);
            }
            if (!getCharRectListBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(8, this.charRectList_);
            }
            if (!getMatrixValuesBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(9, this.matrixValues_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public String getType() {
            Object obj = this.type_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.type_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public ByteString getTypeBytes() {
            Object obj = this.type_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.type_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
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

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 3) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 4) * 53) + getType().hashCode()) * 37) + 5) * 53) + getPageUniqueId().hashCode()) * 37) + 6) * 53) + getContent().hashCode()) * 37) + 7) * 53) + getRect().hashCode()) * 37) + 8) * 53) + getCharRectList().hashCode()) * 37) + 9) * 53) + getMatrixValues().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return FTSContentProto.f45591d.ensureFieldAccessorsInitialized(FTSContent.class, Builder.class);
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
            if (!getTypeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.type_);
            }
            if (!getPageUniqueIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.pageUniqueId_);
            }
            if (!getContentBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.content_);
            }
            if (!getRectBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.rect_);
            }
            if (!getCharRectListBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.charRectList_);
            }
            if (!getMatrixValuesBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.matrixValues_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ FTSContent(GeneratedMessageV3.Builder builder, C7753a c7753a) {
            this(builder);
        }

        public static Builder newBuilder(FTSContent fTSContent) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(fTSContent);
        }

        public static FTSContent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private FTSContent(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FTSContent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FTSContent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FTSContent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FTSContent getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7753a c7753a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7753a) : new Builder(c7753a).mergeFrom(this);
        }

        public static FTSContent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private FTSContent() {
            this.memoizedIsInitialized = (byte) -1;
            this.uniqueId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.type_ = "";
            this.pageUniqueId_ = "";
            this.content_ = "";
            this.rect_ = "";
            this.charRectList_ = "";
            this.matrixValues_ = "";
        }

        public static FTSContent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static FTSContent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FTSContent parseFrom(InputStream inputStream) throws IOException {
            return (FTSContent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static FTSContent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FTSContent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FTSContent parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FTSContent) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static FTSContent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FTSContent) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        private FTSContent(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                if (readTag == 10) {
                                    this.uniqueId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 16) {
                                    this.createdAt_ = codedInputStream.readInt64();
                                } else if (readTag == 24) {
                                    this.updatedAt_ = codedInputStream.readInt64();
                                } else if (readTag == 34) {
                                    this.type_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 42) {
                                    this.pageUniqueId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 50) {
                                    this.content_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 58) {
                                    this.rect_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 66) {
                                    this.charRectList_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag != 74) {
                                    if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                    }
                                } else {
                                    this.matrixValues_ = codedInputStream.readStringRequireUtf8();
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
    }

    /* loaded from: classes8.dex */
    public static final class FTSContentList extends GeneratedMessageV3 implements FTSContentListOrBuilder {
        private static final FTSContentList DEFAULT_INSTANCE = new FTSContentList();
        private static final Parser<FTSContentList> PARSER = new C7752a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<FTSContent> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FTSContentListOrBuilder {

            /* renamed from: i */
            public int f45602i;

            /* renamed from: j */
            public List<FTSContent> f45603j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> f45604k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7753a c7753a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return FTSContentProto.f45588a;
            }

            public Builder addAllProto(Iterable<? extends FTSContent> iterable) {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                if (repeatedFieldBuilderV3 == null) {
                    m35248h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45603j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(FTSContent fTSContent) {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                if (repeatedFieldBuilderV3 == null) {
                    fTSContent.getClass();
                    m35248h();
                    this.f45603j.add(fTSContent);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(fTSContent);
                }
                return this;
            }

            public FTSContent.Builder addProtoBuilder() {
                return m35249i().addBuilder(FTSContent.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45603j = Collections.emptyList();
                    this.f45602i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return FTSContentProto.f45588a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentListOrBuilder
            public FTSContent getProto(int i) {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                return repeatedFieldBuilderV3 == null ? this.f45603j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public FTSContent.Builder getProtoBuilder(int i) {
                return m35249i().getBuilder(i);
            }

            public List<FTSContent.Builder> getProtoBuilderList() {
                return m35249i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                return repeatedFieldBuilderV3 == null ? this.f45603j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentListOrBuilder
            public List<FTSContent> getProtoList() {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45603j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentListOrBuilder
            public FTSContentOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                return repeatedFieldBuilderV3 == null ? this.f45603j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentListOrBuilder
            public List<? extends FTSContentOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45603j);
            }

            /* renamed from: h */
            public final void m35248h() {
                if ((this.f45602i & 1) != 1) {
                    this.f45603j = new ArrayList(this.f45603j);
                    this.f45602i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> m35249i() {
                if (this.f45604k == null) {
                    this.f45604k = new RepeatedFieldBuilderV3<>(this.f45603j, (this.f45602i & 1) == 1, getParentForChildren(), isClean());
                    this.f45603j = null;
                }
                return this.f45604k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return FTSContentProto.f45589b.ensureFieldAccessorsInitialized(FTSContentList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35250j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35249i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                if (repeatedFieldBuilderV3 == null) {
                    m35248h();
                    this.f45603j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, FTSContent fTSContent) {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                if (repeatedFieldBuilderV3 == null) {
                    fTSContent.getClass();
                    m35248h();
                    this.f45603j.set(i, fTSContent);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, fTSContent);
                }
                return this;
            }

            public /* synthetic */ Builder(C7753a c7753a) {
                this();
            }

            public Builder() {
                this.f45603j = Collections.emptyList();
                m35250j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FTSContentList build() {
                FTSContentList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FTSContentList buildPartial() {
                FTSContentList fTSContentList = new FTSContentList(this, (C7753a) null);
                int i = this.f45602i;
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45603j = Collections.unmodifiableList(this.f45603j);
                        this.f45602i &= -2;
                    }
                    fTSContentList.proto_ = this.f45603j;
                } else {
                    fTSContentList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return fTSContentList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public FTSContentList getDefaultInstanceForType() {
                return FTSContentList.getDefaultInstance();
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

            public FTSContent.Builder addProtoBuilder(int i) {
                return m35249i().addBuilder(i, FTSContent.getDefaultInstance());
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
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45603j = Collections.emptyList();
                    this.f45602i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45603j = Collections.emptyList();
                m35250j();
            }

            public Builder addProto(int i, FTSContent fTSContent) {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                if (repeatedFieldBuilderV3 == null) {
                    fTSContent.getClass();
                    m35248h();
                    this.f45603j.add(i, fTSContent);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, fTSContent);
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
                if (message instanceof FTSContentList) {
                    return mergeFrom((FTSContentList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, FTSContent.Builder builder) {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                if (repeatedFieldBuilderV3 == null) {
                    m35248h();
                    this.f45603j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(FTSContentList fTSContentList) {
                if (fTSContentList == FTSContentList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45604k == null) {
                    if (!fTSContentList.proto_.isEmpty()) {
                        if (this.f45603j.isEmpty()) {
                            this.f45603j = fTSContentList.proto_;
                            this.f45602i &= -2;
                        } else {
                            m35248h();
                            this.f45603j.addAll(fTSContentList.proto_);
                        }
                        onChanged();
                    }
                } else if (!fTSContentList.proto_.isEmpty()) {
                    if (this.f45604k.isEmpty()) {
                        this.f45604k.dispose();
                        this.f45604k = null;
                        this.f45603j = fTSContentList.proto_;
                        this.f45602i &= -2;
                        this.f45604k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35249i() : null;
                    } else {
                        this.f45604k.addAllMessages(fTSContentList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) fTSContentList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(FTSContent.Builder builder) {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                if (repeatedFieldBuilderV3 == null) {
                    m35248h();
                    this.f45603j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, FTSContent.Builder builder) {
                RepeatedFieldBuilderV3<FTSContent, FTSContent.Builder, FTSContentOrBuilder> repeatedFieldBuilderV3 = this.f45604k;
                if (repeatedFieldBuilderV3 == null) {
                    m35248h();
                    this.f45603j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.FTSContentProto$FTSContentList r3 = (com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.FTSContentProto$FTSContentList r4 = (com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.FTSContentProto$FTSContentList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.FTSContentProto$FTSContentList$a */
        /* loaded from: classes8.dex */
        public class C7752a extends AbstractParser<FTSContentList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public FTSContentList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FTSContentList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ FTSContentList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7753a c7753a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static FTSContentList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return FTSContentProto.f45588a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FTSContentList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FTSContentList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FTSContentList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<FTSContentList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FTSContentList)) {
                return super.equals(obj);
            }
            FTSContentList fTSContentList = (FTSContentList) obj;
            return (getProtoList().equals(fTSContentList.getProtoList())) && this.unknownFields.equals(fTSContentList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<FTSContentList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentListOrBuilder
        public FTSContent getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentListOrBuilder
        public List<FTSContent> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentListOrBuilder
        public FTSContentOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSContentProto.FTSContentListOrBuilder
        public List<? extends FTSContentOrBuilder> getProtoOrBuilderList() {
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
            return FTSContentProto.f45589b.ensureFieldAccessorsInitialized(FTSContentList.class, Builder.class);
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

        public /* synthetic */ FTSContentList(GeneratedMessageV3.Builder builder, C7753a c7753a) {
            this(builder);
        }

        public static Builder newBuilder(FTSContentList fTSContentList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(fTSContentList);
        }

        public static FTSContentList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private FTSContentList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FTSContentList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FTSContentList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FTSContentList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FTSContentList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7753a c7753a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7753a) : new Builder(c7753a).mergeFrom(this);
        }

        public static FTSContentList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private FTSContentList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static FTSContentList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static FTSContentList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FTSContentList parseFrom(InputStream inputStream) throws IOException {
            return (FTSContentList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private FTSContentList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.proto_.add((FTSContent) codedInputStream.readMessage(FTSContent.parser(), extensionRegistryLite));
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

        public static FTSContentList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FTSContentList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FTSContentList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FTSContentList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static FTSContentList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FTSContentList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface FTSContentListOrBuilder extends MessageOrBuilder {
        FTSContent getProto(int i);

        int getProtoCount();

        List<FTSContent> getProtoList();

        FTSContentOrBuilder getProtoOrBuilder(int i);

        List<? extends FTSContentOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface FTSContentOrBuilder extends MessageOrBuilder {
        String getCharRectList();

        ByteString getCharRectListBytes();

        String getContent();

        ByteString getContentBytes();

        long getCreatedAt();

        String getMatrixValues();

        ByteString getMatrixValuesBytes();

        String getPageUniqueId();

        ByteString getPageUniqueIdBytes();

        String getRect();

        ByteString getRectBytes();

        String getType();

        ByteString getTypeBytes();

        String getUniqueId();

        ByteString getUniqueIdBytes();

        long getUpdatedAt();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.FTSContentProto$a */
    /* loaded from: classes8.dex */
    public class C7753a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = FTSContentProto.f45592e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0015FTSContentProto.proto\",\n\u000eFTSContentList\u0012\u001a\n\u0005proto\u0018\u0001 \u0003(\u000b2\u000b.FTSContent\"³\u0001\n\nFTSContent\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\f\n\u0004type\u0018\u0004 \u0001(\t\u0012\u0014\n\fpageUniqueId\u0018\u0005 \u0001(\t\u0012\u000f\n\u0007content\u0018\u0006 \u0001(\t\u0012\f\n\u0004rect\u0018\u0007 \u0001(\t\u0012\u0014\n\fcharRectList\u0018\b \u0001(\t\u0012\u0014\n\fmatrixValues\u0018\t \u0001(\tB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7753a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45588a = descriptor;
        f45589b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45590c = descriptor2;
        f45591d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"UniqueId", "CreatedAt", "UpdatedAt", "Type", "PageUniqueId", MIMEHeaders.KEY_CONTENT, "Rect", "CharRectList", "MatrixValues"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45592e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
