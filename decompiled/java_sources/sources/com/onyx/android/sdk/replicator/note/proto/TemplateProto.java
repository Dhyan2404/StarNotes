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
public final class TemplateProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45852a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45853b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45854c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45855d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45856e;

    /* loaded from: classes8.dex */
    public static final class Template extends GeneratedMessageV3 implements TemplateOrBuilder {
        public static final int CATEGORYID_FIELD_NUMBER = 10;
        public static final int CONTENTPAGEID_FIELD_NUMBER = 11;
        public static final int CREATEDAT_FIELD_NUMBER = 2;
        public static final int ORDERINDEX_FIELD_NUMBER = 13;
        public static final int ORIENTATION_FIELD_NUMBER = 6;
        public static final int RESOURCELIST_FIELD_NUMBER = 9;
        public static final int SIZEFORMAT_FIELD_NUMBER = 7;
        public static final int SOURCE_FIELD_NUMBER = 14;
        public static final int STATUS_FIELD_NUMBER = 15;
        public static final int TEMPLATEARGS_FIELD_NUMBER = 12;
        public static final int TITLERESNAME_FIELD_NUMBER = 5;
        public static final int TITLE_FIELD_NUMBER = 4;
        public static final int TYPE_FIELD_NUMBER = 8;
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
        private volatile Object templateArgs_;
        private volatile Object titleResName_;
        private volatile Object title_;
        private int type_;
        private volatile Object uniqueId_;
        private long updatedAt_;
        private static final Template DEFAULT_INSTANCE = new Template();
        private static final Parser<Template> PARSER = new C7781a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements TemplateOrBuilder {

            /* renamed from: i */
            public Object f45857i;

            /* renamed from: j */
            public long f45858j;

            /* renamed from: k */
            public long f45859k;

            /* renamed from: l */
            public Object f45860l;

            /* renamed from: m */
            public Object f45861m;

            /* renamed from: n */
            public int f45862n;

            /* renamed from: o */
            public Object f45863o;

            /* renamed from: p */
            public int f45864p;

            /* renamed from: q */
            public Object f45865q;

            /* renamed from: r */
            public Object f45866r;

            /* renamed from: s */
            public Object f45867s;

            /* renamed from: t */
            public Object f45868t;

            /* renamed from: u */
            public float f45869u;

            /* renamed from: v */
            public int f45870v;

            /* renamed from: w */
            public int f45871w;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7783a c7783a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return TemplateProto.f45854c;
            }

            public Builder clearCategoryId() {
                this.f45866r = Template.getDefaultInstance().getCategoryId();
                onChanged();
                return this;
            }

            public Builder clearContentPageId() {
                this.f45867s = Template.getDefaultInstance().getContentPageId();
                onChanged();
                return this;
            }

            public Builder clearCreatedAt() {
                this.f45858j = 0L;
                onChanged();
                return this;
            }

            public Builder clearOrderIndex() {
                this.f45869u = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearOrientation() {
                this.f45862n = 0;
                onChanged();
                return this;
            }

            public Builder clearResourceList() {
                this.f45865q = Template.getDefaultInstance().getResourceList();
                onChanged();
                return this;
            }

            public Builder clearSizeFormat() {
                this.f45863o = Template.getDefaultInstance().getSizeFormat();
                onChanged();
                return this;
            }

            public Builder clearSource() {
                this.f45870v = 0;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.f45871w = 0;
                onChanged();
                return this;
            }

            public Builder clearTemplateArgs() {
                this.f45868t = Template.getDefaultInstance().getTemplateArgs();
                onChanged();
                return this;
            }

            public Builder clearTitle() {
                this.f45860l = Template.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            public Builder clearTitleResName() {
                this.f45861m = Template.getDefaultInstance().getTitleResName();
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.f45864p = 0;
                onChanged();
                return this;
            }

            public Builder clearUniqueId() {
                this.f45857i = Template.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45859k = 0L;
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public String getCategoryId() {
                Object obj = this.f45866r;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45866r = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public ByteString getCategoryIdBytes() {
                Object obj = this.f45866r;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45866r = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public String getContentPageId() {
                Object obj = this.f45867s;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45867s = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public ByteString getContentPageIdBytes() {
                Object obj = this.f45867s;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45867s = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public long getCreatedAt() {
                return this.f45858j;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return TemplateProto.f45854c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public float getOrderIndex() {
                return this.f45869u;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public int getOrientation() {
                return this.f45862n;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public String getResourceList() {
                Object obj = this.f45865q;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45865q = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public ByteString getResourceListBytes() {
                Object obj = this.f45865q;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45865q = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public String getSizeFormat() {
                Object obj = this.f45863o;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45863o = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public ByteString getSizeFormatBytes() {
                Object obj = this.f45863o;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45863o = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public int getSource() {
                return this.f45870v;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public int getStatus() {
                return this.f45871w;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public String getTemplateArgs() {
                Object obj = this.f45868t;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45868t = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public ByteString getTemplateArgsBytes() {
                Object obj = this.f45868t;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45868t = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public String getTitle() {
                Object obj = this.f45860l;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45860l = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public ByteString getTitleBytes() {
                Object obj = this.f45860l;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45860l = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public String getTitleResName() {
                Object obj = this.f45861m;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45861m = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public ByteString getTitleResNameBytes() {
                Object obj = this.f45861m;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45861m = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public int getType() {
                return this.f45864p;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public String getUniqueId() {
                Object obj = this.f45857i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45857i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public ByteString getUniqueIdBytes() {
                Object obj = this.f45857i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45857i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
            public long getUpdatedAt() {
                return this.f45859k;
            }

            /* renamed from: h */
            public final void m35356h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return TemplateProto.f45855d.ensureFieldAccessorsInitialized(Template.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setCategoryId(String str) {
                str.getClass();
                this.f45866r = str;
                onChanged();
                return this;
            }

            public Builder setCategoryIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45866r = byteString;
                onChanged();
                return this;
            }

            public Builder setContentPageId(String str) {
                str.getClass();
                this.f45867s = str;
                onChanged();
                return this;
            }

            public Builder setContentPageIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45867s = byteString;
                onChanged();
                return this;
            }

            public Builder setCreatedAt(long j) {
                this.f45858j = j;
                onChanged();
                return this;
            }

            public Builder setOrderIndex(float f) {
                this.f45869u = f;
                onChanged();
                return this;
            }

            public Builder setOrientation(int i) {
                this.f45862n = i;
                onChanged();
                return this;
            }

            public Builder setResourceList(String str) {
                str.getClass();
                this.f45865q = str;
                onChanged();
                return this;
            }

            public Builder setResourceListBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45865q = byteString;
                onChanged();
                return this;
            }

            public Builder setSizeFormat(String str) {
                str.getClass();
                this.f45863o = str;
                onChanged();
                return this;
            }

            public Builder setSizeFormatBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45863o = byteString;
                onChanged();
                return this;
            }

            public Builder setSource(int i) {
                this.f45870v = i;
                onChanged();
                return this;
            }

            public Builder setStatus(int i) {
                this.f45871w = i;
                onChanged();
                return this;
            }

            public Builder setTemplateArgs(String str) {
                str.getClass();
                this.f45868t = str;
                onChanged();
                return this;
            }

            public Builder setTemplateArgsBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45868t = byteString;
                onChanged();
                return this;
            }

            public Builder setTitle(String str) {
                str.getClass();
                this.f45860l = str;
                onChanged();
                return this;
            }

            public Builder setTitleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45860l = byteString;
                onChanged();
                return this;
            }

            public Builder setTitleResName(String str) {
                str.getClass();
                this.f45861m = str;
                onChanged();
                return this;
            }

            public Builder setTitleResNameBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45861m = byteString;
                onChanged();
                return this;
            }

            public Builder setType(int i) {
                this.f45864p = i;
                onChanged();
                return this;
            }

            public Builder setUniqueId(String str) {
                str.getClass();
                this.f45857i = str;
                onChanged();
                return this;
            }

            public Builder setUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45857i = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45859k = j;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7783a c7783a) {
                this();
            }

            public Builder() {
                this.f45857i = "";
                this.f45860l = "";
                this.f45861m = "";
                this.f45863o = "";
                this.f45865q = "";
                this.f45866r = "";
                this.f45867s = "";
                this.f45868t = "";
                m35356h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Template build() {
                Template buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Template buildPartial() {
                Template template = new Template(this, (C7783a) null);
                template.uniqueId_ = this.f45857i;
                template.createdAt_ = this.f45858j;
                template.updatedAt_ = this.f45859k;
                template.title_ = this.f45860l;
                template.titleResName_ = this.f45861m;
                template.orientation_ = this.f45862n;
                template.sizeFormat_ = this.f45863o;
                template.type_ = this.f45864p;
                template.resourceList_ = this.f45865q;
                template.categoryId_ = this.f45866r;
                template.contentPageId_ = this.f45867s;
                template.templateArgs_ = this.f45868t;
                template.orderIndex_ = this.f45869u;
                template.source_ = this.f45870v;
                template.status_ = this.f45871w;
                onBuilt();
                return template;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Template getDefaultInstanceForType() {
                return Template.getDefaultInstance();
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
                this.f45857i = "";
                this.f45858j = 0L;
                this.f45859k = 0L;
                this.f45860l = "";
                this.f45861m = "";
                this.f45862n = 0;
                this.f45863o = "";
                this.f45864p = 0;
                this.f45865q = "";
                this.f45866r = "";
                this.f45867s = "";
                this.f45868t = "";
                this.f45869u = 0.0f;
                this.f45870v = 0;
                this.f45871w = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof Template) {
                    return mergeFrom((Template) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Template template) {
                if (template == Template.getDefaultInstance()) {
                    return this;
                }
                if (!template.getUniqueId().isEmpty()) {
                    this.f45857i = template.uniqueId_;
                    onChanged();
                }
                if (template.getCreatedAt() != 0) {
                    setCreatedAt(template.getCreatedAt());
                }
                if (template.getUpdatedAt() != 0) {
                    setUpdatedAt(template.getUpdatedAt());
                }
                if (!template.getTitle().isEmpty()) {
                    this.f45860l = template.title_;
                    onChanged();
                }
                if (!template.getTitleResName().isEmpty()) {
                    this.f45861m = template.titleResName_;
                    onChanged();
                }
                if (template.getOrientation() != 0) {
                    setOrientation(template.getOrientation());
                }
                if (!template.getSizeFormat().isEmpty()) {
                    this.f45863o = template.sizeFormat_;
                    onChanged();
                }
                if (template.getType() != 0) {
                    setType(template.getType());
                }
                if (!template.getResourceList().isEmpty()) {
                    this.f45865q = template.resourceList_;
                    onChanged();
                }
                if (!template.getCategoryId().isEmpty()) {
                    this.f45866r = template.categoryId_;
                    onChanged();
                }
                if (!template.getContentPageId().isEmpty()) {
                    this.f45867s = template.contentPageId_;
                    onChanged();
                }
                if (!template.getTemplateArgs().isEmpty()) {
                    this.f45868t = template.templateArgs_;
                    onChanged();
                }
                if (template.getOrderIndex() != 0.0f) {
                    setOrderIndex(template.getOrderIndex());
                }
                if (template.getSource() != 0) {
                    setSource(template.getSource());
                }
                if (template.getStatus() != 0) {
                    setStatus(template.getStatus());
                }
                mergeUnknownFields(((GeneratedMessageV3) template).unknownFields);
                onChanged();
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45857i = "";
                this.f45860l = "";
                this.f45861m = "";
                this.f45863o = "";
                this.f45865q = "";
                this.f45866r = "";
                this.f45867s = "";
                this.f45868t = "";
                m35356h();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.TemplateProto.Template.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.TemplateProto.Template.access$3300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.TemplateProto$Template r3 = (com.onyx.android.sdk.replicator.note.proto.TemplateProto.Template) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.TemplateProto$Template r4 = (com.onyx.android.sdk.replicator.note.proto.TemplateProto.Template) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.TemplateProto.Template.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.TemplateProto$Template$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.TemplateProto$Template$a */
        /* loaded from: classes8.dex */
        public class C7781a extends AbstractParser<Template> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public Template parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Template(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ Template(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7783a c7783a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static Template getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return TemplateProto.f45854c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Template parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Template) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Template parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<Template> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Template)) {
                return super.equals(obj);
            }
            Template template = (Template) obj;
            return (((((((((((((((getUniqueId().equals(template.getUniqueId())) && (getCreatedAt() > template.getCreatedAt() ? 1 : (getCreatedAt() == template.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > template.getUpdatedAt() ? 1 : (getUpdatedAt() == template.getUpdatedAt() ? 0 : -1)) == 0) && getTitle().equals(template.getTitle())) && getTitleResName().equals(template.getTitleResName())) && getOrientation() == template.getOrientation()) && getSizeFormat().equals(template.getSizeFormat())) && getType() == template.getType()) && getResourceList().equals(template.getResourceList())) && getCategoryId().equals(template.getCategoryId())) && getContentPageId().equals(template.getContentPageId())) && getTemplateArgs().equals(template.getTemplateArgs())) && Float.floatToIntBits(getOrderIndex()) == Float.floatToIntBits(template.getOrderIndex())) && getSource() == template.getSource()) && getStatus() == template.getStatus()) && this.unknownFields.equals(template.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public String getCategoryId() {
            Object obj = this.categoryId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.categoryId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public ByteString getCategoryIdBytes() {
            Object obj = this.categoryId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.categoryId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public String getContentPageId() {
            Object obj = this.contentPageId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.contentPageId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public ByteString getContentPageIdBytes() {
            Object obj = this.contentPageId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.contentPageId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public float getOrderIndex() {
            return this.orderIndex_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public int getOrientation() {
            return this.orientation_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Template> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public String getResourceList() {
            Object obj = this.resourceList_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.resourceList_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
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
            int i3 = this.type_;
            if (i3 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(8, i3);
            }
            if (!getResourceListBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(9, this.resourceList_);
            }
            if (!getCategoryIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(10, this.categoryId_);
            }
            if (!getContentPageIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(11, this.contentPageId_);
            }
            if (!getTemplateArgsBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(12, this.templateArgs_);
            }
            float f = this.orderIndex_;
            if (f != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(13, f);
            }
            int i4 = this.source_;
            if (i4 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(14, i4);
            }
            int i5 = this.status_;
            if (i5 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(15, i5);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public String getSizeFormat() {
            Object obj = this.sizeFormat_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sizeFormat_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public ByteString getSizeFormatBytes() {
            Object obj = this.sizeFormat_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sizeFormat_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public int getSource() {
            return this.source_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public String getTemplateArgs() {
            Object obj = this.templateArgs_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.templateArgs_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public ByteString getTemplateArgsBytes() {
            Object obj = this.templateArgs_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.templateArgs_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public String getTitleResName() {
            Object obj = this.titleResName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.titleResName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public ByteString getTitleResNameBytes() {
            Object obj = this.titleResName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.titleResName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public int getType() {
            return this.type_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
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

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 3) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 4) * 53) + getTitle().hashCode()) * 37) + 5) * 53) + getTitleResName().hashCode()) * 37) + 6) * 53) + getOrientation()) * 37) + 7) * 53) + getSizeFormat().hashCode()) * 37) + 8) * 53) + getType()) * 37) + 9) * 53) + getResourceList().hashCode()) * 37) + 10) * 53) + getCategoryId().hashCode()) * 37) + 11) * 53) + getContentPageId().hashCode()) * 37) + 12) * 53) + getTemplateArgs().hashCode()) * 37) + 13) * 53) + Float.floatToIntBits(getOrderIndex())) * 37) + 14) * 53) + getSource()) * 37) + 15) * 53) + getStatus()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return TemplateProto.f45855d.ensureFieldAccessorsInitialized(Template.class, Builder.class);
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
            int i2 = this.type_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(8, i2);
            }
            if (!getResourceListBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.resourceList_);
            }
            if (!getCategoryIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.categoryId_);
            }
            if (!getContentPageIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.contentPageId_);
            }
            if (!getTemplateArgsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 12, this.templateArgs_);
            }
            float f = this.orderIndex_;
            if (f != 0.0f) {
                codedOutputStream.writeFloat(13, f);
            }
            int i3 = this.source_;
            if (i3 != 0) {
                codedOutputStream.writeInt32(14, i3);
            }
            int i4 = this.status_;
            if (i4 != 0) {
                codedOutputStream.writeInt32(15, i4);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ Template(GeneratedMessageV3.Builder builder, C7783a c7783a) {
            this(builder);
        }

        public static Builder newBuilder(Template template) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(template);
        }

        public static Template parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private Template(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Template parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Template) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Template parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Template getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7783a c7783a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7783a) : new Builder(c7783a).mergeFrom(this);
        }

        public static Template parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Template() {
            this.memoizedIsInitialized = (byte) -1;
            this.uniqueId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.title_ = "";
            this.titleResName_ = "";
            this.orientation_ = 0;
            this.sizeFormat_ = "";
            this.type_ = 0;
            this.resourceList_ = "";
            this.categoryId_ = "";
            this.contentPageId_ = "";
            this.templateArgs_ = "";
            this.orderIndex_ = 0.0f;
            this.source_ = 0;
            this.status_ = 0;
        }

        public static Template parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static Template parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Template parseFrom(InputStream inputStream) throws IOException {
            return (Template) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Template parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Template) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Template parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Template) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Template parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Template) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
        private Template(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            case 64:
                                this.type_ = codedInputStream.readInt32();
                            case 74:
                                this.resourceList_ = codedInputStream.readStringRequireUtf8();
                            case 82:
                                this.categoryId_ = codedInputStream.readStringRequireUtf8();
                            case 90:
                                this.contentPageId_ = codedInputStream.readStringRequireUtf8();
                            case 98:
                                this.templateArgs_ = codedInputStream.readStringRequireUtf8();
                            case 109:
                                this.orderIndex_ = codedInputStream.readFloat();
                            case 112:
                                this.source_ = codedInputStream.readInt32();
                            case 120:
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
    public static final class TemplateList extends GeneratedMessageV3 implements TemplateListOrBuilder {
        private static final TemplateList DEFAULT_INSTANCE = new TemplateList();
        private static final Parser<TemplateList> PARSER = new C7782a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<Template> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements TemplateListOrBuilder {

            /* renamed from: i */
            public int f45872i;

            /* renamed from: j */
            public List<Template> f45873j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> f45874k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7783a c7783a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return TemplateProto.f45852a;
            }

            public Builder addAllProto(Iterable<? extends Template> iterable) {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                if (repeatedFieldBuilderV3 == null) {
                    m35358h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45873j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(Template template) {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                if (repeatedFieldBuilderV3 == null) {
                    template.getClass();
                    m35358h();
                    this.f45873j.add(template);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(template);
                }
                return this;
            }

            public Template.Builder addProtoBuilder() {
                return m35359i().addBuilder(Template.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45873j = Collections.emptyList();
                    this.f45872i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return TemplateProto.f45852a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateListOrBuilder
            public Template getProto(int i) {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                return repeatedFieldBuilderV3 == null ? this.f45873j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public Template.Builder getProtoBuilder(int i) {
                return m35359i().getBuilder(i);
            }

            public List<Template.Builder> getProtoBuilderList() {
                return m35359i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                return repeatedFieldBuilderV3 == null ? this.f45873j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateListOrBuilder
            public List<Template> getProtoList() {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45873j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateListOrBuilder
            public TemplateOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                return repeatedFieldBuilderV3 == null ? this.f45873j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateListOrBuilder
            public List<? extends TemplateOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45873j);
            }

            /* renamed from: h */
            public final void m35358h() {
                if ((this.f45872i & 1) != 1) {
                    this.f45873j = new ArrayList(this.f45873j);
                    this.f45872i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> m35359i() {
                if (this.f45874k == null) {
                    this.f45874k = new RepeatedFieldBuilderV3<>(this.f45873j, (this.f45872i & 1) == 1, getParentForChildren(), isClean());
                    this.f45873j = null;
                }
                return this.f45874k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return TemplateProto.f45853b.ensureFieldAccessorsInitialized(TemplateList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35360j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35359i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                if (repeatedFieldBuilderV3 == null) {
                    m35358h();
                    this.f45873j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, Template template) {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                if (repeatedFieldBuilderV3 == null) {
                    template.getClass();
                    m35358h();
                    this.f45873j.set(i, template);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, template);
                }
                return this;
            }

            public /* synthetic */ Builder(C7783a c7783a) {
                this();
            }

            public Builder() {
                this.f45873j = Collections.emptyList();
                m35360j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TemplateList build() {
                TemplateList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TemplateList buildPartial() {
                TemplateList templateList = new TemplateList(this, (C7783a) null);
                int i = this.f45872i;
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45873j = Collections.unmodifiableList(this.f45873j);
                        this.f45872i &= -2;
                    }
                    templateList.proto_ = this.f45873j;
                } else {
                    templateList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return templateList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public TemplateList getDefaultInstanceForType() {
                return TemplateList.getDefaultInstance();
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

            public Template.Builder addProtoBuilder(int i) {
                return m35359i().addBuilder(i, Template.getDefaultInstance());
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
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45873j = Collections.emptyList();
                    this.f45872i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45873j = Collections.emptyList();
                m35360j();
            }

            public Builder addProto(int i, Template template) {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                if (repeatedFieldBuilderV3 == null) {
                    template.getClass();
                    m35358h();
                    this.f45873j.add(i, template);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, template);
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
                if (message instanceof TemplateList) {
                    return mergeFrom((TemplateList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, Template.Builder builder) {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                if (repeatedFieldBuilderV3 == null) {
                    m35358h();
                    this.f45873j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(TemplateList templateList) {
                if (templateList == TemplateList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45874k == null) {
                    if (!templateList.proto_.isEmpty()) {
                        if (this.f45873j.isEmpty()) {
                            this.f45873j = templateList.proto_;
                            this.f45872i &= -2;
                        } else {
                            m35358h();
                            this.f45873j.addAll(templateList.proto_);
                        }
                        onChanged();
                    }
                } else if (!templateList.proto_.isEmpty()) {
                    if (this.f45874k.isEmpty()) {
                        this.f45874k.dispose();
                        this.f45874k = null;
                        this.f45873j = templateList.proto_;
                        this.f45872i &= -2;
                        this.f45874k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35359i() : null;
                    } else {
                        this.f45874k.addAllMessages(templateList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) templateList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(Template.Builder builder) {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                if (repeatedFieldBuilderV3 == null) {
                    m35358h();
                    this.f45873j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, Template.Builder builder) {
                RepeatedFieldBuilderV3<Template, Template.Builder, TemplateOrBuilder> repeatedFieldBuilderV3 = this.f45874k;
                if (repeatedFieldBuilderV3 == null) {
                    m35358h();
                    this.f45873j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.TemplateProto$TemplateList r3 = (com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.TemplateProto$TemplateList r4 = (com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.TemplateProto$TemplateList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.TemplateProto$TemplateList$a */
        /* loaded from: classes8.dex */
        public class C7782a extends AbstractParser<TemplateList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public TemplateList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new TemplateList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ TemplateList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7783a c7783a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static TemplateList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return TemplateProto.f45852a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TemplateList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TemplateList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static TemplateList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<TemplateList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TemplateList)) {
                return super.equals(obj);
            }
            TemplateList templateList = (TemplateList) obj;
            return (getProtoList().equals(templateList.getProtoList())) && this.unknownFields.equals(templateList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<TemplateList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateListOrBuilder
        public Template getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateListOrBuilder
        public List<Template> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateListOrBuilder
        public TemplateOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.TemplateProto.TemplateListOrBuilder
        public List<? extends TemplateOrBuilder> getProtoOrBuilderList() {
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
            return TemplateProto.f45853b.ensureFieldAccessorsInitialized(TemplateList.class, Builder.class);
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

        public /* synthetic */ TemplateList(GeneratedMessageV3.Builder builder, C7783a c7783a) {
            this(builder);
        }

        public static Builder newBuilder(TemplateList templateList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(templateList);
        }

        public static TemplateList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private TemplateList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TemplateList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TemplateList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static TemplateList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public TemplateList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7783a c7783a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7783a) : new Builder(c7783a).mergeFrom(this);
        }

        public static TemplateList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private TemplateList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static TemplateList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static TemplateList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static TemplateList parseFrom(InputStream inputStream) throws IOException {
            return (TemplateList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private TemplateList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.proto_.add((Template) codedInputStream.readMessage(Template.parser(), extensionRegistryLite));
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

        public static TemplateList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TemplateList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static TemplateList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (TemplateList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static TemplateList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TemplateList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface TemplateListOrBuilder extends MessageOrBuilder {
        Template getProto(int i);

        int getProtoCount();

        List<Template> getProtoList();

        TemplateOrBuilder getProtoOrBuilder(int i);

        List<? extends TemplateOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface TemplateOrBuilder extends MessageOrBuilder {
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

        String getTemplateArgs();

        ByteString getTemplateArgsBytes();

        String getTitle();

        ByteString getTitleBytes();

        String getTitleResName();

        ByteString getTitleResNameBytes();

        int getType();

        String getUniqueId();

        ByteString getUniqueIdBytes();

        long getUpdatedAt();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.TemplateProto$a */
    /* loaded from: classes8.dex */
    public class C7783a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = TemplateProto.f45856e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0013TemplateProto.proto\"(\n\fTemplateList\u0012\u0018\n\u0005proto\u0018\u0001 \u0003(\u000b2\t.Template\"©\u0002\n\bTemplate\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\r\n\u0005title\u0018\u0004 \u0001(\t\u0012\u0014\n\ftitleResName\u0018\u0005 \u0001(\t\u0012\u0013\n\u000borientation\u0018\u0006 \u0001(\u0005\u0012\u0012\n\nsizeFormat\u0018\u0007 \u0001(\t\u0012\f\n\u0004type\u0018\b \u0001(\u0005\u0012\u0014\n\fresourceList\u0018\t \u0001(\t\u0012\u0012\n\ncategoryId\u0018\n \u0001(\t\u0012\u0015\n\rcontentPageId\u0018\u000b \u0001(\t\u0012\u0014\n\ftemplateArgs\u0018\f \u0001(\t\u0012\u0012\n\norderIndex\u0018\r \u0001(\u0002\u0012\u000e\n\u0006source\u0018\u000e \u0001(\u0005\u0012\u000e\n\u0006status\u0018\u000f \u0001(\u0005B,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7783a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45852a = descriptor;
        f45853b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45854c = descriptor2;
        f45855d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"UniqueId", "CreatedAt", "UpdatedAt", "Title", "TitleResName", ExifInterface.TAG_ORIENTATION, "SizeFormat", "Type", "ResourceList", "CategoryId", "ContentPageId", "TemplateArgs", "OrderIndex", "Source", PersistedInstallation.f35952i});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45856e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
