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
public final class VirtualDocPageProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45909a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45910b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45911c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45912d;

    /* renamed from: e */
    public static final Descriptors.Descriptor f45913e;

    /* renamed from: f */
    public static final GeneratedMessageV3.FieldAccessorTable f45914f;

    /* renamed from: g */
    public static Descriptors.FileDescriptor f45915g;

    /* loaded from: classes8.dex */
    public static final class VirtualDoc extends GeneratedMessageV3 implements VirtualDocOrBuilder {
        public static final int ACTUALSCALE_FIELD_NUMBER = 5;
        public static final int COVERPAGEID_FIELD_NUMBER = 8;
        public static final int CREATEDAT_FIELD_NUMBER = 2;
        public static final int DEFAULTTEMPLATE_FIELD_NUMBER = 9;
        public static final int DOCOPTIONS_FIELD_NUMBER = 10;
        public static final int OFFSETX_FIELD_NUMBER = 6;
        public static final int OFFSETY_FIELD_NUMBER = 7;
        public static final int UNIQUEID_FIELD_NUMBER = 1;
        public static final int UPDATEDAT_FIELD_NUMBER = 3;
        public static final int VIEWPORTID_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private float actualScale_;
        private volatile Object coverPageId_;
        private long createdAt_;
        private volatile Object defaultTemplate_;
        private volatile Object docOptions_;
        private byte memoizedIsInitialized;
        private float offsetX_;
        private float offsetY_;
        private volatile Object uniqueId_;
        private long updatedAt_;
        private volatile Object viewportId_;
        private static final VirtualDoc DEFAULT_INSTANCE = new VirtualDoc();
        private static final Parser<VirtualDoc> PARSER = new C7789a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements VirtualDocOrBuilder {

            /* renamed from: i */
            public Object f45916i;

            /* renamed from: j */
            public long f45917j;

            /* renamed from: k */
            public long f45918k;

            /* renamed from: l */
            public Object f45919l;

            /* renamed from: m */
            public float f45920m;

            /* renamed from: n */
            public float f45921n;

            /* renamed from: o */
            public float f45922o;

            /* renamed from: p */
            public Object f45923p;

            /* renamed from: q */
            public Object f45924q;

            /* renamed from: r */
            public Object f45925r;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7792a c7792a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return VirtualDocPageProto.f45913e;
            }

            public Builder clearActualScale() {
                this.f45920m = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearCoverPageId() {
                this.f45923p = VirtualDoc.getDefaultInstance().getCoverPageId();
                onChanged();
                return this;
            }

            public Builder clearCreatedAt() {
                this.f45917j = 0L;
                onChanged();
                return this;
            }

            public Builder clearDefaultTemplate() {
                this.f45924q = VirtualDoc.getDefaultInstance().getDefaultTemplate();
                onChanged();
                return this;
            }

            public Builder clearDocOptions() {
                this.f45925r = VirtualDoc.getDefaultInstance().getDocOptions();
                onChanged();
                return this;
            }

            public Builder clearOffsetX() {
                this.f45921n = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearOffsetY() {
                this.f45922o = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearUniqueId() {
                this.f45916i = VirtualDoc.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45918k = 0L;
                onChanged();
                return this;
            }

            public Builder clearViewportId() {
                this.f45919l = VirtualDoc.getDefaultInstance().getViewportId();
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public float getActualScale() {
                return this.f45920m;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public String getCoverPageId() {
                Object obj = this.f45923p;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45923p = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public ByteString getCoverPageIdBytes() {
                Object obj = this.f45923p;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45923p = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public long getCreatedAt() {
                return this.f45917j;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public String getDefaultTemplate() {
                Object obj = this.f45924q;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45924q = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public ByteString getDefaultTemplateBytes() {
                Object obj = this.f45924q;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45924q = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return VirtualDocPageProto.f45913e;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public String getDocOptions() {
                Object obj = this.f45925r;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45925r = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public ByteString getDocOptionsBytes() {
                Object obj = this.f45925r;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45925r = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public float getOffsetX() {
                return this.f45921n;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public float getOffsetY() {
                return this.f45922o;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public String getUniqueId() {
                Object obj = this.f45916i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45916i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public ByteString getUniqueIdBytes() {
                Object obj = this.f45916i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45916i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public long getUpdatedAt() {
                return this.f45918k;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public String getViewportId() {
                Object obj = this.f45919l;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45919l = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
            public ByteString getViewportIdBytes() {
                Object obj = this.f45919l;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45919l = copyFromUtf8;
                return copyFromUtf8;
            }

            /* renamed from: h */
            public final void m35392h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return VirtualDocPageProto.f45914f.ensureFieldAccessorsInitialized(VirtualDoc.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setActualScale(float f) {
                this.f45920m = f;
                onChanged();
                return this;
            }

            public Builder setCoverPageId(String str) {
                str.getClass();
                this.f45923p = str;
                onChanged();
                return this;
            }

            public Builder setCoverPageIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45923p = byteString;
                onChanged();
                return this;
            }

            public Builder setCreatedAt(long j) {
                this.f45917j = j;
                onChanged();
                return this;
            }

            public Builder setDefaultTemplate(String str) {
                str.getClass();
                this.f45924q = str;
                onChanged();
                return this;
            }

            public Builder setDefaultTemplateBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45924q = byteString;
                onChanged();
                return this;
            }

            public Builder setDocOptions(String str) {
                str.getClass();
                this.f45925r = str;
                onChanged();
                return this;
            }

            public Builder setDocOptionsBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45925r = byteString;
                onChanged();
                return this;
            }

            public Builder setOffsetX(float f) {
                this.f45921n = f;
                onChanged();
                return this;
            }

            public Builder setOffsetY(float f) {
                this.f45922o = f;
                onChanged();
                return this;
            }

            public Builder setUniqueId(String str) {
                str.getClass();
                this.f45916i = str;
                onChanged();
                return this;
            }

            public Builder setUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45916i = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45918k = j;
                onChanged();
                return this;
            }

            public Builder setViewportId(String str) {
                str.getClass();
                this.f45919l = str;
                onChanged();
                return this;
            }

            public Builder setViewportIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45919l = byteString;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7792a c7792a) {
                this();
            }

            public Builder() {
                this.f45916i = "";
                this.f45919l = "";
                this.f45923p = "";
                this.f45924q = "";
                this.f45925r = "";
                m35392h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public VirtualDoc build() {
                VirtualDoc buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public VirtualDoc buildPartial() {
                VirtualDoc virtualDoc = new VirtualDoc(this, (C7792a) null);
                virtualDoc.uniqueId_ = this.f45916i;
                virtualDoc.createdAt_ = this.f45917j;
                virtualDoc.updatedAt_ = this.f45918k;
                virtualDoc.viewportId_ = this.f45919l;
                virtualDoc.actualScale_ = this.f45920m;
                virtualDoc.offsetX_ = this.f45921n;
                virtualDoc.offsetY_ = this.f45922o;
                virtualDoc.coverPageId_ = this.f45923p;
                virtualDoc.defaultTemplate_ = this.f45924q;
                virtualDoc.docOptions_ = this.f45925r;
                onBuilt();
                return virtualDoc;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public VirtualDoc getDefaultInstanceForType() {
                return VirtualDoc.getDefaultInstance();
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
                this.f45916i = "";
                this.f45917j = 0L;
                this.f45918k = 0L;
                this.f45919l = "";
                this.f45920m = 0.0f;
                this.f45921n = 0.0f;
                this.f45922o = 0.0f;
                this.f45923p = "";
                this.f45924q = "";
                this.f45925r = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof VirtualDoc) {
                    return mergeFrom((VirtualDoc) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45916i = "";
                this.f45919l = "";
                this.f45923p = "";
                this.f45924q = "";
                this.f45925r = "";
                m35392h();
            }

            public Builder mergeFrom(VirtualDoc virtualDoc) {
                if (virtualDoc == VirtualDoc.getDefaultInstance()) {
                    return this;
                }
                if (!virtualDoc.getUniqueId().isEmpty()) {
                    this.f45916i = virtualDoc.uniqueId_;
                    onChanged();
                }
                if (virtualDoc.getCreatedAt() != 0) {
                    setCreatedAt(virtualDoc.getCreatedAt());
                }
                if (virtualDoc.getUpdatedAt() != 0) {
                    setUpdatedAt(virtualDoc.getUpdatedAt());
                }
                if (!virtualDoc.getViewportId().isEmpty()) {
                    this.f45919l = virtualDoc.viewportId_;
                    onChanged();
                }
                if (virtualDoc.getActualScale() != 0.0f) {
                    setActualScale(virtualDoc.getActualScale());
                }
                if (virtualDoc.getOffsetX() != 0.0f) {
                    setOffsetX(virtualDoc.getOffsetX());
                }
                if (virtualDoc.getOffsetY() != 0.0f) {
                    setOffsetY(virtualDoc.getOffsetY());
                }
                if (!virtualDoc.getCoverPageId().isEmpty()) {
                    this.f45923p = virtualDoc.coverPageId_;
                    onChanged();
                }
                if (!virtualDoc.getDefaultTemplate().isEmpty()) {
                    this.f45924q = virtualDoc.defaultTemplate_;
                    onChanged();
                }
                if (!virtualDoc.getDocOptions().isEmpty()) {
                    this.f45925r = virtualDoc.docOptions_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) virtualDoc).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDoc.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDoc.access$6700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto$VirtualDoc r3 = (com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDoc) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto$VirtualDoc r4 = (com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDoc) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDoc.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto$VirtualDoc$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto$VirtualDoc$a */
        /* loaded from: classes8.dex */
        public class C7789a extends AbstractParser<VirtualDoc> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public VirtualDoc parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new VirtualDoc(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ VirtualDoc(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7792a c7792a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static VirtualDoc getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return VirtualDocPageProto.f45913e;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static VirtualDoc parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (VirtualDoc) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static VirtualDoc parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<VirtualDoc> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof VirtualDoc)) {
                return super.equals(obj);
            }
            VirtualDoc virtualDoc = (VirtualDoc) obj;
            return ((((((((((getUniqueId().equals(virtualDoc.getUniqueId())) && (getCreatedAt() > virtualDoc.getCreatedAt() ? 1 : (getCreatedAt() == virtualDoc.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > virtualDoc.getUpdatedAt() ? 1 : (getUpdatedAt() == virtualDoc.getUpdatedAt() ? 0 : -1)) == 0) && getViewportId().equals(virtualDoc.getViewportId())) && Float.floatToIntBits(getActualScale()) == Float.floatToIntBits(virtualDoc.getActualScale())) && Float.floatToIntBits(getOffsetX()) == Float.floatToIntBits(virtualDoc.getOffsetX())) && Float.floatToIntBits(getOffsetY()) == Float.floatToIntBits(virtualDoc.getOffsetY())) && getCoverPageId().equals(virtualDoc.getCoverPageId())) && getDefaultTemplate().equals(virtualDoc.getDefaultTemplate())) && getDocOptions().equals(virtualDoc.getDocOptions())) && this.unknownFields.equals(virtualDoc.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public float getActualScale() {
            return this.actualScale_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public String getCoverPageId() {
            Object obj = this.coverPageId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.coverPageId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public ByteString getCoverPageIdBytes() {
            Object obj = this.coverPageId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.coverPageId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public String getDefaultTemplate() {
            Object obj = this.defaultTemplate_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.defaultTemplate_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public ByteString getDefaultTemplateBytes() {
            Object obj = this.defaultTemplate_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.defaultTemplate_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public String getDocOptions() {
            Object obj = this.docOptions_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.docOptions_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public ByteString getDocOptionsBytes() {
            Object obj = this.docOptions_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.docOptions_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public float getOffsetX() {
            return this.offsetX_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public float getOffsetY() {
            return this.offsetY_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<VirtualDoc> getParserForType() {
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
            if (!getViewportIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(4, this.viewportId_);
            }
            float f = this.actualScale_;
            if (f != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(5, f);
            }
            float f2 = this.offsetX_;
            if (f2 != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(6, f2);
            }
            float f3 = this.offsetY_;
            if (f3 != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(7, f3);
            }
            if (!getCoverPageIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(8, this.coverPageId_);
            }
            if (!getDefaultTemplateBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(9, this.defaultTemplate_);
            }
            if (!getDocOptionsBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(10, this.docOptions_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
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

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public String getViewportId() {
            Object obj = this.viewportId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.viewportId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualDocOrBuilder
        public ByteString getViewportIdBytes() {
            Object obj = this.viewportId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.viewportId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 3) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 4) * 53) + getViewportId().hashCode()) * 37) + 5) * 53) + Float.floatToIntBits(getActualScale())) * 37) + 6) * 53) + Float.floatToIntBits(getOffsetX())) * 37) + 7) * 53) + Float.floatToIntBits(getOffsetY())) * 37) + 8) * 53) + getCoverPageId().hashCode()) * 37) + 9) * 53) + getDefaultTemplate().hashCode()) * 37) + 10) * 53) + getDocOptions().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return VirtualDocPageProto.f45914f.ensureFieldAccessorsInitialized(VirtualDoc.class, Builder.class);
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
            if (!getViewportIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.viewportId_);
            }
            float f = this.actualScale_;
            if (f != 0.0f) {
                codedOutputStream.writeFloat(5, f);
            }
            float f2 = this.offsetX_;
            if (f2 != 0.0f) {
                codedOutputStream.writeFloat(6, f2);
            }
            float f3 = this.offsetY_;
            if (f3 != 0.0f) {
                codedOutputStream.writeFloat(7, f3);
            }
            if (!getCoverPageIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.coverPageId_);
            }
            if (!getDefaultTemplateBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.defaultTemplate_);
            }
            if (!getDocOptionsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.docOptions_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ VirtualDoc(GeneratedMessageV3.Builder builder, C7792a c7792a) {
            this(builder);
        }

        public static Builder newBuilder(VirtualDoc virtualDoc) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(virtualDoc);
        }

        public static VirtualDoc parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private VirtualDoc(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static VirtualDoc parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VirtualDoc) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static VirtualDoc parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public VirtualDoc getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7792a c7792a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7792a) : new Builder(c7792a).mergeFrom(this);
        }

        public static VirtualDoc parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private VirtualDoc() {
            this.memoizedIsInitialized = (byte) -1;
            this.uniqueId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.viewportId_ = "";
            this.actualScale_ = 0.0f;
            this.offsetX_ = 0.0f;
            this.offsetY_ = 0.0f;
            this.coverPageId_ = "";
            this.defaultTemplate_ = "";
            this.docOptions_ = "";
        }

        public static VirtualDoc parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static VirtualDoc parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static VirtualDoc parseFrom(InputStream inputStream) throws IOException {
            return (VirtualDoc) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static VirtualDoc parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VirtualDoc) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static VirtualDoc parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (VirtualDoc) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static VirtualDoc parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VirtualDoc) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
        private VirtualDoc(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                z = true;
                            case 10:
                                this.uniqueId_ = codedInputStream.readStringRequireUtf8();
                            case 16:
                                this.createdAt_ = codedInputStream.readInt64();
                            case 24:
                                this.updatedAt_ = codedInputStream.readInt64();
                            case 34:
                                this.viewportId_ = codedInputStream.readStringRequireUtf8();
                            case 45:
                                this.actualScale_ = codedInputStream.readFloat();
                            case 53:
                                this.offsetX_ = codedInputStream.readFloat();
                            case 61:
                                this.offsetY_ = codedInputStream.readFloat();
                            case 66:
                                this.coverPageId_ = codedInputStream.readStringRequireUtf8();
                            case 74:
                                this.defaultTemplate_ = codedInputStream.readStringRequireUtf8();
                            case 82:
                                this.docOptions_ = codedInputStream.readStringRequireUtf8();
                            default:
                                if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                    z = true;
                                }
                        }
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
    public interface VirtualDocOrBuilder extends MessageOrBuilder {
        float getActualScale();

        String getCoverPageId();

        ByteString getCoverPageIdBytes();

        long getCreatedAt();

        String getDefaultTemplate();

        ByteString getDefaultTemplateBytes();

        String getDocOptions();

        ByteString getDocOptionsBytes();

        float getOffsetX();

        float getOffsetY();

        String getUniqueId();

        ByteString getUniqueIdBytes();

        long getUpdatedAt();

        String getViewportId();

        ByteString getViewportIdBytes();
    }

    /* loaded from: classes8.dex */
    public static final class VirtualPage extends GeneratedMessageV3 implements VirtualPageOrBuilder {
        public static final int COLORTHEME_FIELD_NUMBER = 14;
        public static final int CONTENTID_FIELD_NUMBER = 12;
        public static final int CONTENTPAGEID_FIELD_NUMBER = 11;
        public static final int CONTENTPAGESIZE_FIELD_NUMBER = 8;
        public static final int CONTENTPATH_FIELD_NUMBER = 10;
        public static final int CONTENTTYPE_FIELD_NUMBER = 9;
        public static final int CREATEDAT_FIELD_NUMBER = 2;
        public static final int MARGINCOLOR_FIELD_NUMBER = 15;
        public static final int MARGINTEMPLATERESOURCEID_FIELD_NUMBER = 18;
        public static final int MARGINTEMPLATERESOURCE_FIELD_NUMBER = 16;
        public static final int MARGINTEMPLATESPACE_FIELD_NUMBER = 17;
        public static final int ORDERINDEX_FIELD_NUMBER = 4;
        public static final int PAGEID_FIELD_NUMBER = 1;
        public static final int PAGESIZEWITHMARGIN_FIELD_NUMBER = 7;
        public static final int PAGESIZE_FIELD_NUMBER = 6;
        public static final int PIPELINE_FIELD_NUMBER = 13;
        public static final int ROTATION_FIELD_NUMBER = 19;
        public static final int STATUS_FIELD_NUMBER = 5;
        public static final int UPDATEDAT_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int colorTheme_;
        private volatile Object contentId_;
        private volatile Object contentPageId_;
        private volatile Object contentPageSize_;
        private volatile Object contentPath_;
        private volatile Object contentType_;
        private long createdAt_;
        private int marginColor_;
        private volatile Object marginTemplateResourceId_;
        private volatile Object marginTemplateResource_;
        private float marginTemplateSpace_;
        private byte memoizedIsInitialized;
        private float orderIndex_;
        private volatile Object pageId_;
        private volatile Object pageSizeWithMargin_;
        private volatile Object pageSize_;
        private volatile Object pipeline_;
        private float rotation_;
        private int status_;
        private long updatedAt_;
        private static final VirtualPage DEFAULT_INSTANCE = new VirtualPage();
        private static final Parser<VirtualPage> PARSER = new C7790a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements VirtualPageOrBuilder {

            /* renamed from: J */
            public float f45926J;

            /* renamed from: i */
            public Object f45927i;

            /* renamed from: j */
            public long f45928j;

            /* renamed from: k */
            public long f45929k;

            /* renamed from: l */
            public float f45930l;

            /* renamed from: m */
            public int f45931m;

            /* renamed from: n */
            public Object f45932n;

            /* renamed from: o */
            public Object f45933o;

            /* renamed from: p */
            public Object f45934p;

            /* renamed from: q */
            public Object f45935q;

            /* renamed from: r */
            public Object f45936r;

            /* renamed from: s */
            public Object f45937s;

            /* renamed from: t */
            public Object f45938t;

            /* renamed from: u */
            public Object f45939u;

            /* renamed from: v */
            public int f45940v;

            /* renamed from: w */
            public int f45941w;

            /* renamed from: x */
            public Object f45942x;

            /* renamed from: y */
            public float f45943y;

            /* renamed from: z */
            public Object f45944z;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7792a c7792a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return VirtualDocPageProto.f45911c;
            }

            public Builder clearColorTheme() {
                this.f45940v = 0;
                onChanged();
                return this;
            }

            public Builder clearContentId() {
                this.f45938t = VirtualPage.getDefaultInstance().getContentId();
                onChanged();
                return this;
            }

            public Builder clearContentPageId() {
                this.f45937s = VirtualPage.getDefaultInstance().getContentPageId();
                onChanged();
                return this;
            }

            public Builder clearContentPageSize() {
                this.f45934p = VirtualPage.getDefaultInstance().getContentPageSize();
                onChanged();
                return this;
            }

            public Builder clearContentPath() {
                this.f45936r = VirtualPage.getDefaultInstance().getContentPath();
                onChanged();
                return this;
            }

            public Builder clearContentType() {
                this.f45935q = VirtualPage.getDefaultInstance().getContentType();
                onChanged();
                return this;
            }

            public Builder clearCreatedAt() {
                this.f45928j = 0L;
                onChanged();
                return this;
            }

            public Builder clearMarginColor() {
                this.f45941w = 0;
                onChanged();
                return this;
            }

            public Builder clearMarginTemplateResource() {
                this.f45942x = VirtualPage.getDefaultInstance().getMarginTemplateResource();
                onChanged();
                return this;
            }

            public Builder clearMarginTemplateResourceId() {
                this.f45944z = VirtualPage.getDefaultInstance().getMarginTemplateResourceId();
                onChanged();
                return this;
            }

            public Builder clearMarginTemplateSpace() {
                this.f45943y = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearOrderIndex() {
                this.f45930l = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearPageId() {
                this.f45927i = VirtualPage.getDefaultInstance().getPageId();
                onChanged();
                return this;
            }

            public Builder clearPageSize() {
                this.f45932n = VirtualPage.getDefaultInstance().getPageSize();
                onChanged();
                return this;
            }

            public Builder clearPageSizeWithMargin() {
                this.f45933o = VirtualPage.getDefaultInstance().getPageSizeWithMargin();
                onChanged();
                return this;
            }

            public Builder clearPipeline() {
                this.f45939u = VirtualPage.getDefaultInstance().getPipeline();
                onChanged();
                return this;
            }

            public Builder clearRotation() {
                this.f45926J = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.f45931m = 0;
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45929k = 0L;
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public int getColorTheme() {
                return this.f45940v;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public String getContentId() {
                Object obj = this.f45938t;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45938t = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public ByteString getContentIdBytes() {
                Object obj = this.f45938t;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45938t = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public String getContentPageId() {
                Object obj = this.f45937s;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45937s = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public ByteString getContentPageIdBytes() {
                Object obj = this.f45937s;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45937s = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public String getContentPageSize() {
                Object obj = this.f45934p;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45934p = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public ByteString getContentPageSizeBytes() {
                Object obj = this.f45934p;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45934p = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public String getContentPath() {
                Object obj = this.f45936r;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45936r = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public ByteString getContentPathBytes() {
                Object obj = this.f45936r;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45936r = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public String getContentType() {
                Object obj = this.f45935q;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45935q = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public ByteString getContentTypeBytes() {
                Object obj = this.f45935q;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45935q = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public long getCreatedAt() {
                return this.f45928j;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return VirtualDocPageProto.f45911c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public int getMarginColor() {
                return this.f45941w;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public String getMarginTemplateResource() {
                Object obj = this.f45942x;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45942x = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public ByteString getMarginTemplateResourceBytes() {
                Object obj = this.f45942x;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45942x = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public String getMarginTemplateResourceId() {
                Object obj = this.f45944z;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45944z = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public ByteString getMarginTemplateResourceIdBytes() {
                Object obj = this.f45944z;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45944z = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public float getMarginTemplateSpace() {
                return this.f45943y;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public float getOrderIndex() {
                return this.f45930l;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public String getPageId() {
                Object obj = this.f45927i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45927i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public ByteString getPageIdBytes() {
                Object obj = this.f45927i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45927i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public String getPageSize() {
                Object obj = this.f45932n;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45932n = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public ByteString getPageSizeBytes() {
                Object obj = this.f45932n;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45932n = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public String getPageSizeWithMargin() {
                Object obj = this.f45933o;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45933o = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public ByteString getPageSizeWithMarginBytes() {
                Object obj = this.f45933o;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45933o = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public String getPipeline() {
                Object obj = this.f45939u;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45939u = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public ByteString getPipelineBytes() {
                Object obj = this.f45939u;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45939u = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public float getRotation() {
                return this.f45926J;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public int getStatus() {
                return this.f45931m;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
            public long getUpdatedAt() {
                return this.f45929k;
            }

            /* renamed from: h */
            public final void m35394h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return VirtualDocPageProto.f45912d.ensureFieldAccessorsInitialized(VirtualPage.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setColorTheme(int i) {
                this.f45940v = i;
                onChanged();
                return this;
            }

            public Builder setContentId(String str) {
                str.getClass();
                this.f45938t = str;
                onChanged();
                return this;
            }

            public Builder setContentIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45938t = byteString;
                onChanged();
                return this;
            }

            public Builder setContentPageId(String str) {
                str.getClass();
                this.f45937s = str;
                onChanged();
                return this;
            }

            public Builder setContentPageIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45937s = byteString;
                onChanged();
                return this;
            }

            public Builder setContentPageSize(String str) {
                str.getClass();
                this.f45934p = str;
                onChanged();
                return this;
            }

            public Builder setContentPageSizeBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45934p = byteString;
                onChanged();
                return this;
            }

            public Builder setContentPath(String str) {
                str.getClass();
                this.f45936r = str;
                onChanged();
                return this;
            }

            public Builder setContentPathBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45936r = byteString;
                onChanged();
                return this;
            }

            public Builder setContentType(String str) {
                str.getClass();
                this.f45935q = str;
                onChanged();
                return this;
            }

            public Builder setContentTypeBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45935q = byteString;
                onChanged();
                return this;
            }

            public Builder setCreatedAt(long j) {
                this.f45928j = j;
                onChanged();
                return this;
            }

            public Builder setMarginColor(int i) {
                this.f45941w = i;
                onChanged();
                return this;
            }

            public Builder setMarginTemplateResource(String str) {
                str.getClass();
                this.f45942x = str;
                onChanged();
                return this;
            }

            public Builder setMarginTemplateResourceBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45942x = byteString;
                onChanged();
                return this;
            }

            public Builder setMarginTemplateResourceId(String str) {
                str.getClass();
                this.f45944z = str;
                onChanged();
                return this;
            }

            public Builder setMarginTemplateResourceIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45944z = byteString;
                onChanged();
                return this;
            }

            public Builder setMarginTemplateSpace(float f) {
                this.f45943y = f;
                onChanged();
                return this;
            }

            public Builder setOrderIndex(float f) {
                this.f45930l = f;
                onChanged();
                return this;
            }

            public Builder setPageId(String str) {
                str.getClass();
                this.f45927i = str;
                onChanged();
                return this;
            }

            public Builder setPageIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45927i = byteString;
                onChanged();
                return this;
            }

            public Builder setPageSize(String str) {
                str.getClass();
                this.f45932n = str;
                onChanged();
                return this;
            }

            public Builder setPageSizeBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45932n = byteString;
                onChanged();
                return this;
            }

            public Builder setPageSizeWithMargin(String str) {
                str.getClass();
                this.f45933o = str;
                onChanged();
                return this;
            }

            public Builder setPageSizeWithMarginBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45933o = byteString;
                onChanged();
                return this;
            }

            public Builder setPipeline(String str) {
                str.getClass();
                this.f45939u = str;
                onChanged();
                return this;
            }

            public Builder setPipelineBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45939u = byteString;
                onChanged();
                return this;
            }

            public Builder setRotation(float f) {
                this.f45926J = f;
                onChanged();
                return this;
            }

            public Builder setStatus(int i) {
                this.f45931m = i;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45929k = j;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7792a c7792a) {
                this();
            }

            public Builder() {
                this.f45927i = "";
                this.f45932n = "";
                this.f45933o = "";
                this.f45934p = "";
                this.f45935q = "";
                this.f45936r = "";
                this.f45937s = "";
                this.f45938t = "";
                this.f45939u = "";
                this.f45942x = "";
                this.f45944z = "";
                m35394h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public VirtualPage build() {
                VirtualPage buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public VirtualPage buildPartial() {
                VirtualPage virtualPage = new VirtualPage(this, (C7792a) null);
                virtualPage.pageId_ = this.f45927i;
                virtualPage.createdAt_ = this.f45928j;
                virtualPage.updatedAt_ = this.f45929k;
                virtualPage.orderIndex_ = this.f45930l;
                virtualPage.status_ = this.f45931m;
                virtualPage.pageSize_ = this.f45932n;
                virtualPage.pageSizeWithMargin_ = this.f45933o;
                virtualPage.contentPageSize_ = this.f45934p;
                virtualPage.contentType_ = this.f45935q;
                virtualPage.contentPath_ = this.f45936r;
                virtualPage.contentPageId_ = this.f45937s;
                virtualPage.contentId_ = this.f45938t;
                virtualPage.pipeline_ = this.f45939u;
                virtualPage.colorTheme_ = this.f45940v;
                virtualPage.marginColor_ = this.f45941w;
                virtualPage.marginTemplateResource_ = this.f45942x;
                virtualPage.marginTemplateSpace_ = this.f45943y;
                virtualPage.marginTemplateResourceId_ = this.f45944z;
                virtualPage.rotation_ = this.f45926J;
                onBuilt();
                return virtualPage;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public VirtualPage getDefaultInstanceForType() {
                return VirtualPage.getDefaultInstance();
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
                this.f45927i = "";
                this.f45928j = 0L;
                this.f45929k = 0L;
                this.f45930l = 0.0f;
                this.f45931m = 0;
                this.f45932n = "";
                this.f45933o = "";
                this.f45934p = "";
                this.f45935q = "";
                this.f45936r = "";
                this.f45937s = "";
                this.f45938t = "";
                this.f45939u = "";
                this.f45940v = 0;
                this.f45941w = 0;
                this.f45942x = "";
                this.f45943y = 0.0f;
                this.f45944z = "";
                this.f45926J = 0.0f;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof VirtualPage) {
                    return mergeFrom((VirtualPage) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(VirtualPage virtualPage) {
                if (virtualPage == VirtualPage.getDefaultInstance()) {
                    return this;
                }
                if (!virtualPage.getPageId().isEmpty()) {
                    this.f45927i = virtualPage.pageId_;
                    onChanged();
                }
                if (virtualPage.getCreatedAt() != 0) {
                    setCreatedAt(virtualPage.getCreatedAt());
                }
                if (virtualPage.getUpdatedAt() != 0) {
                    setUpdatedAt(virtualPage.getUpdatedAt());
                }
                if (virtualPage.getOrderIndex() != 0.0f) {
                    setOrderIndex(virtualPage.getOrderIndex());
                }
                if (virtualPage.getStatus() != 0) {
                    setStatus(virtualPage.getStatus());
                }
                if (!virtualPage.getPageSize().isEmpty()) {
                    this.f45932n = virtualPage.pageSize_;
                    onChanged();
                }
                if (!virtualPage.getPageSizeWithMargin().isEmpty()) {
                    this.f45933o = virtualPage.pageSizeWithMargin_;
                    onChanged();
                }
                if (!virtualPage.getContentPageSize().isEmpty()) {
                    this.f45934p = virtualPage.contentPageSize_;
                    onChanged();
                }
                if (!virtualPage.getContentType().isEmpty()) {
                    this.f45935q = virtualPage.contentType_;
                    onChanged();
                }
                if (!virtualPage.getContentPath().isEmpty()) {
                    this.f45936r = virtualPage.contentPath_;
                    onChanged();
                }
                if (!virtualPage.getContentPageId().isEmpty()) {
                    this.f45937s = virtualPage.contentPageId_;
                    onChanged();
                }
                if (!virtualPage.getContentId().isEmpty()) {
                    this.f45938t = virtualPage.contentId_;
                    onChanged();
                }
                if (!virtualPage.getPipeline().isEmpty()) {
                    this.f45939u = virtualPage.pipeline_;
                    onChanged();
                }
                if (virtualPage.getColorTheme() != 0) {
                    setColorTheme(virtualPage.getColorTheme());
                }
                if (virtualPage.getMarginColor() != 0) {
                    setMarginColor(virtualPage.getMarginColor());
                }
                if (!virtualPage.getMarginTemplateResource().isEmpty()) {
                    this.f45942x = virtualPage.marginTemplateResource_;
                    onChanged();
                }
                if (virtualPage.getMarginTemplateSpace() != 0.0f) {
                    setMarginTemplateSpace(virtualPage.getMarginTemplateSpace());
                }
                if (!virtualPage.getMarginTemplateResourceId().isEmpty()) {
                    this.f45944z = virtualPage.marginTemplateResourceId_;
                    onChanged();
                }
                if (virtualPage.getRotation() != 0.0f) {
                    setRotation(virtualPage.getRotation());
                }
                mergeUnknownFields(((GeneratedMessageV3) virtualPage).unknownFields);
                onChanged();
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45927i = "";
                this.f45932n = "";
                this.f45933o = "";
                this.f45934p = "";
                this.f45935q = "";
                this.f45936r = "";
                this.f45937s = "";
                this.f45938t = "";
                this.f45939u = "";
                this.f45942x = "";
                this.f45944z = "";
                m35394h();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPage.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPage.access$3700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto$VirtualPage r3 = (com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPage) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto$VirtualPage r4 = (com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPage) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPage.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto$VirtualPage$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto$VirtualPage$a */
        /* loaded from: classes8.dex */
        public class C7790a extends AbstractParser<VirtualPage> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public VirtualPage parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new VirtualPage(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ VirtualPage(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7792a c7792a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static VirtualPage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return VirtualDocPageProto.f45911c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static VirtualPage parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (VirtualPage) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static VirtualPage parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<VirtualPage> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof VirtualPage)) {
                return super.equals(obj);
            }
            VirtualPage virtualPage = (VirtualPage) obj;
            return (((((((((((((((((((getPageId().equals(virtualPage.getPageId())) && (getCreatedAt() > virtualPage.getCreatedAt() ? 1 : (getCreatedAt() == virtualPage.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > virtualPage.getUpdatedAt() ? 1 : (getUpdatedAt() == virtualPage.getUpdatedAt() ? 0 : -1)) == 0) && Float.floatToIntBits(getOrderIndex()) == Float.floatToIntBits(virtualPage.getOrderIndex())) && getStatus() == virtualPage.getStatus()) && getPageSize().equals(virtualPage.getPageSize())) && getPageSizeWithMargin().equals(virtualPage.getPageSizeWithMargin())) && getContentPageSize().equals(virtualPage.getContentPageSize())) && getContentType().equals(virtualPage.getContentType())) && getContentPath().equals(virtualPage.getContentPath())) && getContentPageId().equals(virtualPage.getContentPageId())) && getContentId().equals(virtualPage.getContentId())) && getPipeline().equals(virtualPage.getPipeline())) && getColorTheme() == virtualPage.getColorTheme()) && getMarginColor() == virtualPage.getMarginColor()) && getMarginTemplateResource().equals(virtualPage.getMarginTemplateResource())) && Float.floatToIntBits(getMarginTemplateSpace()) == Float.floatToIntBits(virtualPage.getMarginTemplateSpace())) && getMarginTemplateResourceId().equals(virtualPage.getMarginTemplateResourceId())) && Float.floatToIntBits(getRotation()) == Float.floatToIntBits(virtualPage.getRotation())) && this.unknownFields.equals(virtualPage.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public int getColorTheme() {
            return this.colorTheme_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public String getContentId() {
            Object obj = this.contentId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.contentId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public ByteString getContentIdBytes() {
            Object obj = this.contentId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.contentId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public String getContentPageId() {
            Object obj = this.contentPageId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.contentPageId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public ByteString getContentPageIdBytes() {
            Object obj = this.contentPageId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.contentPageId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public String getContentPageSize() {
            Object obj = this.contentPageSize_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.contentPageSize_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public ByteString getContentPageSizeBytes() {
            Object obj = this.contentPageSize_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.contentPageSize_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public String getContentPath() {
            Object obj = this.contentPath_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.contentPath_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public ByteString getContentPathBytes() {
            Object obj = this.contentPath_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.contentPath_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public String getContentType() {
            Object obj = this.contentType_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.contentType_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public ByteString getContentTypeBytes() {
            Object obj = this.contentType_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.contentType_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public int getMarginColor() {
            return this.marginColor_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public String getMarginTemplateResource() {
            Object obj = this.marginTemplateResource_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.marginTemplateResource_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public ByteString getMarginTemplateResourceBytes() {
            Object obj = this.marginTemplateResource_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.marginTemplateResource_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public String getMarginTemplateResourceId() {
            Object obj = this.marginTemplateResourceId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.marginTemplateResourceId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public ByteString getMarginTemplateResourceIdBytes() {
            Object obj = this.marginTemplateResourceId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.marginTemplateResourceId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public float getMarginTemplateSpace() {
            return this.marginTemplateSpace_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public float getOrderIndex() {
            return this.orderIndex_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public String getPageId() {
            Object obj = this.pageId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pageId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public ByteString getPageIdBytes() {
            Object obj = this.pageId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pageId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public String getPageSize() {
            Object obj = this.pageSize_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pageSize_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public ByteString getPageSizeBytes() {
            Object obj = this.pageSize_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pageSize_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public String getPageSizeWithMargin() {
            Object obj = this.pageSizeWithMargin_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pageSizeWithMargin_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public ByteString getPageSizeWithMarginBytes() {
            Object obj = this.pageSizeWithMargin_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pageSizeWithMargin_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<VirtualPage> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public String getPipeline() {
            Object obj = this.pipeline_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pipeline_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public ByteString getPipelineBytes() {
            Object obj = this.pipeline_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pipeline_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public float getRotation() {
            return this.rotation_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = getPageIdBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.pageId_);
            long j = this.createdAt_;
            if (j != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(2, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(3, j2);
            }
            float f = this.orderIndex_;
            if (f != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(4, f);
            }
            int i2 = this.status_;
            if (i2 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(5, i2);
            }
            if (!getPageSizeBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(6, this.pageSize_);
            }
            if (!getPageSizeWithMarginBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(7, this.pageSizeWithMargin_);
            }
            if (!getContentPageSizeBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(8, this.contentPageSize_);
            }
            if (!getContentTypeBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(9, this.contentType_);
            }
            if (!getContentPathBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(10, this.contentPath_);
            }
            if (!getContentPageIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(11, this.contentPageId_);
            }
            if (!getContentIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(12, this.contentId_);
            }
            if (!getPipelineBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(13, this.pipeline_);
            }
            int i3 = this.colorTheme_;
            if (i3 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(14, i3);
            }
            int i4 = this.marginColor_;
            if (i4 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(15, i4);
            }
            if (!getMarginTemplateResourceBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(16, this.marginTemplateResource_);
            }
            float f2 = this.marginTemplateSpace_;
            if (f2 != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(17, f2);
            }
            if (!getMarginTemplateResourceIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(18, this.marginTemplateResourceId_);
            }
            float f3 = this.rotation_;
            if (f3 != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(19, f3);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getPageId().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 3) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 4) * 53) + Float.floatToIntBits(getOrderIndex())) * 37) + 5) * 53) + getStatus()) * 37) + 6) * 53) + getPageSize().hashCode()) * 37) + 7) * 53) + getPageSizeWithMargin().hashCode()) * 37) + 8) * 53) + getContentPageSize().hashCode()) * 37) + 9) * 53) + getContentType().hashCode()) * 37) + 10) * 53) + getContentPath().hashCode()) * 37) + 11) * 53) + getContentPageId().hashCode()) * 37) + 12) * 53) + getContentId().hashCode()) * 37) + 13) * 53) + getPipeline().hashCode()) * 37) + 14) * 53) + getColorTheme()) * 37) + 15) * 53) + getMarginColor()) * 37) + 16) * 53) + getMarginTemplateResource().hashCode()) * 37) + 17) * 53) + Float.floatToIntBits(getMarginTemplateSpace())) * 37) + 18) * 53) + getMarginTemplateResourceId().hashCode()) * 37) + 19) * 53) + Float.floatToIntBits(getRotation())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return VirtualDocPageProto.f45912d.ensureFieldAccessorsInitialized(VirtualPage.class, Builder.class);
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
            if (!getPageIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.pageId_);
            }
            long j = this.createdAt_;
            if (j != 0) {
                codedOutputStream.writeInt64(2, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                codedOutputStream.writeInt64(3, j2);
            }
            float f = this.orderIndex_;
            if (f != 0.0f) {
                codedOutputStream.writeFloat(4, f);
            }
            int i = this.status_;
            if (i != 0) {
                codedOutputStream.writeInt32(5, i);
            }
            if (!getPageSizeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.pageSize_);
            }
            if (!getPageSizeWithMarginBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.pageSizeWithMargin_);
            }
            if (!getContentPageSizeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.contentPageSize_);
            }
            if (!getContentTypeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.contentType_);
            }
            if (!getContentPathBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.contentPath_);
            }
            if (!getContentPageIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.contentPageId_);
            }
            if (!getContentIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 12, this.contentId_);
            }
            if (!getPipelineBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 13, this.pipeline_);
            }
            int i2 = this.colorTheme_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(14, i2);
            }
            int i3 = this.marginColor_;
            if (i3 != 0) {
                codedOutputStream.writeInt32(15, i3);
            }
            if (!getMarginTemplateResourceBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 16, this.marginTemplateResource_);
            }
            float f2 = this.marginTemplateSpace_;
            if (f2 != 0.0f) {
                codedOutputStream.writeFloat(17, f2);
            }
            if (!getMarginTemplateResourceIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 18, this.marginTemplateResourceId_);
            }
            float f3 = this.rotation_;
            if (f3 != 0.0f) {
                codedOutputStream.writeFloat(19, f3);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ VirtualPage(GeneratedMessageV3.Builder builder, C7792a c7792a) {
            this(builder);
        }

        public static Builder newBuilder(VirtualPage virtualPage) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(virtualPage);
        }

        public static VirtualPage parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private VirtualPage(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static VirtualPage parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VirtualPage) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static VirtualPage parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public VirtualPage getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7792a c7792a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7792a) : new Builder(c7792a).mergeFrom(this);
        }

        public static VirtualPage parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private VirtualPage() {
            this.memoizedIsInitialized = (byte) -1;
            this.pageId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.orderIndex_ = 0.0f;
            this.status_ = 0;
            this.pageSize_ = "";
            this.pageSizeWithMargin_ = "";
            this.contentPageSize_ = "";
            this.contentType_ = "";
            this.contentPath_ = "";
            this.contentPageId_ = "";
            this.contentId_ = "";
            this.pipeline_ = "";
            this.colorTheme_ = 0;
            this.marginColor_ = 0;
            this.marginTemplateResource_ = "";
            this.marginTemplateSpace_ = 0.0f;
            this.marginTemplateResourceId_ = "";
            this.rotation_ = 0.0f;
        }

        public static VirtualPage parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static VirtualPage parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static VirtualPage parseFrom(InputStream inputStream) throws IOException {
            return (VirtualPage) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static VirtualPage parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VirtualPage) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static VirtualPage parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (VirtualPage) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static VirtualPage parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VirtualPage) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
        private VirtualPage(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                z = true;
                            case 10:
                                this.pageId_ = codedInputStream.readStringRequireUtf8();
                            case 16:
                                this.createdAt_ = codedInputStream.readInt64();
                            case 24:
                                this.updatedAt_ = codedInputStream.readInt64();
                            case 37:
                                this.orderIndex_ = codedInputStream.readFloat();
                            case 40:
                                this.status_ = codedInputStream.readInt32();
                            case 50:
                                this.pageSize_ = codedInputStream.readStringRequireUtf8();
                            case 58:
                                this.pageSizeWithMargin_ = codedInputStream.readStringRequireUtf8();
                            case 66:
                                this.contentPageSize_ = codedInputStream.readStringRequireUtf8();
                            case 74:
                                this.contentType_ = codedInputStream.readStringRequireUtf8();
                            case 82:
                                this.contentPath_ = codedInputStream.readStringRequireUtf8();
                            case 90:
                                this.contentPageId_ = codedInputStream.readStringRequireUtf8();
                            case 98:
                                this.contentId_ = codedInputStream.readStringRequireUtf8();
                            case 106:
                                this.pipeline_ = codedInputStream.readStringRequireUtf8();
                            case 112:
                                this.colorTheme_ = codedInputStream.readInt32();
                            case 120:
                                this.marginColor_ = codedInputStream.readInt32();
                            case 130:
                                this.marginTemplateResource_ = codedInputStream.readStringRequireUtf8();
                            case 141:
                                this.marginTemplateSpace_ = codedInputStream.readFloat();
                            case 146:
                                this.marginTemplateResourceId_ = codedInputStream.readStringRequireUtf8();
                            case 157:
                                this.rotation_ = codedInputStream.readFloat();
                            default:
                                if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                    z = true;
                                }
                        }
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
    public static final class VirtualPageList extends GeneratedMessageV3 implements VirtualPageListOrBuilder {
        private static final VirtualPageList DEFAULT_INSTANCE = new VirtualPageList();
        private static final Parser<VirtualPageList> PARSER = new C7791a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<VirtualPage> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements VirtualPageListOrBuilder {

            /* renamed from: i */
            public int f45945i;

            /* renamed from: j */
            public List<VirtualPage> f45946j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> f45947k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7792a c7792a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return VirtualDocPageProto.f45909a;
            }

            public Builder addAllProto(Iterable<? extends VirtualPage> iterable) {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                if (repeatedFieldBuilderV3 == null) {
                    m35396h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45946j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(VirtualPage virtualPage) {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                if (repeatedFieldBuilderV3 == null) {
                    virtualPage.getClass();
                    m35396h();
                    this.f45946j.add(virtualPage);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(virtualPage);
                }
                return this;
            }

            public VirtualPage.Builder addProtoBuilder() {
                return m35397i().addBuilder(VirtualPage.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45946j = Collections.emptyList();
                    this.f45945i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return VirtualDocPageProto.f45909a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageListOrBuilder
            public VirtualPage getProto(int i) {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                return repeatedFieldBuilderV3 == null ? this.f45946j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public VirtualPage.Builder getProtoBuilder(int i) {
                return m35397i().getBuilder(i);
            }

            public List<VirtualPage.Builder> getProtoBuilderList() {
                return m35397i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                return repeatedFieldBuilderV3 == null ? this.f45946j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageListOrBuilder
            public List<VirtualPage> getProtoList() {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45946j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageListOrBuilder
            public VirtualPageOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                return repeatedFieldBuilderV3 == null ? this.f45946j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageListOrBuilder
            public List<? extends VirtualPageOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45946j);
            }

            /* renamed from: h */
            public final void m35396h() {
                if ((this.f45945i & 1) != 1) {
                    this.f45946j = new ArrayList(this.f45946j);
                    this.f45945i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> m35397i() {
                if (this.f45947k == null) {
                    this.f45947k = new RepeatedFieldBuilderV3<>(this.f45946j, (this.f45945i & 1) == 1, getParentForChildren(), isClean());
                    this.f45946j = null;
                }
                return this.f45947k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return VirtualDocPageProto.f45910b.ensureFieldAccessorsInitialized(VirtualPageList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35398j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35397i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                if (repeatedFieldBuilderV3 == null) {
                    m35396h();
                    this.f45946j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, VirtualPage virtualPage) {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                if (repeatedFieldBuilderV3 == null) {
                    virtualPage.getClass();
                    m35396h();
                    this.f45946j.set(i, virtualPage);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, virtualPage);
                }
                return this;
            }

            public /* synthetic */ Builder(C7792a c7792a) {
                this();
            }

            public Builder() {
                this.f45946j = Collections.emptyList();
                m35398j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public VirtualPageList build() {
                VirtualPageList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public VirtualPageList buildPartial() {
                VirtualPageList virtualPageList = new VirtualPageList(this, (C7792a) null);
                int i = this.f45945i;
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45946j = Collections.unmodifiableList(this.f45946j);
                        this.f45945i &= -2;
                    }
                    virtualPageList.proto_ = this.f45946j;
                } else {
                    virtualPageList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return virtualPageList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public VirtualPageList getDefaultInstanceForType() {
                return VirtualPageList.getDefaultInstance();
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

            public VirtualPage.Builder addProtoBuilder(int i) {
                return m35397i().addBuilder(i, VirtualPage.getDefaultInstance());
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
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45946j = Collections.emptyList();
                    this.f45945i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45946j = Collections.emptyList();
                m35398j();
            }

            public Builder addProto(int i, VirtualPage virtualPage) {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                if (repeatedFieldBuilderV3 == null) {
                    virtualPage.getClass();
                    m35396h();
                    this.f45946j.add(i, virtualPage);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, virtualPage);
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
                if (message instanceof VirtualPageList) {
                    return mergeFrom((VirtualPageList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, VirtualPage.Builder builder) {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                if (repeatedFieldBuilderV3 == null) {
                    m35396h();
                    this.f45946j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(VirtualPageList virtualPageList) {
                if (virtualPageList == VirtualPageList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45947k == null) {
                    if (!virtualPageList.proto_.isEmpty()) {
                        if (this.f45946j.isEmpty()) {
                            this.f45946j = virtualPageList.proto_;
                            this.f45945i &= -2;
                        } else {
                            m35396h();
                            this.f45946j.addAll(virtualPageList.proto_);
                        }
                        onChanged();
                    }
                } else if (!virtualPageList.proto_.isEmpty()) {
                    if (this.f45947k.isEmpty()) {
                        this.f45947k.dispose();
                        this.f45947k = null;
                        this.f45946j = virtualPageList.proto_;
                        this.f45945i &= -2;
                        this.f45947k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35397i() : null;
                    } else {
                        this.f45947k.addAllMessages(virtualPageList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) virtualPageList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(VirtualPage.Builder builder) {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                if (repeatedFieldBuilderV3 == null) {
                    m35396h();
                    this.f45946j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, VirtualPage.Builder builder) {
                RepeatedFieldBuilderV3<VirtualPage, VirtualPage.Builder, VirtualPageOrBuilder> repeatedFieldBuilderV3 = this.f45947k;
                if (repeatedFieldBuilderV3 == null) {
                    m35396h();
                    this.f45946j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto$VirtualPageList r3 = (com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto$VirtualPageList r4 = (com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto$VirtualPageList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto$VirtualPageList$a */
        /* loaded from: classes8.dex */
        public class C7791a extends AbstractParser<VirtualPageList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public VirtualPageList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new VirtualPageList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ VirtualPageList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7792a c7792a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static VirtualPageList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return VirtualDocPageProto.f45909a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static VirtualPageList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (VirtualPageList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static VirtualPageList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<VirtualPageList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof VirtualPageList)) {
                return super.equals(obj);
            }
            VirtualPageList virtualPageList = (VirtualPageList) obj;
            return (getProtoList().equals(virtualPageList.getProtoList())) && this.unknownFields.equals(virtualPageList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<VirtualPageList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageListOrBuilder
        public VirtualPage getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageListOrBuilder
        public List<VirtualPage> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageListOrBuilder
        public VirtualPageOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto.VirtualPageListOrBuilder
        public List<? extends VirtualPageOrBuilder> getProtoOrBuilderList() {
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
            return VirtualDocPageProto.f45910b.ensureFieldAccessorsInitialized(VirtualPageList.class, Builder.class);
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

        public /* synthetic */ VirtualPageList(GeneratedMessageV3.Builder builder, C7792a c7792a) {
            this(builder);
        }

        public static Builder newBuilder(VirtualPageList virtualPageList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(virtualPageList);
        }

        public static VirtualPageList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private VirtualPageList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static VirtualPageList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VirtualPageList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static VirtualPageList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public VirtualPageList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7792a c7792a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7792a) : new Builder(c7792a).mergeFrom(this);
        }

        public static VirtualPageList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private VirtualPageList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static VirtualPageList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static VirtualPageList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static VirtualPageList parseFrom(InputStream inputStream) throws IOException {
            return (VirtualPageList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private VirtualPageList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.proto_.add((VirtualPage) codedInputStream.readMessage(VirtualPage.parser(), extensionRegistryLite));
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

        public static VirtualPageList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VirtualPageList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static VirtualPageList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (VirtualPageList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static VirtualPageList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VirtualPageList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface VirtualPageListOrBuilder extends MessageOrBuilder {
        VirtualPage getProto(int i);

        int getProtoCount();

        List<VirtualPage> getProtoList();

        VirtualPageOrBuilder getProtoOrBuilder(int i);

        List<? extends VirtualPageOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface VirtualPageOrBuilder extends MessageOrBuilder {
        int getColorTheme();

        String getContentId();

        ByteString getContentIdBytes();

        String getContentPageId();

        ByteString getContentPageIdBytes();

        String getContentPageSize();

        ByteString getContentPageSizeBytes();

        String getContentPath();

        ByteString getContentPathBytes();

        String getContentType();

        ByteString getContentTypeBytes();

        long getCreatedAt();

        int getMarginColor();

        String getMarginTemplateResource();

        ByteString getMarginTemplateResourceBytes();

        String getMarginTemplateResourceId();

        ByteString getMarginTemplateResourceIdBytes();

        float getMarginTemplateSpace();

        float getOrderIndex();

        String getPageId();

        ByteString getPageIdBytes();

        String getPageSize();

        ByteString getPageSizeBytes();

        String getPageSizeWithMargin();

        ByteString getPageSizeWithMarginBytes();

        String getPipeline();

        ByteString getPipelineBytes();

        float getRotation();

        int getStatus();

        long getUpdatedAt();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto$a */
    /* loaded from: classes8.dex */
    public class C7792a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = VirtualDocPageProto.f45915g = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0019VirtualDocPageProto.proto\".\n\u000fVirtualPageList\u0012\u001b\n\u0005proto\u0018\u0001 \u0003(\u000b2\f.VirtualPage\"®\u0003\n\u000bVirtualPage\u0012\u000e\n\u0006pageId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\u0012\n\norderIndex\u0018\u0004 \u0001(\u0002\u0012\u000e\n\u0006status\u0018\u0005 \u0001(\u0005\u0012\u0010\n\bpageSize\u0018\u0006 \u0001(\t\u0012\u001a\n\u0012pageSizeWithMargin\u0018\u0007 \u0001(\t\u0012\u0017\n\u000fcontentPageSize\u0018\b \u0001(\t\u0012\u0013\n\u000bcontentType\u0018\t \u0001(\t\u0012\u0013\n\u000bcontentPath\u0018\n \u0001(\t\u0012\u0015\n\rcontentPageId\u0018\u000b \u0001(\t\u0012\u0011\n\tcontentId\u0018\f \u0001(\t\u0012\u0010\n\bpipeline\u0018\r \u0001(\t\u0012\u0012\n\ncolorTheme\u0018\u000e \u0001(\u0005\u0012\u0013\n\u000bmarginColor\u0018\u000f \u0001(\u0005\u0012\u001e\n\u0016marginTemplateResource\u0018\u0010 \u0001(\t\u0012\u001b\n\u0013marginTemplateSpace\u0018\u0011 \u0001(\u0002\u0012 \n\u0018marginTemplateResourceId\u0018\u0012 \u0001(\t\u0012\u0010\n\brotation\u0018\u0013 \u0001(\u0002\"Ñ\u0001\n\nVirtualDoc\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\u0012\n\nviewportId\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bactualScale\u0018\u0005 \u0001(\u0002\u0012\u000f\n\u0007offsetX\u0018\u0006 \u0001(\u0002\u0012\u000f\n\u0007offsetY\u0018\u0007 \u0001(\u0002\u0012\u0013\n\u000bcoverPageId\u0018\b \u0001(\t\u0012\u0017\n\u000fdefaultTemplate\u0018\t \u0001(\t\u0012\u0012\n\ndocOptions\u0018\n \u0001(\tB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7792a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45909a = descriptor;
        f45910b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45911c = descriptor2;
        f45912d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"PageId", "CreatedAt", "UpdatedAt", "OrderIndex", PersistedInstallation.f35952i, "PageSize", "PageSizeWithMargin", "ContentPageSize", "ContentType", "ContentPath", "ContentPageId", "ContentId", "Pipeline", "ColorTheme", "MarginColor", "MarginTemplateResource", "MarginTemplateSpace", "MarginTemplateResourceId", "Rotation"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(2);
        f45913e = descriptor3;
        f45914f = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"UniqueId", "CreatedAt", "UpdatedAt", "ViewportId", "ActualScale", "OffsetX", "OffsetY", "CoverPageId", "DefaultTemplate", "DocOptions"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45915g;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
