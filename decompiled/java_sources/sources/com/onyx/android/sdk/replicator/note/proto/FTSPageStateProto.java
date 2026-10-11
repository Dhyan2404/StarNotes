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

/* loaded from: classes8.dex */
public final class FTSPageStateProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45605a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45606b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45607c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45608d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45609e;

    /* loaded from: classes8.dex */
    public static final class FTSPageState extends GeneratedMessageV3 implements FTSPageStateOrBuilder {
        public static final int CREATEDAT_FIELD_NUMBER = 2;
        public static final int INDEXED_FIELD_NUMBER = 7;
        public static final int LANG_FIELD_NUMBER = 6;
        public static final int PAGEID_FIELD_NUMBER = 4;
        public static final int TYPE_FIELD_NUMBER = 5;
        public static final int UNIQUEID_FIELD_NUMBER = 1;
        public static final int UPDATEDAT_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private long createdAt_;
        private boolean indexed_;
        private volatile Object lang_;
        private byte memoizedIsInitialized;
        private volatile Object pageId_;
        private volatile Object type_;
        private volatile Object uniqueId_;
        private long updatedAt_;
        private static final FTSPageState DEFAULT_INSTANCE = new FTSPageState();
        private static final Parser<FTSPageState> PARSER = new C7754a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FTSPageStateOrBuilder {

            /* renamed from: i */
            public Object f45610i;

            /* renamed from: j */
            public long f45611j;

            /* renamed from: k */
            public long f45612k;

            /* renamed from: l */
            public Object f45613l;

            /* renamed from: m */
            public Object f45614m;

            /* renamed from: n */
            public Object f45615n;

            /* renamed from: o */
            public boolean f45616o;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7756a c7756a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return FTSPageStateProto.f45607c;
            }

            public Builder clearCreatedAt() {
                this.f45611j = 0L;
                onChanged();
                return this;
            }

            public Builder clearIndexed() {
                this.f45616o = false;
                onChanged();
                return this;
            }

            public Builder clearLang() {
                this.f45615n = FTSPageState.getDefaultInstance().getLang();
                onChanged();
                return this;
            }

            public Builder clearPageId() {
                this.f45613l = FTSPageState.getDefaultInstance().getPageId();
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.f45614m = FTSPageState.getDefaultInstance().getType();
                onChanged();
                return this;
            }

            public Builder clearUniqueId() {
                this.f45610i = FTSPageState.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45612k = 0L;
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
            public long getCreatedAt() {
                return this.f45611j;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return FTSPageStateProto.f45607c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
            public boolean getIndexed() {
                return this.f45616o;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
            public String getLang() {
                Object obj = this.f45615n;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45615n = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
            public ByteString getLangBytes() {
                Object obj = this.f45615n;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45615n = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
            public String getPageId() {
                Object obj = this.f45613l;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45613l = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
            public ByteString getPageIdBytes() {
                Object obj = this.f45613l;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45613l = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
            public String getType() {
                Object obj = this.f45614m;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45614m = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
            public ByteString getTypeBytes() {
                Object obj = this.f45614m;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45614m = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
            public String getUniqueId() {
                Object obj = this.f45610i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45610i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
            public ByteString getUniqueIdBytes() {
                Object obj = this.f45610i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45610i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
            public long getUpdatedAt() {
                return this.f45612k;
            }

            /* renamed from: h */
            public final void m35257h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return FTSPageStateProto.f45608d.ensureFieldAccessorsInitialized(FTSPageState.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setCreatedAt(long j) {
                this.f45611j = j;
                onChanged();
                return this;
            }

            public Builder setIndexed(boolean z) {
                this.f45616o = z;
                onChanged();
                return this;
            }

            public Builder setLang(String str) {
                str.getClass();
                this.f45615n = str;
                onChanged();
                return this;
            }

            public Builder setLangBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45615n = byteString;
                onChanged();
                return this;
            }

            public Builder setPageId(String str) {
                str.getClass();
                this.f45613l = str;
                onChanged();
                return this;
            }

            public Builder setPageIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45613l = byteString;
                onChanged();
                return this;
            }

            public Builder setType(String str) {
                str.getClass();
                this.f45614m = str;
                onChanged();
                return this;
            }

            public Builder setTypeBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45614m = byteString;
                onChanged();
                return this;
            }

            public Builder setUniqueId(String str) {
                str.getClass();
                this.f45610i = str;
                onChanged();
                return this;
            }

            public Builder setUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45610i = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45612k = j;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7756a c7756a) {
                this();
            }

            public Builder() {
                this.f45610i = "";
                this.f45613l = "";
                this.f45614m = "";
                this.f45615n = "";
                m35257h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FTSPageState build() {
                FTSPageState buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FTSPageState buildPartial() {
                FTSPageState fTSPageState = new FTSPageState(this, (C7756a) null);
                fTSPageState.uniqueId_ = this.f45610i;
                fTSPageState.createdAt_ = this.f45611j;
                fTSPageState.updatedAt_ = this.f45612k;
                fTSPageState.pageId_ = this.f45613l;
                fTSPageState.type_ = this.f45614m;
                fTSPageState.lang_ = this.f45615n;
                fTSPageState.indexed_ = this.f45616o;
                onBuilt();
                return fTSPageState;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public FTSPageState getDefaultInstanceForType() {
                return FTSPageState.getDefaultInstance();
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
                this.f45610i = "";
                this.f45611j = 0L;
                this.f45612k = 0L;
                this.f45613l = "";
                this.f45614m = "";
                this.f45615n = "";
                this.f45616o = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof FTSPageState) {
                    return mergeFrom((FTSPageState) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45610i = "";
                this.f45613l = "";
                this.f45614m = "";
                this.f45615n = "";
                m35257h();
            }

            public Builder mergeFrom(FTSPageState fTSPageState) {
                if (fTSPageState == FTSPageState.getDefaultInstance()) {
                    return this;
                }
                if (!fTSPageState.getUniqueId().isEmpty()) {
                    this.f45610i = fTSPageState.uniqueId_;
                    onChanged();
                }
                if (fTSPageState.getCreatedAt() != 0) {
                    setCreatedAt(fTSPageState.getCreatedAt());
                }
                if (fTSPageState.getUpdatedAt() != 0) {
                    setUpdatedAt(fTSPageState.getUpdatedAt());
                }
                if (!fTSPageState.getPageId().isEmpty()) {
                    this.f45613l = fTSPageState.pageId_;
                    onChanged();
                }
                if (!fTSPageState.getType().isEmpty()) {
                    this.f45614m = fTSPageState.type_;
                    onChanged();
                }
                if (!fTSPageState.getLang().isEmpty()) {
                    this.f45615n = fTSPageState.lang_;
                    onChanged();
                }
                if (fTSPageState.getIndexed()) {
                    setIndexed(fTSPageState.getIndexed());
                }
                mergeUnknownFields(((GeneratedMessageV3) fTSPageState).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageState.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageState.access$2500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto$FTSPageState r3 = (com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageState) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto$FTSPageState r4 = (com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageState) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageState.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto$FTSPageState$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto$FTSPageState$a */
        /* loaded from: classes8.dex */
        public class C7754a extends AbstractParser<FTSPageState> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public FTSPageState parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FTSPageState(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ FTSPageState(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7756a c7756a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static FTSPageState getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return FTSPageStateProto.f45607c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FTSPageState parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FTSPageState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FTSPageState parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<FTSPageState> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FTSPageState)) {
                return super.equals(obj);
            }
            FTSPageState fTSPageState = (FTSPageState) obj;
            return (((((((getUniqueId().equals(fTSPageState.getUniqueId())) && (getCreatedAt() > fTSPageState.getCreatedAt() ? 1 : (getCreatedAt() == fTSPageState.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > fTSPageState.getUpdatedAt() ? 1 : (getUpdatedAt() == fTSPageState.getUpdatedAt() ? 0 : -1)) == 0) && getPageId().equals(fTSPageState.getPageId())) && getType().equals(fTSPageState.getType())) && getLang().equals(fTSPageState.getLang())) && getIndexed() == fTSPageState.getIndexed()) && this.unknownFields.equals(fTSPageState.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
        public boolean getIndexed() {
            return this.indexed_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
        public String getLang() {
            Object obj = this.lang_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.lang_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
        public ByteString getLangBytes() {
            Object obj = this.lang_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.lang_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
        public String getPageId() {
            Object obj = this.pageId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pageId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
        public ByteString getPageIdBytes() {
            Object obj = this.pageId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pageId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<FTSPageState> getParserForType() {
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
            if (!getPageIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(4, this.pageId_);
            }
            if (!getTypeBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.type_);
            }
            if (!getLangBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(6, this.lang_);
            }
            boolean z = this.indexed_;
            if (z) {
                computeStringSize += CodedOutputStream.computeBoolSize(7, z);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
        public String getType() {
            Object obj = this.type_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.type_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
        public ByteString getTypeBytes() {
            Object obj = this.type_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.type_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
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

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = ((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 3) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 4) * 53) + getPageId().hashCode()) * 37) + 5) * 53) + getType().hashCode()) * 37) + 6) * 53) + getLang().hashCode()) * 37) + 7) * 53) + Internal.hashBoolean(getIndexed())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return FTSPageStateProto.f45608d.ensureFieldAccessorsInitialized(FTSPageState.class, Builder.class);
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
            if (!getPageIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.pageId_);
            }
            if (!getTypeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.type_);
            }
            if (!getLangBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.lang_);
            }
            boolean z = this.indexed_;
            if (z) {
                codedOutputStream.writeBool(7, z);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ FTSPageState(GeneratedMessageV3.Builder builder, C7756a c7756a) {
            this(builder);
        }

        public static Builder newBuilder(FTSPageState fTSPageState) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(fTSPageState);
        }

        public static FTSPageState parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private FTSPageState(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FTSPageState parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FTSPageState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FTSPageState parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FTSPageState getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7756a c7756a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7756a) : new Builder(c7756a).mergeFrom(this);
        }

        public static FTSPageState parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private FTSPageState() {
            this.memoizedIsInitialized = (byte) -1;
            this.uniqueId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.pageId_ = "";
            this.type_ = "";
            this.lang_ = "";
            this.indexed_ = false;
        }

        public static FTSPageState parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static FTSPageState parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FTSPageState parseFrom(InputStream inputStream) throws IOException {
            return (FTSPageState) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static FTSPageState parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FTSPageState) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FTSPageState parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FTSPageState) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static FTSPageState parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FTSPageState) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        private FTSPageState(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.pageId_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 42) {
                                this.type_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 50) {
                                this.lang_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 56) {
                                if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            } else {
                                this.indexed_ = codedInputStream.readBool();
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
    public static final class FTSPageStateList extends GeneratedMessageV3 implements FTSPageStateListOrBuilder {
        private static final FTSPageStateList DEFAULT_INSTANCE = new FTSPageStateList();
        private static final Parser<FTSPageStateList> PARSER = new C7755a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<FTSPageState> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FTSPageStateListOrBuilder {

            /* renamed from: i */
            public int f45617i;

            /* renamed from: j */
            public List<FTSPageState> f45618j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> f45619k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7756a c7756a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return FTSPageStateProto.f45605a;
            }

            public Builder addAllProto(Iterable<? extends FTSPageState> iterable) {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                if (repeatedFieldBuilderV3 == null) {
                    m35259h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45618j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(FTSPageState fTSPageState) {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                if (repeatedFieldBuilderV3 == null) {
                    fTSPageState.getClass();
                    m35259h();
                    this.f45618j.add(fTSPageState);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(fTSPageState);
                }
                return this;
            }

            public FTSPageState.Builder addProtoBuilder() {
                return m35260i().addBuilder(FTSPageState.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45618j = Collections.emptyList();
                    this.f45617i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return FTSPageStateProto.f45605a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateListOrBuilder
            public FTSPageState getProto(int i) {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                return repeatedFieldBuilderV3 == null ? this.f45618j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public FTSPageState.Builder getProtoBuilder(int i) {
                return m35260i().getBuilder(i);
            }

            public List<FTSPageState.Builder> getProtoBuilderList() {
                return m35260i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                return repeatedFieldBuilderV3 == null ? this.f45618j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateListOrBuilder
            public List<FTSPageState> getProtoList() {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45618j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateListOrBuilder
            public FTSPageStateOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                return repeatedFieldBuilderV3 == null ? this.f45618j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateListOrBuilder
            public List<? extends FTSPageStateOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45618j);
            }

            /* renamed from: h */
            public final void m35259h() {
                if ((this.f45617i & 1) != 1) {
                    this.f45618j = new ArrayList(this.f45618j);
                    this.f45617i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> m35260i() {
                if (this.f45619k == null) {
                    this.f45619k = new RepeatedFieldBuilderV3<>(this.f45618j, (this.f45617i & 1) == 1, getParentForChildren(), isClean());
                    this.f45618j = null;
                }
                return this.f45619k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return FTSPageStateProto.f45606b.ensureFieldAccessorsInitialized(FTSPageStateList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35261j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35260i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                if (repeatedFieldBuilderV3 == null) {
                    m35259h();
                    this.f45618j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, FTSPageState fTSPageState) {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                if (repeatedFieldBuilderV3 == null) {
                    fTSPageState.getClass();
                    m35259h();
                    this.f45618j.set(i, fTSPageState);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, fTSPageState);
                }
                return this;
            }

            public /* synthetic */ Builder(C7756a c7756a) {
                this();
            }

            public Builder() {
                this.f45618j = Collections.emptyList();
                m35261j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FTSPageStateList build() {
                FTSPageStateList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FTSPageStateList buildPartial() {
                FTSPageStateList fTSPageStateList = new FTSPageStateList(this, (C7756a) null);
                int i = this.f45617i;
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45618j = Collections.unmodifiableList(this.f45618j);
                        this.f45617i &= -2;
                    }
                    fTSPageStateList.proto_ = this.f45618j;
                } else {
                    fTSPageStateList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return fTSPageStateList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public FTSPageStateList getDefaultInstanceForType() {
                return FTSPageStateList.getDefaultInstance();
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

            public FTSPageState.Builder addProtoBuilder(int i) {
                return m35260i().addBuilder(i, FTSPageState.getDefaultInstance());
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
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45618j = Collections.emptyList();
                    this.f45617i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45618j = Collections.emptyList();
                m35261j();
            }

            public Builder addProto(int i, FTSPageState fTSPageState) {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                if (repeatedFieldBuilderV3 == null) {
                    fTSPageState.getClass();
                    m35259h();
                    this.f45618j.add(i, fTSPageState);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, fTSPageState);
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
                if (message instanceof FTSPageStateList) {
                    return mergeFrom((FTSPageStateList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, FTSPageState.Builder builder) {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                if (repeatedFieldBuilderV3 == null) {
                    m35259h();
                    this.f45618j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(FTSPageStateList fTSPageStateList) {
                if (fTSPageStateList == FTSPageStateList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45619k == null) {
                    if (!fTSPageStateList.proto_.isEmpty()) {
                        if (this.f45618j.isEmpty()) {
                            this.f45618j = fTSPageStateList.proto_;
                            this.f45617i &= -2;
                        } else {
                            m35259h();
                            this.f45618j.addAll(fTSPageStateList.proto_);
                        }
                        onChanged();
                    }
                } else if (!fTSPageStateList.proto_.isEmpty()) {
                    if (this.f45619k.isEmpty()) {
                        this.f45619k.dispose();
                        this.f45619k = null;
                        this.f45618j = fTSPageStateList.proto_;
                        this.f45617i &= -2;
                        this.f45619k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35260i() : null;
                    } else {
                        this.f45619k.addAllMessages(fTSPageStateList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) fTSPageStateList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(FTSPageState.Builder builder) {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                if (repeatedFieldBuilderV3 == null) {
                    m35259h();
                    this.f45618j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, FTSPageState.Builder builder) {
                RepeatedFieldBuilderV3<FTSPageState, FTSPageState.Builder, FTSPageStateOrBuilder> repeatedFieldBuilderV3 = this.f45619k;
                if (repeatedFieldBuilderV3 == null) {
                    m35259h();
                    this.f45618j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto$FTSPageStateList r3 = (com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto$FTSPageStateList r4 = (com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto$FTSPageStateList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto$FTSPageStateList$a */
        /* loaded from: classes8.dex */
        public class C7755a extends AbstractParser<FTSPageStateList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public FTSPageStateList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FTSPageStateList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ FTSPageStateList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7756a c7756a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static FTSPageStateList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return FTSPageStateProto.f45605a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FTSPageStateList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FTSPageStateList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FTSPageStateList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<FTSPageStateList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FTSPageStateList)) {
                return super.equals(obj);
            }
            FTSPageStateList fTSPageStateList = (FTSPageStateList) obj;
            return (getProtoList().equals(fTSPageStateList.getProtoList())) && this.unknownFields.equals(fTSPageStateList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<FTSPageStateList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateListOrBuilder
        public FTSPageState getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateListOrBuilder
        public List<FTSPageState> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateListOrBuilder
        public FTSPageStateOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto.FTSPageStateListOrBuilder
        public List<? extends FTSPageStateOrBuilder> getProtoOrBuilderList() {
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
            return FTSPageStateProto.f45606b.ensureFieldAccessorsInitialized(FTSPageStateList.class, Builder.class);
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

        public /* synthetic */ FTSPageStateList(GeneratedMessageV3.Builder builder, C7756a c7756a) {
            this(builder);
        }

        public static Builder newBuilder(FTSPageStateList fTSPageStateList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(fTSPageStateList);
        }

        public static FTSPageStateList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private FTSPageStateList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FTSPageStateList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FTSPageStateList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FTSPageStateList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FTSPageStateList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7756a c7756a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7756a) : new Builder(c7756a).mergeFrom(this);
        }

        public static FTSPageStateList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private FTSPageStateList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static FTSPageStateList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static FTSPageStateList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FTSPageStateList parseFrom(InputStream inputStream) throws IOException {
            return (FTSPageStateList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private FTSPageStateList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.proto_.add((FTSPageState) codedInputStream.readMessage(FTSPageState.parser(), extensionRegistryLite));
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

        public static FTSPageStateList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FTSPageStateList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FTSPageStateList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FTSPageStateList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static FTSPageStateList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FTSPageStateList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface FTSPageStateListOrBuilder extends MessageOrBuilder {
        FTSPageState getProto(int i);

        int getProtoCount();

        List<FTSPageState> getProtoList();

        FTSPageStateOrBuilder getProtoOrBuilder(int i);

        List<? extends FTSPageStateOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface FTSPageStateOrBuilder extends MessageOrBuilder {
        long getCreatedAt();

        boolean getIndexed();

        String getLang();

        ByteString getLangBytes();

        String getPageId();

        ByteString getPageIdBytes();

        String getType();

        ByteString getTypeBytes();

        String getUniqueId();

        ByteString getUniqueIdBytes();

        long getUpdatedAt();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.FTSPageStateProto$a */
    /* loaded from: classes8.dex */
    public class C7756a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = FTSPageStateProto.f45609e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0017FTSPageStateProto.proto\"0\n\u0010FTSPageStateList\u0012\u001c\n\u0005proto\u0018\u0001 \u0003(\u000b2\r.FTSPageState\"\u0083\u0001\n\fFTSPageState\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\u000e\n\u0006pageId\u0018\u0004 \u0001(\t\u0012\f\n\u0004type\u0018\u0005 \u0001(\t\u0012\f\n\u0004lang\u0018\u0006 \u0001(\t\u0012\u000f\n\u0007indexed\u0018\u0007 \u0001(\bB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7756a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45605a = descriptor;
        f45606b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45607c = descriptor2;
        f45608d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"UniqueId", "CreatedAt", "UpdatedAt", "PageId", "Type", "Lang", "Indexed"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45609e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
