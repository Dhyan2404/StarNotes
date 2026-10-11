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
public final class ExcerptCollectionProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45563a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45564b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45565c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45566d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45567e;

    /* loaded from: classes8.dex */
    public static final class ExcerptCollection extends GeneratedMessageV3 implements ExcerptCollectionOrBuilder {
        public static final int CREATEDAT_FIELD_NUMBER = 2;
        private static final ExcerptCollection DEFAULT_INSTANCE = new ExcerptCollection();
        private static final Parser<ExcerptCollection> PARSER = new C7746a();
        public static final int QUOTEDOCID_FIELD_NUMBER = 8;
        public static final int QUOTESHAPEID_FIELD_NUMBER = 9;
        public static final int SOURCEDOCID_FIELD_NUMBER = 5;
        public static final int SOURCEEXCERPTID_FIELD_NUMBER = 7;
        public static final int SOURCESHAPEID_FIELD_NUMBER = 6;
        public static final int STATUS_FIELD_NUMBER = 4;
        public static final int UPDATEDAT_FIELD_NUMBER = 3;
        public static final int UUID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private long createdAt_;
        private byte memoizedIsInitialized;
        private volatile Object quoteDocId_;
        private volatile Object quoteShapeId_;
        private volatile Object sourceDocId_;
        private volatile Object sourceExcerptId_;
        private volatile Object sourceShapeId_;
        private int status_;
        private long updatedAt_;
        private volatile Object uuid_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ExcerptCollectionOrBuilder {

            /* renamed from: i */
            public Object f45568i;

            /* renamed from: j */
            public long f45569j;

            /* renamed from: k */
            public long f45570k;

            /* renamed from: l */
            public int f45571l;

            /* renamed from: m */
            public Object f45572m;

            /* renamed from: n */
            public Object f45573n;

            /* renamed from: o */
            public Object f45574o;

            /* renamed from: p */
            public Object f45575p;

            /* renamed from: q */
            public Object f45576q;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7748a c7748a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ExcerptCollectionProto.f45565c;
            }

            public Builder clearCreatedAt() {
                this.f45569j = 0L;
                onChanged();
                return this;
            }

            public Builder clearQuoteDocId() {
                this.f45575p = ExcerptCollection.getDefaultInstance().getQuoteDocId();
                onChanged();
                return this;
            }

            public Builder clearQuoteShapeId() {
                this.f45576q = ExcerptCollection.getDefaultInstance().getQuoteShapeId();
                onChanged();
                return this;
            }

            public Builder clearSourceDocId() {
                this.f45572m = ExcerptCollection.getDefaultInstance().getSourceDocId();
                onChanged();
                return this;
            }

            public Builder clearSourceExcerptId() {
                this.f45574o = ExcerptCollection.getDefaultInstance().getSourceExcerptId();
                onChanged();
                return this;
            }

            public Builder clearSourceShapeId() {
                this.f45573n = ExcerptCollection.getDefaultInstance().getSourceShapeId();
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.f45571l = 0;
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45570k = 0L;
                onChanged();
                return this;
            }

            public Builder clearUuid() {
                this.f45568i = ExcerptCollection.getDefaultInstance().getUuid();
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public long getCreatedAt() {
                return this.f45569j;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ExcerptCollectionProto.f45565c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public String getQuoteDocId() {
                Object obj = this.f45575p;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45575p = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public ByteString getQuoteDocIdBytes() {
                Object obj = this.f45575p;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45575p = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public String getQuoteShapeId() {
                Object obj = this.f45576q;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45576q = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public ByteString getQuoteShapeIdBytes() {
                Object obj = this.f45576q;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45576q = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public String getSourceDocId() {
                Object obj = this.f45572m;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45572m = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public ByteString getSourceDocIdBytes() {
                Object obj = this.f45572m;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45572m = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public String getSourceExcerptId() {
                Object obj = this.f45574o;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45574o = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public ByteString getSourceExcerptIdBytes() {
                Object obj = this.f45574o;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45574o = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public String getSourceShapeId() {
                Object obj = this.f45573n;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45573n = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public ByteString getSourceShapeIdBytes() {
                Object obj = this.f45573n;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45573n = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public int getStatus() {
                return this.f45571l;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public long getUpdatedAt() {
                return this.f45570k;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public String getUuid() {
                Object obj = this.f45568i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45568i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
            public ByteString getUuidBytes() {
                Object obj = this.f45568i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45568i = copyFromUtf8;
                return copyFromUtf8;
            }

            /* renamed from: h */
            public final void m35230h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ExcerptCollectionProto.f45566d.ensureFieldAccessorsInitialized(ExcerptCollection.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setCreatedAt(long j) {
                this.f45569j = j;
                onChanged();
                return this;
            }

            public Builder setQuoteDocId(String str) {
                str.getClass();
                this.f45575p = str;
                onChanged();
                return this;
            }

            public Builder setQuoteDocIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45575p = byteString;
                onChanged();
                return this;
            }

            public Builder setQuoteShapeId(String str) {
                str.getClass();
                this.f45576q = str;
                onChanged();
                return this;
            }

            public Builder setQuoteShapeIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45576q = byteString;
                onChanged();
                return this;
            }

            public Builder setSourceDocId(String str) {
                str.getClass();
                this.f45572m = str;
                onChanged();
                return this;
            }

            public Builder setSourceDocIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45572m = byteString;
                onChanged();
                return this;
            }

            public Builder setSourceExcerptId(String str) {
                str.getClass();
                this.f45574o = str;
                onChanged();
                return this;
            }

            public Builder setSourceExcerptIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45574o = byteString;
                onChanged();
                return this;
            }

            public Builder setSourceShapeId(String str) {
                str.getClass();
                this.f45573n = str;
                onChanged();
                return this;
            }

            public Builder setSourceShapeIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45573n = byteString;
                onChanged();
                return this;
            }

            public Builder setStatus(int i) {
                this.f45571l = i;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45570k = j;
                onChanged();
                return this;
            }

            public Builder setUuid(String str) {
                str.getClass();
                this.f45568i = str;
                onChanged();
                return this;
            }

            public Builder setUuidBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45568i = byteString;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7748a c7748a) {
                this();
            }

            public Builder() {
                this.f45568i = "";
                this.f45572m = "";
                this.f45573n = "";
                this.f45574o = "";
                this.f45575p = "";
                this.f45576q = "";
                m35230h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ExcerptCollection build() {
                ExcerptCollection buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ExcerptCollection buildPartial() {
                ExcerptCollection excerptCollection = new ExcerptCollection(this, (C7748a) null);
                excerptCollection.uuid_ = this.f45568i;
                excerptCollection.createdAt_ = this.f45569j;
                excerptCollection.updatedAt_ = this.f45570k;
                excerptCollection.status_ = this.f45571l;
                excerptCollection.sourceDocId_ = this.f45572m;
                excerptCollection.sourceShapeId_ = this.f45573n;
                excerptCollection.sourceExcerptId_ = this.f45574o;
                excerptCollection.quoteDocId_ = this.f45575p;
                excerptCollection.quoteShapeId_ = this.f45576q;
                onBuilt();
                return excerptCollection;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ExcerptCollection getDefaultInstanceForType() {
                return ExcerptCollection.getDefaultInstance();
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
                this.f45568i = "";
                this.f45569j = 0L;
                this.f45570k = 0L;
                this.f45571l = 0;
                this.f45572m = "";
                this.f45573n = "";
                this.f45574o = "";
                this.f45575p = "";
                this.f45576q = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ExcerptCollection) {
                    return mergeFrom((ExcerptCollection) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ExcerptCollection excerptCollection) {
                if (excerptCollection == ExcerptCollection.getDefaultInstance()) {
                    return this;
                }
                if (!excerptCollection.getUuid().isEmpty()) {
                    this.f45568i = excerptCollection.uuid_;
                    onChanged();
                }
                if (excerptCollection.getCreatedAt() != 0) {
                    setCreatedAt(excerptCollection.getCreatedAt());
                }
                if (excerptCollection.getUpdatedAt() != 0) {
                    setUpdatedAt(excerptCollection.getUpdatedAt());
                }
                if (excerptCollection.getStatus() != 0) {
                    setStatus(excerptCollection.getStatus());
                }
                if (!excerptCollection.getSourceDocId().isEmpty()) {
                    this.f45572m = excerptCollection.sourceDocId_;
                    onChanged();
                }
                if (!excerptCollection.getSourceShapeId().isEmpty()) {
                    this.f45573n = excerptCollection.sourceShapeId_;
                    onChanged();
                }
                if (!excerptCollection.getSourceExcerptId().isEmpty()) {
                    this.f45574o = excerptCollection.sourceExcerptId_;
                    onChanged();
                }
                if (!excerptCollection.getQuoteDocId().isEmpty()) {
                    this.f45575p = excerptCollection.quoteDocId_;
                    onChanged();
                }
                if (!excerptCollection.getQuoteShapeId().isEmpty()) {
                    this.f45576q = excerptCollection.quoteShapeId_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) excerptCollection).unknownFields);
                onChanged();
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45568i = "";
                this.f45572m = "";
                this.f45573n = "";
                this.f45574o = "";
                this.f45575p = "";
                this.f45576q = "";
                m35230h();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollection.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollection.access$2700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto$ExcerptCollection r3 = (com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollection) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto$ExcerptCollection r4 = (com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollection) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollection.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto$ExcerptCollection$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto$ExcerptCollection$a */
        /* loaded from: classes8.dex */
        public class C7746a extends AbstractParser<ExcerptCollection> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public ExcerptCollection parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ExcerptCollection(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ ExcerptCollection(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7748a c7748a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ExcerptCollection getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ExcerptCollectionProto.f45565c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ExcerptCollection parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ExcerptCollection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ExcerptCollection parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ExcerptCollection> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ExcerptCollection)) {
                return super.equals(obj);
            }
            ExcerptCollection excerptCollection = (ExcerptCollection) obj;
            return (((((((((getUuid().equals(excerptCollection.getUuid())) && (getCreatedAt() > excerptCollection.getCreatedAt() ? 1 : (getCreatedAt() == excerptCollection.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > excerptCollection.getUpdatedAt() ? 1 : (getUpdatedAt() == excerptCollection.getUpdatedAt() ? 0 : -1)) == 0) && getStatus() == excerptCollection.getStatus()) && getSourceDocId().equals(excerptCollection.getSourceDocId())) && getSourceShapeId().equals(excerptCollection.getSourceShapeId())) && getSourceExcerptId().equals(excerptCollection.getSourceExcerptId())) && getQuoteDocId().equals(excerptCollection.getQuoteDocId())) && getQuoteShapeId().equals(excerptCollection.getQuoteShapeId())) && this.unknownFields.equals(excerptCollection.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ExcerptCollection> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public String getQuoteDocId() {
            Object obj = this.quoteDocId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.quoteDocId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public ByteString getQuoteDocIdBytes() {
            Object obj = this.quoteDocId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.quoteDocId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public String getQuoteShapeId() {
            Object obj = this.quoteShapeId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.quoteShapeId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public ByteString getQuoteShapeIdBytes() {
            Object obj = this.quoteShapeId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.quoteShapeId_ = copyFromUtf8;
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
            int i2 = this.status_;
            if (i2 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(4, i2);
            }
            if (!getSourceDocIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.sourceDocId_);
            }
            if (!getSourceShapeIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(6, this.sourceShapeId_);
            }
            if (!getSourceExcerptIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(7, this.sourceExcerptId_);
            }
            if (!getQuoteDocIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(8, this.quoteDocId_);
            }
            if (!getQuoteShapeIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(9, this.quoteShapeId_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public String getSourceDocId() {
            Object obj = this.sourceDocId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sourceDocId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public ByteString getSourceDocIdBytes() {
            Object obj = this.sourceDocId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sourceDocId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public String getSourceExcerptId() {
            Object obj = this.sourceExcerptId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sourceExcerptId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public ByteString getSourceExcerptIdBytes() {
            Object obj = this.sourceExcerptId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sourceExcerptId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public String getSourceShapeId() {
            Object obj = this.sourceShapeId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sourceShapeId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public ByteString getSourceShapeIdBytes() {
            Object obj = this.sourceShapeId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sourceShapeId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
        public String getUuid() {
            Object obj = this.uuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uuid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionOrBuilder
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
            int hashCode = ((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUuid().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 3) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 4) * 53) + getStatus()) * 37) + 5) * 53) + getSourceDocId().hashCode()) * 37) + 6) * 53) + getSourceShapeId().hashCode()) * 37) + 7) * 53) + getSourceExcerptId().hashCode()) * 37) + 8) * 53) + getQuoteDocId().hashCode()) * 37) + 9) * 53) + getQuoteShapeId().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ExcerptCollectionProto.f45566d.ensureFieldAccessorsInitialized(ExcerptCollection.class, Builder.class);
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
            int i = this.status_;
            if (i != 0) {
                codedOutputStream.writeInt32(4, i);
            }
            if (!getSourceDocIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.sourceDocId_);
            }
            if (!getSourceShapeIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.sourceShapeId_);
            }
            if (!getSourceExcerptIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.sourceExcerptId_);
            }
            if (!getQuoteDocIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.quoteDocId_);
            }
            if (!getQuoteShapeIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.quoteShapeId_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ ExcerptCollection(GeneratedMessageV3.Builder builder, C7748a c7748a) {
            this(builder);
        }

        public static Builder newBuilder(ExcerptCollection excerptCollection) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(excerptCollection);
        }

        public static ExcerptCollection parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private ExcerptCollection(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ExcerptCollection parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExcerptCollection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ExcerptCollection parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ExcerptCollection getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7748a c7748a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7748a) : new Builder(c7748a).mergeFrom(this);
        }

        public static ExcerptCollection parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ExcerptCollection() {
            this.memoizedIsInitialized = (byte) -1;
            this.uuid_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.status_ = 0;
            this.sourceDocId_ = "";
            this.sourceShapeId_ = "";
            this.sourceExcerptId_ = "";
            this.quoteDocId_ = "";
            this.quoteShapeId_ = "";
        }

        public static ExcerptCollection parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ExcerptCollection parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ExcerptCollection parseFrom(InputStream inputStream) throws IOException {
            return (ExcerptCollection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ExcerptCollection parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExcerptCollection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ExcerptCollection parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ExcerptCollection) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ExcerptCollection parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExcerptCollection) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        private ExcerptCollection(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                } else if (readTag == 32) {
                                    this.status_ = codedInputStream.readInt32();
                                } else if (readTag == 42) {
                                    this.sourceDocId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 50) {
                                    this.sourceShapeId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 58) {
                                    this.sourceExcerptId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 66) {
                                    this.quoteDocId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag != 74) {
                                    if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                    }
                                } else {
                                    this.quoteShapeId_ = codedInputStream.readStringRequireUtf8();
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
    public static final class ExcerptCollectionList extends GeneratedMessageV3 implements ExcerptCollectionListOrBuilder {
        private static final ExcerptCollectionList DEFAULT_INSTANCE = new ExcerptCollectionList();
        private static final Parser<ExcerptCollectionList> PARSER = new C7747a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<ExcerptCollection> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ExcerptCollectionListOrBuilder {

            /* renamed from: i */
            public int f45577i;

            /* renamed from: j */
            public List<ExcerptCollection> f45578j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> f45579k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7748a c7748a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ExcerptCollectionProto.f45563a;
            }

            public Builder addAllProto(Iterable<? extends ExcerptCollection> iterable) {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                if (repeatedFieldBuilderV3 == null) {
                    m35232h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45578j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(ExcerptCollection excerptCollection) {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                if (repeatedFieldBuilderV3 == null) {
                    excerptCollection.getClass();
                    m35232h();
                    this.f45578j.add(excerptCollection);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(excerptCollection);
                }
                return this;
            }

            public ExcerptCollection.Builder addProtoBuilder() {
                return m35233i().addBuilder(ExcerptCollection.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45578j = Collections.emptyList();
                    this.f45577i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ExcerptCollectionProto.f45563a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionListOrBuilder
            public ExcerptCollection getProto(int i) {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                return repeatedFieldBuilderV3 == null ? this.f45578j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public ExcerptCollection.Builder getProtoBuilder(int i) {
                return m35233i().getBuilder(i);
            }

            public List<ExcerptCollection.Builder> getProtoBuilderList() {
                return m35233i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                return repeatedFieldBuilderV3 == null ? this.f45578j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionListOrBuilder
            public List<ExcerptCollection> getProtoList() {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45578j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionListOrBuilder
            public ExcerptCollectionOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                return repeatedFieldBuilderV3 == null ? this.f45578j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionListOrBuilder
            public List<? extends ExcerptCollectionOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45578j);
            }

            /* renamed from: h */
            public final void m35232h() {
                if ((this.f45577i & 1) != 1) {
                    this.f45578j = new ArrayList(this.f45578j);
                    this.f45577i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> m35233i() {
                if (this.f45579k == null) {
                    this.f45579k = new RepeatedFieldBuilderV3<>(this.f45578j, (this.f45577i & 1) == 1, getParentForChildren(), isClean());
                    this.f45578j = null;
                }
                return this.f45579k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ExcerptCollectionProto.f45564b.ensureFieldAccessorsInitialized(ExcerptCollectionList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35234j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35233i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                if (repeatedFieldBuilderV3 == null) {
                    m35232h();
                    this.f45578j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, ExcerptCollection excerptCollection) {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                if (repeatedFieldBuilderV3 == null) {
                    excerptCollection.getClass();
                    m35232h();
                    this.f45578j.set(i, excerptCollection);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, excerptCollection);
                }
                return this;
            }

            public /* synthetic */ Builder(C7748a c7748a) {
                this();
            }

            public Builder() {
                this.f45578j = Collections.emptyList();
                m35234j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ExcerptCollectionList build() {
                ExcerptCollectionList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ExcerptCollectionList buildPartial() {
                ExcerptCollectionList excerptCollectionList = new ExcerptCollectionList(this, (C7748a) null);
                int i = this.f45577i;
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45578j = Collections.unmodifiableList(this.f45578j);
                        this.f45577i &= -2;
                    }
                    excerptCollectionList.proto_ = this.f45578j;
                } else {
                    excerptCollectionList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return excerptCollectionList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ExcerptCollectionList getDefaultInstanceForType() {
                return ExcerptCollectionList.getDefaultInstance();
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

            public ExcerptCollection.Builder addProtoBuilder(int i) {
                return m35233i().addBuilder(i, ExcerptCollection.getDefaultInstance());
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
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45578j = Collections.emptyList();
                    this.f45577i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45578j = Collections.emptyList();
                m35234j();
            }

            public Builder addProto(int i, ExcerptCollection excerptCollection) {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                if (repeatedFieldBuilderV3 == null) {
                    excerptCollection.getClass();
                    m35232h();
                    this.f45578j.add(i, excerptCollection);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, excerptCollection);
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
                if (message instanceof ExcerptCollectionList) {
                    return mergeFrom((ExcerptCollectionList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, ExcerptCollection.Builder builder) {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                if (repeatedFieldBuilderV3 == null) {
                    m35232h();
                    this.f45578j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(ExcerptCollectionList excerptCollectionList) {
                if (excerptCollectionList == ExcerptCollectionList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45579k == null) {
                    if (!excerptCollectionList.proto_.isEmpty()) {
                        if (this.f45578j.isEmpty()) {
                            this.f45578j = excerptCollectionList.proto_;
                            this.f45577i &= -2;
                        } else {
                            m35232h();
                            this.f45578j.addAll(excerptCollectionList.proto_);
                        }
                        onChanged();
                    }
                } else if (!excerptCollectionList.proto_.isEmpty()) {
                    if (this.f45579k.isEmpty()) {
                        this.f45579k.dispose();
                        this.f45579k = null;
                        this.f45578j = excerptCollectionList.proto_;
                        this.f45577i &= -2;
                        this.f45579k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35233i() : null;
                    } else {
                        this.f45579k.addAllMessages(excerptCollectionList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) excerptCollectionList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(ExcerptCollection.Builder builder) {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                if (repeatedFieldBuilderV3 == null) {
                    m35232h();
                    this.f45578j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, ExcerptCollection.Builder builder) {
                RepeatedFieldBuilderV3<ExcerptCollection, ExcerptCollection.Builder, ExcerptCollectionOrBuilder> repeatedFieldBuilderV3 = this.f45579k;
                if (repeatedFieldBuilderV3 == null) {
                    m35232h();
                    this.f45578j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto$ExcerptCollectionList r3 = (com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto$ExcerptCollectionList r4 = (com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto$ExcerptCollectionList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto$ExcerptCollectionList$a */
        /* loaded from: classes8.dex */
        public class C7747a extends AbstractParser<ExcerptCollectionList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public ExcerptCollectionList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ExcerptCollectionList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ ExcerptCollectionList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7748a c7748a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ExcerptCollectionList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ExcerptCollectionProto.f45563a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ExcerptCollectionList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ExcerptCollectionList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ExcerptCollectionList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ExcerptCollectionList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ExcerptCollectionList)) {
                return super.equals(obj);
            }
            ExcerptCollectionList excerptCollectionList = (ExcerptCollectionList) obj;
            return (getProtoList().equals(excerptCollectionList.getProtoList())) && this.unknownFields.equals(excerptCollectionList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ExcerptCollectionList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionListOrBuilder
        public ExcerptCollection getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionListOrBuilder
        public List<ExcerptCollection> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionListOrBuilder
        public ExcerptCollectionOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto.ExcerptCollectionListOrBuilder
        public List<? extends ExcerptCollectionOrBuilder> getProtoOrBuilderList() {
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
            return ExcerptCollectionProto.f45564b.ensureFieldAccessorsInitialized(ExcerptCollectionList.class, Builder.class);
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

        public /* synthetic */ ExcerptCollectionList(GeneratedMessageV3.Builder builder, C7748a c7748a) {
            this(builder);
        }

        public static Builder newBuilder(ExcerptCollectionList excerptCollectionList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(excerptCollectionList);
        }

        public static ExcerptCollectionList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private ExcerptCollectionList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ExcerptCollectionList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExcerptCollectionList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ExcerptCollectionList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ExcerptCollectionList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7748a c7748a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7748a) : new Builder(c7748a).mergeFrom(this);
        }

        public static ExcerptCollectionList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ExcerptCollectionList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static ExcerptCollectionList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ExcerptCollectionList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ExcerptCollectionList parseFrom(InputStream inputStream) throws IOException {
            return (ExcerptCollectionList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ExcerptCollectionList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.proto_.add((ExcerptCollection) codedInputStream.readMessage(ExcerptCollection.parser(), extensionRegistryLite));
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

        public static ExcerptCollectionList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExcerptCollectionList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ExcerptCollectionList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ExcerptCollectionList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ExcerptCollectionList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExcerptCollectionList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface ExcerptCollectionListOrBuilder extends MessageOrBuilder {
        ExcerptCollection getProto(int i);

        int getProtoCount();

        List<ExcerptCollection> getProtoList();

        ExcerptCollectionOrBuilder getProtoOrBuilder(int i);

        List<? extends ExcerptCollectionOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface ExcerptCollectionOrBuilder extends MessageOrBuilder {
        long getCreatedAt();

        String getQuoteDocId();

        ByteString getQuoteDocIdBytes();

        String getQuoteShapeId();

        ByteString getQuoteShapeIdBytes();

        String getSourceDocId();

        ByteString getSourceDocIdBytes();

        String getSourceExcerptId();

        ByteString getSourceExcerptIdBytes();

        String getSourceShapeId();

        ByteString getSourceShapeIdBytes();

        int getStatus();

        long getUpdatedAt();

        String getUuid();

        ByteString getUuidBytes();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.ExcerptCollectionProto$a */
    /* loaded from: classes8.dex */
    public class C7748a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = ExcerptCollectionProto.f45567e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u001cExcerptCollectionProto.proto\":\n\u0015ExcerptCollectionList\u0012!\n\u0005proto\u0018\u0001 \u0003(\u000b2\u0012.ExcerptCollection\"Æ\u0001\n\u0011ExcerptCollection\u0012\f\n\u0004uuid\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\u000e\n\u0006status\u0018\u0004 \u0001(\u0005\u0012\u0013\n\u000bsourceDocId\u0018\u0005 \u0001(\t\u0012\u0015\n\rsourceShapeId\u0018\u0006 \u0001(\t\u0012\u0017\n\u000fsourceExcerptId\u0018\u0007 \u0001(\t\u0012\u0012\n\nquoteDocId\u0018\b \u0001(\t\u0012\u0014\n\fquoteShapeId\u0018\t \u0001(\tB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7748a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45563a = descriptor;
        f45564b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45565c = descriptor2;
        f45566d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Uuid", "CreatedAt", "UpdatedAt", PersistedInstallation.f35952i, "SourceDocId", "SourceShapeId", "SourceExcerptId", "QuoteDocId", "QuoteShapeId"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45567e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
