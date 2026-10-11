package com.onyx.android.sdk.replicator.note.proto;

import com.google.firebase.installations.local.PersistedInstallation;
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
public final class ResourceDocProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45810a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45811b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45812c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45813d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45814e;

    /* loaded from: classes8.dex */
    public static final class ResourceProto extends GeneratedMessageV3 implements ResourceProtoOrBuilder {
        public static final int AUDIODURATION_FIELD_NUMBER = 6;
        public static final int CLOUDPATH_FIELD_NUMBER = 9;
        public static final int CREATEDAT_FIELD_NUMBER = 3;
        public static final int DOCUMENTID_FIELD_NUMBER = 2;
        public static final int EXTRAATTRIBUTES_FIELD_NUMBER = 10;
        public static final int ORIGINPATH_FIELD_NUMBER = 12;
        public static final int RELATIVEPATH_FIELD_NUMBER = 8;
        public static final int REVISIONID_FIELD_NUMBER = 11;
        public static final int STATUS_FIELD_NUMBER = 13;
        public static final int TITLE_FIELD_NUMBER = 5;
        public static final int TYPE_FIELD_NUMBER = 7;
        public static final int UNIQUEID_FIELD_NUMBER = 1;
        public static final int UPDATEDAT_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private long audioDuration_;
        private volatile Object cloudPath_;
        private long createdAt_;
        private volatile Object documentId_;
        private volatile Object extraAttributes_;
        private byte memoizedIsInitialized;
        private volatile Object originPath_;
        private volatile Object relativePath_;
        private volatile Object revisionId_;
        private int status_;
        private volatile Object title_;
        private int type_;
        private volatile Object uniqueId_;
        private long updatedAt_;
        private static final ResourceProto DEFAULT_INSTANCE = new ResourceProto();
        private static final Parser<ResourceProto> PARSER = new C7775a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ResourceProtoOrBuilder {

            /* renamed from: i */
            public Object f45815i;

            /* renamed from: j */
            public Object f45816j;

            /* renamed from: k */
            public long f45817k;

            /* renamed from: l */
            public long f45818l;

            /* renamed from: m */
            public Object f45819m;

            /* renamed from: n */
            public long f45820n;

            /* renamed from: o */
            public int f45821o;

            /* renamed from: p */
            public Object f45822p;

            /* renamed from: q */
            public Object f45823q;

            /* renamed from: r */
            public Object f45824r;

            /* renamed from: s */
            public Object f45825s;

            /* renamed from: t */
            public Object f45826t;

            /* renamed from: u */
            public int f45827u;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7777a c7777a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ResourceDocProto.f45812c;
            }

            public Builder clearAudioDuration() {
                this.f45820n = 0L;
                onChanged();
                return this;
            }

            public Builder clearCloudPath() {
                this.f45823q = ResourceProto.getDefaultInstance().getCloudPath();
                onChanged();
                return this;
            }

            public Builder clearCreatedAt() {
                this.f45817k = 0L;
                onChanged();
                return this;
            }

            public Builder clearDocumentId() {
                this.f45816j = ResourceProto.getDefaultInstance().getDocumentId();
                onChanged();
                return this;
            }

            public Builder clearExtraAttributes() {
                this.f45824r = ResourceProto.getDefaultInstance().getExtraAttributes();
                onChanged();
                return this;
            }

            public Builder clearOriginPath() {
                this.f45826t = ResourceProto.getDefaultInstance().getOriginPath();
                onChanged();
                return this;
            }

            public Builder clearRelativePath() {
                this.f45822p = ResourceProto.getDefaultInstance().getRelativePath();
                onChanged();
                return this;
            }

            public Builder clearRevisionId() {
                this.f45825s = ResourceProto.getDefaultInstance().getRevisionId();
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.f45827u = 0;
                onChanged();
                return this;
            }

            public Builder clearTitle() {
                this.f45819m = ResourceProto.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.f45821o = 0;
                onChanged();
                return this;
            }

            public Builder clearUniqueId() {
                this.f45815i = ResourceProto.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45818l = 0L;
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public long getAudioDuration() {
                return this.f45820n;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public String getCloudPath() {
                Object obj = this.f45823q;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45823q = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public ByteString getCloudPathBytes() {
                Object obj = this.f45823q;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45823q = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public long getCreatedAt() {
                return this.f45817k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ResourceDocProto.f45812c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public String getDocumentId() {
                Object obj = this.f45816j;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45816j = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public ByteString getDocumentIdBytes() {
                Object obj = this.f45816j;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45816j = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public String getExtraAttributes() {
                Object obj = this.f45824r;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45824r = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public ByteString getExtraAttributesBytes() {
                Object obj = this.f45824r;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45824r = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public String getOriginPath() {
                Object obj = this.f45826t;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45826t = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public ByteString getOriginPathBytes() {
                Object obj = this.f45826t;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45826t = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public String getRelativePath() {
                Object obj = this.f45822p;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45822p = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public ByteString getRelativePathBytes() {
                Object obj = this.f45822p;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45822p = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public String getRevisionId() {
                Object obj = this.f45825s;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45825s = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public ByteString getRevisionIdBytes() {
                Object obj = this.f45825s;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45825s = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public int getStatus() {
                return this.f45827u;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public String getTitle() {
                Object obj = this.f45819m;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45819m = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public ByteString getTitleBytes() {
                Object obj = this.f45819m;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45819m = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public int getType() {
                return this.f45821o;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public String getUniqueId() {
                Object obj = this.f45815i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45815i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public ByteString getUniqueIdBytes() {
                Object obj = this.f45815i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45815i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
            public long getUpdatedAt() {
                return this.f45818l;
            }

            /* renamed from: h */
            public final void m35334h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ResourceDocProto.f45813d.ensureFieldAccessorsInitialized(ResourceProto.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return this;
            }

            public Builder setAudioDuration(long j) {
                this.f45820n = j;
                onChanged();
                return this;
            }

            public Builder setCloudPath(String str) {
                str.getClass();
                this.f45823q = str;
                onChanged();
                return this;
            }

            public Builder setCloudPathBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45823q = byteString;
                onChanged();
                return this;
            }

            public Builder setCreatedAt(long j) {
                this.f45817k = j;
                onChanged();
                return this;
            }

            public Builder setDocumentId(String str) {
                str.getClass();
                this.f45816j = str;
                onChanged();
                return this;
            }

            public Builder setDocumentIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45816j = byteString;
                onChanged();
                return this;
            }

            public Builder setExtraAttributes(String str) {
                str.getClass();
                this.f45824r = str;
                onChanged();
                return this;
            }

            public Builder setExtraAttributesBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45824r = byteString;
                onChanged();
                return this;
            }

            public Builder setOriginPath(String str) {
                str.getClass();
                this.f45826t = str;
                onChanged();
                return this;
            }

            public Builder setOriginPathBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45826t = byteString;
                onChanged();
                return this;
            }

            public Builder setRelativePath(String str) {
                str.getClass();
                this.f45822p = str;
                onChanged();
                return this;
            }

            public Builder setRelativePathBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45822p = byteString;
                onChanged();
                return this;
            }

            public Builder setRevisionId(String str) {
                str.getClass();
                this.f45825s = str;
                onChanged();
                return this;
            }

            public Builder setRevisionIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45825s = byteString;
                onChanged();
                return this;
            }

            public Builder setStatus(int i) {
                this.f45827u = i;
                onChanged();
                return this;
            }

            public Builder setTitle(String str) {
                str.getClass();
                this.f45819m = str;
                onChanged();
                return this;
            }

            public Builder setTitleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45819m = byteString;
                onChanged();
                return this;
            }

            public Builder setType(int i) {
                this.f45821o = i;
                onChanged();
                return this;
            }

            public Builder setUniqueId(String str) {
                str.getClass();
                this.f45815i = str;
                onChanged();
                return this;
            }

            public Builder setUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45815i = byteString;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45818l = j;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7777a c7777a) {
                this();
            }

            public Builder() {
                this.f45815i = "";
                this.f45816j = "";
                this.f45819m = "";
                this.f45822p = "";
                this.f45823q = "";
                this.f45824r = "";
                this.f45825s = "";
                this.f45826t = "";
                m35334h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ResourceProto build() {
                ResourceProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ResourceProto buildPartial() {
                ResourceProto resourceProto = new ResourceProto(this, (C7777a) null);
                resourceProto.uniqueId_ = this.f45815i;
                resourceProto.documentId_ = this.f45816j;
                resourceProto.createdAt_ = this.f45817k;
                resourceProto.updatedAt_ = this.f45818l;
                resourceProto.title_ = this.f45819m;
                resourceProto.audioDuration_ = this.f45820n;
                resourceProto.type_ = this.f45821o;
                resourceProto.relativePath_ = this.f45822p;
                resourceProto.cloudPath_ = this.f45823q;
                resourceProto.extraAttributes_ = this.f45824r;
                resourceProto.revisionId_ = this.f45825s;
                resourceProto.originPath_ = this.f45826t;
                resourceProto.status_ = this.f45827u;
                onBuilt();
                return resourceProto;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ResourceProto getDefaultInstanceForType() {
                return ResourceProto.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.f45815i = "";
                this.f45816j = "";
                this.f45817k = 0L;
                this.f45818l = 0L;
                this.f45819m = "";
                this.f45820n = 0L;
                this.f45821o = 0;
                this.f45822p = "";
                this.f45823q = "";
                this.f45824r = "";
                this.f45825s = "";
                this.f45826t = "";
                this.f45827u = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.m72166clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ResourceProto) {
                    return mergeFrom((ResourceProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ResourceProto resourceProto) {
                if (resourceProto == ResourceProto.getDefaultInstance()) {
                    return this;
                }
                if (!resourceProto.getUniqueId().isEmpty()) {
                    this.f45815i = resourceProto.uniqueId_;
                    onChanged();
                }
                if (!resourceProto.getDocumentId().isEmpty()) {
                    this.f45816j = resourceProto.documentId_;
                    onChanged();
                }
                if (resourceProto.getCreatedAt() != 0) {
                    setCreatedAt(resourceProto.getCreatedAt());
                }
                if (resourceProto.getUpdatedAt() != 0) {
                    setUpdatedAt(resourceProto.getUpdatedAt());
                }
                if (!resourceProto.getTitle().isEmpty()) {
                    this.f45819m = resourceProto.title_;
                    onChanged();
                }
                if (resourceProto.getAudioDuration() != 0) {
                    setAudioDuration(resourceProto.getAudioDuration());
                }
                if (resourceProto.getType() != 0) {
                    setType(resourceProto.getType());
                }
                if (!resourceProto.getRelativePath().isEmpty()) {
                    this.f45822p = resourceProto.relativePath_;
                    onChanged();
                }
                if (!resourceProto.getCloudPath().isEmpty()) {
                    this.f45823q = resourceProto.cloudPath_;
                    onChanged();
                }
                if (!resourceProto.getExtraAttributes().isEmpty()) {
                    this.f45824r = resourceProto.extraAttributes_;
                    onChanged();
                }
                if (!resourceProto.getRevisionId().isEmpty()) {
                    this.f45825s = resourceProto.revisionId_;
                    onChanged();
                }
                if (!resourceProto.getOriginPath().isEmpty()) {
                    this.f45826t = resourceProto.originPath_;
                    onChanged();
                }
                if (resourceProto.getStatus() != 0) {
                    setStatus(resourceProto.getStatus());
                }
                onChanged();
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45815i = "";
                this.f45816j = "";
                this.f45819m = "";
                this.f45822p = "";
                this.f45823q = "";
                this.f45824r = "";
                this.f45825s = "";
                this.f45826t = "";
                m35334h();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProto.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProto.access$2900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.ResourceDocProto$ResourceProto r3 = (com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProto) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.ResourceDocProto$ResourceProto r4 = (com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProto) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProto.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.ResourceDocProto$ResourceProto$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.ResourceDocProto$ResourceProto$a */
        /* loaded from: classes8.dex */
        public class C7775a extends AbstractParser<ResourceProto> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public ResourceProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ResourceProto(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ ResourceProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7777a c7777a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ResourceProto getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ResourceDocProto.f45812c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ResourceProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ResourceProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ResourceProto parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ResourceProto> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ResourceProto)) {
                return super.equals(obj);
            }
            ResourceProto resourceProto = (ResourceProto) obj;
            return ((((((((((((getUniqueId().equals(resourceProto.getUniqueId())) && getDocumentId().equals(resourceProto.getDocumentId())) && (getCreatedAt() > resourceProto.getCreatedAt() ? 1 : (getCreatedAt() == resourceProto.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > resourceProto.getUpdatedAt() ? 1 : (getUpdatedAt() == resourceProto.getUpdatedAt() ? 0 : -1)) == 0) && getTitle().equals(resourceProto.getTitle())) && (getAudioDuration() > resourceProto.getAudioDuration() ? 1 : (getAudioDuration() == resourceProto.getAudioDuration() ? 0 : -1)) == 0) && getType() == resourceProto.getType()) && getRelativePath().equals(resourceProto.getRelativePath())) && getCloudPath().equals(resourceProto.getCloudPath())) && getExtraAttributes().equals(resourceProto.getExtraAttributes())) && getRevisionId().equals(resourceProto.getRevisionId())) && getOriginPath().equals(resourceProto.getOriginPath())) && getStatus() == resourceProto.getStatus();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public long getAudioDuration() {
            return this.audioDuration_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public String getCloudPath() {
            Object obj = this.cloudPath_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cloudPath_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public ByteString getCloudPathBytes() {
            Object obj = this.cloudPath_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cloudPath_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public String getDocumentId() {
            Object obj = this.documentId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.documentId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public ByteString getDocumentIdBytes() {
            Object obj = this.documentId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.documentId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public String getExtraAttributes() {
            Object obj = this.extraAttributes_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.extraAttributes_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public ByteString getExtraAttributesBytes() {
            Object obj = this.extraAttributes_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.extraAttributes_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public String getOriginPath() {
            Object obj = this.originPath_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.originPath_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public ByteString getOriginPathBytes() {
            Object obj = this.originPath_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.originPath_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ResourceProto> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public String getRelativePath() {
            Object obj = this.relativePath_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.relativePath_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public ByteString getRelativePathBytes() {
            Object obj = this.relativePath_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.relativePath_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public String getRevisionId() {
            Object obj = this.revisionId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.revisionId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public ByteString getRevisionIdBytes() {
            Object obj = this.revisionId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.revisionId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = getUniqueIdBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.uniqueId_);
            if (!getDocumentIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.documentId_);
            }
            long j = this.createdAt_;
            if (j != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(3, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(4, j2);
            }
            if (!getTitleBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.title_);
            }
            long j3 = this.audioDuration_;
            if (j3 != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(6, j3);
            }
            int i2 = this.type_;
            if (i2 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(7, i2);
            }
            if (!getRelativePathBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(8, this.relativePath_);
            }
            if (!getCloudPathBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(9, this.cloudPath_);
            }
            if (!getExtraAttributesBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(10, this.extraAttributes_);
            }
            if (!getRevisionIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(11, this.revisionId_);
            }
            if (!getOriginPathBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(12, this.originPath_);
            }
            int i3 = this.status_;
            if (i3 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(13, i3);
            }
            this.memoizedSize = computeStringSize;
            return computeStringSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public int getType() {
            return this.type_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
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
            return UnknownFieldSet.getDefaultInstance();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + getDocumentId().hashCode()) * 37) + 3) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 4) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 5) * 53) + getTitle().hashCode()) * 37) + 6) * 53) + Internal.hashLong(getAudioDuration())) * 37) + 7) * 53) + getType()) * 37) + 8) * 53) + getRelativePath().hashCode()) * 37) + 9) * 53) + getCloudPath().hashCode()) * 37) + 10) * 53) + getExtraAttributes().hashCode()) * 37) + 11) * 53) + getRevisionId().hashCode()) * 37) + 12) * 53) + getOriginPath().hashCode()) * 37) + 13) * 53) + getStatus()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ResourceDocProto.f45813d.ensureFieldAccessorsInitialized(ResourceProto.class, Builder.class);
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
            if (!getDocumentIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.documentId_);
            }
            long j = this.createdAt_;
            if (j != 0) {
                codedOutputStream.writeInt64(3, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                codedOutputStream.writeInt64(4, j2);
            }
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.title_);
            }
            long j3 = this.audioDuration_;
            if (j3 != 0) {
                codedOutputStream.writeInt64(6, j3);
            }
            int i = this.type_;
            if (i != 0) {
                codedOutputStream.writeInt32(7, i);
            }
            if (!getRelativePathBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.relativePath_);
            }
            if (!getCloudPathBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.cloudPath_);
            }
            if (!getExtraAttributesBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.extraAttributes_);
            }
            if (!getRevisionIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.revisionId_);
            }
            if (!getOriginPathBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 12, this.originPath_);
            }
            int i2 = this.status_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(13, i2);
            }
        }

        public /* synthetic */ ResourceProto(GeneratedMessageV3.Builder builder, C7777a c7777a) {
            this(builder);
        }

        public static Builder newBuilder(ResourceProto resourceProto) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(resourceProto);
        }

        public static ResourceProto parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private ResourceProto(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ResourceProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ResourceProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ResourceProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ResourceProto getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7777a c7777a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7777a) : new Builder(c7777a).mergeFrom(this);
        }

        public static ResourceProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ResourceProto() {
            this.memoizedIsInitialized = (byte) -1;
            this.uniqueId_ = "";
            this.documentId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.title_ = "";
            this.audioDuration_ = 0L;
            this.type_ = 0;
            this.relativePath_ = "";
            this.cloudPath_ = "";
            this.extraAttributes_ = "";
            this.revisionId_ = "";
            this.originPath_ = "";
            this.status_ = 0;
        }

        public static ResourceProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ResourceProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ResourceProto parseFrom(InputStream inputStream) throws IOException {
            return (ResourceProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ResourceProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ResourceProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ResourceProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ResourceProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ResourceProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ResourceProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000b. Please report as an issue. */
        private ResourceProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            switch (readTag) {
                                case 0:
                                    z = true;
                                case 10:
                                    this.uniqueId_ = codedInputStream.readStringRequireUtf8();
                                case 18:
                                    this.documentId_ = codedInputStream.readStringRequireUtf8();
                                case 24:
                                    this.createdAt_ = codedInputStream.readInt64();
                                case 32:
                                    this.updatedAt_ = codedInputStream.readInt64();
                                case 42:
                                    this.title_ = codedInputStream.readStringRequireUtf8();
                                case 48:
                                    this.audioDuration_ = codedInputStream.readInt64();
                                case 56:
                                    this.type_ = codedInputStream.readInt32();
                                case 66:
                                    this.relativePath_ = codedInputStream.readStringRequireUtf8();
                                case 74:
                                    this.cloudPath_ = codedInputStream.readStringRequireUtf8();
                                case 82:
                                    this.extraAttributes_ = codedInputStream.readStringRequireUtf8();
                                case 90:
                                    this.revisionId_ = codedInputStream.readStringRequireUtf8();
                                case 98:
                                    this.originPath_ = codedInputStream.readStringRequireUtf8();
                                case 104:
                                    this.status_ = codedInputStream.readInt32();
                                default:
                                    if (!codedInputStream.skipField(readTag)) {
                                        z = true;
                                    }
                            }
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    makeExtensionsImmutable();
                }
            }
        }
    }

    /* loaded from: classes8.dex */
    public static final class ResourceProtoList extends GeneratedMessageV3 implements ResourceProtoListOrBuilder {
        private static final ResourceProtoList DEFAULT_INSTANCE = new ResourceProtoList();
        private static final Parser<ResourceProtoList> PARSER = new C7776a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<ResourceProto> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ResourceProtoListOrBuilder {

            /* renamed from: i */
            public int f45828i;

            /* renamed from: j */
            public List<ResourceProto> f45829j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> f45830k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7777a c7777a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ResourceDocProto.f45810a;
            }

            public Builder addAllProto(Iterable<? extends ResourceProto> iterable) {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                if (repeatedFieldBuilderV3 == null) {
                    m35336h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45829j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(ResourceProto resourceProto) {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                if (repeatedFieldBuilderV3 == null) {
                    resourceProto.getClass();
                    m35336h();
                    this.f45829j.add(resourceProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(resourceProto);
                }
                return this;
            }

            public ResourceProto.Builder addProtoBuilder() {
                return m35337i().addBuilder(ResourceProto.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45829j = Collections.emptyList();
                    this.f45828i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ResourceDocProto.f45810a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoListOrBuilder
            public ResourceProto getProto(int i) {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                return repeatedFieldBuilderV3 == null ? this.f45829j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public ResourceProto.Builder getProtoBuilder(int i) {
                return m35337i().getBuilder(i);
            }

            public List<ResourceProto.Builder> getProtoBuilderList() {
                return m35337i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                return repeatedFieldBuilderV3 == null ? this.f45829j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoListOrBuilder
            public List<ResourceProto> getProtoList() {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45829j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoListOrBuilder
            public ResourceProtoOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                return repeatedFieldBuilderV3 == null ? this.f45829j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoListOrBuilder
            public List<? extends ResourceProtoOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45829j);
            }

            /* renamed from: h */
            public final void m35336h() {
                if ((this.f45828i & 1) != 1) {
                    this.f45829j = new ArrayList(this.f45829j);
                    this.f45828i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> m35337i() {
                if (this.f45830k == null) {
                    this.f45830k = new RepeatedFieldBuilderV3<>(this.f45829j, (this.f45828i & 1) == 1, getParentForChildren(), isClean());
                    this.f45829j = null;
                }
                return this.f45830k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ResourceDocProto.f45811b.ensureFieldAccessorsInitialized(ResourceProtoList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35338j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35337i();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return this;
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                if (repeatedFieldBuilderV3 == null) {
                    m35336h();
                    this.f45829j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, ResourceProto resourceProto) {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                if (repeatedFieldBuilderV3 == null) {
                    resourceProto.getClass();
                    m35336h();
                    this.f45829j.set(i, resourceProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, resourceProto);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return this;
            }

            public /* synthetic */ Builder(C7777a c7777a) {
                this();
            }

            public Builder() {
                this.f45829j = Collections.emptyList();
                m35338j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ResourceProtoList build() {
                ResourceProtoList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ResourceProtoList buildPartial() {
                ResourceProtoList resourceProtoList = new ResourceProtoList(this, (C7777a) null);
                int i = this.f45828i;
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45829j = Collections.unmodifiableList(this.f45829j);
                        this.f45828i &= -2;
                    }
                    resourceProtoList.proto_ = this.f45829j;
                } else {
                    resourceProtoList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return resourceProtoList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ResourceProtoList getDefaultInstanceForType() {
                return ResourceProtoList.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public ResourceProto.Builder addProtoBuilder(int i) {
                return m35337i().addBuilder(i, ResourceProto.getDefaultInstance());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45829j = Collections.emptyList();
                    this.f45828i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45829j = Collections.emptyList();
                m35338j();
            }

            public Builder addProto(int i, ResourceProto resourceProto) {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                if (repeatedFieldBuilderV3 == null) {
                    resourceProto.getClass();
                    m35336h();
                    this.f45829j.add(i, resourceProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, resourceProto);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.m72166clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ResourceProtoList) {
                    return mergeFrom((ResourceProtoList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, ResourceProto.Builder builder) {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                if (repeatedFieldBuilderV3 == null) {
                    m35336h();
                    this.f45829j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(ResourceProtoList resourceProtoList) {
                if (resourceProtoList == ResourceProtoList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45830k == null) {
                    if (!resourceProtoList.proto_.isEmpty()) {
                        if (this.f45829j.isEmpty()) {
                            this.f45829j = resourceProtoList.proto_;
                            this.f45828i &= -2;
                        } else {
                            m35336h();
                            this.f45829j.addAll(resourceProtoList.proto_);
                        }
                        onChanged();
                    }
                } else if (!resourceProtoList.proto_.isEmpty()) {
                    if (this.f45830k.isEmpty()) {
                        this.f45830k.dispose();
                        this.f45830k = null;
                        this.f45829j = resourceProtoList.proto_;
                        this.f45828i &= -2;
                        this.f45830k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35337i() : null;
                    } else {
                        this.f45830k.addAllMessages(resourceProtoList.proto_);
                    }
                }
                onChanged();
                return this;
            }

            public Builder addProto(ResourceProto.Builder builder) {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                if (repeatedFieldBuilderV3 == null) {
                    m35336h();
                    this.f45829j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, ResourceProto.Builder builder) {
                RepeatedFieldBuilderV3<ResourceProto, ResourceProto.Builder, ResourceProtoOrBuilder> repeatedFieldBuilderV3 = this.f45830k;
                if (repeatedFieldBuilderV3 == null) {
                    m35336h();
                    this.f45829j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoList.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.ResourceDocProto$ResourceProtoList r3 = (com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.ResourceDocProto$ResourceProtoList r4 = (com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.ResourceDocProto$ResourceProtoList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.ResourceDocProto$ResourceProtoList$a */
        /* loaded from: classes8.dex */
        public class C7776a extends AbstractParser<ResourceProtoList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public ResourceProtoList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ResourceProtoList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ ResourceProtoList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7777a c7777a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ResourceProtoList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ResourceDocProto.f45810a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ResourceProtoList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ResourceProtoList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ResourceProtoList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ResourceProtoList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return !(obj instanceof ResourceProtoList) ? super.equals(obj) : getProtoList().equals(((ResourceProtoList) obj).getProtoList());
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ResourceProtoList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoListOrBuilder
        public ResourceProto getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoListOrBuilder
        public List<ResourceProto> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoListOrBuilder
        public ResourceProtoOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ResourceDocProto.ResourceProtoListOrBuilder
        public List<? extends ResourceProtoOrBuilder> getProtoOrBuilderList() {
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
            this.memoizedSize = i2;
            return i2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return UnknownFieldSet.getDefaultInstance();
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
            return ResourceDocProto.f45811b.ensureFieldAccessorsInitialized(ResourceProtoList.class, Builder.class);
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
        }

        public /* synthetic */ ResourceProtoList(GeneratedMessageV3.Builder builder, C7777a c7777a) {
            this(builder);
        }

        public static Builder newBuilder(ResourceProtoList resourceProtoList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(resourceProtoList);
        }

        public static ResourceProtoList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private ResourceProtoList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ResourceProtoList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ResourceProtoList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ResourceProtoList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ResourceProtoList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7777a c7777a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7777a) : new Builder(c7777a).mergeFrom(this);
        }

        public static ResourceProtoList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ResourceProtoList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static ResourceProtoList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ResourceProtoList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ResourceProtoList parseFrom(InputStream inputStream) throws IOException {
            return (ResourceProtoList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ResourceProtoList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
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
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                if (!(z2 & true)) {
                                    this.proto_ = new ArrayList();
                                    z2 |= true;
                                }
                                this.proto_.add((ResourceProto) codedInputStream.readMessage(ResourceProto.parser(), extensionRegistryLite));
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
                    makeExtensionsImmutable();
                }
            }
        }

        public static ResourceProtoList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ResourceProtoList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ResourceProtoList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ResourceProtoList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ResourceProtoList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ResourceProtoList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface ResourceProtoListOrBuilder extends MessageOrBuilder {
        ResourceProto getProto(int i);

        int getProtoCount();

        List<ResourceProto> getProtoList();

        ResourceProtoOrBuilder getProtoOrBuilder(int i);

        List<? extends ResourceProtoOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface ResourceProtoOrBuilder extends MessageOrBuilder {
        long getAudioDuration();

        String getCloudPath();

        ByteString getCloudPathBytes();

        long getCreatedAt();

        String getDocumentId();

        ByteString getDocumentIdBytes();

        String getExtraAttributes();

        ByteString getExtraAttributesBytes();

        String getOriginPath();

        ByteString getOriginPathBytes();

        String getRelativePath();

        ByteString getRelativePathBytes();

        String getRevisionId();

        ByteString getRevisionIdBytes();

        int getStatus();

        String getTitle();

        ByteString getTitleBytes();

        int getType();

        String getUniqueId();

        ByteString getUniqueIdBytes();

        long getUpdatedAt();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.ResourceDocProto$a */
    /* loaded from: classes8.dex */
    public class C7777a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = ResourceDocProto.f45814e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0016ResourceDocProto.proto\"2\n\u0011ResourceProtoList\u0012\u001d\n\u0005proto\u0018\u0001 \u0003(\u000b2\u000e.ResourceProto\"\u0089\u0002\n\rResourceProto\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012\u0012\n\ndocumentId\u0018\u0002 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0003 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0004 \u0001(\u0003\u0012\r\n\u0005title\u0018\u0005 \u0001(\t\u0012\u0015\n\raudioDuration\u0018\u0006 \u0001(\u0003\u0012\f\n\u0004type\u0018\u0007 \u0001(\u0005\u0012\u0014\n\frelativePath\u0018\b \u0001(\t\u0012\u0011\n\tcloudPath\u0018\t \u0001(\t\u0012\u0017\n\u000fextraAttributes\u0018\n \u0001(\t\u0012\u0012\n\nrevisionId\u0018\u000b \u0001(\t\u0012\u0012\n\noriginPath\u0018\f \u0001(\t\u0012\u000e\n\u0006status\u0018\r \u0001(\u0005B*\n(com.onyx.android.sdk.scribble.data.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7777a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45810a = descriptor;
        f45811b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45812c = descriptor2;
        f45813d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"UniqueId", "DocumentId", "CreatedAt", "UpdatedAt", "Title", "AudioDuration", "Type", "RelativePath", "CloudPath", "ExtraAttributes", "RevisionId", "OriginPath", PersistedInstallation.f35952i});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45814e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
