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
public final class TocProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45875a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45876b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45877c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45878d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45879e;

    /* loaded from: classes8.dex */
    public static final class Toc extends GeneratedMessageV3 implements TocOrBuilder {
        public static final int CREATEDAT_FIELD_NUMBER = 2;
        public static final int ORDERINDEX_FIELD_NUMBER = 7;
        public static final int PAGEINDEX_FIELD_NUMBER = 6;
        public static final int PAGEUNIQUEID_FIELD_NUMBER = 4;
        public static final int PARENTID_FIELD_NUMBER = 8;
        public static final int STATUS_FIELD_NUMBER = 9;
        public static final int TITLE_FIELD_NUMBER = 5;
        public static final int UPDATEDAT_FIELD_NUMBER = 3;
        public static final int UUID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private long createdAt_;
        private byte memoizedIsInitialized;
        private float orderIndex_;
        private int pageIndex_;
        private volatile Object pageUniqueId_;
        private volatile Object parentId_;
        private int status_;
        private volatile Object title_;
        private long updatedAt_;
        private volatile Object uuid_;
        private static final Toc DEFAULT_INSTANCE = new Toc();
        private static final Parser<Toc> PARSER = new C7784a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements TocOrBuilder {

            /* renamed from: i */
            public Object f45880i;

            /* renamed from: j */
            public long f45881j;

            /* renamed from: k */
            public long f45882k;

            /* renamed from: l */
            public Object f45883l;

            /* renamed from: m */
            public Object f45884m;

            /* renamed from: n */
            public int f45885n;

            /* renamed from: o */
            public float f45886o;

            /* renamed from: p */
            public Object f45887p;

            /* renamed from: q */
            public int f45888q;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7786a c7786a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return TocProto.f45877c;
            }

            public Builder clearCreatedAt() {
                this.f45881j = 0L;
                onChanged();
                return this;
            }

            public Builder clearOrderIndex() {
                this.f45886o = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearPageIndex() {
                this.f45885n = 0;
                onChanged();
                return this;
            }

            public Builder clearPageUniqueId() {
                this.f45883l = Toc.getDefaultInstance().getPageUniqueId();
                onChanged();
                return this;
            }

            public Builder clearParentId() {
                this.f45887p = Toc.getDefaultInstance().getParentId();
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.f45888q = 0;
                onChanged();
                return this;
            }

            public Builder clearTitle() {
                this.f45884m = Toc.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45882k = 0L;
                onChanged();
                return this;
            }

            public Builder clearUuid() {
                this.f45880i = Toc.getDefaultInstance().getUuid();
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
            public long getCreatedAt() {
                return this.f45881j;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return TocProto.f45877c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
            public float getOrderIndex() {
                return this.f45886o;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
            public int getPageIndex() {
                return this.f45885n;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
            public String getPageUniqueId() {
                Object obj = this.f45883l;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45883l = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
            public ByteString getPageUniqueIdBytes() {
                Object obj = this.f45883l;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45883l = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
            public String getParentId() {
                Object obj = this.f45887p;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45887p = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
            public ByteString getParentIdBytes() {
                Object obj = this.f45887p;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45887p = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
            public int getStatus() {
                return this.f45888q;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
            public String getTitle() {
                Object obj = this.f45884m;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45884m = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
            public ByteString getTitleBytes() {
                Object obj = this.f45884m;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45884m = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
            public long getUpdatedAt() {
                return this.f45882k;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
            public String getUuid() {
                Object obj = this.f45880i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45880i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
            public ByteString getUuidBytes() {
                Object obj = this.f45880i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45880i = copyFromUtf8;
                return copyFromUtf8;
            }

            /* renamed from: h */
            public final void m35367h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return TocProto.f45878d.ensureFieldAccessorsInitialized(Toc.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setCreatedAt(long j) {
                this.f45881j = j;
                onChanged();
                return this;
            }

            public Builder setOrderIndex(float f) {
                this.f45886o = f;
                onChanged();
                return this;
            }

            public Builder setPageIndex(int i) {
                this.f45885n = i;
                onChanged();
                return this;
            }

            public Builder setPageUniqueId(String str) {
                str.getClass();
                this.f45883l = str;
                onChanged();
                return this;
            }

            public Builder setPageUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45883l = byteString;
                onChanged();
                return this;
            }

            public Builder setParentId(String str) {
                str.getClass();
                this.f45887p = str;
                onChanged();
                return this;
            }

            public Builder setParentIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45887p = byteString;
                onChanged();
                return this;
            }

            public Builder setStatus(int i) {
                this.f45888q = i;
                onChanged();
                return this;
            }

            public Builder setTitle(String str) {
                str.getClass();
                this.f45884m = str;
                onChanged();
                return this;
            }

            public Builder setTitleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45884m = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45882k = j;
                onChanged();
                return this;
            }

            public Builder setUuid(String str) {
                str.getClass();
                this.f45880i = str;
                onChanged();
                return this;
            }

            public Builder setUuidBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45880i = byteString;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7786a c7786a) {
                this();
            }

            public Builder() {
                this.f45880i = "";
                this.f45883l = "";
                this.f45884m = "";
                this.f45887p = "";
                m35367h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Toc build() {
                Toc buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Toc buildPartial() {
                Toc toc = new Toc(this, (C7786a) null);
                toc.uuid_ = this.f45880i;
                toc.createdAt_ = this.f45881j;
                toc.updatedAt_ = this.f45882k;
                toc.pageUniqueId_ = this.f45883l;
                toc.title_ = this.f45884m;
                toc.pageIndex_ = this.f45885n;
                toc.orderIndex_ = this.f45886o;
                toc.parentId_ = this.f45887p;
                toc.status_ = this.f45888q;
                onBuilt();
                return toc;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Toc getDefaultInstanceForType() {
                return Toc.getDefaultInstance();
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
                this.f45880i = "";
                this.f45881j = 0L;
                this.f45882k = 0L;
                this.f45883l = "";
                this.f45884m = "";
                this.f45885n = 0;
                this.f45886o = 0.0f;
                this.f45887p = "";
                this.f45888q = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof Toc) {
                    return mergeFrom((Toc) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45880i = "";
                this.f45883l = "";
                this.f45884m = "";
                this.f45887p = "";
                m35367h();
            }

            public Builder mergeFrom(Toc toc) {
                if (toc == Toc.getDefaultInstance()) {
                    return this;
                }
                if (!toc.getUuid().isEmpty()) {
                    this.f45880i = toc.uuid_;
                    onChanged();
                }
                if (toc.getCreatedAt() != 0) {
                    setCreatedAt(toc.getCreatedAt());
                }
                if (toc.getUpdatedAt() != 0) {
                    setUpdatedAt(toc.getUpdatedAt());
                }
                if (!toc.getPageUniqueId().isEmpty()) {
                    this.f45883l = toc.pageUniqueId_;
                    onChanged();
                }
                if (!toc.getTitle().isEmpty()) {
                    this.f45884m = toc.title_;
                    onChanged();
                }
                if (toc.getPageIndex() != 0) {
                    setPageIndex(toc.getPageIndex());
                }
                if (toc.getOrderIndex() != 0.0f) {
                    setOrderIndex(toc.getOrderIndex());
                }
                if (!toc.getParentId().isEmpty()) {
                    this.f45887p = toc.parentId_;
                    onChanged();
                }
                if (toc.getStatus() != 0) {
                    setStatus(toc.getStatus());
                }
                mergeUnknownFields(((GeneratedMessageV3) toc).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.TocProto.Toc.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.TocProto.Toc.access$2700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.TocProto$Toc r3 = (com.onyx.android.sdk.replicator.note.proto.TocProto.Toc) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.TocProto$Toc r4 = (com.onyx.android.sdk.replicator.note.proto.TocProto.Toc) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.TocProto.Toc.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.TocProto$Toc$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.TocProto$Toc$a */
        /* loaded from: classes8.dex */
        public class C7784a extends AbstractParser<Toc> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public Toc parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Toc(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ Toc(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7786a c7786a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static Toc getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return TocProto.f45877c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Toc parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Toc) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Toc parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<Toc> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Toc)) {
                return super.equals(obj);
            }
            Toc toc = (Toc) obj;
            return (((((((((getUuid().equals(toc.getUuid())) && (getCreatedAt() > toc.getCreatedAt() ? 1 : (getCreatedAt() == toc.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > toc.getUpdatedAt() ? 1 : (getUpdatedAt() == toc.getUpdatedAt() ? 0 : -1)) == 0) && getPageUniqueId().equals(toc.getPageUniqueId())) && getTitle().equals(toc.getTitle())) && getPageIndex() == toc.getPageIndex()) && Float.floatToIntBits(getOrderIndex()) == Float.floatToIntBits(toc.getOrderIndex())) && getParentId().equals(toc.getParentId())) && getStatus() == toc.getStatus()) && this.unknownFields.equals(toc.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
        public float getOrderIndex() {
            return this.orderIndex_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
        public int getPageIndex() {
            return this.pageIndex_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
        public String getPageUniqueId() {
            Object obj = this.pageUniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pageUniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
        public ByteString getPageUniqueIdBytes() {
            Object obj = this.pageUniqueId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pageUniqueId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
        public String getParentId() {
            Object obj = this.parentId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.parentId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
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
        public Parser<Toc> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = getUuidBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.uuid_);
            long j = this.createdAt_;
            if (j != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(2, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(3, j2);
            }
            if (!getPageUniqueIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(4, this.pageUniqueId_);
            }
            if (!getTitleBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.title_);
            }
            int i2 = this.pageIndex_;
            if (i2 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(6, i2);
            }
            float f = this.orderIndex_;
            if (f != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(7, f);
            }
            if (!getParentIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(8, this.parentId_);
            }
            int i3 = this.status_;
            if (i3 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(9, i3);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
        public String getUuid() {
            Object obj = this.uuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uuid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocOrBuilder
        public ByteString getUuidBytes() {
            Object obj = this.uuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.uuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUuid().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 3) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 4) * 53) + getPageUniqueId().hashCode()) * 37) + 5) * 53) + getTitle().hashCode()) * 37) + 6) * 53) + getPageIndex()) * 37) + 7) * 53) + Float.floatToIntBits(getOrderIndex())) * 37) + 8) * 53) + getParentId().hashCode()) * 37) + 9) * 53) + getStatus()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return TocProto.f45878d.ensureFieldAccessorsInitialized(Toc.class, Builder.class);
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
            if (!getUuidBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.uuid_);
            }
            long j = this.createdAt_;
            if (j != 0) {
                codedOutputStream.writeInt64(2, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                codedOutputStream.writeInt64(3, j2);
            }
            if (!getPageUniqueIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.pageUniqueId_);
            }
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.title_);
            }
            int i = this.pageIndex_;
            if (i != 0) {
                codedOutputStream.writeInt32(6, i);
            }
            float f = this.orderIndex_;
            if (f != 0.0f) {
                codedOutputStream.writeFloat(7, f);
            }
            if (!getParentIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.parentId_);
            }
            int i2 = this.status_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(9, i2);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ Toc(GeneratedMessageV3.Builder builder, C7786a c7786a) {
            this(builder);
        }

        public static Builder newBuilder(Toc toc) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(toc);
        }

        public static Toc parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private Toc(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Toc parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Toc) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Toc parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Toc getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7786a c7786a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7786a) : new Builder(c7786a).mergeFrom(this);
        }

        public static Toc parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Toc() {
            this.memoizedIsInitialized = (byte) -1;
            this.uuid_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.pageUniqueId_ = "";
            this.title_ = "";
            this.pageIndex_ = 0;
            this.orderIndex_ = 0.0f;
            this.parentId_ = "";
            this.status_ = 0;
        }

        public static Toc parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static Toc parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Toc parseFrom(InputStream inputStream) throws IOException {
            return (Toc) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Toc parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Toc) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Toc parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Toc) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Toc parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Toc) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        private Toc(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    this.uuid_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 16) {
                                    this.createdAt_ = codedInputStream.readInt64();
                                } else if (readTag == 24) {
                                    this.updatedAt_ = codedInputStream.readInt64();
                                } else if (readTag == 34) {
                                    this.pageUniqueId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 42) {
                                    this.title_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 48) {
                                    this.pageIndex_ = codedInputStream.readInt32();
                                } else if (readTag == 61) {
                                    this.orderIndex_ = codedInputStream.readFloat();
                                } else if (readTag == 66) {
                                    this.parentId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag != 72) {
                                    if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                    }
                                } else {
                                    this.status_ = codedInputStream.readInt32();
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
    public static final class TocList extends GeneratedMessageV3 implements TocListOrBuilder {
        private static final TocList DEFAULT_INSTANCE = new TocList();
        private static final Parser<TocList> PARSER = new C7785a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<Toc> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements TocListOrBuilder {

            /* renamed from: i */
            public int f45889i;

            /* renamed from: j */
            public List<Toc> f45890j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> f45891k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7786a c7786a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return TocProto.f45875a;
            }

            public Builder addAllProto(Iterable<? extends Toc> iterable) {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                if (repeatedFieldBuilderV3 == null) {
                    m35369h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45890j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(Toc toc) {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                if (repeatedFieldBuilderV3 == null) {
                    toc.getClass();
                    m35369h();
                    this.f45890j.add(toc);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(toc);
                }
                return this;
            }

            public Toc.Builder addProtoBuilder() {
                return m35370i().addBuilder(Toc.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45890j = Collections.emptyList();
                    this.f45889i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return TocProto.f45875a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocListOrBuilder
            public Toc getProto(int i) {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                return repeatedFieldBuilderV3 == null ? this.f45890j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public Toc.Builder getProtoBuilder(int i) {
                return m35370i().getBuilder(i);
            }

            public List<Toc.Builder> getProtoBuilderList() {
                return m35370i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                return repeatedFieldBuilderV3 == null ? this.f45890j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocListOrBuilder
            public List<Toc> getProtoList() {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45890j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocListOrBuilder
            public TocOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                return repeatedFieldBuilderV3 == null ? this.f45890j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocListOrBuilder
            public List<? extends TocOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45890j);
            }

            /* renamed from: h */
            public final void m35369h() {
                if ((this.f45889i & 1) != 1) {
                    this.f45890j = new ArrayList(this.f45890j);
                    this.f45889i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> m35370i() {
                if (this.f45891k == null) {
                    this.f45891k = new RepeatedFieldBuilderV3<>(this.f45890j, (this.f45889i & 1) == 1, getParentForChildren(), isClean());
                    this.f45890j = null;
                }
                return this.f45891k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return TocProto.f45876b.ensureFieldAccessorsInitialized(TocList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35371j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35370i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                if (repeatedFieldBuilderV3 == null) {
                    m35369h();
                    this.f45890j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, Toc toc) {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                if (repeatedFieldBuilderV3 == null) {
                    toc.getClass();
                    m35369h();
                    this.f45890j.set(i, toc);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, toc);
                }
                return this;
            }

            public /* synthetic */ Builder(C7786a c7786a) {
                this();
            }

            public Builder() {
                this.f45890j = Collections.emptyList();
                m35371j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TocList build() {
                TocList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TocList buildPartial() {
                TocList tocList = new TocList(this, (C7786a) null);
                int i = this.f45889i;
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45890j = Collections.unmodifiableList(this.f45890j);
                        this.f45889i &= -2;
                    }
                    tocList.proto_ = this.f45890j;
                } else {
                    tocList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return tocList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public TocList getDefaultInstanceForType() {
                return TocList.getDefaultInstance();
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

            public Toc.Builder addProtoBuilder(int i) {
                return m35370i().addBuilder(i, Toc.getDefaultInstance());
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
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45890j = Collections.emptyList();
                    this.f45889i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45890j = Collections.emptyList();
                m35371j();
            }

            public Builder addProto(int i, Toc toc) {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                if (repeatedFieldBuilderV3 == null) {
                    toc.getClass();
                    m35369h();
                    this.f45890j.add(i, toc);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, toc);
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
                if (message instanceof TocList) {
                    return mergeFrom((TocList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, Toc.Builder builder) {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                if (repeatedFieldBuilderV3 == null) {
                    m35369h();
                    this.f45890j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(TocList tocList) {
                if (tocList == TocList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45891k == null) {
                    if (!tocList.proto_.isEmpty()) {
                        if (this.f45890j.isEmpty()) {
                            this.f45890j = tocList.proto_;
                            this.f45889i &= -2;
                        } else {
                            m35369h();
                            this.f45890j.addAll(tocList.proto_);
                        }
                        onChanged();
                    }
                } else if (!tocList.proto_.isEmpty()) {
                    if (this.f45891k.isEmpty()) {
                        this.f45891k.dispose();
                        this.f45891k = null;
                        this.f45890j = tocList.proto_;
                        this.f45889i &= -2;
                        this.f45891k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35370i() : null;
                    } else {
                        this.f45891k.addAllMessages(tocList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) tocList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(Toc.Builder builder) {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                if (repeatedFieldBuilderV3 == null) {
                    m35369h();
                    this.f45890j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, Toc.Builder builder) {
                RepeatedFieldBuilderV3<Toc, Toc.Builder, TocOrBuilder> repeatedFieldBuilderV3 = this.f45891k;
                if (repeatedFieldBuilderV3 == null) {
                    m35369h();
                    this.f45890j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.TocProto.TocList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.TocProto.TocList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.TocProto$TocList r3 = (com.onyx.android.sdk.replicator.note.proto.TocProto.TocList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.TocProto$TocList r4 = (com.onyx.android.sdk.replicator.note.proto.TocProto.TocList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.TocProto.TocList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.TocProto$TocList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.TocProto$TocList$a */
        /* loaded from: classes8.dex */
        public class C7785a extends AbstractParser<TocList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public TocList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new TocList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ TocList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7786a c7786a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static TocList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return TocProto.f45875a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TocList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TocList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static TocList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<TocList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TocList)) {
                return super.equals(obj);
            }
            TocList tocList = (TocList) obj;
            return (getProtoList().equals(tocList.getProtoList())) && this.unknownFields.equals(tocList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<TocList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocListOrBuilder
        public Toc getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocListOrBuilder
        public List<Toc> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocListOrBuilder
        public TocOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TocProto.TocListOrBuilder
        public List<? extends TocOrBuilder> getProtoOrBuilderList() {
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
            return TocProto.f45876b.ensureFieldAccessorsInitialized(TocList.class, Builder.class);
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

        public /* synthetic */ TocList(GeneratedMessageV3.Builder builder, C7786a c7786a) {
            this(builder);
        }

        public static Builder newBuilder(TocList tocList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(tocList);
        }

        public static TocList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private TocList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TocList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TocList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static TocList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public TocList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7786a c7786a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7786a) : new Builder(c7786a).mergeFrom(this);
        }

        public static TocList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private TocList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static TocList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static TocList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static TocList parseFrom(InputStream inputStream) throws IOException {
            return (TocList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private TocList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.proto_.add((Toc) codedInputStream.readMessage(Toc.parser(), extensionRegistryLite));
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

        public static TocList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TocList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static TocList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (TocList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static TocList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TocList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface TocListOrBuilder extends MessageOrBuilder {
        Toc getProto(int i);

        int getProtoCount();

        List<Toc> getProtoList();

        TocOrBuilder getProtoOrBuilder(int i);

        List<? extends TocOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface TocOrBuilder extends MessageOrBuilder {
        long getCreatedAt();

        float getOrderIndex();

        int getPageIndex();

        String getPageUniqueId();

        ByteString getPageUniqueIdBytes();

        String getParentId();

        ByteString getParentIdBytes();

        int getStatus();

        String getTitle();

        ByteString getTitleBytes();

        long getUpdatedAt();

        String getUuid();

        ByteString getUuidBytes();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.TocProto$a */
    /* loaded from: classes8.dex */
    public class C7786a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = TocProto.f45879e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u000eTocProto.proto\"\u001e\n\u0007TocList\u0012\u0013\n\u0005proto\u0018\u0001 \u0003(\u000b2\u0004.Toc\"§\u0001\n\u0003Toc\u0012\f\n\u0004uuid\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\u0014\n\fpageUniqueId\u0018\u0004 \u0001(\t\u0012\r\n\u0005title\u0018\u0005 \u0001(\t\u0012\u0011\n\tpageIndex\u0018\u0006 \u0001(\u0005\u0012\u0012\n\norderIndex\u0018\u0007 \u0001(\u0002\u0012\u0010\n\bparentId\u0018\b \u0001(\t\u0012\u000e\n\u0006status\u0018\t \u0001(\u0005B,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7786a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45875a = descriptor;
        f45876b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45877c = descriptor2;
        f45878d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Uuid", "CreatedAt", "UpdatedAt", "PageUniqueId", "Title", "PageIndex", "OrderIndex", "ParentId", PersistedInstallation.f35952i});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45879e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
