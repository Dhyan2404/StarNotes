package com.onyx.android.sdk.reader.cbox.proto;

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
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.RepeatedFieldBuilderV3;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes8.dex */
public final class ReaderCacheProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f44739a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f44740b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f44741c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f44742d;

    /* renamed from: e */
    public static final Descriptors.Descriptor f44743e;

    /* renamed from: f */
    public static final GeneratedMessageV3.FieldAccessorTable f44744f;

    /* renamed from: g */
    public static final Descriptors.Descriptor f44745g;

    /* renamed from: h */
    public static final GeneratedMessageV3.FieldAccessorTable f44746h;

    /* renamed from: i */
    public static final Descriptors.Descriptor f44747i;

    /* renamed from: j */
    public static final GeneratedMessageV3.FieldAccessorTable f44748j;

    /* renamed from: k */
    public static final Descriptors.Descriptor f44749k;

    /* renamed from: l */
    public static final GeneratedMessageV3.FieldAccessorTable f44750l;

    /* renamed from: m */
    public static Descriptors.FileDescriptor f44751m;

    /* loaded from: classes8.dex */
    public static final class ChapterCacheListProto extends GeneratedMessageV3 implements ChapterCacheListProtoOrBuilder {
        public static final int CACHE_FIELD_NUMBER = 1;
        private static final ChapterCacheListProto DEFAULT_INSTANCE = new ChapterCacheListProto();
        private static final Parser<ChapterCacheListProto> PARSER = new C7583a();
        private static final long serialVersionUID = 0;
        private List<RangeListProto> cache_;
        private byte memoizedIsInitialized;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ChapterCacheListProtoOrBuilder {

            /* renamed from: i */
            public int f44752i;

            /* renamed from: j */
            public List<RangeListProto> f44753j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> f44754k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7589a c7589a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ReaderCacheProto.f44739a;
            }

            public Builder addAllCache(Iterable<? extends RangeListProto> iterable) {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                if (repeatedFieldBuilderV3 == null) {
                    m34648h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f44753j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addCache(RangeListProto rangeListProto) {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                if (repeatedFieldBuilderV3 == null) {
                    rangeListProto.getClass();
                    m34648h();
                    this.f44753j.add(rangeListProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(rangeListProto);
                }
                return this;
            }

            public RangeListProto.Builder addCacheBuilder() {
                return m34649i().addBuilder(RangeListProto.getDefaultInstance());
            }

            public Builder clearCache() {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f44753j = Collections.emptyList();
                    this.f44752i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProtoOrBuilder
            public RangeListProto getCache(int i) {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                return repeatedFieldBuilderV3 == null ? this.f44753j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public RangeListProto.Builder getCacheBuilder(int i) {
                return m34649i().getBuilder(i);
            }

            public List<RangeListProto.Builder> getCacheBuilderList() {
                return m34649i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProtoOrBuilder
            public int getCacheCount() {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                return repeatedFieldBuilderV3 == null ? this.f44753j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProtoOrBuilder
            public List<RangeListProto> getCacheList() {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f44753j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProtoOrBuilder
            public RangeListProtoOrBuilder getCacheOrBuilder(int i) {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                return repeatedFieldBuilderV3 == null ? this.f44753j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProtoOrBuilder
            public List<? extends RangeListProtoOrBuilder> getCacheOrBuilderList() {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f44753j);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ReaderCacheProto.f44739a;
            }

            /* renamed from: h */
            public final void m34648h() {
                if ((this.f44752i & 1) != 1) {
                    this.f44753j = new ArrayList(this.f44753j);
                    this.f44752i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> m34649i() {
                if (this.f44754k == null) {
                    this.f44754k = new RepeatedFieldBuilderV3<>(this.f44753j, (this.f44752i & 1) == 1, getParentForChildren(), isClean());
                    this.f44753j = null;
                }
                return this.f44754k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ReaderCacheProto.f44740b.ensureFieldAccessorsInitialized(ChapterCacheListProto.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m34650j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m34649i();
                }
            }

            public Builder removeCache(int i) {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                if (repeatedFieldBuilderV3 == null) {
                    m34648h();
                    this.f44753j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setCache(int i, RangeListProto rangeListProto) {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                if (repeatedFieldBuilderV3 == null) {
                    rangeListProto.getClass();
                    m34648h();
                    this.f44753j.set(i, rangeListProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, rangeListProto);
                }
                return this;
            }

            public /* synthetic */ Builder(C7589a c7589a) {
                this();
            }

            public Builder() {
                this.f44753j = Collections.emptyList();
                m34650j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChapterCacheListProto build() {
                ChapterCacheListProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChapterCacheListProto buildPartial() {
                ChapterCacheListProto chapterCacheListProto = new ChapterCacheListProto(this, (C7589a) null);
                int i = this.f44752i;
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f44753j = Collections.unmodifiableList(this.f44753j);
                        this.f44752i &= -2;
                    }
                    chapterCacheListProto.cache_ = this.f44753j;
                } else {
                    chapterCacheListProto.cache_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return chapterCacheListProto;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ChapterCacheListProto getDefaultInstanceForType() {
                return ChapterCacheListProto.getDefaultInstance();
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

            public RangeListProto.Builder addCacheBuilder(int i) {
                return m34649i().addBuilder(i, RangeListProto.getDefaultInstance());
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
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f44753j = Collections.emptyList();
                    this.f44752i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f44753j = Collections.emptyList();
                m34650j();
            }

            public Builder addCache(int i, RangeListProto rangeListProto) {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                if (repeatedFieldBuilderV3 == null) {
                    rangeListProto.getClass();
                    m34648h();
                    this.f44753j.add(i, rangeListProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, rangeListProto);
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
                if (message instanceof ChapterCacheListProto) {
                    return mergeFrom((ChapterCacheListProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setCache(int i, RangeListProto.Builder builder) {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                if (repeatedFieldBuilderV3 == null) {
                    m34648h();
                    this.f44753j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(ChapterCacheListProto chapterCacheListProto) {
                if (chapterCacheListProto == ChapterCacheListProto.getDefaultInstance()) {
                    return this;
                }
                if (this.f44754k == null) {
                    if (!chapterCacheListProto.cache_.isEmpty()) {
                        if (this.f44753j.isEmpty()) {
                            this.f44753j = chapterCacheListProto.cache_;
                            this.f44752i &= -2;
                        } else {
                            m34648h();
                            this.f44753j.addAll(chapterCacheListProto.cache_);
                        }
                        onChanged();
                    }
                } else if (!chapterCacheListProto.cache_.isEmpty()) {
                    if (this.f44754k.isEmpty()) {
                        this.f44754k.dispose();
                        this.f44754k = null;
                        this.f44753j = chapterCacheListProto.cache_;
                        this.f44752i &= -2;
                        this.f44754k = GeneratedMessageV3.alwaysUseFieldBuilders ? m34649i() : null;
                    } else {
                        this.f44754k.addAllMessages(chapterCacheListProto.cache_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) chapterCacheListProto).unknownFields);
                onChanged();
                return this;
            }

            public Builder addCache(RangeListProto.Builder builder) {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                if (repeatedFieldBuilderV3 == null) {
                    m34648h();
                    this.f44753j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addCache(int i, RangeListProto.Builder builder) {
                RepeatedFieldBuilderV3<RangeListProto, RangeListProto.Builder, RangeListProtoOrBuilder> repeatedFieldBuilderV3 = this.f44754k;
                if (repeatedFieldBuilderV3 == null) {
                    m34648h();
                    this.f44753j.add(i, builder.build());
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
            public com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProto.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProto.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$ChapterCacheListProto r3 = (com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProto) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$ChapterCacheListProto r4 = (com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProto) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProto.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$ChapterCacheListProto$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$ChapterCacheListProto$a */
        /* loaded from: classes8.dex */
        public class C7583a extends AbstractParser<ChapterCacheListProto> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public ChapterCacheListProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ChapterCacheListProto(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ ChapterCacheListProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7589a c7589a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ChapterCacheListProto getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ReaderCacheProto.f44739a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ChapterCacheListProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ChapterCacheListProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ChapterCacheListProto parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ChapterCacheListProto> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ChapterCacheListProto)) {
                return super.equals(obj);
            }
            ChapterCacheListProto chapterCacheListProto = (ChapterCacheListProto) obj;
            return (getCacheList().equals(chapterCacheListProto.getCacheList())) && this.unknownFields.equals(chapterCacheListProto.unknownFields);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProtoOrBuilder
        public RangeListProto getCache(int i) {
            return this.cache_.get(i);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProtoOrBuilder
        public int getCacheCount() {
            return this.cache_.size();
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProtoOrBuilder
        public List<RangeListProto> getCacheList() {
            return this.cache_;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProtoOrBuilder
        public RangeListProtoOrBuilder getCacheOrBuilder(int i) {
            return this.cache_.get(i);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.ChapterCacheListProtoOrBuilder
        public List<? extends RangeListProtoOrBuilder> getCacheOrBuilderList() {
            return this.cache_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ChapterCacheListProto> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.cache_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(1, this.cache_.get(i3));
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
            if (getCacheCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getCacheList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ReaderCacheProto.f44740b.ensureFieldAccessorsInitialized(ChapterCacheListProto.class, Builder.class);
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
            for (int i = 0; i < this.cache_.size(); i++) {
                codedOutputStream.writeMessage(1, this.cache_.get(i));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ ChapterCacheListProto(GeneratedMessageV3.Builder builder, C7589a c7589a) {
            this(builder);
        }

        public static Builder newBuilder(ChapterCacheListProto chapterCacheListProto) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(chapterCacheListProto);
        }

        public static ChapterCacheListProto parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private ChapterCacheListProto(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ChapterCacheListProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ChapterCacheListProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ChapterCacheListProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ChapterCacheListProto getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7589a c7589a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7589a) : new Builder(c7589a).mergeFrom(this);
        }

        public static ChapterCacheListProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ChapterCacheListProto() {
            this.memoizedIsInitialized = (byte) -1;
            this.cache_ = Collections.emptyList();
        }

        public static ChapterCacheListProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ChapterCacheListProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ChapterCacheListProto parseFrom(InputStream inputStream) throws IOException {
            return (ChapterCacheListProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ChapterCacheListProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    this.cache_ = new ArrayList();
                                    z2 |= true;
                                }
                                this.cache_.add((RangeListProto) codedInputStream.readMessage(RangeListProto.parser(), extensionRegistryLite));
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
                        this.cache_ = Collections.unmodifiableList(this.cache_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static ChapterCacheListProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ChapterCacheListProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ChapterCacheListProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ChapterCacheListProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ChapterCacheListProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ChapterCacheListProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface ChapterCacheListProtoOrBuilder extends MessageOrBuilder {
        RangeListProto getCache(int i);

        int getCacheCount();

        List<RangeListProto> getCacheList();

        RangeListProtoOrBuilder getCacheOrBuilder(int i);

        List<? extends RangeListProtoOrBuilder> getCacheOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public static final class PositionProto extends GeneratedMessageV3 implements PositionProtoOrBuilder {
        public static final int NODEPOSITION_FIELD_NUMBER = 2;
        public static final int TEXTENDOFFSET_FIELD_NUMBER = 4;
        public static final int TEXTSTARTOFFSET_FIELD_NUMBER = 3;
        public static final int XPATH_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int nodePosition_;
        private int textEndOffset_;
        private int textStartOffset_;
        private int xpathMemoizedSerializedSize;
        private List<Integer> xpath_;
        private static final PositionProto DEFAULT_INSTANCE = new PositionProto();
        private static final Parser<PositionProto> PARSER = new C7584a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements PositionProtoOrBuilder {

            /* renamed from: i */
            public int f44755i;

            /* renamed from: j */
            public List<Integer> f44756j;

            /* renamed from: k */
            public int f44757k;

            /* renamed from: l */
            public int f44758l;

            /* renamed from: m */
            public int f44759m;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7589a c7589a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ReaderCacheProto.f44745g;
            }

            public Builder addAllXpath(Iterable<? extends Integer> iterable) {
                m34652h();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f44756j);
                onChanged();
                return this;
            }

            public Builder addXpath(int i) {
                m34652h();
                this.f44756j.add(Integer.valueOf(i));
                onChanged();
                return this;
            }

            public Builder clearNodePosition() {
                this.f44757k = 0;
                onChanged();
                return this;
            }

            public Builder clearTextEndOffset() {
                this.f44759m = 0;
                onChanged();
                return this;
            }

            public Builder clearTextStartOffset() {
                this.f44758l = 0;
                onChanged();
                return this;
            }

            public Builder clearXpath() {
                this.f44756j = Collections.emptyList();
                this.f44755i &= -2;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ReaderCacheProto.f44745g;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProtoOrBuilder
            public int getNodePosition() {
                return this.f44757k;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProtoOrBuilder
            public int getTextEndOffset() {
                return this.f44759m;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProtoOrBuilder
            public int getTextStartOffset() {
                return this.f44758l;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProtoOrBuilder
            public int getXpath(int i) {
                return this.f44756j.get(i).intValue();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProtoOrBuilder
            public int getXpathCount() {
                return this.f44756j.size();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProtoOrBuilder
            public List<Integer> getXpathList() {
                return Collections.unmodifiableList(this.f44756j);
            }

            /* renamed from: h */
            public final void m34652h() {
                if ((this.f44755i & 1) != 1) {
                    this.f44756j = new ArrayList(this.f44756j);
                    this.f44755i |= 1;
                }
            }

            /* renamed from: i */
            public final void m34653i() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ReaderCacheProto.f44746h.ensureFieldAccessorsInitialized(PositionProto.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setNodePosition(int i) {
                this.f44757k = i;
                onChanged();
                return this;
            }

            public Builder setTextEndOffset(int i) {
                this.f44759m = i;
                onChanged();
                return this;
            }

            public Builder setTextStartOffset(int i) {
                this.f44758l = i;
                onChanged();
                return this;
            }

            public Builder setXpath(int i, int i2) {
                m34652h();
                this.f44756j.set(i, Integer.valueOf(i2));
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7589a c7589a) {
                this();
            }

            public Builder() {
                this.f44756j = Collections.emptyList();
                m34653i();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PositionProto build() {
                PositionProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PositionProto buildPartial() {
                PositionProto positionProto = new PositionProto(this, (C7589a) null);
                if ((this.f44755i & 1) == 1) {
                    this.f44756j = Collections.unmodifiableList(this.f44756j);
                    this.f44755i &= -2;
                }
                positionProto.xpath_ = this.f44756j;
                positionProto.nodePosition_ = this.f44757k;
                positionProto.textStartOffset_ = this.f44758l;
                positionProto.textEndOffset_ = this.f44759m;
                positionProto.bitField0_ = 0;
                onBuilt();
                return positionProto;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PositionProto getDefaultInstanceForType() {
                return PositionProto.getDefaultInstance();
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
                this.f44756j = Collections.emptyList();
                this.f44755i &= -2;
                this.f44757k = 0;
                this.f44758l = 0;
                this.f44759m = 0;
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f44756j = Collections.emptyList();
                m34653i();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof PositionProto) {
                    return mergeFrom((PositionProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(PositionProto positionProto) {
                if (positionProto == PositionProto.getDefaultInstance()) {
                    return this;
                }
                if (!positionProto.xpath_.isEmpty()) {
                    if (this.f44756j.isEmpty()) {
                        this.f44756j = positionProto.xpath_;
                        this.f44755i &= -2;
                    } else {
                        m34652h();
                        this.f44756j.addAll(positionProto.xpath_);
                    }
                    onChanged();
                }
                if (positionProto.getNodePosition() != 0) {
                    setNodePosition(positionProto.getNodePosition());
                }
                if (positionProto.getTextStartOffset() != 0) {
                    setTextStartOffset(positionProto.getTextStartOffset());
                }
                if (positionProto.getTextEndOffset() != 0) {
                    setTextEndOffset(positionProto.getTextEndOffset());
                }
                mergeUnknownFields(((GeneratedMessageV3) positionProto).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProto.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProto.access$4900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$PositionProto r3 = (com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProto) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$PositionProto r4 = (com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProto) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProto.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$PositionProto$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$PositionProto$a */
        /* loaded from: classes8.dex */
        public class C7584a extends AbstractParser<PositionProto> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public PositionProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new PositionProto(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ PositionProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7589a c7589a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static PositionProto getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ReaderCacheProto.f44745g;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PositionProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PositionProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static PositionProto parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<PositionProto> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PositionProto)) {
                return super.equals(obj);
            }
            PositionProto positionProto = (PositionProto) obj;
            return ((((getXpathList().equals(positionProto.getXpathList())) && getNodePosition() == positionProto.getNodePosition()) && getTextStartOffset() == positionProto.getTextStartOffset()) && getTextEndOffset() == positionProto.getTextEndOffset()) && this.unknownFields.equals(positionProto.unknownFields);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProtoOrBuilder
        public int getNodePosition() {
            return this.nodePosition_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<PositionProto> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.xpath_.size(); i3++) {
                i2 += CodedOutputStream.computeInt32SizeNoTag(this.xpath_.get(i3).intValue());
            }
            int i4 = 0 + i2;
            if (!getXpathList().isEmpty()) {
                i4 = i4 + 1 + CodedOutputStream.computeInt32SizeNoTag(i2);
            }
            this.xpathMemoizedSerializedSize = i2;
            int i5 = this.nodePosition_;
            if (i5 != 0) {
                i4 += CodedOutputStream.computeInt32Size(2, i5);
            }
            int i6 = this.textStartOffset_;
            if (i6 != 0) {
                i4 += CodedOutputStream.computeInt32Size(3, i6);
            }
            int i7 = this.textEndOffset_;
            if (i7 != 0) {
                i4 += CodedOutputStream.computeInt32Size(4, i7);
            }
            int serializedSize = i4 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProtoOrBuilder
        public int getTextEndOffset() {
            return this.textEndOffset_;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProtoOrBuilder
        public int getTextStartOffset() {
            return this.textStartOffset_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProtoOrBuilder
        public int getXpath(int i) {
            return this.xpath_.get(i).intValue();
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProtoOrBuilder
        public int getXpathCount() {
            return this.xpath_.size();
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.PositionProtoOrBuilder
        public List<Integer> getXpathList() {
            return this.xpath_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (getXpathCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getXpathList().hashCode();
            }
            int nodePosition = (((((((((((((hashCode * 37) + 2) * 53) + getNodePosition()) * 37) + 3) * 53) + getTextStartOffset()) * 37) + 4) * 53) + getTextEndOffset()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = nodePosition;
            return nodePosition;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ReaderCacheProto.f44746h.ensureFieldAccessorsInitialized(PositionProto.class, Builder.class);
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
            getSerializedSize();
            if (getXpathList().size() > 0) {
                codedOutputStream.writeUInt32NoTag(10);
                codedOutputStream.writeUInt32NoTag(this.xpathMemoizedSerializedSize);
            }
            for (int i = 0; i < this.xpath_.size(); i++) {
                codedOutputStream.writeInt32NoTag(this.xpath_.get(i).intValue());
            }
            int i2 = this.nodePosition_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(2, i2);
            }
            int i3 = this.textStartOffset_;
            if (i3 != 0) {
                codedOutputStream.writeInt32(3, i3);
            }
            int i4 = this.textEndOffset_;
            if (i4 != 0) {
                codedOutputStream.writeInt32(4, i4);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ PositionProto(GeneratedMessageV3.Builder builder, C7589a c7589a) {
            this(builder);
        }

        public static Builder newBuilder(PositionProto positionProto) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(positionProto);
        }

        public static PositionProto parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private PositionProto(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.xpathMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PositionProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PositionProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static PositionProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PositionProto getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7589a c7589a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7589a) : new Builder(c7589a).mergeFrom(this);
        }

        public static PositionProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static PositionProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        private PositionProto() {
            this.xpathMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
            this.xpath_ = Collections.emptyList();
            this.nodePosition_ = 0;
            this.textStartOffset_ = 0;
            this.textEndOffset_ = 0;
        }

        public static PositionProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static PositionProto parseFrom(InputStream inputStream) throws IOException {
            return (PositionProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static PositionProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PositionProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static PositionProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (PositionProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        private PositionProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            if (readTag == 8) {
                                if (!(z2 & true)) {
                                    this.xpath_ = new ArrayList();
                                    z2 |= true;
                                }
                                this.xpath_.add(Integer.valueOf(codedInputStream.readInt32()));
                            } else if (readTag == 10) {
                                int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                if (!(z2 & true) && codedInputStream.getBytesUntilLimit() > 0) {
                                    this.xpath_ = new ArrayList();
                                    z2 |= true;
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.xpath_.add(Integer.valueOf(codedInputStream.readInt32()));
                                }
                                codedInputStream.popLimit(pushLimit);
                            } else if (readTag == 16) {
                                this.nodePosition_ = codedInputStream.readInt32();
                            } else if (readTag == 24) {
                                this.textStartOffset_ = codedInputStream.readInt32();
                            } else if (readTag != 32) {
                                if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            } else {
                                this.textEndOffset_ = codedInputStream.readInt32();
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
                        this.xpath_ = Collections.unmodifiableList(this.xpath_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static PositionProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PositionProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface PositionProtoOrBuilder extends MessageOrBuilder {
        int getNodePosition();

        int getTextEndOffset();

        int getTextStartOffset();

        int getXpath(int i);

        int getXpathCount();

        List<Integer> getXpathList();
    }

    /* loaded from: classes8.dex */
    public static final class RangeListProto extends GeneratedMessageV3 implements RangeListProtoOrBuilder {
        public static final int CHAPTER_FIELD_NUMBER = 1;
        private static final RangeListProto DEFAULT_INSTANCE = new RangeListProto();
        private static final Parser<RangeListProto> PARSER = new C7585a();
        public static final int RANGE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int chapter_;
        private byte memoizedIsInitialized;
        private List<RangeProto> range_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RangeListProtoOrBuilder {

            /* renamed from: i */
            public int f44760i;

            /* renamed from: j */
            public int f44761j;

            /* renamed from: k */
            public List<RangeProto> f44762k;

            /* renamed from: l */
            public RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> f44763l;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7589a c7589a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ReaderCacheProto.f44741c;
            }

            public Builder addAllRange(Iterable<? extends RangeProto> iterable) {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                if (repeatedFieldBuilderV3 == null) {
                    m34655h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f44762k);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addRange(RangeProto rangeProto) {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                if (repeatedFieldBuilderV3 == null) {
                    rangeProto.getClass();
                    m34655h();
                    this.f44762k.add(rangeProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(rangeProto);
                }
                return this;
            }

            public RangeProto.Builder addRangeBuilder() {
                return m34656i().addBuilder(RangeProto.getDefaultInstance());
            }

            public Builder clearChapter() {
                this.f44761j = 0;
                onChanged();
                return this;
            }

            public Builder clearRange() {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                if (repeatedFieldBuilderV3 == null) {
                    this.f44762k = Collections.emptyList();
                    this.f44760i &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProtoOrBuilder
            public int getChapter() {
                return this.f44761j;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ReaderCacheProto.f44741c;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProtoOrBuilder
            public RangeProto getRange(int i) {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                return repeatedFieldBuilderV3 == null ? this.f44762k.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public RangeProto.Builder getRangeBuilder(int i) {
                return m34656i().getBuilder(i);
            }

            public List<RangeProto.Builder> getRangeBuilderList() {
                return m34656i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProtoOrBuilder
            public int getRangeCount() {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                return repeatedFieldBuilderV3 == null ? this.f44762k.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProtoOrBuilder
            public List<RangeProto> getRangeList() {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f44762k) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProtoOrBuilder
            public RangeProtoOrBuilder getRangeOrBuilder(int i) {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                return repeatedFieldBuilderV3 == null ? this.f44762k.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProtoOrBuilder
            public List<? extends RangeProtoOrBuilder> getRangeOrBuilderList() {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f44762k);
            }

            /* renamed from: h */
            public final void m34655h() {
                if ((this.f44760i & 2) != 2) {
                    this.f44762k = new ArrayList(this.f44762k);
                    this.f44760i |= 2;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> m34656i() {
                if (this.f44763l == null) {
                    this.f44763l = new RepeatedFieldBuilderV3<>(this.f44762k, (this.f44760i & 2) == 2, getParentForChildren(), isClean());
                    this.f44762k = null;
                }
                return this.f44763l;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ReaderCacheProto.f44742d.ensureFieldAccessorsInitialized(RangeListProto.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m34657j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m34656i();
                }
            }

            public Builder removeRange(int i) {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                if (repeatedFieldBuilderV3 == null) {
                    m34655h();
                    this.f44762k.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setChapter(int i) {
                this.f44761j = i;
                onChanged();
                return this;
            }

            public Builder setRange(int i, RangeProto rangeProto) {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                if (repeatedFieldBuilderV3 == null) {
                    rangeProto.getClass();
                    m34655h();
                    this.f44762k.set(i, rangeProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, rangeProto);
                }
                return this;
            }

            public /* synthetic */ Builder(C7589a c7589a) {
                this();
            }

            public Builder() {
                this.f44762k = Collections.emptyList();
                m34657j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public RangeListProto build() {
                RangeListProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public RangeListProto buildPartial() {
                RangeListProto rangeListProto = new RangeListProto(this, (C7589a) null);
                rangeListProto.chapter_ = this.f44761j;
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.f44760i & 2) == 2) {
                        this.f44762k = Collections.unmodifiableList(this.f44762k);
                        this.f44760i &= -3;
                    }
                    rangeListProto.range_ = this.f44762k;
                } else {
                    rangeListProto.range_ = repeatedFieldBuilderV3.build();
                }
                rangeListProto.bitField0_ = 0;
                onBuilt();
                return rangeListProto;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public RangeListProto getDefaultInstanceForType() {
                return RangeListProto.getDefaultInstance();
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

            public RangeProto.Builder addRangeBuilder(int i) {
                return m34656i().addBuilder(i, RangeProto.getDefaultInstance());
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
                this.f44761j = 0;
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                if (repeatedFieldBuilderV3 == null) {
                    this.f44762k = Collections.emptyList();
                    this.f44760i &= -3;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f44762k = Collections.emptyList();
                m34657j();
            }

            public Builder addRange(int i, RangeProto rangeProto) {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                if (repeatedFieldBuilderV3 == null) {
                    rangeProto.getClass();
                    m34655h();
                    this.f44762k.add(i, rangeProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, rangeProto);
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
                if (message instanceof RangeListProto) {
                    return mergeFrom((RangeListProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setRange(int i, RangeProto.Builder builder) {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                if (repeatedFieldBuilderV3 == null) {
                    m34655h();
                    this.f44762k.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(RangeListProto rangeListProto) {
                if (rangeListProto == RangeListProto.getDefaultInstance()) {
                    return this;
                }
                if (rangeListProto.getChapter() != 0) {
                    setChapter(rangeListProto.getChapter());
                }
                if (this.f44763l == null) {
                    if (!rangeListProto.range_.isEmpty()) {
                        if (this.f44762k.isEmpty()) {
                            this.f44762k = rangeListProto.range_;
                            this.f44760i &= -3;
                        } else {
                            m34655h();
                            this.f44762k.addAll(rangeListProto.range_);
                        }
                        onChanged();
                    }
                } else if (!rangeListProto.range_.isEmpty()) {
                    if (this.f44763l.isEmpty()) {
                        this.f44763l.dispose();
                        this.f44763l = null;
                        this.f44762k = rangeListProto.range_;
                        this.f44760i &= -3;
                        this.f44763l = GeneratedMessageV3.alwaysUseFieldBuilders ? m34656i() : null;
                    } else {
                        this.f44763l.addAllMessages(rangeListProto.range_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) rangeListProto).unknownFields);
                onChanged();
                return this;
            }

            public Builder addRange(RangeProto.Builder builder) {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                if (repeatedFieldBuilderV3 == null) {
                    m34655h();
                    this.f44762k.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addRange(int i, RangeProto.Builder builder) {
                RepeatedFieldBuilderV3<RangeProto, RangeProto.Builder, RangeProtoOrBuilder> repeatedFieldBuilderV3 = this.f44763l;
                if (repeatedFieldBuilderV3 == null) {
                    m34655h();
                    this.f44762k.add(i, builder.build());
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
            public com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProto.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProto.access$2200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$RangeListProto r3 = (com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProto) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$RangeListProto r4 = (com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProto) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProto.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$RangeListProto$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$RangeListProto$a */
        /* loaded from: classes8.dex */
        public class C7585a extends AbstractParser<RangeListProto> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public RangeListProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new RangeListProto(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ RangeListProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7589a c7589a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static RangeListProto getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ReaderCacheProto.f44741c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RangeListProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (RangeListProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RangeListProto parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<RangeListProto> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RangeListProto)) {
                return super.equals(obj);
            }
            RangeListProto rangeListProto = (RangeListProto) obj;
            return ((getChapter() == rangeListProto.getChapter()) && getRangeList().equals(rangeListProto.getRangeList())) && this.unknownFields.equals(rangeListProto.unknownFields);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProtoOrBuilder
        public int getChapter() {
            return this.chapter_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<RangeListProto> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProtoOrBuilder
        public RangeProto getRange(int i) {
            return this.range_.get(i);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProtoOrBuilder
        public int getRangeCount() {
            return this.range_.size();
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProtoOrBuilder
        public List<RangeProto> getRangeList() {
            return this.range_;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProtoOrBuilder
        public RangeProtoOrBuilder getRangeOrBuilder(int i) {
            return this.range_.get(i);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeListProtoOrBuilder
        public List<? extends RangeProtoOrBuilder> getRangeOrBuilderList() {
            return this.range_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.chapter_;
            int computeInt32Size = i2 != 0 ? CodedOutputStream.computeInt32Size(1, i2) + 0 : 0;
            for (int i3 = 0; i3 < this.range_.size(); i3++) {
                computeInt32Size += CodedOutputStream.computeMessageSize(2, this.range_.get(i3));
            }
            int serializedSize = computeInt32Size + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getChapter();
            if (getRangeCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getRangeList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ReaderCacheProto.f44742d.ensureFieldAccessorsInitialized(RangeListProto.class, Builder.class);
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
            int i = this.chapter_;
            if (i != 0) {
                codedOutputStream.writeInt32(1, i);
            }
            for (int i2 = 0; i2 < this.range_.size(); i2++) {
                codedOutputStream.writeMessage(2, this.range_.get(i2));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ RangeListProto(GeneratedMessageV3.Builder builder, C7589a c7589a) {
            this(builder);
        }

        public static Builder newBuilder(RangeListProto rangeListProto) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(rangeListProto);
        }

        public static RangeListProto parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private RangeListProto(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RangeListProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (RangeListProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static RangeListProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public RangeListProto getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7589a c7589a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7589a) : new Builder(c7589a).mergeFrom(this);
        }

        public static RangeListProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private RangeListProto() {
            this.memoizedIsInitialized = (byte) -1;
            this.chapter_ = 0;
            this.range_ = Collections.emptyList();
        }

        public static RangeListProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static RangeListProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static RangeListProto parseFrom(InputStream inputStream) throws IOException {
            return (RangeListProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private RangeListProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            int i = 0;
            while (true) {
                if (z) {
                    break;
                }
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.chapter_ = codedInputStream.readInt32();
                            } else if (readTag != 18) {
                                if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            } else {
                                if ((i & 2) != 2) {
                                    this.range_ = new ArrayList();
                                    i |= 2;
                                }
                                this.range_.add((RangeProto) codedInputStream.readMessage(RangeProto.parser(), extensionRegistryLite));
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    if ((i & 2) == 2) {
                        this.range_ = Collections.unmodifiableList(this.range_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static RangeListProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (RangeListProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static RangeListProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (RangeListProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static RangeListProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (RangeListProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface RangeListProtoOrBuilder extends MessageOrBuilder {
        int getChapter();

        RangeProto getRange(int i);

        int getRangeCount();

        List<RangeProto> getRangeList();

        RangeProtoOrBuilder getRangeOrBuilder(int i);

        List<? extends RangeProtoOrBuilder> getRangeOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public static final class RangeProto extends GeneratedMessageV3 implements RangeProtoOrBuilder {
        private static final RangeProto DEFAULT_INSTANCE = new RangeProto();
        private static final Parser<RangeProto> PARSER = new C7586a();
        public static final int POSITION_FIELD_NUMBER = 1;
        public static final int TABLEROW_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private PositionProto position_;
        private List<TableRowProto> tableRow_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RangeProtoOrBuilder {

            /* renamed from: i */
            public int f44764i;

            /* renamed from: j */
            public PositionProto f44765j;

            /* renamed from: k */
            public SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> f44766k;

            /* renamed from: l */
            public List<TableRowProto> f44767l;

            /* renamed from: m */
            public RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> f44768m;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7589a c7589a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ReaderCacheProto.f44743e;
            }

            public Builder addAllTableRow(Iterable<? extends TableRowProto> iterable) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                if (repeatedFieldBuilderV3 == null) {
                    m34659h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f44767l);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addTableRow(TableRowProto tableRowProto) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                if (repeatedFieldBuilderV3 == null) {
                    tableRowProto.getClass();
                    m34659h();
                    this.f44767l.add(tableRowProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(tableRowProto);
                }
                return this;
            }

            public TableRowProto.Builder addTableRowBuilder() {
                return m34661j().addBuilder(TableRowProto.getDefaultInstance());
            }

            public Builder clearPosition() {
                if (this.f44766k == null) {
                    this.f44765j = null;
                    onChanged();
                } else {
                    this.f44765j = null;
                    this.f44766k = null;
                }
                return this;
            }

            public Builder clearTableRow() {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                if (repeatedFieldBuilderV3 == null) {
                    this.f44767l = Collections.emptyList();
                    this.f44764i &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ReaderCacheProto.f44743e;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
            public PositionProto getPosition() {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44766k;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                PositionProto positionProto = this.f44765j;
                return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
            }

            public PositionProto.Builder getPositionBuilder() {
                onChanged();
                return m34660i().getBuilder();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
            public PositionProtoOrBuilder getPositionOrBuilder() {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44766k;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                PositionProto positionProto = this.f44765j;
                return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
            public TableRowProto getTableRow(int i) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                return repeatedFieldBuilderV3 == null ? this.f44767l.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public TableRowProto.Builder getTableRowBuilder(int i) {
                return m34661j().getBuilder(i);
            }

            public List<TableRowProto.Builder> getTableRowBuilderList() {
                return m34661j().getBuilderList();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
            public int getTableRowCount() {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                return repeatedFieldBuilderV3 == null ? this.f44767l.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
            public List<TableRowProto> getTableRowList() {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f44767l) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
            public TableRowProtoOrBuilder getTableRowOrBuilder(int i) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                return repeatedFieldBuilderV3 == null ? this.f44767l.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
            public List<? extends TableRowProtoOrBuilder> getTableRowOrBuilderList() {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f44767l);
            }

            /* renamed from: h */
            public final void m34659h() {
                if ((this.f44764i & 2) != 2) {
                    this.f44767l = new ArrayList(this.f44767l);
                    this.f44764i |= 2;
                }
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
            public boolean hasPosition() {
                return (this.f44766k == null && this.f44765j == null) ? false : true;
            }

            /* renamed from: i */
            public final SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> m34660i() {
                if (this.f44766k == null) {
                    this.f44766k = new SingleFieldBuilderV3<>(getPosition(), getParentForChildren(), isClean());
                    this.f44765j = null;
                }
                return this.f44766k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ReaderCacheProto.f44744f.ensureFieldAccessorsInitialized(RangeProto.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> m34661j() {
                if (this.f44768m == null) {
                    this.f44768m = new RepeatedFieldBuilderV3<>(this.f44767l, (this.f44764i & 2) == 2, getParentForChildren(), isClean());
                    this.f44767l = null;
                }
                return this.f44768m;
            }

            /* renamed from: k */
            public final void m34662k() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m34661j();
                }
            }

            public Builder mergePosition(PositionProto positionProto) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44766k;
                if (singleFieldBuilderV3 == null) {
                    PositionProto positionProto2 = this.f44765j;
                    if (positionProto2 != null) {
                        this.f44765j = PositionProto.newBuilder(positionProto2).mergeFrom(positionProto).buildPartial();
                    } else {
                        this.f44765j = positionProto;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(positionProto);
                }
                return this;
            }

            public Builder removeTableRow(int i) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                if (repeatedFieldBuilderV3 == null) {
                    m34659h();
                    this.f44767l.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setPosition(PositionProto positionProto) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44766k;
                if (singleFieldBuilderV3 == null) {
                    positionProto.getClass();
                    this.f44765j = positionProto;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(positionProto);
                }
                return this;
            }

            public Builder setTableRow(int i, TableRowProto tableRowProto) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                if (repeatedFieldBuilderV3 == null) {
                    tableRowProto.getClass();
                    m34659h();
                    this.f44767l.set(i, tableRowProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, tableRowProto);
                }
                return this;
            }

            public /* synthetic */ Builder(C7589a c7589a) {
                this();
            }

            public Builder() {
                this.f44765j = null;
                this.f44767l = Collections.emptyList();
                m34662k();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public RangeProto build() {
                RangeProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public RangeProto buildPartial() {
                RangeProto rangeProto = new RangeProto(this, (C7589a) null);
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44766k;
                if (singleFieldBuilderV3 == null) {
                    rangeProto.position_ = this.f44765j;
                } else {
                    rangeProto.position_ = singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.f44764i & 2) == 2) {
                        this.f44767l = Collections.unmodifiableList(this.f44767l);
                        this.f44764i &= -3;
                    }
                    rangeProto.tableRow_ = this.f44767l;
                } else {
                    rangeProto.tableRow_ = repeatedFieldBuilderV3.build();
                }
                rangeProto.bitField0_ = 0;
                onBuilt();
                return rangeProto;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public RangeProto getDefaultInstanceForType() {
                return RangeProto.getDefaultInstance();
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

            public TableRowProto.Builder addTableRowBuilder(int i) {
                return m34661j().addBuilder(i, TableRowProto.getDefaultInstance());
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
                if (this.f44766k == null) {
                    this.f44765j = null;
                } else {
                    this.f44765j = null;
                    this.f44766k = null;
                }
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                if (repeatedFieldBuilderV3 == null) {
                    this.f44767l = Collections.emptyList();
                    this.f44764i &= -3;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder setPosition(PositionProto.Builder builder) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44766k;
                if (singleFieldBuilderV3 == null) {
                    this.f44765j = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f44765j = null;
                this.f44767l = Collections.emptyList();
                m34662k();
            }

            public Builder addTableRow(int i, TableRowProto tableRowProto) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                if (repeatedFieldBuilderV3 == null) {
                    tableRowProto.getClass();
                    m34659h();
                    this.f44767l.add(i, tableRowProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, tableRowProto);
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
                if (message instanceof RangeProto) {
                    return mergeFrom((RangeProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setTableRow(int i, TableRowProto.Builder builder) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                if (repeatedFieldBuilderV3 == null) {
                    m34659h();
                    this.f44767l.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(RangeProto rangeProto) {
                if (rangeProto == RangeProto.getDefaultInstance()) {
                    return this;
                }
                if (rangeProto.hasPosition()) {
                    mergePosition(rangeProto.getPosition());
                }
                if (this.f44768m == null) {
                    if (!rangeProto.tableRow_.isEmpty()) {
                        if (this.f44767l.isEmpty()) {
                            this.f44767l = rangeProto.tableRow_;
                            this.f44764i &= -3;
                        } else {
                            m34659h();
                            this.f44767l.addAll(rangeProto.tableRow_);
                        }
                        onChanged();
                    }
                } else if (!rangeProto.tableRow_.isEmpty()) {
                    if (this.f44768m.isEmpty()) {
                        this.f44768m.dispose();
                        this.f44768m = null;
                        this.f44767l = rangeProto.tableRow_;
                        this.f44764i &= -3;
                        this.f44768m = GeneratedMessageV3.alwaysUseFieldBuilders ? m34661j() : null;
                    } else {
                        this.f44768m.addAllMessages(rangeProto.tableRow_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) rangeProto).unknownFields);
                onChanged();
                return this;
            }

            public Builder addTableRow(TableRowProto.Builder builder) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                if (repeatedFieldBuilderV3 == null) {
                    m34659h();
                    this.f44767l.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addTableRow(int i, TableRowProto.Builder builder) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44768m;
                if (repeatedFieldBuilderV3 == null) {
                    m34659h();
                    this.f44767l.add(i, builder.build());
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
            public com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProto.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProto.access$3500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$RangeProto r3 = (com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProto) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$RangeProto r4 = (com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProto) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProto.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$RangeProto$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$RangeProto$a */
        /* loaded from: classes8.dex */
        public class C7586a extends AbstractParser<RangeProto> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public RangeProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new RangeProto(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ RangeProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7589a c7589a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static RangeProto getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ReaderCacheProto.f44743e;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RangeProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (RangeProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RangeProto parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<RangeProto> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RangeProto)) {
                return super.equals(obj);
            }
            RangeProto rangeProto = (RangeProto) obj;
            boolean z = hasPosition() == rangeProto.hasPosition();
            if (hasPosition()) {
                z = z && getPosition().equals(rangeProto.getPosition());
            }
            return (z && getTableRowList().equals(rangeProto.getTableRowList())) && this.unknownFields.equals(rangeProto.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<RangeProto> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
        public PositionProto getPosition() {
            PositionProto positionProto = this.position_;
            return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
        public PositionProtoOrBuilder getPositionOrBuilder() {
            return getPosition();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeMessageSize = this.position_ != null ? CodedOutputStream.computeMessageSize(1, getPosition()) + 0 : 0;
            for (int i2 = 0; i2 < this.tableRow_.size(); i2++) {
                computeMessageSize += CodedOutputStream.computeMessageSize(2, this.tableRow_.get(i2));
            }
            int serializedSize = computeMessageSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
        public TableRowProto getTableRow(int i) {
            return this.tableRow_.get(i);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
        public int getTableRowCount() {
            return this.tableRow_.size();
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
        public List<TableRowProto> getTableRowList() {
            return this.tableRow_;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
        public TableRowProtoOrBuilder getTableRowOrBuilder(int i) {
            return this.tableRow_.get(i);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
        public List<? extends TableRowProtoOrBuilder> getTableRowOrBuilderList() {
            return this.tableRow_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.RangeProtoOrBuilder
        public boolean hasPosition() {
            return this.position_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasPosition()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getPosition().hashCode();
            }
            if (getTableRowCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getTableRowList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ReaderCacheProto.f44744f.ensureFieldAccessorsInitialized(RangeProto.class, Builder.class);
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
            if (this.position_ != null) {
                codedOutputStream.writeMessage(1, getPosition());
            }
            for (int i = 0; i < this.tableRow_.size(); i++) {
                codedOutputStream.writeMessage(2, this.tableRow_.get(i));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ RangeProto(GeneratedMessageV3.Builder builder, C7589a c7589a) {
            this(builder);
        }

        public static Builder newBuilder(RangeProto rangeProto) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(rangeProto);
        }

        public static RangeProto parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private RangeProto(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RangeProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (RangeProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static RangeProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public RangeProto getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7589a c7589a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7589a) : new Builder(c7589a).mergeFrom(this);
        }

        public static RangeProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private RangeProto() {
            this.memoizedIsInitialized = (byte) -1;
            this.tableRow_ = Collections.emptyList();
        }

        public static RangeProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static RangeProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static RangeProto parseFrom(InputStream inputStream) throws IOException {
            return (RangeProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private RangeProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            int i = 0;
            while (true) {
                if (z) {
                    break;
                }
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                PositionProto positionProto = this.position_;
                                PositionProto.Builder builder = positionProto != null ? positionProto.toBuilder() : null;
                                PositionProto positionProto2 = (PositionProto) codedInputStream.readMessage(PositionProto.parser(), extensionRegistryLite);
                                this.position_ = positionProto2;
                                if (builder != null) {
                                    builder.mergeFrom(positionProto2);
                                    this.position_ = builder.buildPartial();
                                }
                            } else if (readTag != 18) {
                                if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            } else {
                                if ((i & 2) != 2) {
                                    this.tableRow_ = new ArrayList();
                                    i |= 2;
                                }
                                this.tableRow_.add((TableRowProto) codedInputStream.readMessage(TableRowProto.parser(), extensionRegistryLite));
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    if ((i & 2) == 2) {
                        this.tableRow_ = Collections.unmodifiableList(this.tableRow_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static RangeProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (RangeProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static RangeProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (RangeProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static RangeProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (RangeProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface RangeProtoOrBuilder extends MessageOrBuilder {
        PositionProto getPosition();

        PositionProtoOrBuilder getPositionOrBuilder();

        TableRowProto getTableRow(int i);

        int getTableRowCount();

        List<TableRowProto> getTableRowList();

        TableRowProtoOrBuilder getTableRowOrBuilder(int i);

        List<? extends TableRowProtoOrBuilder> getTableRowOrBuilderList();

        boolean hasPosition();
    }

    /* loaded from: classes8.dex */
    public static final class TableCellProto extends GeneratedMessageV3 implements TableCellProtoOrBuilder {
        public static final int END_FIELD_NUMBER = 3;
        public static final int PIN_FIELD_NUMBER = 1;
        public static final int START_FIELD_NUMBER = 2;
        public static final int TABLEROW_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private PositionProto end_;
        private byte memoizedIsInitialized;
        private PositionProto pin_;
        private PositionProto start_;
        private List<TableRowProto> tableRow_;
        private static final TableCellProto DEFAULT_INSTANCE = new TableCellProto();
        private static final Parser<TableCellProto> PARSER = new C7587a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements TableCellProtoOrBuilder {

            /* renamed from: i */
            public int f44769i;

            /* renamed from: j */
            public PositionProto f44770j;

            /* renamed from: k */
            public SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> f44771k;

            /* renamed from: l */
            public PositionProto f44772l;

            /* renamed from: m */
            public SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> f44773m;

            /* renamed from: n */
            public PositionProto f44774n;

            /* renamed from: o */
            public SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> f44775o;

            /* renamed from: p */
            public List<TableRowProto> f44776p;

            /* renamed from: q */
            public RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> f44777q;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7589a c7589a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ReaderCacheProto.f44749k;
            }

            public Builder addAllTableRow(Iterable<? extends TableRowProto> iterable) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                if (repeatedFieldBuilderV3 == null) {
                    m34664h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f44776p);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addTableRow(TableRowProto tableRowProto) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                if (repeatedFieldBuilderV3 == null) {
                    tableRowProto.getClass();
                    m34664h();
                    this.f44776p.add(tableRowProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(tableRowProto);
                }
                return this;
            }

            public TableRowProto.Builder addTableRowBuilder() {
                return m34668l().addBuilder(TableRowProto.getDefaultInstance());
            }

            public Builder clearEnd() {
                if (this.f44775o == null) {
                    this.f44774n = null;
                    onChanged();
                } else {
                    this.f44774n = null;
                    this.f44775o = null;
                }
                return this;
            }

            public Builder clearPin() {
                if (this.f44771k == null) {
                    this.f44770j = null;
                    onChanged();
                } else {
                    this.f44770j = null;
                    this.f44771k = null;
                }
                return this;
            }

            public Builder clearStart() {
                if (this.f44773m == null) {
                    this.f44772l = null;
                    onChanged();
                } else {
                    this.f44772l = null;
                    this.f44773m = null;
                }
                return this;
            }

            public Builder clearTableRow() {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                if (repeatedFieldBuilderV3 == null) {
                    this.f44776p = Collections.emptyList();
                    this.f44769i &= -9;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ReaderCacheProto.f44749k;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public PositionProto getEnd() {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44775o;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                PositionProto positionProto = this.f44774n;
                return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
            }

            public PositionProto.Builder getEndBuilder() {
                onChanged();
                return m34665i().getBuilder();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public PositionProtoOrBuilder getEndOrBuilder() {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44775o;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                PositionProto positionProto = this.f44774n;
                return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public PositionProto getPin() {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44771k;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                PositionProto positionProto = this.f44770j;
                return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
            }

            public PositionProto.Builder getPinBuilder() {
                onChanged();
                return m34666j().getBuilder();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public PositionProtoOrBuilder getPinOrBuilder() {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44771k;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                PositionProto positionProto = this.f44770j;
                return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public PositionProto getStart() {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44773m;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                PositionProto positionProto = this.f44772l;
                return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
            }

            public PositionProto.Builder getStartBuilder() {
                onChanged();
                return m34667k().getBuilder();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public PositionProtoOrBuilder getStartOrBuilder() {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44773m;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                PositionProto positionProto = this.f44772l;
                return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public TableRowProto getTableRow(int i) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                return repeatedFieldBuilderV3 == null ? this.f44776p.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public TableRowProto.Builder getTableRowBuilder(int i) {
                return m34668l().getBuilder(i);
            }

            public List<TableRowProto.Builder> getTableRowBuilderList() {
                return m34668l().getBuilderList();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public int getTableRowCount() {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                return repeatedFieldBuilderV3 == null ? this.f44776p.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public List<TableRowProto> getTableRowList() {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f44776p) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public TableRowProtoOrBuilder getTableRowOrBuilder(int i) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                return repeatedFieldBuilderV3 == null ? this.f44776p.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public List<? extends TableRowProtoOrBuilder> getTableRowOrBuilderList() {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f44776p);
            }

            /* renamed from: h */
            public final void m34664h() {
                if ((this.f44769i & 8) != 8) {
                    this.f44776p = new ArrayList(this.f44776p);
                    this.f44769i |= 8;
                }
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public boolean hasEnd() {
                return (this.f44775o == null && this.f44774n == null) ? false : true;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public boolean hasPin() {
                return (this.f44771k == null && this.f44770j == null) ? false : true;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
            public boolean hasStart() {
                return (this.f44773m == null && this.f44772l == null) ? false : true;
            }

            /* renamed from: i */
            public final SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> m34665i() {
                if (this.f44775o == null) {
                    this.f44775o = new SingleFieldBuilderV3<>(getEnd(), getParentForChildren(), isClean());
                    this.f44774n = null;
                }
                return this.f44775o;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ReaderCacheProto.f44750l.ensureFieldAccessorsInitialized(TableCellProto.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> m34666j() {
                if (this.f44771k == null) {
                    this.f44771k = new SingleFieldBuilderV3<>(getPin(), getParentForChildren(), isClean());
                    this.f44770j = null;
                }
                return this.f44771k;
            }

            /* renamed from: k */
            public final SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> m34667k() {
                if (this.f44773m == null) {
                    this.f44773m = new SingleFieldBuilderV3<>(getStart(), getParentForChildren(), isClean());
                    this.f44772l = null;
                }
                return this.f44773m;
            }

            /* renamed from: l */
            public final RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> m34668l() {
                if (this.f44777q == null) {
                    this.f44777q = new RepeatedFieldBuilderV3<>(this.f44776p, (this.f44769i & 8) == 8, getParentForChildren(), isClean());
                    this.f44776p = null;
                }
                return this.f44777q;
            }

            /* renamed from: m */
            public final void m34669m() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m34668l();
                }
            }

            public Builder mergeEnd(PositionProto positionProto) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44775o;
                if (singleFieldBuilderV3 == null) {
                    PositionProto positionProto2 = this.f44774n;
                    if (positionProto2 != null) {
                        this.f44774n = PositionProto.newBuilder(positionProto2).mergeFrom(positionProto).buildPartial();
                    } else {
                        this.f44774n = positionProto;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(positionProto);
                }
                return this;
            }

            public Builder mergePin(PositionProto positionProto) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44771k;
                if (singleFieldBuilderV3 == null) {
                    PositionProto positionProto2 = this.f44770j;
                    if (positionProto2 != null) {
                        this.f44770j = PositionProto.newBuilder(positionProto2).mergeFrom(positionProto).buildPartial();
                    } else {
                        this.f44770j = positionProto;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(positionProto);
                }
                return this;
            }

            public Builder mergeStart(PositionProto positionProto) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44773m;
                if (singleFieldBuilderV3 == null) {
                    PositionProto positionProto2 = this.f44772l;
                    if (positionProto2 != null) {
                        this.f44772l = PositionProto.newBuilder(positionProto2).mergeFrom(positionProto).buildPartial();
                    } else {
                        this.f44772l = positionProto;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(positionProto);
                }
                return this;
            }

            public Builder removeTableRow(int i) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                if (repeatedFieldBuilderV3 == null) {
                    m34664h();
                    this.f44776p.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setEnd(PositionProto positionProto) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44775o;
                if (singleFieldBuilderV3 == null) {
                    positionProto.getClass();
                    this.f44774n = positionProto;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(positionProto);
                }
                return this;
            }

            public Builder setPin(PositionProto positionProto) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44771k;
                if (singleFieldBuilderV3 == null) {
                    positionProto.getClass();
                    this.f44770j = positionProto;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(positionProto);
                }
                return this;
            }

            public Builder setStart(PositionProto positionProto) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44773m;
                if (singleFieldBuilderV3 == null) {
                    positionProto.getClass();
                    this.f44772l = positionProto;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(positionProto);
                }
                return this;
            }

            public Builder setTableRow(int i, TableRowProto tableRowProto) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                if (repeatedFieldBuilderV3 == null) {
                    tableRowProto.getClass();
                    m34664h();
                    this.f44776p.set(i, tableRowProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, tableRowProto);
                }
                return this;
            }

            public /* synthetic */ Builder(C7589a c7589a) {
                this();
            }

            public Builder() {
                this.f44770j = null;
                this.f44772l = null;
                this.f44774n = null;
                this.f44776p = Collections.emptyList();
                m34669m();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TableCellProto build() {
                TableCellProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TableCellProto buildPartial() {
                TableCellProto tableCellProto = new TableCellProto(this, (C7589a) null);
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44771k;
                if (singleFieldBuilderV3 == null) {
                    tableCellProto.pin_ = this.f44770j;
                } else {
                    tableCellProto.pin_ = singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV32 = this.f44773m;
                if (singleFieldBuilderV32 == null) {
                    tableCellProto.start_ = this.f44772l;
                } else {
                    tableCellProto.start_ = singleFieldBuilderV32.build();
                }
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV33 = this.f44775o;
                if (singleFieldBuilderV33 == null) {
                    tableCellProto.end_ = this.f44774n;
                } else {
                    tableCellProto.end_ = singleFieldBuilderV33.build();
                }
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.f44769i & 8) == 8) {
                        this.f44776p = Collections.unmodifiableList(this.f44776p);
                        this.f44769i &= -9;
                    }
                    tableCellProto.tableRow_ = this.f44776p;
                } else {
                    tableCellProto.tableRow_ = repeatedFieldBuilderV3.build();
                }
                tableCellProto.bitField0_ = 0;
                onBuilt();
                return tableCellProto;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public TableCellProto getDefaultInstanceForType() {
                return TableCellProto.getDefaultInstance();
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

            public TableRowProto.Builder addTableRowBuilder(int i) {
                return m34668l().addBuilder(i, TableRowProto.getDefaultInstance());
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
                if (this.f44771k == null) {
                    this.f44770j = null;
                } else {
                    this.f44770j = null;
                    this.f44771k = null;
                }
                if (this.f44773m == null) {
                    this.f44772l = null;
                } else {
                    this.f44772l = null;
                    this.f44773m = null;
                }
                if (this.f44775o == null) {
                    this.f44774n = null;
                } else {
                    this.f44774n = null;
                    this.f44775o = null;
                }
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                if (repeatedFieldBuilderV3 == null) {
                    this.f44776p = Collections.emptyList();
                    this.f44769i &= -9;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder setEnd(PositionProto.Builder builder) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44775o;
                if (singleFieldBuilderV3 == null) {
                    this.f44774n = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setPin(PositionProto.Builder builder) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44771k;
                if (singleFieldBuilderV3 == null) {
                    this.f44770j = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setStart(PositionProto.Builder builder) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44773m;
                if (singleFieldBuilderV3 == null) {
                    this.f44772l = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder addTableRow(int i, TableRowProto tableRowProto) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                if (repeatedFieldBuilderV3 == null) {
                    tableRowProto.getClass();
                    m34664h();
                    this.f44776p.add(i, tableRowProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, tableRowProto);
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
                if (message instanceof TableCellProto) {
                    return mergeFrom((TableCellProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setTableRow(int i, TableRowProto.Builder builder) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                if (repeatedFieldBuilderV3 == null) {
                    m34664h();
                    this.f44776p.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f44770j = null;
                this.f44772l = null;
                this.f44774n = null;
                this.f44776p = Collections.emptyList();
                m34669m();
            }

            public Builder mergeFrom(TableCellProto tableCellProto) {
                if (tableCellProto == TableCellProto.getDefaultInstance()) {
                    return this;
                }
                if (tableCellProto.hasPin()) {
                    mergePin(tableCellProto.getPin());
                }
                if (tableCellProto.hasStart()) {
                    mergeStart(tableCellProto.getStart());
                }
                if (tableCellProto.hasEnd()) {
                    mergeEnd(tableCellProto.getEnd());
                }
                if (this.f44777q == null) {
                    if (!tableCellProto.tableRow_.isEmpty()) {
                        if (this.f44776p.isEmpty()) {
                            this.f44776p = tableCellProto.tableRow_;
                            this.f44769i &= -9;
                        } else {
                            m34664h();
                            this.f44776p.addAll(tableCellProto.tableRow_);
                        }
                        onChanged();
                    }
                } else if (!tableCellProto.tableRow_.isEmpty()) {
                    if (this.f44777q.isEmpty()) {
                        this.f44777q.dispose();
                        this.f44777q = null;
                        this.f44776p = tableCellProto.tableRow_;
                        this.f44769i &= -9;
                        this.f44777q = GeneratedMessageV3.alwaysUseFieldBuilders ? m34668l() : null;
                    } else {
                        this.f44777q.addAllMessages(tableCellProto.tableRow_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) tableCellProto).unknownFields);
                onChanged();
                return this;
            }

            public Builder addTableRow(TableRowProto.Builder builder) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                if (repeatedFieldBuilderV3 == null) {
                    m34664h();
                    this.f44776p.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addTableRow(int i, TableRowProto.Builder builder) {
                RepeatedFieldBuilderV3<TableRowProto, TableRowProto.Builder, TableRowProtoOrBuilder> repeatedFieldBuilderV3 = this.f44777q;
                if (repeatedFieldBuilderV3 == null) {
                    m34664h();
                    this.f44776p.add(i, builder.build());
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
            public com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProto.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProto.access$7700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$TableCellProto r3 = (com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProto) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$TableCellProto r4 = (com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProto) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProto.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$TableCellProto$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$TableCellProto$a */
        /* loaded from: classes8.dex */
        public class C7587a extends AbstractParser<TableCellProto> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public TableCellProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new TableCellProto(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ TableCellProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7589a c7589a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static TableCellProto getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ReaderCacheProto.f44749k;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TableCellProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TableCellProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static TableCellProto parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<TableCellProto> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TableCellProto)) {
                return super.equals(obj);
            }
            TableCellProto tableCellProto = (TableCellProto) obj;
            boolean z = hasPin() == tableCellProto.hasPin();
            if (hasPin()) {
                z = z && getPin().equals(tableCellProto.getPin());
            }
            boolean z2 = z && hasStart() == tableCellProto.hasStart();
            if (hasStart()) {
                z2 = z2 && getStart().equals(tableCellProto.getStart());
            }
            boolean z3 = z2 && hasEnd() == tableCellProto.hasEnd();
            if (hasEnd()) {
                z3 = z3 && getEnd().equals(tableCellProto.getEnd());
            }
            return (z3 && getTableRowList().equals(tableCellProto.getTableRowList())) && this.unknownFields.equals(tableCellProto.unknownFields);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public PositionProto getEnd() {
            PositionProto positionProto = this.end_;
            return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public PositionProtoOrBuilder getEndOrBuilder() {
            return getEnd();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<TableCellProto> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public PositionProto getPin() {
            PositionProto positionProto = this.pin_;
            return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public PositionProtoOrBuilder getPinOrBuilder() {
            return getPin();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeMessageSize = this.pin_ != null ? CodedOutputStream.computeMessageSize(1, getPin()) + 0 : 0;
            if (this.start_ != null) {
                computeMessageSize += CodedOutputStream.computeMessageSize(2, getStart());
            }
            if (this.end_ != null) {
                computeMessageSize += CodedOutputStream.computeMessageSize(3, getEnd());
            }
            for (int i2 = 0; i2 < this.tableRow_.size(); i2++) {
                computeMessageSize += CodedOutputStream.computeMessageSize(4, this.tableRow_.get(i2));
            }
            int serializedSize = computeMessageSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public PositionProto getStart() {
            PositionProto positionProto = this.start_;
            return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public PositionProtoOrBuilder getStartOrBuilder() {
            return getStart();
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public TableRowProto getTableRow(int i) {
            return this.tableRow_.get(i);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public int getTableRowCount() {
            return this.tableRow_.size();
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public List<TableRowProto> getTableRowList() {
            return this.tableRow_;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public TableRowProtoOrBuilder getTableRowOrBuilder(int i) {
            return this.tableRow_.get(i);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public List<? extends TableRowProtoOrBuilder> getTableRowOrBuilderList() {
            return this.tableRow_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public boolean hasEnd() {
            return this.end_ != null;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public boolean hasPin() {
            return this.pin_ != null;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableCellProtoOrBuilder
        public boolean hasStart() {
            return this.start_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasPin()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getPin().hashCode();
            }
            if (hasStart()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getStart().hashCode();
            }
            if (hasEnd()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getEnd().hashCode();
            }
            if (getTableRowCount() > 0) {
                hashCode = (((hashCode * 37) + 4) * 53) + getTableRowList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ReaderCacheProto.f44750l.ensureFieldAccessorsInitialized(TableCellProto.class, Builder.class);
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
            if (this.pin_ != null) {
                codedOutputStream.writeMessage(1, getPin());
            }
            if (this.start_ != null) {
                codedOutputStream.writeMessage(2, getStart());
            }
            if (this.end_ != null) {
                codedOutputStream.writeMessage(3, getEnd());
            }
            for (int i = 0; i < this.tableRow_.size(); i++) {
                codedOutputStream.writeMessage(4, this.tableRow_.get(i));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ TableCellProto(GeneratedMessageV3.Builder builder, C7589a c7589a) {
            this(builder);
        }

        public static Builder newBuilder(TableCellProto tableCellProto) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(tableCellProto);
        }

        public static TableCellProto parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private TableCellProto(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TableCellProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TableCellProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static TableCellProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public TableCellProto getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7589a c7589a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7589a) : new Builder(c7589a).mergeFrom(this);
        }

        public static TableCellProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private TableCellProto() {
            this.memoizedIsInitialized = (byte) -1;
            this.tableRow_ = Collections.emptyList();
        }

        public static TableCellProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static TableCellProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static TableCellProto parseFrom(InputStream inputStream) throws IOException {
            return (TableCellProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private TableCellProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            PositionProto.Builder builder;
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            int i = 0;
            while (true) {
                if (z) {
                    break;
                }
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    PositionProto positionProto = this.pin_;
                                    builder = positionProto != null ? positionProto.toBuilder() : null;
                                    PositionProto positionProto2 = (PositionProto) codedInputStream.readMessage(PositionProto.parser(), extensionRegistryLite);
                                    this.pin_ = positionProto2;
                                    if (builder != null) {
                                        builder.mergeFrom(positionProto2);
                                        this.pin_ = builder.buildPartial();
                                    }
                                } else if (readTag == 18) {
                                    PositionProto positionProto3 = this.start_;
                                    builder = positionProto3 != null ? positionProto3.toBuilder() : null;
                                    PositionProto positionProto4 = (PositionProto) codedInputStream.readMessage(PositionProto.parser(), extensionRegistryLite);
                                    this.start_ = positionProto4;
                                    if (builder != null) {
                                        builder.mergeFrom(positionProto4);
                                        this.start_ = builder.buildPartial();
                                    }
                                } else if (readTag == 26) {
                                    PositionProto positionProto5 = this.end_;
                                    builder = positionProto5 != null ? positionProto5.toBuilder() : null;
                                    PositionProto positionProto6 = (PositionProto) codedInputStream.readMessage(PositionProto.parser(), extensionRegistryLite);
                                    this.end_ = positionProto6;
                                    if (builder != null) {
                                        builder.mergeFrom(positionProto6);
                                        this.end_ = builder.buildPartial();
                                    }
                                } else if (readTag != 34) {
                                    if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                    }
                                } else {
                                    if ((i & 8) != 8) {
                                        this.tableRow_ = new ArrayList();
                                        i |= 8;
                                    }
                                    this.tableRow_.add((TableRowProto) codedInputStream.readMessage(TableRowProto.parser(), extensionRegistryLite));
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    if ((i & 8) == 8) {
                        this.tableRow_ = Collections.unmodifiableList(this.tableRow_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static TableCellProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TableCellProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static TableCellProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (TableCellProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static TableCellProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TableCellProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface TableCellProtoOrBuilder extends MessageOrBuilder {
        PositionProto getEnd();

        PositionProtoOrBuilder getEndOrBuilder();

        PositionProto getPin();

        PositionProtoOrBuilder getPinOrBuilder();

        PositionProto getStart();

        PositionProtoOrBuilder getStartOrBuilder();

        TableRowProto getTableRow(int i);

        int getTableRowCount();

        List<TableRowProto> getTableRowList();

        TableRowProtoOrBuilder getTableRowOrBuilder(int i);

        List<? extends TableRowProtoOrBuilder> getTableRowOrBuilderList();

        boolean hasEnd();

        boolean hasPin();

        boolean hasStart();
    }

    /* loaded from: classes8.dex */
    public static final class TableRowProto extends GeneratedMessageV3 implements TableRowProtoOrBuilder {
        private static final TableRowProto DEFAULT_INSTANCE = new TableRowProto();
        private static final Parser<TableRowProto> PARSER = new C7588a();
        public static final int PIN_FIELD_NUMBER = 1;
        public static final int TABLECELL_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private PositionProto pin_;
        private List<TableCellProto> tableCell_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements TableRowProtoOrBuilder {

            /* renamed from: i */
            public int f44778i;

            /* renamed from: j */
            public PositionProto f44779j;

            /* renamed from: k */
            public SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> f44780k;

            /* renamed from: l */
            public List<TableCellProto> f44781l;

            /* renamed from: m */
            public RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> f44782m;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7589a c7589a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ReaderCacheProto.f44747i;
            }

            public Builder addAllTableCell(Iterable<? extends TableCellProto> iterable) {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                if (repeatedFieldBuilderV3 == null) {
                    m34671h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f44781l);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addTableCell(TableCellProto tableCellProto) {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                if (repeatedFieldBuilderV3 == null) {
                    tableCellProto.getClass();
                    m34671h();
                    this.f44781l.add(tableCellProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(tableCellProto);
                }
                return this;
            }

            public TableCellProto.Builder addTableCellBuilder() {
                return m34673j().addBuilder(TableCellProto.getDefaultInstance());
            }

            public Builder clearPin() {
                if (this.f44780k == null) {
                    this.f44779j = null;
                    onChanged();
                } else {
                    this.f44779j = null;
                    this.f44780k = null;
                }
                return this;
            }

            public Builder clearTableCell() {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                if (repeatedFieldBuilderV3 == null) {
                    this.f44781l = Collections.emptyList();
                    this.f44778i &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ReaderCacheProto.f44747i;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
            public PositionProto getPin() {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44780k;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                PositionProto positionProto = this.f44779j;
                return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
            }

            public PositionProto.Builder getPinBuilder() {
                onChanged();
                return m34672i().getBuilder();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
            public PositionProtoOrBuilder getPinOrBuilder() {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44780k;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                PositionProto positionProto = this.f44779j;
                return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
            public TableCellProto getTableCell(int i) {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                return repeatedFieldBuilderV3 == null ? this.f44781l.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public TableCellProto.Builder getTableCellBuilder(int i) {
                return m34673j().getBuilder(i);
            }

            public List<TableCellProto.Builder> getTableCellBuilderList() {
                return m34673j().getBuilderList();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
            public int getTableCellCount() {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                return repeatedFieldBuilderV3 == null ? this.f44781l.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
            public List<TableCellProto> getTableCellList() {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f44781l) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
            public TableCellProtoOrBuilder getTableCellOrBuilder(int i) {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                return repeatedFieldBuilderV3 == null ? this.f44781l.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
            public List<? extends TableCellProtoOrBuilder> getTableCellOrBuilderList() {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f44781l);
            }

            /* renamed from: h */
            public final void m34671h() {
                if ((this.f44778i & 2) != 2) {
                    this.f44781l = new ArrayList(this.f44781l);
                    this.f44778i |= 2;
                }
            }

            @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
            public boolean hasPin() {
                return (this.f44780k == null && this.f44779j == null) ? false : true;
            }

            /* renamed from: i */
            public final SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> m34672i() {
                if (this.f44780k == null) {
                    this.f44780k = new SingleFieldBuilderV3<>(getPin(), getParentForChildren(), isClean());
                    this.f44779j = null;
                }
                return this.f44780k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ReaderCacheProto.f44748j.ensureFieldAccessorsInitialized(TableRowProto.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> m34673j() {
                if (this.f44782m == null) {
                    this.f44782m = new RepeatedFieldBuilderV3<>(this.f44781l, (this.f44778i & 2) == 2, getParentForChildren(), isClean());
                    this.f44781l = null;
                }
                return this.f44782m;
            }

            /* renamed from: k */
            public final void m34674k() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m34673j();
                }
            }

            public Builder mergePin(PositionProto positionProto) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44780k;
                if (singleFieldBuilderV3 == null) {
                    PositionProto positionProto2 = this.f44779j;
                    if (positionProto2 != null) {
                        this.f44779j = PositionProto.newBuilder(positionProto2).mergeFrom(positionProto).buildPartial();
                    } else {
                        this.f44779j = positionProto;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(positionProto);
                }
                return this;
            }

            public Builder removeTableCell(int i) {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                if (repeatedFieldBuilderV3 == null) {
                    m34671h();
                    this.f44781l.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setPin(PositionProto positionProto) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44780k;
                if (singleFieldBuilderV3 == null) {
                    positionProto.getClass();
                    this.f44779j = positionProto;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(positionProto);
                }
                return this;
            }

            public Builder setTableCell(int i, TableCellProto tableCellProto) {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                if (repeatedFieldBuilderV3 == null) {
                    tableCellProto.getClass();
                    m34671h();
                    this.f44781l.set(i, tableCellProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, tableCellProto);
                }
                return this;
            }

            public /* synthetic */ Builder(C7589a c7589a) {
                this();
            }

            public Builder() {
                this.f44779j = null;
                this.f44781l = Collections.emptyList();
                m34674k();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TableRowProto build() {
                TableRowProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TableRowProto buildPartial() {
                TableRowProto tableRowProto = new TableRowProto(this, (C7589a) null);
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44780k;
                if (singleFieldBuilderV3 == null) {
                    tableRowProto.pin_ = this.f44779j;
                } else {
                    tableRowProto.pin_ = singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.f44778i & 2) == 2) {
                        this.f44781l = Collections.unmodifiableList(this.f44781l);
                        this.f44778i &= -3;
                    }
                    tableRowProto.tableCell_ = this.f44781l;
                } else {
                    tableRowProto.tableCell_ = repeatedFieldBuilderV3.build();
                }
                tableRowProto.bitField0_ = 0;
                onBuilt();
                return tableRowProto;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public TableRowProto getDefaultInstanceForType() {
                return TableRowProto.getDefaultInstance();
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

            public TableCellProto.Builder addTableCellBuilder(int i) {
                return m34673j().addBuilder(i, TableCellProto.getDefaultInstance());
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
                if (this.f44780k == null) {
                    this.f44779j = null;
                } else {
                    this.f44779j = null;
                    this.f44780k = null;
                }
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                if (repeatedFieldBuilderV3 == null) {
                    this.f44781l = Collections.emptyList();
                    this.f44778i &= -3;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder setPin(PositionProto.Builder builder) {
                SingleFieldBuilderV3<PositionProto, PositionProto.Builder, PositionProtoOrBuilder> singleFieldBuilderV3 = this.f44780k;
                if (singleFieldBuilderV3 == null) {
                    this.f44779j = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f44779j = null;
                this.f44781l = Collections.emptyList();
                m34674k();
            }

            public Builder addTableCell(int i, TableCellProto tableCellProto) {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                if (repeatedFieldBuilderV3 == null) {
                    tableCellProto.getClass();
                    m34671h();
                    this.f44781l.add(i, tableCellProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, tableCellProto);
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
                if (message instanceof TableRowProto) {
                    return mergeFrom((TableRowProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setTableCell(int i, TableCellProto.Builder builder) {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                if (repeatedFieldBuilderV3 == null) {
                    m34671h();
                    this.f44781l.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(TableRowProto tableRowProto) {
                if (tableRowProto == TableRowProto.getDefaultInstance()) {
                    return this;
                }
                if (tableRowProto.hasPin()) {
                    mergePin(tableRowProto.getPin());
                }
                if (this.f44782m == null) {
                    if (!tableRowProto.tableCell_.isEmpty()) {
                        if (this.f44781l.isEmpty()) {
                            this.f44781l = tableRowProto.tableCell_;
                            this.f44778i &= -3;
                        } else {
                            m34671h();
                            this.f44781l.addAll(tableRowProto.tableCell_);
                        }
                        onChanged();
                    }
                } else if (!tableRowProto.tableCell_.isEmpty()) {
                    if (this.f44782m.isEmpty()) {
                        this.f44782m.dispose();
                        this.f44782m = null;
                        this.f44781l = tableRowProto.tableCell_;
                        this.f44778i &= -3;
                        this.f44782m = GeneratedMessageV3.alwaysUseFieldBuilders ? m34673j() : null;
                    } else {
                        this.f44782m.addAllMessages(tableRowProto.tableCell_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) tableRowProto).unknownFields);
                onChanged();
                return this;
            }

            public Builder addTableCell(TableCellProto.Builder builder) {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                if (repeatedFieldBuilderV3 == null) {
                    m34671h();
                    this.f44781l.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addTableCell(int i, TableCellProto.Builder builder) {
                RepeatedFieldBuilderV3<TableCellProto, TableCellProto.Builder, TableCellProtoOrBuilder> repeatedFieldBuilderV3 = this.f44782m;
                if (repeatedFieldBuilderV3 == null) {
                    m34671h();
                    this.f44781l.add(i, builder.build());
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
            public com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProto.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProto.access$6200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$TableRowProto r3 = (com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProto) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$TableRowProto r4 = (com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProto) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProto.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$TableRowProto$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$TableRowProto$a */
        /* loaded from: classes8.dex */
        public class C7588a extends AbstractParser<TableRowProto> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public TableRowProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new TableRowProto(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ TableRowProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7589a c7589a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static TableRowProto getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ReaderCacheProto.f44747i;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TableRowProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TableRowProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static TableRowProto parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<TableRowProto> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TableRowProto)) {
                return super.equals(obj);
            }
            TableRowProto tableRowProto = (TableRowProto) obj;
            boolean z = hasPin() == tableRowProto.hasPin();
            if (hasPin()) {
                z = z && getPin().equals(tableRowProto.getPin());
            }
            return (z && getTableCellList().equals(tableRowProto.getTableCellList())) && this.unknownFields.equals(tableRowProto.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<TableRowProto> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
        public PositionProto getPin() {
            PositionProto positionProto = this.pin_;
            return positionProto == null ? PositionProto.getDefaultInstance() : positionProto;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
        public PositionProtoOrBuilder getPinOrBuilder() {
            return getPin();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeMessageSize = this.pin_ != null ? CodedOutputStream.computeMessageSize(1, getPin()) + 0 : 0;
            for (int i2 = 0; i2 < this.tableCell_.size(); i2++) {
                computeMessageSize += CodedOutputStream.computeMessageSize(2, this.tableCell_.get(i2));
            }
            int serializedSize = computeMessageSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
        public TableCellProto getTableCell(int i) {
            return this.tableCell_.get(i);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
        public int getTableCellCount() {
            return this.tableCell_.size();
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
        public List<TableCellProto> getTableCellList() {
            return this.tableCell_;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
        public TableCellProtoOrBuilder getTableCellOrBuilder(int i) {
            return this.tableCell_.get(i);
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
        public List<? extends TableCellProtoOrBuilder> getTableCellOrBuilderList() {
            return this.tableCell_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto.TableRowProtoOrBuilder
        public boolean hasPin() {
            return this.pin_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasPin()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getPin().hashCode();
            }
            if (getTableCellCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getTableCellList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ReaderCacheProto.f44748j.ensureFieldAccessorsInitialized(TableRowProto.class, Builder.class);
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
            if (this.pin_ != null) {
                codedOutputStream.writeMessage(1, getPin());
            }
            for (int i = 0; i < this.tableCell_.size(); i++) {
                codedOutputStream.writeMessage(2, this.tableCell_.get(i));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ TableRowProto(GeneratedMessageV3.Builder builder, C7589a c7589a) {
            this(builder);
        }

        public static Builder newBuilder(TableRowProto tableRowProto) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(tableRowProto);
        }

        public static TableRowProto parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private TableRowProto(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TableRowProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TableRowProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static TableRowProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public TableRowProto getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7589a c7589a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7589a) : new Builder(c7589a).mergeFrom(this);
        }

        public static TableRowProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private TableRowProto() {
            this.memoizedIsInitialized = (byte) -1;
            this.tableCell_ = Collections.emptyList();
        }

        public static TableRowProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static TableRowProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static TableRowProto parseFrom(InputStream inputStream) throws IOException {
            return (TableRowProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private TableRowProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            int i = 0;
            while (true) {
                if (z) {
                    break;
                }
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                PositionProto positionProto = this.pin_;
                                PositionProto.Builder builder = positionProto != null ? positionProto.toBuilder() : null;
                                PositionProto positionProto2 = (PositionProto) codedInputStream.readMessage(PositionProto.parser(), extensionRegistryLite);
                                this.pin_ = positionProto2;
                                if (builder != null) {
                                    builder.mergeFrom(positionProto2);
                                    this.pin_ = builder.buildPartial();
                                }
                            } else if (readTag != 18) {
                                if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            } else {
                                if ((i & 2) != 2) {
                                    this.tableCell_ = new ArrayList();
                                    i |= 2;
                                }
                                this.tableCell_.add((TableCellProto) codedInputStream.readMessage(TableCellProto.parser(), extensionRegistryLite));
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    if ((i & 2) == 2) {
                        this.tableCell_ = Collections.unmodifiableList(this.tableCell_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static TableRowProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TableRowProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static TableRowProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (TableRowProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static TableRowProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TableRowProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface TableRowProtoOrBuilder extends MessageOrBuilder {
        PositionProto getPin();

        PositionProtoOrBuilder getPinOrBuilder();

        TableCellProto getTableCell(int i);

        int getTableCellCount();

        List<TableCellProto> getTableCellList();

        TableCellProtoOrBuilder getTableCellOrBuilder(int i);

        List<? extends TableCellProtoOrBuilder> getTableCellOrBuilderList();

        boolean hasPin();
    }

    /* renamed from: com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto$a */
    /* loaded from: classes8.dex */
    public class C7589a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = ReaderCacheProto.f44751m = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0016ReaderCacheProto.proto\"7\n\u0015ChapterCacheListProto\u0012\u001e\n\u0005cache\u0018\u0001 \u0003(\u000b2\u000f.RangeListProto\"=\n\u000eRangeListProto\u0012\u000f\n\u0007chapter\u0018\u0001 \u0001(\u0005\u0012\u001a\n\u0005range\u0018\u0002 \u0003(\u000b2\u000b.RangeProto\"P\n\nRangeProto\u0012 \n\bposition\u0018\u0001 \u0001(\u000b2\u000e.PositionProto\u0012 \n\btableRow\u0018\u0002 \u0003(\u000b2\u000e.TableRowProto\"d\n\rPositionProto\u0012\r\n\u0005xpath\u0018\u0001 \u0003(\u0005\u0012\u0014\n\fnodePosition\u0018\u0002 \u0001(\u0005\u0012\u0017\n\u000ftextStartOffset\u0018\u0003 \u0001(\u0005\u0012\u0015\n\rtextEndOffset\u0018\u0004 \u0001(\u0005\"P\n\rTableRowProto\u0012\u001b\n\u0003pin\u0018\u0001 \u0001(\u000b2\u000e.PositionProto\u0012\"\n\ttableCell\u0018\u0002 \u0003(\u000b2\u000f.TableCellProto\"\u008b\u0001\n\u000eTableCellProto\u0012\u001b\n\u0003pin\u0018\u0001 \u0001(\u000b2\u000e.PositionProto\u0012\u001d\n\u0005start\u0018\u0002 \u0001(\u000b2\u000e.PositionProto\u0012\u001b\n\u0003end\u0018\u0003 \u0001(\u000b2\u000e.PositionProto\u0012 \n\btableRow\u0018\u0004 \u0003(\u000b2\u000e.TableRowProtoB(\n&com.onyx.android.sdk.reader.cbox.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7589a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f44739a = descriptor;
        f44740b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Cache"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f44741c = descriptor2;
        f44742d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Chapter", "Range"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(2);
        f44743e = descriptor3;
        f44744f = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"Position", "TableRow"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(3);
        f44745g = descriptor4;
        f44746h = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"Xpath", "NodePosition", "TextStartOffset", "TextEndOffset"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(4);
        f44747i = descriptor5;
        f44748j = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"Pin", "TableCell"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(5);
        f44749k = descriptor6;
        f44750l = new GeneratedMessageV3.FieldAccessorTable(descriptor6, new String[]{"Pin", "Start", "End", "TableRow"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f44751m;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
