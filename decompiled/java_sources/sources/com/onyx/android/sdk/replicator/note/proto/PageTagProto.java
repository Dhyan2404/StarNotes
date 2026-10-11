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
public final class PageTagProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45751a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45752b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45753c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45754d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45755e;

    /* loaded from: classes8.dex */
    public static final class PageTag extends GeneratedMessageV3 implements PageTagOrBuilder {
        public static final int CREATEDAT_FIELD_NUMBER = 5;
        public static final int DOCTITLE_FIELD_NUMBER = 8;
        public static final int DOCUMENTID_FIELD_NUMBER = 2;
        public static final int ORIENTATION_FIELD_NUMBER = 11;
        public static final int PAGEINDEX_FIELD_NUMBER = 10;
        public static final int PAGEUNIQUEID_FIELD_NUMBER = 3;
        public static final int STATUS_FIELD_NUMBER = 9;
        public static final int TAGID_FIELD_NUMBER = 7;
        public static final int UNIQUEID_FIELD_NUMBER = 1;
        public static final int UPDATEDAT_FIELD_NUMBER = 6;
        public static final int USERID_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private long createdAt_;
        private volatile Object docTitle_;
        private volatile Object documentId_;
        private byte memoizedIsInitialized;
        private int orientation_;
        private int pageIndex_;
        private volatile Object pageUniqueId_;
        private int status_;
        private volatile Object tagId_;
        private volatile Object uniqueId_;
        private long updatedAt_;
        private volatile Object userId_;
        private static final PageTag DEFAULT_INSTANCE = new PageTag();
        private static final Parser<PageTag> PARSER = new C7769a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements PageTagOrBuilder {

            /* renamed from: i */
            public Object f45756i;

            /* renamed from: j */
            public Object f45757j;

            /* renamed from: k */
            public Object f45758k;

            /* renamed from: l */
            public Object f45759l;

            /* renamed from: m */
            public long f45760m;

            /* renamed from: n */
            public long f45761n;

            /* renamed from: o */
            public Object f45762o;

            /* renamed from: p */
            public Object f45763p;

            /* renamed from: q */
            public int f45764q;

            /* renamed from: r */
            public int f45765r;

            /* renamed from: s */
            public int f45766s;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7771a c7771a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return PageTagProto.f45753c;
            }

            public Builder clearCreatedAt() {
                this.f45760m = 0L;
                onChanged();
                return this;
            }

            public Builder clearDocTitle() {
                this.f45763p = PageTag.getDefaultInstance().getDocTitle();
                onChanged();
                return this;
            }

            public Builder clearDocumentId() {
                this.f45757j = PageTag.getDefaultInstance().getDocumentId();
                onChanged();
                return this;
            }

            public Builder clearOrientation() {
                this.f45766s = 0;
                onChanged();
                return this;
            }

            public Builder clearPageIndex() {
                this.f45765r = 0;
                onChanged();
                return this;
            }

            public Builder clearPageUniqueId() {
                this.f45758k = PageTag.getDefaultInstance().getPageUniqueId();
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.f45764q = 0;
                onChanged();
                return this;
            }

            public Builder clearTagId() {
                this.f45762o = PageTag.getDefaultInstance().getTagId();
                onChanged();
                return this;
            }

            public Builder clearUniqueId() {
                this.f45756i = PageTag.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45761n = 0L;
                onChanged();
                return this;
            }

            public Builder clearUserId() {
                this.f45759l = PageTag.getDefaultInstance().getUserId();
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public long getCreatedAt() {
                return this.f45760m;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return PageTagProto.f45753c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public String getDocTitle() {
                Object obj = this.f45763p;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45763p = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public ByteString getDocTitleBytes() {
                Object obj = this.f45763p;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45763p = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public String getDocumentId() {
                Object obj = this.f45757j;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45757j = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public ByteString getDocumentIdBytes() {
                Object obj = this.f45757j;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45757j = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public int getOrientation() {
                return this.f45766s;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public int getPageIndex() {
                return this.f45765r;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public String getPageUniqueId() {
                Object obj = this.f45758k;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45758k = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public ByteString getPageUniqueIdBytes() {
                Object obj = this.f45758k;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45758k = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public int getStatus() {
                return this.f45764q;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public String getTagId() {
                Object obj = this.f45762o;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45762o = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public ByteString getTagIdBytes() {
                Object obj = this.f45762o;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45762o = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public String getUniqueId() {
                Object obj = this.f45756i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45756i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public ByteString getUniqueIdBytes() {
                Object obj = this.f45756i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45756i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public long getUpdatedAt() {
                return this.f45761n;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public String getUserId() {
                Object obj = this.f45759l;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45759l = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
            public ByteString getUserIdBytes() {
                Object obj = this.f45759l;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45759l = copyFromUtf8;
                return copyFromUtf8;
            }

            /* renamed from: h */
            public final void m35312h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return PageTagProto.f45754d.ensureFieldAccessorsInitialized(PageTag.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setCreatedAt(long j) {
                this.f45760m = j;
                onChanged();
                return this;
            }

            public Builder setDocTitle(String str) {
                str.getClass();
                this.f45763p = str;
                onChanged();
                return this;
            }

            public Builder setDocTitleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45763p = byteString;
                onChanged();
                return this;
            }

            public Builder setDocumentId(String str) {
                str.getClass();
                this.f45757j = str;
                onChanged();
                return this;
            }

            public Builder setDocumentIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45757j = byteString;
                onChanged();
                return this;
            }

            public Builder setOrientation(int i) {
                this.f45766s = i;
                onChanged();
                return this;
            }

            public Builder setPageIndex(int i) {
                this.f45765r = i;
                onChanged();
                return this;
            }

            public Builder setPageUniqueId(String str) {
                str.getClass();
                this.f45758k = str;
                onChanged();
                return this;
            }

            public Builder setPageUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45758k = byteString;
                onChanged();
                return this;
            }

            public Builder setStatus(int i) {
                this.f45764q = i;
                onChanged();
                return this;
            }

            public Builder setTagId(String str) {
                str.getClass();
                this.f45762o = str;
                onChanged();
                return this;
            }

            public Builder setTagIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45762o = byteString;
                onChanged();
                return this;
            }

            public Builder setUniqueId(String str) {
                str.getClass();
                this.f45756i = str;
                onChanged();
                return this;
            }

            public Builder setUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45756i = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45761n = j;
                onChanged();
                return this;
            }

            public Builder setUserId(String str) {
                str.getClass();
                this.f45759l = str;
                onChanged();
                return this;
            }

            public Builder setUserIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45759l = byteString;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7771a c7771a) {
                this();
            }

            public Builder() {
                this.f45756i = "";
                this.f45757j = "";
                this.f45758k = "";
                this.f45759l = "";
                this.f45762o = "";
                this.f45763p = "";
                m35312h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PageTag build() {
                PageTag buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PageTag buildPartial() {
                PageTag pageTag = new PageTag(this, (C7771a) null);
                pageTag.uniqueId_ = this.f45756i;
                pageTag.documentId_ = this.f45757j;
                pageTag.pageUniqueId_ = this.f45758k;
                pageTag.userId_ = this.f45759l;
                pageTag.createdAt_ = this.f45760m;
                pageTag.updatedAt_ = this.f45761n;
                pageTag.tagId_ = this.f45762o;
                pageTag.docTitle_ = this.f45763p;
                pageTag.status_ = this.f45764q;
                pageTag.pageIndex_ = this.f45765r;
                pageTag.orientation_ = this.f45766s;
                onBuilt();
                return pageTag;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PageTag getDefaultInstanceForType() {
                return PageTag.getDefaultInstance();
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
                this.f45756i = "";
                this.f45757j = "";
                this.f45758k = "";
                this.f45759l = "";
                this.f45760m = 0L;
                this.f45761n = 0L;
                this.f45762o = "";
                this.f45763p = "";
                this.f45764q = 0;
                this.f45765r = 0;
                this.f45766s = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof PageTag) {
                    return mergeFrom((PageTag) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(PageTag pageTag) {
                if (pageTag == PageTag.getDefaultInstance()) {
                    return this;
                }
                if (!pageTag.getUniqueId().isEmpty()) {
                    this.f45756i = pageTag.uniqueId_;
                    onChanged();
                }
                if (!pageTag.getDocumentId().isEmpty()) {
                    this.f45757j = pageTag.documentId_;
                    onChanged();
                }
                if (!pageTag.getPageUniqueId().isEmpty()) {
                    this.f45758k = pageTag.pageUniqueId_;
                    onChanged();
                }
                if (!pageTag.getUserId().isEmpty()) {
                    this.f45759l = pageTag.userId_;
                    onChanged();
                }
                if (pageTag.getCreatedAt() != 0) {
                    setCreatedAt(pageTag.getCreatedAt());
                }
                if (pageTag.getUpdatedAt() != 0) {
                    setUpdatedAt(pageTag.getUpdatedAt());
                }
                if (!pageTag.getTagId().isEmpty()) {
                    this.f45762o = pageTag.tagId_;
                    onChanged();
                }
                if (!pageTag.getDocTitle().isEmpty()) {
                    this.f45763p = pageTag.docTitle_;
                    onChanged();
                }
                if (pageTag.getStatus() != 0) {
                    setStatus(pageTag.getStatus());
                }
                if (pageTag.getPageIndex() != 0) {
                    setPageIndex(pageTag.getPageIndex());
                }
                if (pageTag.getOrientation() != 0) {
                    setOrientation(pageTag.getOrientation());
                }
                mergeUnknownFields(((GeneratedMessageV3) pageTag).unknownFields);
                onChanged();
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45756i = "";
                this.f45757j = "";
                this.f45758k = "";
                this.f45759l = "";
                this.f45762o = "";
                this.f45763p = "";
                m35312h();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTag.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTag.access$2900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.PageTagProto$PageTag r3 = (com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTag) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.PageTagProto$PageTag r4 = (com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTag) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTag.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.PageTagProto$PageTag$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.PageTagProto$PageTag$a */
        /* loaded from: classes8.dex */
        public class C7769a extends AbstractParser<PageTag> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public PageTag parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new PageTag(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ PageTag(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7771a c7771a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static PageTag getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return PageTagProto.f45753c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PageTag parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PageTag) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static PageTag parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<PageTag> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PageTag)) {
                return super.equals(obj);
            }
            PageTag pageTag = (PageTag) obj;
            return (((((((((((getUniqueId().equals(pageTag.getUniqueId())) && getDocumentId().equals(pageTag.getDocumentId())) && getPageUniqueId().equals(pageTag.getPageUniqueId())) && getUserId().equals(pageTag.getUserId())) && (getCreatedAt() > pageTag.getCreatedAt() ? 1 : (getCreatedAt() == pageTag.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > pageTag.getUpdatedAt() ? 1 : (getUpdatedAt() == pageTag.getUpdatedAt() ? 0 : -1)) == 0) && getTagId().equals(pageTag.getTagId())) && getDocTitle().equals(pageTag.getDocTitle())) && getStatus() == pageTag.getStatus()) && getPageIndex() == pageTag.getPageIndex()) && getOrientation() == pageTag.getOrientation()) && this.unknownFields.equals(pageTag.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public String getDocTitle() {
            Object obj = this.docTitle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.docTitle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public ByteString getDocTitleBytes() {
            Object obj = this.docTitle_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.docTitle_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public String getDocumentId() {
            Object obj = this.documentId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.documentId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public ByteString getDocumentIdBytes() {
            Object obj = this.documentId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.documentId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public int getOrientation() {
            return this.orientation_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public int getPageIndex() {
            return this.pageIndex_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public String getPageUniqueId() {
            Object obj = this.pageUniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pageUniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
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
        public Parser<PageTag> getParserForType() {
            return PARSER;
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
            if (!getPageUniqueIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(3, this.pageUniqueId_);
            }
            if (!getUserIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(4, this.userId_);
            }
            long j = this.createdAt_;
            if (j != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(5, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(6, j2);
            }
            if (!getTagIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(7, this.tagId_);
            }
            if (!getDocTitleBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(8, this.docTitle_);
            }
            int i2 = this.status_;
            if (i2 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(9, i2);
            }
            int i3 = this.pageIndex_;
            if (i3 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(10, i3);
            }
            int i4 = this.orientation_;
            if (i4 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(11, i4);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public String getTagId() {
            Object obj = this.tagId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.tagId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public ByteString getTagIdBytes() {
            Object obj = this.tagId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.tagId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
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

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
        public String getUserId() {
            Object obj = this.userId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.userId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagOrBuilder
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
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + getDocumentId().hashCode()) * 37) + 3) * 53) + getPageUniqueId().hashCode()) * 37) + 4) * 53) + getUserId().hashCode()) * 37) + 5) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 6) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 7) * 53) + getTagId().hashCode()) * 37) + 8) * 53) + getDocTitle().hashCode()) * 37) + 9) * 53) + getStatus()) * 37) + 10) * 53) + getPageIndex()) * 37) + 11) * 53) + getOrientation()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return PageTagProto.f45754d.ensureFieldAccessorsInitialized(PageTag.class, Builder.class);
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
            if (!getPageUniqueIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.pageUniqueId_);
            }
            if (!getUserIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.userId_);
            }
            long j = this.createdAt_;
            if (j != 0) {
                codedOutputStream.writeInt64(5, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                codedOutputStream.writeInt64(6, j2);
            }
            if (!getTagIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.tagId_);
            }
            if (!getDocTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.docTitle_);
            }
            int i = this.status_;
            if (i != 0) {
                codedOutputStream.writeInt32(9, i);
            }
            int i2 = this.pageIndex_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(10, i2);
            }
            int i3 = this.orientation_;
            if (i3 != 0) {
                codedOutputStream.writeInt32(11, i3);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ PageTag(GeneratedMessageV3.Builder builder, C7771a c7771a) {
            this(builder);
        }

        public static Builder newBuilder(PageTag pageTag) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(pageTag);
        }

        public static PageTag parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private PageTag(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PageTag parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PageTag) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static PageTag parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PageTag getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7771a c7771a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7771a) : new Builder(c7771a).mergeFrom(this);
        }

        public static PageTag parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private PageTag() {
            this.memoizedIsInitialized = (byte) -1;
            this.uniqueId_ = "";
            this.documentId_ = "";
            this.pageUniqueId_ = "";
            this.userId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.tagId_ = "";
            this.docTitle_ = "";
            this.status_ = 0;
            this.pageIndex_ = 0;
            this.orientation_ = 0;
        }

        public static PageTag parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static PageTag parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static PageTag parseFrom(InputStream inputStream) throws IOException {
            return (PageTag) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static PageTag parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PageTag) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static PageTag parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (PageTag) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static PageTag parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PageTag) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
        private PageTag(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
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
                                case 26:
                                    this.pageUniqueId_ = codedInputStream.readStringRequireUtf8();
                                case 34:
                                    this.userId_ = codedInputStream.readStringRequireUtf8();
                                case 40:
                                    this.createdAt_ = codedInputStream.readInt64();
                                case 48:
                                    this.updatedAt_ = codedInputStream.readInt64();
                                case 58:
                                    this.tagId_ = codedInputStream.readStringRequireUtf8();
                                case 66:
                                    this.docTitle_ = codedInputStream.readStringRequireUtf8();
                                case 72:
                                    this.status_ = codedInputStream.readInt32();
                                case 80:
                                    this.pageIndex_ = codedInputStream.readInt32();
                                case 88:
                                    this.orientation_ = codedInputStream.readInt32();
                                default:
                                    if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                        z = true;
                                    }
                            }
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
    public static final class PageTagList extends GeneratedMessageV3 implements PageTagListOrBuilder {
        private static final PageTagList DEFAULT_INSTANCE = new PageTagList();
        private static final Parser<PageTagList> PARSER = new C7770a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<PageTag> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements PageTagListOrBuilder {

            /* renamed from: i */
            public int f45767i;

            /* renamed from: j */
            public List<PageTag> f45768j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> f45769k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7771a c7771a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return PageTagProto.f45751a;
            }

            public Builder addAllProto(Iterable<? extends PageTag> iterable) {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                if (repeatedFieldBuilderV3 == null) {
                    m35314h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45768j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(PageTag pageTag) {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                if (repeatedFieldBuilderV3 == null) {
                    pageTag.getClass();
                    m35314h();
                    this.f45768j.add(pageTag);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(pageTag);
                }
                return this;
            }

            public PageTag.Builder addProtoBuilder() {
                return m35315i().addBuilder(PageTag.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45768j = Collections.emptyList();
                    this.f45767i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return PageTagProto.f45751a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagListOrBuilder
            public PageTag getProto(int i) {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                return repeatedFieldBuilderV3 == null ? this.f45768j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public PageTag.Builder getProtoBuilder(int i) {
                return m35315i().getBuilder(i);
            }

            public List<PageTag.Builder> getProtoBuilderList() {
                return m35315i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                return repeatedFieldBuilderV3 == null ? this.f45768j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagListOrBuilder
            public List<PageTag> getProtoList() {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45768j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagListOrBuilder
            public PageTagOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                return repeatedFieldBuilderV3 == null ? this.f45768j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagListOrBuilder
            public List<? extends PageTagOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45768j);
            }

            /* renamed from: h */
            public final void m35314h() {
                if ((this.f45767i & 1) != 1) {
                    this.f45768j = new ArrayList(this.f45768j);
                    this.f45767i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> m35315i() {
                if (this.f45769k == null) {
                    this.f45769k = new RepeatedFieldBuilderV3<>(this.f45768j, (this.f45767i & 1) == 1, getParentForChildren(), isClean());
                    this.f45768j = null;
                }
                return this.f45769k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return PageTagProto.f45752b.ensureFieldAccessorsInitialized(PageTagList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35316j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35315i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                if (repeatedFieldBuilderV3 == null) {
                    m35314h();
                    this.f45768j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, PageTag pageTag) {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                if (repeatedFieldBuilderV3 == null) {
                    pageTag.getClass();
                    m35314h();
                    this.f45768j.set(i, pageTag);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, pageTag);
                }
                return this;
            }

            public /* synthetic */ Builder(C7771a c7771a) {
                this();
            }

            public Builder() {
                this.f45768j = Collections.emptyList();
                m35316j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PageTagList build() {
                PageTagList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PageTagList buildPartial() {
                PageTagList pageTagList = new PageTagList(this, (C7771a) null);
                int i = this.f45767i;
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45768j = Collections.unmodifiableList(this.f45768j);
                        this.f45767i &= -2;
                    }
                    pageTagList.proto_ = this.f45768j;
                } else {
                    pageTagList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return pageTagList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PageTagList getDefaultInstanceForType() {
                return PageTagList.getDefaultInstance();
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

            public PageTag.Builder addProtoBuilder(int i) {
                return m35315i().addBuilder(i, PageTag.getDefaultInstance());
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
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45768j = Collections.emptyList();
                    this.f45767i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45768j = Collections.emptyList();
                m35316j();
            }

            public Builder addProto(int i, PageTag pageTag) {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                if (repeatedFieldBuilderV3 == null) {
                    pageTag.getClass();
                    m35314h();
                    this.f45768j.add(i, pageTag);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, pageTag);
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
                if (message instanceof PageTagList) {
                    return mergeFrom((PageTagList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, PageTag.Builder builder) {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                if (repeatedFieldBuilderV3 == null) {
                    m35314h();
                    this.f45768j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(PageTagList pageTagList) {
                if (pageTagList == PageTagList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45769k == null) {
                    if (!pageTagList.proto_.isEmpty()) {
                        if (this.f45768j.isEmpty()) {
                            this.f45768j = pageTagList.proto_;
                            this.f45767i &= -2;
                        } else {
                            m35314h();
                            this.f45768j.addAll(pageTagList.proto_);
                        }
                        onChanged();
                    }
                } else if (!pageTagList.proto_.isEmpty()) {
                    if (this.f45769k.isEmpty()) {
                        this.f45769k.dispose();
                        this.f45769k = null;
                        this.f45768j = pageTagList.proto_;
                        this.f45767i &= -2;
                        this.f45769k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35315i() : null;
                    } else {
                        this.f45769k.addAllMessages(pageTagList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) pageTagList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(PageTag.Builder builder) {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                if (repeatedFieldBuilderV3 == null) {
                    m35314h();
                    this.f45768j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, PageTag.Builder builder) {
                RepeatedFieldBuilderV3<PageTag, PageTag.Builder, PageTagOrBuilder> repeatedFieldBuilderV3 = this.f45769k;
                if (repeatedFieldBuilderV3 == null) {
                    m35314h();
                    this.f45768j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.PageTagProto$PageTagList r3 = (com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.PageTagProto$PageTagList r4 = (com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.PageTagProto$PageTagList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.PageTagProto$PageTagList$a */
        /* loaded from: classes8.dex */
        public class C7770a extends AbstractParser<PageTagList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public PageTagList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new PageTagList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ PageTagList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7771a c7771a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static PageTagList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return PageTagProto.f45751a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PageTagList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PageTagList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static PageTagList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<PageTagList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PageTagList)) {
                return super.equals(obj);
            }
            PageTagList pageTagList = (PageTagList) obj;
            return (getProtoList().equals(pageTagList.getProtoList())) && this.unknownFields.equals(pageTagList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<PageTagList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagListOrBuilder
        public PageTag getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagListOrBuilder
        public List<PageTag> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagListOrBuilder
        public PageTagOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.PageTagProto.PageTagListOrBuilder
        public List<? extends PageTagOrBuilder> getProtoOrBuilderList() {
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
            return PageTagProto.f45752b.ensureFieldAccessorsInitialized(PageTagList.class, Builder.class);
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

        public /* synthetic */ PageTagList(GeneratedMessageV3.Builder builder, C7771a c7771a) {
            this(builder);
        }

        public static Builder newBuilder(PageTagList pageTagList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(pageTagList);
        }

        public static PageTagList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private PageTagList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PageTagList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PageTagList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static PageTagList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PageTagList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7771a c7771a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7771a) : new Builder(c7771a).mergeFrom(this);
        }

        public static PageTagList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private PageTagList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static PageTagList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static PageTagList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static PageTagList parseFrom(InputStream inputStream) throws IOException {
            return (PageTagList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private PageTagList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.proto_.add((PageTag) codedInputStream.readMessage(PageTag.parser(), extensionRegistryLite));
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

        public static PageTagList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PageTagList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static PageTagList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (PageTagList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static PageTagList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PageTagList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface PageTagListOrBuilder extends MessageOrBuilder {
        PageTag getProto(int i);

        int getProtoCount();

        List<PageTag> getProtoList();

        PageTagOrBuilder getProtoOrBuilder(int i);

        List<? extends PageTagOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface PageTagOrBuilder extends MessageOrBuilder {
        long getCreatedAt();

        String getDocTitle();

        ByteString getDocTitleBytes();

        String getDocumentId();

        ByteString getDocumentIdBytes();

        int getOrientation();

        int getPageIndex();

        String getPageUniqueId();

        ByteString getPageUniqueIdBytes();

        int getStatus();

        String getTagId();

        ByteString getTagIdBytes();

        String getUniqueId();

        ByteString getUniqueIdBytes();

        long getUpdatedAt();

        String getUserId();

        ByteString getUserIdBytes();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.PageTagProto$a */
    /* loaded from: classes8.dex */
    public class C7771a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = PageTagProto.f45755e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0012PageTagProto.proto\"&\n\u000bPageTagList\u0012\u0017\n\u0005proto\u0018\u0001 \u0003(\u000b2\b.PageTag\"Ô\u0001\n\u0007PageTag\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012\u0012\n\ndocumentId\u0018\u0002 \u0001(\t\u0012\u0014\n\fpageUniqueId\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006userId\u0018\u0004 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0005 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0006 \u0001(\u0003\u0012\r\n\u0005tagId\u0018\u0007 \u0001(\t\u0012\u0010\n\bdocTitle\u0018\b \u0001(\t\u0012\u000e\n\u0006status\u0018\t \u0001(\u0005\u0012\u0011\n\tpageIndex\u0018\n \u0001(\u0005\u0012\u0013\n\u000borientation\u0018\u000b \u0001(\u0005B,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7771a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45751a = descriptor;
        f45752b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45753c = descriptor2;
        f45754d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"UniqueId", "DocumentId", "PageUniqueId", "UserId", "CreatedAt", "UpdatedAt", "TagId", "DocTitle", PersistedInstallation.f35952i, "PageIndex", ExifInterface.TAG_ORIENTATION});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45755e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
