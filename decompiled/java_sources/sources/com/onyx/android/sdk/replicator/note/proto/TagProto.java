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
import org.apache.poi.smtp.MIMEHeaders;

/* loaded from: classes8.dex */
public final class TagProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45831a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45832b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45833c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45834d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45835e;

    /* loaded from: classes8.dex */
    public static final class Tag extends GeneratedMessageV3 implements TagOrBuilder {
        public static final int CONTENT_FIELD_NUMBER = 7;
        public static final int CREATEDAT_FIELD_NUMBER = 5;
        public static final int DOCUMENTID_FIELD_NUMBER = 2;
        public static final int MODETYPE_FIELD_NUMBER = 9;
        public static final int ORDERINDEX_FIELD_NUMBER = 12;
        public static final int PAGEUNIQUEID_FIELD_NUMBER = 3;
        public static final int PARENTID_FIELD_NUMBER = 13;
        public static final int STATUS_FIELD_NUMBER = 8;
        public static final int STYLE_FIELD_NUMBER = 11;
        public static final int TYPE_FIELD_NUMBER = 10;
        public static final int UNIQUEID_FIELD_NUMBER = 1;
        public static final int UPDATEDAT_FIELD_NUMBER = 6;
        public static final int USERID_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private volatile Object content_;
        private long createdAt_;
        private volatile Object documentId_;
        private byte memoizedIsInitialized;
        private int modeType_;
        private float orderIndex_;
        private volatile Object pageUniqueId_;
        private volatile Object parentId_;
        private int status_;
        private volatile Object style_;
        private int type_;
        private volatile Object uniqueId_;
        private long updatedAt_;
        private volatile Object userId_;
        private static final Tag DEFAULT_INSTANCE = new Tag();
        private static final Parser<Tag> PARSER = new C7778a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements TagOrBuilder {

            /* renamed from: i */
            public Object f45836i;

            /* renamed from: j */
            public Object f45837j;

            /* renamed from: k */
            public Object f45838k;

            /* renamed from: l */
            public Object f45839l;

            /* renamed from: m */
            public long f45840m;

            /* renamed from: n */
            public long f45841n;

            /* renamed from: o */
            public Object f45842o;

            /* renamed from: p */
            public int f45843p;

            /* renamed from: q */
            public int f45844q;

            /* renamed from: r */
            public int f45845r;

            /* renamed from: s */
            public Object f45846s;

            /* renamed from: t */
            public float f45847t;

            /* renamed from: u */
            public Object f45848u;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7780a c7780a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return TagProto.f45833c;
            }

            public Builder clearContent() {
                this.f45842o = Tag.getDefaultInstance().getContent();
                onChanged();
                return this;
            }

            public Builder clearCreatedAt() {
                this.f45840m = 0L;
                onChanged();
                return this;
            }

            public Builder clearDocumentId() {
                this.f45837j = Tag.getDefaultInstance().getDocumentId();
                onChanged();
                return this;
            }

            public Builder clearModeType() {
                this.f45844q = 0;
                onChanged();
                return this;
            }

            public Builder clearOrderIndex() {
                this.f45847t = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearPageUniqueId() {
                this.f45838k = Tag.getDefaultInstance().getPageUniqueId();
                onChanged();
                return this;
            }

            public Builder clearParentId() {
                this.f45848u = Tag.getDefaultInstance().getParentId();
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.f45843p = 0;
                onChanged();
                return this;
            }

            public Builder clearStyle() {
                this.f45846s = Tag.getDefaultInstance().getStyle();
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.f45845r = 0;
                onChanged();
                return this;
            }

            public Builder clearUniqueId() {
                this.f45836i = Tag.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45841n = 0L;
                onChanged();
                return this;
            }

            public Builder clearUserId() {
                this.f45839l = Tag.getDefaultInstance().getUserId();
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public String getContent() {
                Object obj = this.f45842o;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45842o = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public ByteString getContentBytes() {
                Object obj = this.f45842o;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45842o = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public long getCreatedAt() {
                return this.f45840m;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return TagProto.f45833c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public String getDocumentId() {
                Object obj = this.f45837j;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45837j = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public ByteString getDocumentIdBytes() {
                Object obj = this.f45837j;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45837j = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public int getModeType() {
                return this.f45844q;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public float getOrderIndex() {
                return this.f45847t;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public String getPageUniqueId() {
                Object obj = this.f45838k;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45838k = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public ByteString getPageUniqueIdBytes() {
                Object obj = this.f45838k;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45838k = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public String getParentId() {
                Object obj = this.f45848u;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45848u = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public ByteString getParentIdBytes() {
                Object obj = this.f45848u;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45848u = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public int getStatus() {
                return this.f45843p;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public String getStyle() {
                Object obj = this.f45846s;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45846s = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public ByteString getStyleBytes() {
                Object obj = this.f45846s;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45846s = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public int getType() {
                return this.f45845r;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public String getUniqueId() {
                Object obj = this.f45836i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45836i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public ByteString getUniqueIdBytes() {
                Object obj = this.f45836i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45836i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public long getUpdatedAt() {
                return this.f45841n;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public String getUserId() {
                Object obj = this.f45839l;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45839l = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
            public ByteString getUserIdBytes() {
                Object obj = this.f45839l;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45839l = copyFromUtf8;
                return copyFromUtf8;
            }

            /* renamed from: h */
            public final void m35345h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return TagProto.f45834d.ensureFieldAccessorsInitialized(Tag.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setContent(String str) {
                str.getClass();
                this.f45842o = str;
                onChanged();
                return this;
            }

            public Builder setContentBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45842o = byteString;
                onChanged();
                return this;
            }

            public Builder setCreatedAt(long j) {
                this.f45840m = j;
                onChanged();
                return this;
            }

            public Builder setDocumentId(String str) {
                str.getClass();
                this.f45837j = str;
                onChanged();
                return this;
            }

            public Builder setDocumentIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45837j = byteString;
                onChanged();
                return this;
            }

            public Builder setModeType(int i) {
                this.f45844q = i;
                onChanged();
                return this;
            }

            public Builder setOrderIndex(float f) {
                this.f45847t = f;
                onChanged();
                return this;
            }

            public Builder setPageUniqueId(String str) {
                str.getClass();
                this.f45838k = str;
                onChanged();
                return this;
            }

            public Builder setPageUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45838k = byteString;
                onChanged();
                return this;
            }

            public Builder setParentId(String str) {
                str.getClass();
                this.f45848u = str;
                onChanged();
                return this;
            }

            public Builder setParentIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45848u = byteString;
                onChanged();
                return this;
            }

            public Builder setStatus(int i) {
                this.f45843p = i;
                onChanged();
                return this;
            }

            public Builder setStyle(String str) {
                str.getClass();
                this.f45846s = str;
                onChanged();
                return this;
            }

            public Builder setStyleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45846s = byteString;
                onChanged();
                return this;
            }

            public Builder setType(int i) {
                this.f45845r = i;
                onChanged();
                return this;
            }

            public Builder setUniqueId(String str) {
                str.getClass();
                this.f45836i = str;
                onChanged();
                return this;
            }

            public Builder setUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45836i = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45841n = j;
                onChanged();
                return this;
            }

            public Builder setUserId(String str) {
                str.getClass();
                this.f45839l = str;
                onChanged();
                return this;
            }

            public Builder setUserIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45839l = byteString;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7780a c7780a) {
                this();
            }

            public Builder() {
                this.f45836i = "";
                this.f45837j = "";
                this.f45838k = "";
                this.f45839l = "";
                this.f45842o = "";
                this.f45846s = "";
                this.f45848u = "";
                m35345h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Tag build() {
                Tag buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Tag buildPartial() {
                Tag tag = new Tag(this, (C7780a) null);
                tag.uniqueId_ = this.f45836i;
                tag.documentId_ = this.f45837j;
                tag.pageUniqueId_ = this.f45838k;
                tag.userId_ = this.f45839l;
                tag.createdAt_ = this.f45840m;
                tag.updatedAt_ = this.f45841n;
                tag.content_ = this.f45842o;
                tag.status_ = this.f45843p;
                tag.modeType_ = this.f45844q;
                tag.type_ = this.f45845r;
                tag.style_ = this.f45846s;
                tag.orderIndex_ = this.f45847t;
                tag.parentId_ = this.f45848u;
                onBuilt();
                return tag;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Tag getDefaultInstanceForType() {
                return Tag.getDefaultInstance();
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
                this.f45836i = "";
                this.f45837j = "";
                this.f45838k = "";
                this.f45839l = "";
                this.f45840m = 0L;
                this.f45841n = 0L;
                this.f45842o = "";
                this.f45843p = 0;
                this.f45844q = 0;
                this.f45845r = 0;
                this.f45846s = "";
                this.f45847t = 0.0f;
                this.f45848u = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof Tag) {
                    return mergeFrom((Tag) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Tag tag) {
                if (tag == Tag.getDefaultInstance()) {
                    return this;
                }
                if (!tag.getUniqueId().isEmpty()) {
                    this.f45836i = tag.uniqueId_;
                    onChanged();
                }
                if (!tag.getDocumentId().isEmpty()) {
                    this.f45837j = tag.documentId_;
                    onChanged();
                }
                if (!tag.getPageUniqueId().isEmpty()) {
                    this.f45838k = tag.pageUniqueId_;
                    onChanged();
                }
                if (!tag.getUserId().isEmpty()) {
                    this.f45839l = tag.userId_;
                    onChanged();
                }
                if (tag.getCreatedAt() != 0) {
                    setCreatedAt(tag.getCreatedAt());
                }
                if (tag.getUpdatedAt() != 0) {
                    setUpdatedAt(tag.getUpdatedAt());
                }
                if (!tag.getContent().isEmpty()) {
                    this.f45842o = tag.content_;
                    onChanged();
                }
                if (tag.getStatus() != 0) {
                    setStatus(tag.getStatus());
                }
                if (tag.getModeType() != 0) {
                    setModeType(tag.getModeType());
                }
                if (tag.getType() != 0) {
                    setType(tag.getType());
                }
                if (!tag.getStyle().isEmpty()) {
                    this.f45846s = tag.style_;
                    onChanged();
                }
                if (tag.getOrderIndex() != 0.0f) {
                    setOrderIndex(tag.getOrderIndex());
                }
                if (!tag.getParentId().isEmpty()) {
                    this.f45848u = tag.parentId_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) tag).unknownFields);
                onChanged();
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45836i = "";
                this.f45837j = "";
                this.f45838k = "";
                this.f45839l = "";
                this.f45842o = "";
                this.f45846s = "";
                this.f45848u = "";
                m35345h();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.TagProto.Tag.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.TagProto.Tag.access$3100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.TagProto$Tag r3 = (com.onyx.android.sdk.replicator.note.proto.TagProto.Tag) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.TagProto$Tag r4 = (com.onyx.android.sdk.replicator.note.proto.TagProto.Tag) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.TagProto.Tag.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.TagProto$Tag$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.TagProto$Tag$a */
        /* loaded from: classes8.dex */
        public class C7778a extends AbstractParser<Tag> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public Tag parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Tag(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ Tag(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7780a c7780a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static Tag getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return TagProto.f45833c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Tag parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Tag) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Tag parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<Tag> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Tag)) {
                return super.equals(obj);
            }
            Tag tag = (Tag) obj;
            return (((((((((((((getUniqueId().equals(tag.getUniqueId())) && getDocumentId().equals(tag.getDocumentId())) && getPageUniqueId().equals(tag.getPageUniqueId())) && getUserId().equals(tag.getUserId())) && (getCreatedAt() > tag.getCreatedAt() ? 1 : (getCreatedAt() == tag.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > tag.getUpdatedAt() ? 1 : (getUpdatedAt() == tag.getUpdatedAt() ? 0 : -1)) == 0) && getContent().equals(tag.getContent())) && getStatus() == tag.getStatus()) && getModeType() == tag.getModeType()) && getType() == tag.getType()) && getStyle().equals(tag.getStyle())) && Float.floatToIntBits(getOrderIndex()) == Float.floatToIntBits(tag.getOrderIndex())) && getParentId().equals(tag.getParentId())) && this.unknownFields.equals(tag.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public String getContent() {
            Object obj = this.content_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.content_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public ByteString getContentBytes() {
            Object obj = this.content_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.content_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public String getDocumentId() {
            Object obj = this.documentId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.documentId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public ByteString getDocumentIdBytes() {
            Object obj = this.documentId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.documentId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public int getModeType() {
            return this.modeType_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public float getOrderIndex() {
            return this.orderIndex_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public String getPageUniqueId() {
            Object obj = this.pageUniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pageUniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public ByteString getPageUniqueIdBytes() {
            Object obj = this.pageUniqueId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pageUniqueId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public String getParentId() {
            Object obj = this.parentId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.parentId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public ByteString getParentIdBytes() {
            Object obj = this.parentId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.parentId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Tag> getParserForType() {
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
            if (!getContentBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(7, this.content_);
            }
            int i2 = this.status_;
            if (i2 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(8, i2);
            }
            int i3 = this.modeType_;
            if (i3 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(9, i3);
            }
            int i4 = this.type_;
            if (i4 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(10, i4);
            }
            if (!getStyleBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(11, this.style_);
            }
            float f = this.orderIndex_;
            if (f != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(12, f);
            }
            if (!getParentIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(13, this.parentId_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public String getStyle() {
            Object obj = this.style_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.style_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public ByteString getStyleBytes() {
            Object obj = this.style_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.style_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public int getType() {
            return this.type_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
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

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
        public String getUserId() {
            Object obj = this.userId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.userId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagOrBuilder
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
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + getDocumentId().hashCode()) * 37) + 3) * 53) + getPageUniqueId().hashCode()) * 37) + 4) * 53) + getUserId().hashCode()) * 37) + 5) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 6) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 7) * 53) + getContent().hashCode()) * 37) + 8) * 53) + getStatus()) * 37) + 9) * 53) + getModeType()) * 37) + 10) * 53) + getType()) * 37) + 11) * 53) + getStyle().hashCode()) * 37) + 12) * 53) + Float.floatToIntBits(getOrderIndex())) * 37) + 13) * 53) + getParentId().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return TagProto.f45834d.ensureFieldAccessorsInitialized(Tag.class, Builder.class);
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
            if (!getContentBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.content_);
            }
            int i = this.status_;
            if (i != 0) {
                codedOutputStream.writeInt32(8, i);
            }
            int i2 = this.modeType_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(9, i2);
            }
            int i3 = this.type_;
            if (i3 != 0) {
                codedOutputStream.writeInt32(10, i3);
            }
            if (!getStyleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.style_);
            }
            float f = this.orderIndex_;
            if (f != 0.0f) {
                codedOutputStream.writeFloat(12, f);
            }
            if (!getParentIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 13, this.parentId_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ Tag(GeneratedMessageV3.Builder builder, C7780a c7780a) {
            this(builder);
        }

        public static Builder newBuilder(Tag tag) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(tag);
        }

        public static Tag parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private Tag(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Tag parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Tag) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Tag parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Tag getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7780a c7780a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7780a) : new Builder(c7780a).mergeFrom(this);
        }

        public static Tag parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Tag() {
            this.memoizedIsInitialized = (byte) -1;
            this.uniqueId_ = "";
            this.documentId_ = "";
            this.pageUniqueId_ = "";
            this.userId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.content_ = "";
            this.status_ = 0;
            this.modeType_ = 0;
            this.type_ = 0;
            this.style_ = "";
            this.orderIndex_ = 0.0f;
            this.parentId_ = "";
        }

        public static Tag parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static Tag parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Tag parseFrom(InputStream inputStream) throws IOException {
            return (Tag) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Tag parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Tag) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Tag parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Tag) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Tag parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Tag) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
        private Tag(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.content_ = codedInputStream.readStringRequireUtf8();
                            case 64:
                                this.status_ = codedInputStream.readInt32();
                            case 72:
                                this.modeType_ = codedInputStream.readInt32();
                            case 80:
                                this.type_ = codedInputStream.readInt32();
                            case 90:
                                this.style_ = codedInputStream.readStringRequireUtf8();
                            case 101:
                                this.orderIndex_ = codedInputStream.readFloat();
                            case 106:
                                this.parentId_ = codedInputStream.readStringRequireUtf8();
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
    public static final class TagList extends GeneratedMessageV3 implements TagListOrBuilder {
        private static final TagList DEFAULT_INSTANCE = new TagList();
        private static final Parser<TagList> PARSER = new C7779a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<Tag> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements TagListOrBuilder {

            /* renamed from: i */
            public int f45849i;

            /* renamed from: j */
            public List<Tag> f45850j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> f45851k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7780a c7780a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return TagProto.f45831a;
            }

            public Builder addAllProto(Iterable<? extends Tag> iterable) {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                if (repeatedFieldBuilderV3 == null) {
                    m35347h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45850j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(Tag tag) {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                if (repeatedFieldBuilderV3 == null) {
                    tag.getClass();
                    m35347h();
                    this.f45850j.add(tag);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(tag);
                }
                return this;
            }

            public Tag.Builder addProtoBuilder() {
                return m35348i().addBuilder(Tag.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45850j = Collections.emptyList();
                    this.f45849i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return TagProto.f45831a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagListOrBuilder
            public Tag getProto(int i) {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                return repeatedFieldBuilderV3 == null ? this.f45850j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public Tag.Builder getProtoBuilder(int i) {
                return m35348i().getBuilder(i);
            }

            public List<Tag.Builder> getProtoBuilderList() {
                return m35348i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                return repeatedFieldBuilderV3 == null ? this.f45850j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagListOrBuilder
            public List<Tag> getProtoList() {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45850j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagListOrBuilder
            public TagOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                return repeatedFieldBuilderV3 == null ? this.f45850j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagListOrBuilder
            public List<? extends TagOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45850j);
            }

            /* renamed from: h */
            public final void m35347h() {
                if ((this.f45849i & 1) != 1) {
                    this.f45850j = new ArrayList(this.f45850j);
                    this.f45849i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> m35348i() {
                if (this.f45851k == null) {
                    this.f45851k = new RepeatedFieldBuilderV3<>(this.f45850j, (this.f45849i & 1) == 1, getParentForChildren(), isClean());
                    this.f45850j = null;
                }
                return this.f45851k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return TagProto.f45832b.ensureFieldAccessorsInitialized(TagList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35349j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35348i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                if (repeatedFieldBuilderV3 == null) {
                    m35347h();
                    this.f45850j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, Tag tag) {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                if (repeatedFieldBuilderV3 == null) {
                    tag.getClass();
                    m35347h();
                    this.f45850j.set(i, tag);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, tag);
                }
                return this;
            }

            public /* synthetic */ Builder(C7780a c7780a) {
                this();
            }

            public Builder() {
                this.f45850j = Collections.emptyList();
                m35349j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TagList build() {
                TagList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TagList buildPartial() {
                TagList tagList = new TagList(this, (C7780a) null);
                int i = this.f45849i;
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45850j = Collections.unmodifiableList(this.f45850j);
                        this.f45849i &= -2;
                    }
                    tagList.proto_ = this.f45850j;
                } else {
                    tagList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return tagList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public TagList getDefaultInstanceForType() {
                return TagList.getDefaultInstance();
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

            public Tag.Builder addProtoBuilder(int i) {
                return m35348i().addBuilder(i, Tag.getDefaultInstance());
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
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45850j = Collections.emptyList();
                    this.f45849i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45850j = Collections.emptyList();
                m35349j();
            }

            public Builder addProto(int i, Tag tag) {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                if (repeatedFieldBuilderV3 == null) {
                    tag.getClass();
                    m35347h();
                    this.f45850j.add(i, tag);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, tag);
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
                if (message instanceof TagList) {
                    return mergeFrom((TagList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, Tag.Builder builder) {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                if (repeatedFieldBuilderV3 == null) {
                    m35347h();
                    this.f45850j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(TagList tagList) {
                if (tagList == TagList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45851k == null) {
                    if (!tagList.proto_.isEmpty()) {
                        if (this.f45850j.isEmpty()) {
                            this.f45850j = tagList.proto_;
                            this.f45849i &= -2;
                        } else {
                            m35347h();
                            this.f45850j.addAll(tagList.proto_);
                        }
                        onChanged();
                    }
                } else if (!tagList.proto_.isEmpty()) {
                    if (this.f45851k.isEmpty()) {
                        this.f45851k.dispose();
                        this.f45851k = null;
                        this.f45850j = tagList.proto_;
                        this.f45849i &= -2;
                        this.f45851k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35348i() : null;
                    } else {
                        this.f45851k.addAllMessages(tagList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) tagList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(Tag.Builder builder) {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                if (repeatedFieldBuilderV3 == null) {
                    m35347h();
                    this.f45850j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, Tag.Builder builder) {
                RepeatedFieldBuilderV3<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilderV3 = this.f45851k;
                if (repeatedFieldBuilderV3 == null) {
                    m35347h();
                    this.f45850j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.TagProto.TagList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.TagProto.TagList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.TagProto$TagList r3 = (com.onyx.android.sdk.replicator.note.proto.TagProto.TagList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.TagProto$TagList r4 = (com.onyx.android.sdk.replicator.note.proto.TagProto.TagList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.TagProto.TagList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.TagProto$TagList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.TagProto$TagList$a */
        /* loaded from: classes8.dex */
        public class C7779a extends AbstractParser<TagList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public TagList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new TagList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ TagList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7780a c7780a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static TagList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return TagProto.f45831a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TagList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TagList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static TagList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<TagList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TagList)) {
                return super.equals(obj);
            }
            TagList tagList = (TagList) obj;
            return (getProtoList().equals(tagList.getProtoList())) && this.unknownFields.equals(tagList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<TagList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagListOrBuilder
        public Tag getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagListOrBuilder
        public List<Tag> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagListOrBuilder
        public TagOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TagProto.TagListOrBuilder
        public List<? extends TagOrBuilder> getProtoOrBuilderList() {
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
            return TagProto.f45832b.ensureFieldAccessorsInitialized(TagList.class, Builder.class);
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

        public /* synthetic */ TagList(GeneratedMessageV3.Builder builder, C7780a c7780a) {
            this(builder);
        }

        public static Builder newBuilder(TagList tagList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(tagList);
        }

        public static TagList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private TagList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TagList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TagList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static TagList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public TagList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7780a c7780a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7780a) : new Builder(c7780a).mergeFrom(this);
        }

        public static TagList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private TagList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static TagList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static TagList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static TagList parseFrom(InputStream inputStream) throws IOException {
            return (TagList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private TagList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.proto_.add((Tag) codedInputStream.readMessage(Tag.parser(), extensionRegistryLite));
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

        public static TagList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TagList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static TagList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (TagList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static TagList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TagList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface TagListOrBuilder extends MessageOrBuilder {
        Tag getProto(int i);

        int getProtoCount();

        List<Tag> getProtoList();

        TagOrBuilder getProtoOrBuilder(int i);

        List<? extends TagOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface TagOrBuilder extends MessageOrBuilder {
        String getContent();

        ByteString getContentBytes();

        long getCreatedAt();

        String getDocumentId();

        ByteString getDocumentIdBytes();

        int getModeType();

        float getOrderIndex();

        String getPageUniqueId();

        ByteString getPageUniqueIdBytes();

        String getParentId();

        ByteString getParentIdBytes();

        int getStatus();

        String getStyle();

        ByteString getStyleBytes();

        int getType();

        String getUniqueId();

        ByteString getUniqueIdBytes();

        long getUpdatedAt();

        String getUserId();

        ByteString getUserIdBytes();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.TagProto$a */
    /* loaded from: classes8.dex */
    public class C7780a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = TagProto.f45835e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u000eTagProto.proto\"\u001e\n\u0007TagList\u0012\u0013\n\u0005proto\u0018\u0001 \u0003(\u000b2\u0004.Tag\"í\u0001\n\u0003Tag\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012\u0012\n\ndocumentId\u0018\u0002 \u0001(\t\u0012\u0014\n\fpageUniqueId\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006userId\u0018\u0004 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0005 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0006 \u0001(\u0003\u0012\u000f\n\u0007content\u0018\u0007 \u0001(\t\u0012\u000e\n\u0006status\u0018\b \u0001(\u0005\u0012\u0010\n\bmodeType\u0018\t \u0001(\u0005\u0012\f\n\u0004type\u0018\n \u0001(\u0005\u0012\r\n\u0005style\u0018\u000b \u0001(\t\u0012\u0012\n\norderIndex\u0018\f \u0001(\u0002\u0012\u0010\n\bparentId\u0018\r \u0001(\tB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7780a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45831a = descriptor;
        f45832b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45833c = descriptor2;
        f45834d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"UniqueId", "DocumentId", "PageUniqueId", "UserId", "CreatedAt", "UpdatedAt", MIMEHeaders.KEY_CONTENT, PersistedInstallation.f35952i, "ModeType", "Type", "Style", "OrderIndex", "ParentId"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45835e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
