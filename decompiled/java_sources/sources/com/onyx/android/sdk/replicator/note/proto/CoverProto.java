package com.onyx.android.sdk.replicator.note.proto;

import androidx.exifinterface.media.ExifInterface;
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
public final class CoverProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45542a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45543b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45544c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45545d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45546e;

    /* loaded from: classes8.dex */
    public static final class Cover extends GeneratedMessageV3 implements CoverOrBuilder {
        public static final int CATEGORYID_FIELD_NUMBER = 9;
        public static final int CONTENTPAGEID_FIELD_NUMBER = 10;
        public static final int CREATEDAT_FIELD_NUMBER = 2;
        public static final int ORDERINDEX_FIELD_NUMBER = 11;
        public static final int ORIENTATION_FIELD_NUMBER = 6;
        public static final int RESOURCELIST_FIELD_NUMBER = 8;
        public static final int SIZEFORMAT_FIELD_NUMBER = 7;
        public static final int SOURCE_FIELD_NUMBER = 12;
        public static final int STATUS_FIELD_NUMBER = 13;
        public static final int TITLERESNAME_FIELD_NUMBER = 5;
        public static final int TITLE_FIELD_NUMBER = 4;
        public static final int UNIQUEID_FIELD_NUMBER = 1;
        public static final int UPDATEDAT_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object categoryId_;
        private volatile Object contentPageId_;
        private long createdAt_;
        private byte memoizedIsInitialized;
        private float orderIndex_;
        private int orientation_;
        private volatile Object resourceList_;
        private volatile Object sizeFormat_;
        private int source_;
        private int status_;
        private volatile Object titleResName_;
        private volatile Object title_;
        private volatile Object uniqueId_;
        private long updatedAt_;
        private static final Cover DEFAULT_INSTANCE = new Cover();
        private static final Parser<Cover> PARSER = new C7743a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements CoverOrBuilder {

            /* renamed from: i */
            public Object f45547i;

            /* renamed from: j */
            public long f45548j;

            /* renamed from: k */
            public long f45549k;

            /* renamed from: l */
            public Object f45550l;

            /* renamed from: m */
            public Object f45551m;

            /* renamed from: n */
            public int f45552n;

            /* renamed from: o */
            public Object f45553o;

            /* renamed from: p */
            public Object f45554p;

            /* renamed from: q */
            public Object f45555q;

            /* renamed from: r */
            public Object f45556r;

            /* renamed from: s */
            public float f45557s;

            /* renamed from: t */
            public int f45558t;

            /* renamed from: u */
            public int f45559u;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7745a c7745a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return CoverProto.f45544c;
            }

            public Builder clearCategoryId() {
                this.f45555q = Cover.getDefaultInstance().getCategoryId();
                onChanged();
                return this;
            }

            public Builder clearContentPageId() {
                this.f45556r = Cover.getDefaultInstance().getContentPageId();
                onChanged();
                return this;
            }

            public Builder clearCreatedAt() {
                this.f45548j = 0L;
                onChanged();
                return this;
            }

            public Builder clearOrderIndex() {
                this.f45557s = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearOrientation() {
                this.f45552n = 0;
                onChanged();
                return this;
            }

            public Builder clearResourceList() {
                this.f45554p = Cover.getDefaultInstance().getResourceList();
                onChanged();
                return this;
            }

            public Builder clearSizeFormat() {
                this.f45553o = Cover.getDefaultInstance().getSizeFormat();
                onChanged();
                return this;
            }

            public Builder clearSource() {
                this.f45558t = 0;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.f45559u = 0;
                onChanged();
                return this;
            }

            public Builder clearTitle() {
                this.f45550l = Cover.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            public Builder clearTitleResName() {
                this.f45551m = Cover.getDefaultInstance().getTitleResName();
                onChanged();
                return this;
            }

            public Builder clearUniqueId() {
                this.f45547i = Cover.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45549k = 0L;
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public String getCategoryId() {
                Object obj = this.f45555q;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45555q = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public ByteString getCategoryIdBytes() {
                Object obj = this.f45555q;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45555q = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public String getContentPageId() {
                Object obj = this.f45556r;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45556r = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public ByteString getContentPageIdBytes() {
                Object obj = this.f45556r;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45556r = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public long getCreatedAt() {
                return this.f45548j;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return CoverProto.f45544c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public float getOrderIndex() {
                return this.f45557s;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public int getOrientation() {
                return this.f45552n;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public String getResourceList() {
                Object obj = this.f45554p;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45554p = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public ByteString getResourceListBytes() {
                Object obj = this.f45554p;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45554p = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public String getSizeFormat() {
                Object obj = this.f45553o;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45553o = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public ByteString getSizeFormatBytes() {
                Object obj = this.f45553o;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45553o = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public int getSource() {
                return this.f45558t;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public int getStatus() {
                return this.f45559u;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public String getTitle() {
                Object obj = this.f45550l;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45550l = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public ByteString getTitleBytes() {
                Object obj = this.f45550l;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45550l = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public String getTitleResName() {
                Object obj = this.f45551m;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45551m = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public ByteString getTitleResNameBytes() {
                Object obj = this.f45551m;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45551m = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public String getUniqueId() {
                Object obj = this.f45547i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45547i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public ByteString getUniqueIdBytes() {
                Object obj = this.f45547i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45547i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
            public long getUpdatedAt() {
                return this.f45549k;
            }

            /* renamed from: h */
            public final void m35219h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return CoverProto.f45545d.ensureFieldAccessorsInitialized(Cover.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setCategoryId(String str) {
                str.getClass();
                this.f45555q = str;
                onChanged();
                return this;
            }

            public Builder setCategoryIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45555q = byteString;
                onChanged();
                return this;
            }

            public Builder setContentPageId(String str) {
                str.getClass();
                this.f45556r = str;
                onChanged();
                return this;
            }

            public Builder setContentPageIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45556r = byteString;
                onChanged();
                return this;
            }

            public Builder setCreatedAt(long j) {
                this.f45548j = j;
                onChanged();
                return this;
            }

            public Builder setOrderIndex(float f) {
                this.f45557s = f;
                onChanged();
                return this;
            }

            public Builder setOrientation(int i) {
                this.f45552n = i;
                onChanged();
                return this;
            }

            public Builder setResourceList(String str) {
                str.getClass();
                this.f45554p = str;
                onChanged();
                return this;
            }

            public Builder setResourceListBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45554p = byteString;
                onChanged();
                return this;
            }

            public Builder setSizeFormat(String str) {
                str.getClass();
                this.f45553o = str;
                onChanged();
                return this;
            }

            public Builder setSizeFormatBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45553o = byteString;
                onChanged();
                return this;
            }

            public Builder setSource(int i) {
                this.f45558t = i;
                onChanged();
                return this;
            }

            public Builder setStatus(int i) {
                this.f45559u = i;
                onChanged();
                return this;
            }

            public Builder setTitle(String str) {
                str.getClass();
                this.f45550l = str;
                onChanged();
                return this;
            }

            public Builder setTitleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45550l = byteString;
                onChanged();
                return this;
            }

            public Builder setTitleResName(String str) {
                str.getClass();
                this.f45551m = str;
                onChanged();
                return this;
            }

            public Builder setTitleResNameBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45551m = byteString;
                onChanged();
                return this;
            }

            public Builder setUniqueId(String str) {
                str.getClass();
                this.f45547i = str;
                onChanged();
                return this;
            }

            public Builder setUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45547i = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45549k = j;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7745a c7745a) {
                this();
            }

            public Builder() {
                this.f45547i = "";
                this.f45550l = "";
                this.f45551m = "";
                this.f45553o = "";
                this.f45554p = "";
                this.f45555q = "";
                this.f45556r = "";
                m35219h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Cover build() {
                Cover buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Cover buildPartial() {
                Cover cover = new Cover(this, (C7745a) null);
                cover.uniqueId_ = this.f45547i;
                cover.createdAt_ = this.f45548j;
                cover.updatedAt_ = this.f45549k;
                cover.title_ = this.f45550l;
                cover.titleResName_ = this.f45551m;
                cover.orientation_ = this.f45552n;
                cover.sizeFormat_ = this.f45553o;
                cover.resourceList_ = this.f45554p;
                cover.categoryId_ = this.f45555q;
                cover.contentPageId_ = this.f45556r;
                cover.orderIndex_ = this.f45557s;
                cover.source_ = this.f45558t;
                cover.status_ = this.f45559u;
                onBuilt();
                return cover;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Cover getDefaultInstanceForType() {
                return Cover.getDefaultInstance();
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
                this.f45547i = "";
                this.f45548j = 0L;
                this.f45549k = 0L;
                this.f45550l = "";
                this.f45551m = "";
                this.f45552n = 0;
                this.f45553o = "";
                this.f45554p = "";
                this.f45555q = "";
                this.f45556r = "";
                this.f45557s = 0.0f;
                this.f45558t = 0;
                this.f45559u = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof Cover) {
                    return mergeFrom((Cover) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Cover cover) {
                if (cover == Cover.getDefaultInstance()) {
                    return this;
                }
                if (!cover.getUniqueId().isEmpty()) {
                    this.f45547i = cover.uniqueId_;
                    onChanged();
                }
                if (cover.getCreatedAt() != 0) {
                    setCreatedAt(cover.getCreatedAt());
                }
                if (cover.getUpdatedAt() != 0) {
                    setUpdatedAt(cover.getUpdatedAt());
                }
                if (!cover.getTitle().isEmpty()) {
                    this.f45550l = cover.title_;
                    onChanged();
                }
                if (!cover.getTitleResName().isEmpty()) {
                    this.f45551m = cover.titleResName_;
                    onChanged();
                }
                if (cover.getOrientation() != 0) {
                    setOrientation(cover.getOrientation());
                }
                if (!cover.getSizeFormat().isEmpty()) {
                    this.f45553o = cover.sizeFormat_;
                    onChanged();
                }
                if (!cover.getResourceList().isEmpty()) {
                    this.f45554p = cover.resourceList_;
                    onChanged();
                }
                if (!cover.getCategoryId().isEmpty()) {
                    this.f45555q = cover.categoryId_;
                    onChanged();
                }
                if (!cover.getContentPageId().isEmpty()) {
                    this.f45556r = cover.contentPageId_;
                    onChanged();
                }
                if (cover.getOrderIndex() != 0.0f) {
                    setOrderIndex(cover.getOrderIndex());
                }
                if (cover.getSource() != 0) {
                    setSource(cover.getSource());
                }
                if (cover.getStatus() != 0) {
                    setStatus(cover.getStatus());
                }
                mergeUnknownFields(((GeneratedMessageV3) cover).unknownFields);
                onChanged();
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45547i = "";
                this.f45550l = "";
                this.f45551m = "";
                this.f45553o = "";
                this.f45554p = "";
                this.f45555q = "";
                this.f45556r = "";
                m35219h();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.CoverProto.Cover.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.CoverProto.Cover.access$3100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.CoverProto$Cover r3 = (com.onyx.android.sdk.replicator.note.proto.CoverProto.Cover) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.CoverProto$Cover r4 = (com.onyx.android.sdk.replicator.note.proto.CoverProto.Cover) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.CoverProto.Cover.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.CoverProto$Cover$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.CoverProto$Cover$a */
        /* loaded from: classes8.dex */
        public class C7743a extends AbstractParser<Cover> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public Cover parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Cover(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ Cover(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7745a c7745a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static Cover getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return CoverProto.f45544c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Cover parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Cover) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Cover parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<Cover> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Cover)) {
                return super.equals(obj);
            }
            Cover cover = (Cover) obj;
            return (((((((((((((getUniqueId().equals(cover.getUniqueId())) && (getCreatedAt() > cover.getCreatedAt() ? 1 : (getCreatedAt() == cover.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > cover.getUpdatedAt() ? 1 : (getUpdatedAt() == cover.getUpdatedAt() ? 0 : -1)) == 0) && getTitle().equals(cover.getTitle())) && getTitleResName().equals(cover.getTitleResName())) && getOrientation() == cover.getOrientation()) && getSizeFormat().equals(cover.getSizeFormat())) && getResourceList().equals(cover.getResourceList())) && getCategoryId().equals(cover.getCategoryId())) && getContentPageId().equals(cover.getContentPageId())) && Float.floatToIntBits(getOrderIndex()) == Float.floatToIntBits(cover.getOrderIndex())) && getSource() == cover.getSource()) && getStatus() == cover.getStatus()) && this.unknownFields.equals(cover.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public String getCategoryId() {
            Object obj = this.categoryId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.categoryId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public ByteString getCategoryIdBytes() {
            Object obj = this.categoryId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.categoryId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public String getContentPageId() {
            Object obj = this.contentPageId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.contentPageId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public ByteString getContentPageIdBytes() {
            Object obj = this.contentPageId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.contentPageId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public float getOrderIndex() {
            return this.orderIndex_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public int getOrientation() {
            return this.orientation_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Cover> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public String getResourceList() {
            Object obj = this.resourceList_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.resourceList_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public ByteString getResourceListBytes() {
            Object obj = this.resourceList_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.resourceList_ = copyFromUtf8;
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
            if (!getTitleBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(4, this.title_);
            }
            if (!getTitleResNameBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.titleResName_);
            }
            int i2 = this.orientation_;
            if (i2 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(6, i2);
            }
            if (!getSizeFormatBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(7, this.sizeFormat_);
            }
            if (!getResourceListBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(8, this.resourceList_);
            }
            if (!getCategoryIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(9, this.categoryId_);
            }
            if (!getContentPageIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(10, this.contentPageId_);
            }
            float f = this.orderIndex_;
            if (f != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(11, f);
            }
            int i3 = this.source_;
            if (i3 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(12, i3);
            }
            int i4 = this.status_;
            if (i4 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(13, i4);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public String getSizeFormat() {
            Object obj = this.sizeFormat_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sizeFormat_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public ByteString getSizeFormatBytes() {
            Object obj = this.sizeFormat_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sizeFormat_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public int getSource() {
            return this.source_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public String getTitleResName() {
            Object obj = this.titleResName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.titleResName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public ByteString getTitleResNameBytes() {
            Object obj = this.titleResName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.titleResName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
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

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 3) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 4) * 53) + getTitle().hashCode()) * 37) + 5) * 53) + getTitleResName().hashCode()) * 37) + 6) * 53) + getOrientation()) * 37) + 7) * 53) + getSizeFormat().hashCode()) * 37) + 8) * 53) + getResourceList().hashCode()) * 37) + 9) * 53) + getCategoryId().hashCode()) * 37) + 10) * 53) + getContentPageId().hashCode()) * 37) + 11) * 53) + Float.floatToIntBits(getOrderIndex())) * 37) + 12) * 53) + getSource()) * 37) + 13) * 53) + getStatus()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return CoverProto.f45545d.ensureFieldAccessorsInitialized(Cover.class, Builder.class);
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
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.title_);
            }
            if (!getTitleResNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.titleResName_);
            }
            int i = this.orientation_;
            if (i != 0) {
                codedOutputStream.writeInt32(6, i);
            }
            if (!getSizeFormatBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.sizeFormat_);
            }
            if (!getResourceListBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.resourceList_);
            }
            if (!getCategoryIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.categoryId_);
            }
            if (!getContentPageIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.contentPageId_);
            }
            float f = this.orderIndex_;
            if (f != 0.0f) {
                codedOutputStream.writeFloat(11, f);
            }
            int i2 = this.source_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(12, i2);
            }
            int i3 = this.status_;
            if (i3 != 0) {
                codedOutputStream.writeInt32(13, i3);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ Cover(GeneratedMessageV3.Builder builder, C7745a c7745a) {
            this(builder);
        }

        public static Builder newBuilder(Cover cover) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cover);
        }

        public static Cover parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private Cover(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Cover parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Cover) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Cover parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Cover getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7745a c7745a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7745a) : new Builder(c7745a).mergeFrom(this);
        }

        public static Cover parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Cover() {
            this.memoizedIsInitialized = (byte) -1;
            this.uniqueId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.title_ = "";
            this.titleResName_ = "";
            this.orientation_ = 0;
            this.sizeFormat_ = "";
            this.resourceList_ = "";
            this.categoryId_ = "";
            this.contentPageId_ = "";
            this.orderIndex_ = 0.0f;
            this.source_ = 0;
            this.status_ = 0;
        }

        public static Cover parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static Cover parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Cover parseFrom(InputStream inputStream) throws IOException {
            return (Cover) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Cover parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Cover) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Cover parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Cover) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Cover parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Cover) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
        private Cover(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.title_ = codedInputStream.readStringRequireUtf8();
                            case 42:
                                this.titleResName_ = codedInputStream.readStringRequireUtf8();
                            case 48:
                                this.orientation_ = codedInputStream.readInt32();
                            case 58:
                                this.sizeFormat_ = codedInputStream.readStringRequireUtf8();
                            case 66:
                                this.resourceList_ = codedInputStream.readStringRequireUtf8();
                            case 74:
                                this.categoryId_ = codedInputStream.readStringRequireUtf8();
                            case 82:
                                this.contentPageId_ = codedInputStream.readStringRequireUtf8();
                            case 93:
                                this.orderIndex_ = codedInputStream.readFloat();
                            case 96:
                                this.source_ = codedInputStream.readInt32();
                            case 104:
                                this.status_ = codedInputStream.readInt32();
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
    public static final class CoverList extends GeneratedMessageV3 implements CoverListOrBuilder {
        private static final CoverList DEFAULT_INSTANCE = new CoverList();
        private static final Parser<CoverList> PARSER = new C7744a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<Cover> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements CoverListOrBuilder {

            /* renamed from: i */
            public int f45560i;

            /* renamed from: j */
            public List<Cover> f45561j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> f45562k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7745a c7745a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return CoverProto.f45542a;
            }

            public Builder addAllProto(Iterable<? extends Cover> iterable) {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                if (repeatedFieldBuilderV3 == null) {
                    m35221h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45561j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(Cover cover) {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                if (repeatedFieldBuilderV3 == null) {
                    cover.getClass();
                    m35221h();
                    this.f45561j.add(cover);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(cover);
                }
                return this;
            }

            public Cover.Builder addProtoBuilder() {
                return m35222i().addBuilder(Cover.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45561j = Collections.emptyList();
                    this.f45560i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return CoverProto.f45542a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverListOrBuilder
            public Cover getProto(int i) {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                return repeatedFieldBuilderV3 == null ? this.f45561j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public Cover.Builder getProtoBuilder(int i) {
                return m35222i().getBuilder(i);
            }

            public List<Cover.Builder> getProtoBuilderList() {
                return m35222i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                return repeatedFieldBuilderV3 == null ? this.f45561j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverListOrBuilder
            public List<Cover> getProtoList() {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45561j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverListOrBuilder
            public CoverOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                return repeatedFieldBuilderV3 == null ? this.f45561j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverListOrBuilder
            public List<? extends CoverOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45561j);
            }

            /* renamed from: h */
            public final void m35221h() {
                if ((this.f45560i & 1) != 1) {
                    this.f45561j = new ArrayList(this.f45561j);
                    this.f45560i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> m35222i() {
                if (this.f45562k == null) {
                    this.f45562k = new RepeatedFieldBuilderV3<>(this.f45561j, (this.f45560i & 1) == 1, getParentForChildren(), isClean());
                    this.f45561j = null;
                }
                return this.f45562k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return CoverProto.f45543b.ensureFieldAccessorsInitialized(CoverList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35223j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35222i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                if (repeatedFieldBuilderV3 == null) {
                    m35221h();
                    this.f45561j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, Cover cover) {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                if (repeatedFieldBuilderV3 == null) {
                    cover.getClass();
                    m35221h();
                    this.f45561j.set(i, cover);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, cover);
                }
                return this;
            }

            public /* synthetic */ Builder(C7745a c7745a) {
                this();
            }

            public Builder() {
                this.f45561j = Collections.emptyList();
                m35223j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CoverList build() {
                CoverList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CoverList buildPartial() {
                CoverList coverList = new CoverList(this, (C7745a) null);
                int i = this.f45560i;
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45561j = Collections.unmodifiableList(this.f45561j);
                        this.f45560i &= -2;
                    }
                    coverList.proto_ = this.f45561j;
                } else {
                    coverList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return coverList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CoverList getDefaultInstanceForType() {
                return CoverList.getDefaultInstance();
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

            public Cover.Builder addProtoBuilder(int i) {
                return m35222i().addBuilder(i, Cover.getDefaultInstance());
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
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45561j = Collections.emptyList();
                    this.f45560i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45561j = Collections.emptyList();
                m35223j();
            }

            public Builder addProto(int i, Cover cover) {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                if (repeatedFieldBuilderV3 == null) {
                    cover.getClass();
                    m35221h();
                    this.f45561j.add(i, cover);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, cover);
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
                if (message instanceof CoverList) {
                    return mergeFrom((CoverList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, Cover.Builder builder) {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                if (repeatedFieldBuilderV3 == null) {
                    m35221h();
                    this.f45561j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(CoverList coverList) {
                if (coverList == CoverList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45562k == null) {
                    if (!coverList.proto_.isEmpty()) {
                        if (this.f45561j.isEmpty()) {
                            this.f45561j = coverList.proto_;
                            this.f45560i &= -2;
                        } else {
                            m35221h();
                            this.f45561j.addAll(coverList.proto_);
                        }
                        onChanged();
                    }
                } else if (!coverList.proto_.isEmpty()) {
                    if (this.f45562k.isEmpty()) {
                        this.f45562k.dispose();
                        this.f45562k = null;
                        this.f45561j = coverList.proto_;
                        this.f45560i &= -2;
                        this.f45562k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35222i() : null;
                    } else {
                        this.f45562k.addAllMessages(coverList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) coverList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(Cover.Builder builder) {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                if (repeatedFieldBuilderV3 == null) {
                    m35221h();
                    this.f45561j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, Cover.Builder builder) {
                RepeatedFieldBuilderV3<Cover, Cover.Builder, CoverOrBuilder> repeatedFieldBuilderV3 = this.f45562k;
                if (repeatedFieldBuilderV3 == null) {
                    m35221h();
                    this.f45561j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.CoverProto$CoverList r3 = (com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.CoverProto$CoverList r4 = (com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.CoverProto$CoverList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.CoverProto$CoverList$a */
        /* loaded from: classes8.dex */
        public class C7744a extends AbstractParser<CoverList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public CoverList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CoverList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ CoverList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7745a c7745a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static CoverList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return CoverProto.f45542a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static CoverList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CoverList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CoverList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<CoverList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CoverList)) {
                return super.equals(obj);
            }
            CoverList coverList = (CoverList) obj;
            return (getProtoList().equals(coverList.getProtoList())) && this.unknownFields.equals(coverList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CoverList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverListOrBuilder
        public Cover getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverListOrBuilder
        public List<Cover> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverListOrBuilder
        public CoverOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.CoverProto.CoverListOrBuilder
        public List<? extends CoverOrBuilder> getProtoOrBuilderList() {
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
            return CoverProto.f45543b.ensureFieldAccessorsInitialized(CoverList.class, Builder.class);
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

        public /* synthetic */ CoverList(GeneratedMessageV3.Builder builder, C7745a c7745a) {
            this(builder);
        }

        public static Builder newBuilder(CoverList coverList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(coverList);
        }

        public static CoverList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private CoverList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CoverList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CoverList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CoverList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CoverList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7745a c7745a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7745a) : new Builder(c7745a).mergeFrom(this);
        }

        public static CoverList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private CoverList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static CoverList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static CoverList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CoverList parseFrom(InputStream inputStream) throws IOException {
            return (CoverList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private CoverList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.proto_.add((Cover) codedInputStream.readMessage(Cover.parser(), extensionRegistryLite));
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

        public static CoverList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CoverList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CoverList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CoverList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static CoverList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CoverList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface CoverListOrBuilder extends MessageOrBuilder {
        Cover getProto(int i);

        int getProtoCount();

        List<Cover> getProtoList();

        CoverOrBuilder getProtoOrBuilder(int i);

        List<? extends CoverOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface CoverOrBuilder extends MessageOrBuilder {
        String getCategoryId();

        ByteString getCategoryIdBytes();

        String getContentPageId();

        ByteString getContentPageIdBytes();

        long getCreatedAt();

        float getOrderIndex();

        int getOrientation();

        String getResourceList();

        ByteString getResourceListBytes();

        String getSizeFormat();

        ByteString getSizeFormatBytes();

        int getSource();

        int getStatus();

        String getTitle();

        ByteString getTitleBytes();

        String getTitleResName();

        ByteString getTitleResNameBytes();

        String getUniqueId();

        ByteString getUniqueIdBytes();

        long getUpdatedAt();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.CoverProto$a */
    /* loaded from: classes8.dex */
    public class C7745a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = CoverProto.f45546e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0010CoverProto.proto\"\"\n\tCoverList\u0012\u0015\n\u0005proto\u0018\u0001 \u0003(\u000b2\u0006.Cover\"\u0082\u0002\n\u0005Cover\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\r\n\u0005title\u0018\u0004 \u0001(\t\u0012\u0014\n\ftitleResName\u0018\u0005 \u0001(\t\u0012\u0013\n\u000borientation\u0018\u0006 \u0001(\u0005\u0012\u0012\n\nsizeFormat\u0018\u0007 \u0001(\t\u0012\u0014\n\fresourceList\u0018\b \u0001(\t\u0012\u0012\n\ncategoryId\u0018\t \u0001(\t\u0012\u0015\n\rcontentPageId\u0018\n \u0001(\t\u0012\u0012\n\norderIndex\u0018\u000b \u0001(\u0002\u0012\u000e\n\u0006source\u0018\f \u0001(\u0005\u0012\u000e\n\u0006status\u0018\r \u0001(\u0005B,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7745a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45542a = descriptor;
        f45543b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45544c = descriptor2;
        f45545d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"UniqueId", "CreatedAt", "UpdatedAt", "Title", "TitleResName", ExifInterface.TAG_ORIENTATION, "SizeFormat", "ResourceList", "CategoryId", "ContentPageId", "OrderIndex", "Source", PersistedInstallation.f35952i});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45546e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
