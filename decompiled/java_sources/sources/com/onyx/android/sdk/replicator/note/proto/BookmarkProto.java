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
public final class BookmarkProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45526a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45527b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45528c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45529d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45530e;

    /* loaded from: classes8.dex */
    public static final class Bookmark extends GeneratedMessageV3 implements BookmarkOrBuilder {
        public static final int CREATEDAT_FIELD_NUMBER = 2;
        public static final int PAGEINDEX_FIELD_NUMBER = 7;
        public static final int PAGEUNIQUEID_FIELD_NUMBER = 6;
        public static final int QUOTE_FIELD_NUMBER = 5;
        public static final int STATUS_FIELD_NUMBER = 8;
        public static final int TITLE_FIELD_NUMBER = 4;
        public static final int UPDATEDAT_FIELD_NUMBER = 3;
        public static final int UUID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private long createdAt_;
        private byte memoizedIsInitialized;
        private int pageIndex_;
        private volatile Object pageUniqueId_;
        private volatile Object quote_;
        private int status_;
        private volatile Object title_;
        private long updatedAt_;
        private volatile Object uuid_;
        private static final Bookmark DEFAULT_INSTANCE = new Bookmark();
        private static final Parser<Bookmark> PARSER = new C7740a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements BookmarkOrBuilder {

            /* renamed from: i */
            public Object f45531i;

            /* renamed from: j */
            public long f45532j;

            /* renamed from: k */
            public long f45533k;

            /* renamed from: l */
            public Object f45534l;

            /* renamed from: m */
            public Object f45535m;

            /* renamed from: n */
            public Object f45536n;

            /* renamed from: o */
            public int f45537o;

            /* renamed from: p */
            public int f45538p;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7742a c7742a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BookmarkProto.f45528c;
            }

            public Builder clearCreatedAt() {
                this.f45532j = 0L;
                onChanged();
                return this;
            }

            public Builder clearPageIndex() {
                this.f45537o = 0;
                onChanged();
                return this;
            }

            public Builder clearPageUniqueId() {
                this.f45536n = Bookmark.getDefaultInstance().getPageUniqueId();
                onChanged();
                return this;
            }

            public Builder clearQuote() {
                this.f45535m = Bookmark.getDefaultInstance().getQuote();
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.f45538p = 0;
                onChanged();
                return this;
            }

            public Builder clearTitle() {
                this.f45534l = Bookmark.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45533k = 0L;
                onChanged();
                return this;
            }

            public Builder clearUuid() {
                this.f45531i = Bookmark.getDefaultInstance().getUuid();
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
            public long getCreatedAt() {
                return this.f45532j;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BookmarkProto.f45528c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
            public int getPageIndex() {
                return this.f45537o;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
            public String getPageUniqueId() {
                Object obj = this.f45536n;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45536n = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
            public ByteString getPageUniqueIdBytes() {
                Object obj = this.f45536n;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45536n = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
            public String getQuote() {
                Object obj = this.f45535m;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45535m = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
            public ByteString getQuoteBytes() {
                Object obj = this.f45535m;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45535m = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
            public int getStatus() {
                return this.f45538p;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
            public String getTitle() {
                Object obj = this.f45534l;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45534l = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
            public ByteString getTitleBytes() {
                Object obj = this.f45534l;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45534l = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
            public long getUpdatedAt() {
                return this.f45533k;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
            public String getUuid() {
                Object obj = this.f45531i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45531i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
            public ByteString getUuidBytes() {
                Object obj = this.f45531i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45531i = copyFromUtf8;
                return copyFromUtf8;
            }

            /* renamed from: h */
            public final void m35208h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return BookmarkProto.f45529d.ensureFieldAccessorsInitialized(Bookmark.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setCreatedAt(long j) {
                this.f45532j = j;
                onChanged();
                return this;
            }

            public Builder setPageIndex(int i) {
                this.f45537o = i;
                onChanged();
                return this;
            }

            public Builder setPageUniqueId(String str) {
                str.getClass();
                this.f45536n = str;
                onChanged();
                return this;
            }

            public Builder setPageUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45536n = byteString;
                onChanged();
                return this;
            }

            public Builder setQuote(String str) {
                str.getClass();
                this.f45535m = str;
                onChanged();
                return this;
            }

            public Builder setQuoteBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45535m = byteString;
                onChanged();
                return this;
            }

            public Builder setStatus(int i) {
                this.f45538p = i;
                onChanged();
                return this;
            }

            public Builder setTitle(String str) {
                str.getClass();
                this.f45534l = str;
                onChanged();
                return this;
            }

            public Builder setTitleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45534l = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45533k = j;
                onChanged();
                return this;
            }

            public Builder setUuid(String str) {
                str.getClass();
                this.f45531i = str;
                onChanged();
                return this;
            }

            public Builder setUuidBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45531i = byteString;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7742a c7742a) {
                this();
            }

            public Builder() {
                this.f45531i = "";
                this.f45534l = "";
                this.f45535m = "";
                this.f45536n = "";
                m35208h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Bookmark build() {
                Bookmark buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Bookmark buildPartial() {
                Bookmark bookmark = new Bookmark(this, (C7742a) null);
                bookmark.uuid_ = this.f45531i;
                bookmark.createdAt_ = this.f45532j;
                bookmark.updatedAt_ = this.f45533k;
                bookmark.title_ = this.f45534l;
                bookmark.quote_ = this.f45535m;
                bookmark.pageUniqueId_ = this.f45536n;
                bookmark.pageIndex_ = this.f45537o;
                bookmark.status_ = this.f45538p;
                onBuilt();
                return bookmark;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Bookmark getDefaultInstanceForType() {
                return Bookmark.getDefaultInstance();
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
                this.f45531i = "";
                this.f45532j = 0L;
                this.f45533k = 0L;
                this.f45534l = "";
                this.f45535m = "";
                this.f45536n = "";
                this.f45537o = 0;
                this.f45538p = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof Bookmark) {
                    return mergeFrom((Bookmark) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45531i = "";
                this.f45534l = "";
                this.f45535m = "";
                this.f45536n = "";
                m35208h();
            }

            public Builder mergeFrom(Bookmark bookmark) {
                if (bookmark == Bookmark.getDefaultInstance()) {
                    return this;
                }
                if (!bookmark.getUuid().isEmpty()) {
                    this.f45531i = bookmark.uuid_;
                    onChanged();
                }
                if (bookmark.getCreatedAt() != 0) {
                    setCreatedAt(bookmark.getCreatedAt());
                }
                if (bookmark.getUpdatedAt() != 0) {
                    setUpdatedAt(bookmark.getUpdatedAt());
                }
                if (!bookmark.getTitle().isEmpty()) {
                    this.f45534l = bookmark.title_;
                    onChanged();
                }
                if (!bookmark.getQuote().isEmpty()) {
                    this.f45535m = bookmark.quote_;
                    onChanged();
                }
                if (!bookmark.getPageUniqueId().isEmpty()) {
                    this.f45536n = bookmark.pageUniqueId_;
                    onChanged();
                }
                if (bookmark.getPageIndex() != 0) {
                    setPageIndex(bookmark.getPageIndex());
                }
                if (bookmark.getStatus() != 0) {
                    setStatus(bookmark.getStatus());
                }
                mergeUnknownFields(((GeneratedMessageV3) bookmark).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.BookmarkProto.Bookmark.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.BookmarkProto.Bookmark.access$2600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.BookmarkProto$Bookmark r3 = (com.onyx.android.sdk.replicator.note.proto.BookmarkProto.Bookmark) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.BookmarkProto$Bookmark r4 = (com.onyx.android.sdk.replicator.note.proto.BookmarkProto.Bookmark) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.BookmarkProto.Bookmark.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.BookmarkProto$Bookmark$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.BookmarkProto$Bookmark$a */
        /* loaded from: classes8.dex */
        public class C7740a extends AbstractParser<Bookmark> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public Bookmark parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Bookmark(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ Bookmark(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7742a c7742a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static Bookmark getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BookmarkProto.f45528c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Bookmark parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Bookmark) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Bookmark parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<Bookmark> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Bookmark)) {
                return super.equals(obj);
            }
            Bookmark bookmark = (Bookmark) obj;
            return ((((((((getUuid().equals(bookmark.getUuid())) && (getCreatedAt() > bookmark.getCreatedAt() ? 1 : (getCreatedAt() == bookmark.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > bookmark.getUpdatedAt() ? 1 : (getUpdatedAt() == bookmark.getUpdatedAt() ? 0 : -1)) == 0) && getTitle().equals(bookmark.getTitle())) && getQuote().equals(bookmark.getQuote())) && getPageUniqueId().equals(bookmark.getPageUniqueId())) && getPageIndex() == bookmark.getPageIndex()) && getStatus() == bookmark.getStatus()) && this.unknownFields.equals(bookmark.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
        public int getPageIndex() {
            return this.pageIndex_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
        public String getPageUniqueId() {
            Object obj = this.pageUniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pageUniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
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
        public Parser<Bookmark> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
        public String getQuote() {
            Object obj = this.quote_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.quote_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
        public ByteString getQuoteBytes() {
            Object obj = this.quote_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.quote_ = copyFromUtf8;
            return copyFromUtf8;
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
            if (!getTitleBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(4, this.title_);
            }
            if (!getQuoteBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.quote_);
            }
            if (!getPageUniqueIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(6, this.pageUniqueId_);
            }
            int i2 = this.pageIndex_;
            if (i2 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(7, i2);
            }
            int i3 = this.status_;
            if (i3 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(8, i3);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
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

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
        public String getUuid() {
            Object obj = this.uuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uuid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkOrBuilder
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
            int hashCode = ((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUuid().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 3) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 4) * 53) + getTitle().hashCode()) * 37) + 5) * 53) + getQuote().hashCode()) * 37) + 6) * 53) + getPageUniqueId().hashCode()) * 37) + 7) * 53) + getPageIndex()) * 37) + 8) * 53) + getStatus()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return BookmarkProto.f45529d.ensureFieldAccessorsInitialized(Bookmark.class, Builder.class);
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
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.title_);
            }
            if (!getQuoteBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.quote_);
            }
            if (!getPageUniqueIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.pageUniqueId_);
            }
            int i = this.pageIndex_;
            if (i != 0) {
                codedOutputStream.writeInt32(7, i);
            }
            int i2 = this.status_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(8, i2);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ Bookmark(GeneratedMessageV3.Builder builder, C7742a c7742a) {
            this(builder);
        }

        public static Builder newBuilder(Bookmark bookmark) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(bookmark);
        }

        public static Bookmark parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private Bookmark(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Bookmark parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Bookmark) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Bookmark parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Bookmark getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7742a c7742a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7742a) : new Builder(c7742a).mergeFrom(this);
        }

        public static Bookmark parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Bookmark() {
            this.memoizedIsInitialized = (byte) -1;
            this.uuid_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.title_ = "";
            this.quote_ = "";
            this.pageUniqueId_ = "";
            this.pageIndex_ = 0;
            this.status_ = 0;
        }

        public static Bookmark parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static Bookmark parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Bookmark parseFrom(InputStream inputStream) throws IOException {
            return (Bookmark) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Bookmark parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Bookmark) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Bookmark parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Bookmark) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Bookmark parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Bookmark) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        private Bookmark(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.uuid_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 16) {
                                this.createdAt_ = codedInputStream.readInt64();
                            } else if (readTag == 24) {
                                this.updatedAt_ = codedInputStream.readInt64();
                            } else if (readTag == 34) {
                                this.title_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 42) {
                                this.quote_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 50) {
                                this.pageUniqueId_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 56) {
                                this.pageIndex_ = codedInputStream.readInt32();
                            } else if (readTag != 64) {
                                if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            } else {
                                this.status_ = codedInputStream.readInt32();
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
    public static final class BookmarkList extends GeneratedMessageV3 implements BookmarkListOrBuilder {
        private static final BookmarkList DEFAULT_INSTANCE = new BookmarkList();
        private static final Parser<BookmarkList> PARSER = new C7741a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<Bookmark> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements BookmarkListOrBuilder {

            /* renamed from: i */
            public int f45539i;

            /* renamed from: j */
            public List<Bookmark> f45540j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> f45541k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7742a c7742a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BookmarkProto.f45526a;
            }

            public Builder addAllProto(Iterable<? extends Bookmark> iterable) {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                if (repeatedFieldBuilderV3 == null) {
                    m35210h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45540j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(Bookmark bookmark) {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                if (repeatedFieldBuilderV3 == null) {
                    bookmark.getClass();
                    m35210h();
                    this.f45540j.add(bookmark);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(bookmark);
                }
                return this;
            }

            public Bookmark.Builder addProtoBuilder() {
                return m35211i().addBuilder(Bookmark.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45540j = Collections.emptyList();
                    this.f45539i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BookmarkProto.f45526a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkListOrBuilder
            public Bookmark getProto(int i) {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                return repeatedFieldBuilderV3 == null ? this.f45540j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public Bookmark.Builder getProtoBuilder(int i) {
                return m35211i().getBuilder(i);
            }

            public List<Bookmark.Builder> getProtoBuilderList() {
                return m35211i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                return repeatedFieldBuilderV3 == null ? this.f45540j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkListOrBuilder
            public List<Bookmark> getProtoList() {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45540j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkListOrBuilder
            public BookmarkOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                return repeatedFieldBuilderV3 == null ? this.f45540j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkListOrBuilder
            public List<? extends BookmarkOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45540j);
            }

            /* renamed from: h */
            public final void m35210h() {
                if ((this.f45539i & 1) != 1) {
                    this.f45540j = new ArrayList(this.f45540j);
                    this.f45539i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> m35211i() {
                if (this.f45541k == null) {
                    this.f45541k = new RepeatedFieldBuilderV3<>(this.f45540j, (this.f45539i & 1) == 1, getParentForChildren(), isClean());
                    this.f45540j = null;
                }
                return this.f45541k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return BookmarkProto.f45527b.ensureFieldAccessorsInitialized(BookmarkList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35212j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35211i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                if (repeatedFieldBuilderV3 == null) {
                    m35210h();
                    this.f45540j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, Bookmark bookmark) {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                if (repeatedFieldBuilderV3 == null) {
                    bookmark.getClass();
                    m35210h();
                    this.f45540j.set(i, bookmark);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, bookmark);
                }
                return this;
            }

            public /* synthetic */ Builder(C7742a c7742a) {
                this();
            }

            public Builder() {
                this.f45540j = Collections.emptyList();
                m35212j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BookmarkList build() {
                BookmarkList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BookmarkList buildPartial() {
                BookmarkList bookmarkList = new BookmarkList(this, (C7742a) null);
                int i = this.f45539i;
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45540j = Collections.unmodifiableList(this.f45540j);
                        this.f45539i &= -2;
                    }
                    bookmarkList.proto_ = this.f45540j;
                } else {
                    bookmarkList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return bookmarkList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public BookmarkList getDefaultInstanceForType() {
                return BookmarkList.getDefaultInstance();
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

            public Bookmark.Builder addProtoBuilder(int i) {
                return m35211i().addBuilder(i, Bookmark.getDefaultInstance());
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
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45540j = Collections.emptyList();
                    this.f45539i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45540j = Collections.emptyList();
                m35212j();
            }

            public Builder addProto(int i, Bookmark bookmark) {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                if (repeatedFieldBuilderV3 == null) {
                    bookmark.getClass();
                    m35210h();
                    this.f45540j.add(i, bookmark);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, bookmark);
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
                if (message instanceof BookmarkList) {
                    return mergeFrom((BookmarkList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, Bookmark.Builder builder) {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                if (repeatedFieldBuilderV3 == null) {
                    m35210h();
                    this.f45540j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(BookmarkList bookmarkList) {
                if (bookmarkList == BookmarkList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45541k == null) {
                    if (!bookmarkList.proto_.isEmpty()) {
                        if (this.f45540j.isEmpty()) {
                            this.f45540j = bookmarkList.proto_;
                            this.f45539i &= -2;
                        } else {
                            m35210h();
                            this.f45540j.addAll(bookmarkList.proto_);
                        }
                        onChanged();
                    }
                } else if (!bookmarkList.proto_.isEmpty()) {
                    if (this.f45541k.isEmpty()) {
                        this.f45541k.dispose();
                        this.f45541k = null;
                        this.f45540j = bookmarkList.proto_;
                        this.f45539i &= -2;
                        this.f45541k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35211i() : null;
                    } else {
                        this.f45541k.addAllMessages(bookmarkList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) bookmarkList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(Bookmark.Builder builder) {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                if (repeatedFieldBuilderV3 == null) {
                    m35210h();
                    this.f45540j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, Bookmark.Builder builder) {
                RepeatedFieldBuilderV3<Bookmark, Bookmark.Builder, BookmarkOrBuilder> repeatedFieldBuilderV3 = this.f45541k;
                if (repeatedFieldBuilderV3 == null) {
                    m35210h();
                    this.f45540j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.BookmarkProto$BookmarkList r3 = (com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.BookmarkProto$BookmarkList r4 = (com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.BookmarkProto$BookmarkList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.BookmarkProto$BookmarkList$a */
        /* loaded from: classes8.dex */
        public class C7741a extends AbstractParser<BookmarkList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public BookmarkList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new BookmarkList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ BookmarkList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7742a c7742a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static BookmarkList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BookmarkProto.f45526a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static BookmarkList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (BookmarkList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static BookmarkList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<BookmarkList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof BookmarkList)) {
                return super.equals(obj);
            }
            BookmarkList bookmarkList = (BookmarkList) obj;
            return (getProtoList().equals(bookmarkList.getProtoList())) && this.unknownFields.equals(bookmarkList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<BookmarkList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkListOrBuilder
        public Bookmark getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkListOrBuilder
        public List<Bookmark> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkListOrBuilder
        public BookmarkOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.BookmarkProto.BookmarkListOrBuilder
        public List<? extends BookmarkOrBuilder> getProtoOrBuilderList() {
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
            return BookmarkProto.f45527b.ensureFieldAccessorsInitialized(BookmarkList.class, Builder.class);
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

        public /* synthetic */ BookmarkList(GeneratedMessageV3.Builder builder, C7742a c7742a) {
            this(builder);
        }

        public static Builder newBuilder(BookmarkList bookmarkList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(bookmarkList);
        }

        public static BookmarkList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private BookmarkList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static BookmarkList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BookmarkList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static BookmarkList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public BookmarkList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7742a c7742a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7742a) : new Builder(c7742a).mergeFrom(this);
        }

        public static BookmarkList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private BookmarkList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static BookmarkList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static BookmarkList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static BookmarkList parseFrom(InputStream inputStream) throws IOException {
            return (BookmarkList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private BookmarkList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.proto_.add((Bookmark) codedInputStream.readMessage(Bookmark.parser(), extensionRegistryLite));
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

        public static BookmarkList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BookmarkList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static BookmarkList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (BookmarkList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static BookmarkList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BookmarkList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface BookmarkListOrBuilder extends MessageOrBuilder {
        Bookmark getProto(int i);

        int getProtoCount();

        List<Bookmark> getProtoList();

        BookmarkOrBuilder getProtoOrBuilder(int i);

        List<? extends BookmarkOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface BookmarkOrBuilder extends MessageOrBuilder {
        long getCreatedAt();

        int getPageIndex();

        String getPageUniqueId();

        ByteString getPageUniqueIdBytes();

        String getQuote();

        ByteString getQuoteBytes();

        int getStatus();

        String getTitle();

        ByteString getTitleBytes();

        long getUpdatedAt();

        String getUuid();

        ByteString getUuidBytes();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.BookmarkProto$a */
    /* loaded from: classes8.dex */
    public class C7742a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = BookmarkProto.f45530e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0013BookmarkProto.proto\"(\n\fBookmarkList\u0012\u0018\n\u0005proto\u0018\u0001 \u0003(\u000b2\t.Bookmark\"\u0095\u0001\n\bBookmark\u0012\f\n\u0004uuid\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\r\n\u0005title\u0018\u0004 \u0001(\t\u0012\r\n\u0005quote\u0018\u0005 \u0001(\t\u0012\u0014\n\fpageUniqueId\u0018\u0006 \u0001(\t\u0012\u0011\n\tpageIndex\u0018\u0007 \u0001(\u0005\u0012\u000e\n\u0006status\u0018\b \u0001(\u0005B,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7742a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45526a = descriptor;
        f45527b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45528c = descriptor2;
        f45529d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Uuid", "CreatedAt", "UpdatedAt", "Title", "Quote", "PageUniqueId", "PageIndex", PersistedInstallation.f35952i});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45530e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
