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
public final class LinkDataProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45635a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45636b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45637c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45638d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45639e;

    /* loaded from: classes8.dex */
    public static final class LinkProto extends GeneratedMessageV3 implements LinkProtoOrBuilder {
        public static final int BOUNDINGRECT_FIELD_NUMBER = 18;
        public static final int CONTENT_FIELD_NUMBER = 9;
        public static final int CREATEDAT_FIELD_NUMBER = 7;
        public static final int DISPLAYSTYLE_FIELD_NUMBER = 13;
        public static final int DOCUMENTID_FIELD_NUMBER = 3;
        public static final int EXTRA_FIELD_NUMBER = 16;
        public static final int PAGEUNIQUEID_FIELD_NUMBER = 5;
        public static final int PATH_FIELD_NUMBER = 15;
        public static final int REMARK_FIELD_NUMBER = 11;
        public static final int REVISIONID_FIELD_NUMBER = 19;
        public static final int STATUS_FIELD_NUMBER = 17;
        public static final int TARGETDOCID_FIELD_NUMBER = 2;
        public static final int TARGETPAGEID_FIELD_NUMBER = 4;
        public static final int TARGETPAGEINDEX_FIELD_NUMBER = 14;
        public static final int TITLE_FIELD_NUMBER = 12;
        public static final int TYPE_FIELD_NUMBER = 10;
        public static final int UNIQUEID_FIELD_NUMBER = 1;
        public static final int UPDATEDAT_FIELD_NUMBER = 8;
        public static final int USERID_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private volatile Object boundingRect_;
        private volatile Object content_;
        private long createdAt_;
        private int displayStyle_;
        private volatile Object documentId_;
        private volatile Object extra_;
        private byte memoizedIsInitialized;
        private volatile Object pageUniqueId_;
        private volatile Object path_;
        private volatile Object remark_;
        private volatile Object revisionId_;
        private int status_;
        private volatile Object targetDocId_;
        private volatile Object targetPageId_;
        private int targetPageIndex_;
        private volatile Object title_;
        private volatile Object type_;
        private volatile Object uniqueId_;
        private long updatedAt_;
        private volatile Object userId_;
        private static final LinkProto DEFAULT_INSTANCE = new LinkProto();
        private static final Parser<LinkProto> PARSER = new C7760a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements LinkProtoOrBuilder {

            /* renamed from: J */
            public Object f45640J;

            /* renamed from: i */
            public Object f45641i;

            /* renamed from: j */
            public Object f45642j;

            /* renamed from: k */
            public Object f45643k;

            /* renamed from: l */
            public Object f45644l;

            /* renamed from: m */
            public Object f45645m;

            /* renamed from: n */
            public Object f45646n;

            /* renamed from: o */
            public long f45647o;

            /* renamed from: p */
            public long f45648p;

            /* renamed from: q */
            public Object f45649q;

            /* renamed from: r */
            public Object f45650r;

            /* renamed from: s */
            public Object f45651s;

            /* renamed from: t */
            public Object f45652t;

            /* renamed from: u */
            public int f45653u;

            /* renamed from: v */
            public int f45654v;

            /* renamed from: w */
            public Object f45655w;

            /* renamed from: x */
            public Object f45656x;

            /* renamed from: y */
            public int f45657y;

            /* renamed from: z */
            public Object f45658z;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7762a c7762a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LinkDataProto.f45637c;
            }

            public Builder clearBoundingRect() {
                this.f45658z = LinkProto.getDefaultInstance().getBoundingRect();
                onChanged();
                return this;
            }

            public Builder clearContent() {
                this.f45649q = LinkProto.getDefaultInstance().getContent();
                onChanged();
                return this;
            }

            public Builder clearCreatedAt() {
                this.f45647o = 0L;
                onChanged();
                return this;
            }

            public Builder clearDisplayStyle() {
                this.f45653u = 0;
                onChanged();
                return this;
            }

            public Builder clearDocumentId() {
                this.f45643k = LinkProto.getDefaultInstance().getDocumentId();
                onChanged();
                return this;
            }

            public Builder clearExtra() {
                this.f45656x = LinkProto.getDefaultInstance().getExtra();
                onChanged();
                return this;
            }

            public Builder clearPageUniqueId() {
                this.f45645m = LinkProto.getDefaultInstance().getPageUniqueId();
                onChanged();
                return this;
            }

            public Builder clearPath() {
                this.f45655w = LinkProto.getDefaultInstance().getPath();
                onChanged();
                return this;
            }

            public Builder clearRemark() {
                this.f45651s = LinkProto.getDefaultInstance().getRemark();
                onChanged();
                return this;
            }

            public Builder clearRevisionId() {
                this.f45640J = LinkProto.getDefaultInstance().getRevisionId();
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.f45657y = 0;
                onChanged();
                return this;
            }

            public Builder clearTargetDocId() {
                this.f45642j = LinkProto.getDefaultInstance().getTargetDocId();
                onChanged();
                return this;
            }

            public Builder clearTargetPageId() {
                this.f45644l = LinkProto.getDefaultInstance().getTargetPageId();
                onChanged();
                return this;
            }

            public Builder clearTargetPageIndex() {
                this.f45654v = 0;
                onChanged();
                return this;
            }

            public Builder clearTitle() {
                this.f45652t = LinkProto.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.f45650r = LinkProto.getDefaultInstance().getType();
                onChanged();
                return this;
            }

            public Builder clearUniqueId() {
                this.f45641i = LinkProto.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45648p = 0L;
                onChanged();
                return this;
            }

            public Builder clearUserId() {
                this.f45646n = LinkProto.getDefaultInstance().getUserId();
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getBoundingRect() {
                Object obj = this.f45658z;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45658z = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getBoundingRectBytes() {
                Object obj = this.f45658z;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45658z = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getContent() {
                Object obj = this.f45649q;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45649q = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getContentBytes() {
                Object obj = this.f45649q;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45649q = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public long getCreatedAt() {
                return this.f45647o;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LinkDataProto.f45637c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public int getDisplayStyle() {
                return this.f45653u;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getDocumentId() {
                Object obj = this.f45643k;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45643k = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getDocumentIdBytes() {
                Object obj = this.f45643k;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45643k = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getExtra() {
                Object obj = this.f45656x;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45656x = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getExtraBytes() {
                Object obj = this.f45656x;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45656x = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getPageUniqueId() {
                Object obj = this.f45645m;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45645m = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getPageUniqueIdBytes() {
                Object obj = this.f45645m;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45645m = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getPath() {
                Object obj = this.f45655w;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45655w = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getPathBytes() {
                Object obj = this.f45655w;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45655w = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getRemark() {
                Object obj = this.f45651s;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45651s = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getRemarkBytes() {
                Object obj = this.f45651s;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45651s = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getRevisionId() {
                Object obj = this.f45640J;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45640J = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getRevisionIdBytes() {
                Object obj = this.f45640J;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45640J = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public int getStatus() {
                return this.f45657y;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getTargetDocId() {
                Object obj = this.f45642j;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45642j = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getTargetDocIdBytes() {
                Object obj = this.f45642j;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45642j = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getTargetPageId() {
                Object obj = this.f45644l;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45644l = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getTargetPageIdBytes() {
                Object obj = this.f45644l;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45644l = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public int getTargetPageIndex() {
                return this.f45654v;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getTitle() {
                Object obj = this.f45652t;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45652t = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getTitleBytes() {
                Object obj = this.f45652t;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45652t = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getType() {
                Object obj = this.f45650r;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45650r = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getTypeBytes() {
                Object obj = this.f45650r;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45650r = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getUniqueId() {
                Object obj = this.f45641i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45641i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getUniqueIdBytes() {
                Object obj = this.f45641i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45641i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public long getUpdatedAt() {
                return this.f45648p;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public String getUserId() {
                Object obj = this.f45646n;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45646n = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
            public ByteString getUserIdBytes() {
                Object obj = this.f45646n;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45646n = copyFromUtf8;
                return copyFromUtf8;
            }

            /* renamed from: h */
            public final void m35279h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return LinkDataProto.f45638d.ensureFieldAccessorsInitialized(LinkProto.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setBoundingRect(String str) {
                str.getClass();
                this.f45658z = str;
                onChanged();
                return this;
            }

            public Builder setBoundingRectBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45658z = byteString;
                onChanged();
                return this;
            }

            public Builder setContent(String str) {
                str.getClass();
                this.f45649q = str;
                onChanged();
                return this;
            }

            public Builder setContentBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45649q = byteString;
                onChanged();
                return this;
            }

            public Builder setCreatedAt(long j) {
                this.f45647o = j;
                onChanged();
                return this;
            }

            public Builder setDisplayStyle(int i) {
                this.f45653u = i;
                onChanged();
                return this;
            }

            public Builder setDocumentId(String str) {
                str.getClass();
                this.f45643k = str;
                onChanged();
                return this;
            }

            public Builder setDocumentIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45643k = byteString;
                onChanged();
                return this;
            }

            public Builder setExtra(String str) {
                str.getClass();
                this.f45656x = str;
                onChanged();
                return this;
            }

            public Builder setExtraBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45656x = byteString;
                onChanged();
                return this;
            }

            public Builder setPageUniqueId(String str) {
                str.getClass();
                this.f45645m = str;
                onChanged();
                return this;
            }

            public Builder setPageUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45645m = byteString;
                onChanged();
                return this;
            }

            public Builder setPath(String str) {
                str.getClass();
                this.f45655w = str;
                onChanged();
                return this;
            }

            public Builder setPathBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45655w = byteString;
                onChanged();
                return this;
            }

            public Builder setRemark(String str) {
                str.getClass();
                this.f45651s = str;
                onChanged();
                return this;
            }

            public Builder setRemarkBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45651s = byteString;
                onChanged();
                return this;
            }

            public Builder setRevisionId(String str) {
                str.getClass();
                this.f45640J = str;
                onChanged();
                return this;
            }

            public Builder setRevisionIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45640J = byteString;
                onChanged();
                return this;
            }

            public Builder setStatus(int i) {
                this.f45657y = i;
                onChanged();
                return this;
            }

            public Builder setTargetDocId(String str) {
                str.getClass();
                this.f45642j = str;
                onChanged();
                return this;
            }

            public Builder setTargetDocIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45642j = byteString;
                onChanged();
                return this;
            }

            public Builder setTargetPageId(String str) {
                str.getClass();
                this.f45644l = str;
                onChanged();
                return this;
            }

            public Builder setTargetPageIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45644l = byteString;
                onChanged();
                return this;
            }

            public Builder setTargetPageIndex(int i) {
                this.f45654v = i;
                onChanged();
                return this;
            }

            public Builder setTitle(String str) {
                str.getClass();
                this.f45652t = str;
                onChanged();
                return this;
            }

            public Builder setTitleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45652t = byteString;
                onChanged();
                return this;
            }

            public Builder setType(String str) {
                str.getClass();
                this.f45650r = str;
                onChanged();
                return this;
            }

            public Builder setTypeBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45650r = byteString;
                onChanged();
                return this;
            }

            public Builder setUniqueId(String str) {
                str.getClass();
                this.f45641i = str;
                onChanged();
                return this;
            }

            public Builder setUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45641i = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45648p = j;
                onChanged();
                return this;
            }

            public Builder setUserId(String str) {
                str.getClass();
                this.f45646n = str;
                onChanged();
                return this;
            }

            public Builder setUserIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45646n = byteString;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7762a c7762a) {
                this();
            }

            public Builder() {
                this.f45641i = "";
                this.f45642j = "";
                this.f45643k = "";
                this.f45644l = "";
                this.f45645m = "";
                this.f45646n = "";
                this.f45649q = "";
                this.f45650r = "";
                this.f45651s = "";
                this.f45652t = "";
                this.f45655w = "";
                this.f45656x = "";
                this.f45658z = "";
                this.f45640J = "";
                m35279h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LinkProto build() {
                LinkProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LinkProto buildPartial() {
                LinkProto linkProto = new LinkProto(this, (C7762a) null);
                linkProto.uniqueId_ = this.f45641i;
                linkProto.targetDocId_ = this.f45642j;
                linkProto.documentId_ = this.f45643k;
                linkProto.targetPageId_ = this.f45644l;
                linkProto.pageUniqueId_ = this.f45645m;
                linkProto.userId_ = this.f45646n;
                linkProto.createdAt_ = this.f45647o;
                linkProto.updatedAt_ = this.f45648p;
                linkProto.content_ = this.f45649q;
                linkProto.type_ = this.f45650r;
                linkProto.remark_ = this.f45651s;
                linkProto.title_ = this.f45652t;
                linkProto.displayStyle_ = this.f45653u;
                linkProto.targetPageIndex_ = this.f45654v;
                linkProto.path_ = this.f45655w;
                linkProto.extra_ = this.f45656x;
                linkProto.status_ = this.f45657y;
                linkProto.boundingRect_ = this.f45658z;
                linkProto.revisionId_ = this.f45640J;
                onBuilt();
                return linkProto;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public LinkProto getDefaultInstanceForType() {
                return LinkProto.getDefaultInstance();
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
                this.f45641i = "";
                this.f45642j = "";
                this.f45643k = "";
                this.f45644l = "";
                this.f45645m = "";
                this.f45646n = "";
                this.f45647o = 0L;
                this.f45648p = 0L;
                this.f45649q = "";
                this.f45650r = "";
                this.f45651s = "";
                this.f45652t = "";
                this.f45653u = 0;
                this.f45654v = 0;
                this.f45655w = "";
                this.f45656x = "";
                this.f45657y = 0;
                this.f45658z = "";
                this.f45640J = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof LinkProto) {
                    return mergeFrom((LinkProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(LinkProto linkProto) {
                if (linkProto == LinkProto.getDefaultInstance()) {
                    return this;
                }
                if (!linkProto.getUniqueId().isEmpty()) {
                    this.f45641i = linkProto.uniqueId_;
                    onChanged();
                }
                if (!linkProto.getTargetDocId().isEmpty()) {
                    this.f45642j = linkProto.targetDocId_;
                    onChanged();
                }
                if (!linkProto.getDocumentId().isEmpty()) {
                    this.f45643k = linkProto.documentId_;
                    onChanged();
                }
                if (!linkProto.getTargetPageId().isEmpty()) {
                    this.f45644l = linkProto.targetPageId_;
                    onChanged();
                }
                if (!linkProto.getPageUniqueId().isEmpty()) {
                    this.f45645m = linkProto.pageUniqueId_;
                    onChanged();
                }
                if (!linkProto.getUserId().isEmpty()) {
                    this.f45646n = linkProto.userId_;
                    onChanged();
                }
                if (linkProto.getCreatedAt() != 0) {
                    setCreatedAt(linkProto.getCreatedAt());
                }
                if (linkProto.getUpdatedAt() != 0) {
                    setUpdatedAt(linkProto.getUpdatedAt());
                }
                if (!linkProto.getContent().isEmpty()) {
                    this.f45649q = linkProto.content_;
                    onChanged();
                }
                if (!linkProto.getType().isEmpty()) {
                    this.f45650r = linkProto.type_;
                    onChanged();
                }
                if (!linkProto.getRemark().isEmpty()) {
                    this.f45651s = linkProto.remark_;
                    onChanged();
                }
                if (!linkProto.getTitle().isEmpty()) {
                    this.f45652t = linkProto.title_;
                    onChanged();
                }
                if (linkProto.getDisplayStyle() != 0) {
                    setDisplayStyle(linkProto.getDisplayStyle());
                }
                if (linkProto.getTargetPageIndex() != 0) {
                    setTargetPageIndex(linkProto.getTargetPageIndex());
                }
                if (!linkProto.getPath().isEmpty()) {
                    this.f45655w = linkProto.path_;
                    onChanged();
                }
                if (!linkProto.getExtra().isEmpty()) {
                    this.f45656x = linkProto.extra_;
                    onChanged();
                }
                if (linkProto.getStatus() != 0) {
                    setStatus(linkProto.getStatus());
                }
                if (!linkProto.getBoundingRect().isEmpty()) {
                    this.f45658z = linkProto.boundingRect_;
                    onChanged();
                }
                if (!linkProto.getRevisionId().isEmpty()) {
                    this.f45640J = linkProto.revisionId_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) linkProto).unknownFields);
                onChanged();
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45641i = "";
                this.f45642j = "";
                this.f45643k = "";
                this.f45644l = "";
                this.f45645m = "";
                this.f45646n = "";
                this.f45649q = "";
                this.f45650r = "";
                this.f45651s = "";
                this.f45652t = "";
                this.f45655w = "";
                this.f45656x = "";
                this.f45658z = "";
                this.f45640J = "";
                m35279h();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProto.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProto.access$3700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.LinkDataProto$LinkProto r3 = (com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProto) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.LinkDataProto$LinkProto r4 = (com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProto) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProto.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.LinkDataProto$LinkProto$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.LinkDataProto$LinkProto$a */
        /* loaded from: classes8.dex */
        public class C7760a extends AbstractParser<LinkProto> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public LinkProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new LinkProto(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ LinkProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7762a c7762a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static LinkProto getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LinkDataProto.f45637c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static LinkProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (LinkProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static LinkProto parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<LinkProto> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof LinkProto)) {
                return super.equals(obj);
            }
            LinkProto linkProto = (LinkProto) obj;
            return (((((((((((((((((((getUniqueId().equals(linkProto.getUniqueId())) && getTargetDocId().equals(linkProto.getTargetDocId())) && getDocumentId().equals(linkProto.getDocumentId())) && getTargetPageId().equals(linkProto.getTargetPageId())) && getPageUniqueId().equals(linkProto.getPageUniqueId())) && getUserId().equals(linkProto.getUserId())) && (getCreatedAt() > linkProto.getCreatedAt() ? 1 : (getCreatedAt() == linkProto.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > linkProto.getUpdatedAt() ? 1 : (getUpdatedAt() == linkProto.getUpdatedAt() ? 0 : -1)) == 0) && getContent().equals(linkProto.getContent())) && getType().equals(linkProto.getType())) && getRemark().equals(linkProto.getRemark())) && getTitle().equals(linkProto.getTitle())) && getDisplayStyle() == linkProto.getDisplayStyle()) && getTargetPageIndex() == linkProto.getTargetPageIndex()) && getPath().equals(linkProto.getPath())) && getExtra().equals(linkProto.getExtra())) && getStatus() == linkProto.getStatus()) && getBoundingRect().equals(linkProto.getBoundingRect())) && getRevisionId().equals(linkProto.getRevisionId())) && this.unknownFields.equals(linkProto.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getBoundingRect() {
            Object obj = this.boundingRect_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.boundingRect_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public ByteString getBoundingRectBytes() {
            Object obj = this.boundingRect_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.boundingRect_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getContent() {
            Object obj = this.content_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.content_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public ByteString getContentBytes() {
            Object obj = this.content_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.content_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public int getDisplayStyle() {
            return this.displayStyle_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getDocumentId() {
            Object obj = this.documentId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.documentId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public ByteString getDocumentIdBytes() {
            Object obj = this.documentId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.documentId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getExtra() {
            Object obj = this.extra_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.extra_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public ByteString getExtraBytes() {
            Object obj = this.extra_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.extra_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getPageUniqueId() {
            Object obj = this.pageUniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pageUniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
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
        public Parser<LinkProto> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getPath() {
            Object obj = this.path_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.path_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public ByteString getPathBytes() {
            Object obj = this.path_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.path_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getRemark() {
            Object obj = this.remark_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.remark_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public ByteString getRemarkBytes() {
            Object obj = this.remark_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.remark_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getRevisionId() {
            Object obj = this.revisionId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.revisionId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
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
            if (!getTargetDocIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.targetDocId_);
            }
            if (!getDocumentIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(3, this.documentId_);
            }
            if (!getTargetPageIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(4, this.targetPageId_);
            }
            if (!getPageUniqueIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.pageUniqueId_);
            }
            if (!getUserIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(6, this.userId_);
            }
            long j = this.createdAt_;
            if (j != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(7, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(8, j2);
            }
            if (!getContentBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(9, this.content_);
            }
            if (!getTypeBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(10, this.type_);
            }
            if (!getRemarkBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(11, this.remark_);
            }
            if (!getTitleBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(12, this.title_);
            }
            int i2 = this.displayStyle_;
            if (i2 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(13, i2);
            }
            int i3 = this.targetPageIndex_;
            if (i3 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(14, i3);
            }
            if (!getPathBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(15, this.path_);
            }
            if (!getExtraBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(16, this.extra_);
            }
            int i4 = this.status_;
            if (i4 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(17, i4);
            }
            if (!getBoundingRectBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(18, this.boundingRect_);
            }
            if (!getRevisionIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(19, this.revisionId_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getTargetDocId() {
            Object obj = this.targetDocId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.targetDocId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public ByteString getTargetDocIdBytes() {
            Object obj = this.targetDocId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.targetDocId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getTargetPageId() {
            Object obj = this.targetPageId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.targetPageId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public ByteString getTargetPageIdBytes() {
            Object obj = this.targetPageId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.targetPageId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public int getTargetPageIndex() {
            return this.targetPageIndex_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getType() {
            Object obj = this.type_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.type_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public ByteString getTypeBytes() {
            Object obj = this.type_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.type_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
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

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
        public String getUserId() {
            Object obj = this.userId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.userId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoOrBuilder
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
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + getTargetDocId().hashCode()) * 37) + 3) * 53) + getDocumentId().hashCode()) * 37) + 4) * 53) + getTargetPageId().hashCode()) * 37) + 5) * 53) + getPageUniqueId().hashCode()) * 37) + 6) * 53) + getUserId().hashCode()) * 37) + 7) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 8) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 9) * 53) + getContent().hashCode()) * 37) + 10) * 53) + getType().hashCode()) * 37) + 11) * 53) + getRemark().hashCode()) * 37) + 12) * 53) + getTitle().hashCode()) * 37) + 13) * 53) + getDisplayStyle()) * 37) + 14) * 53) + getTargetPageIndex()) * 37) + 15) * 53) + getPath().hashCode()) * 37) + 16) * 53) + getExtra().hashCode()) * 37) + 17) * 53) + getStatus()) * 37) + 18) * 53) + getBoundingRect().hashCode()) * 37) + 19) * 53) + getRevisionId().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return LinkDataProto.f45638d.ensureFieldAccessorsInitialized(LinkProto.class, Builder.class);
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
            if (!getTargetDocIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.targetDocId_);
            }
            if (!getDocumentIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.documentId_);
            }
            if (!getTargetPageIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.targetPageId_);
            }
            if (!getPageUniqueIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.pageUniqueId_);
            }
            if (!getUserIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.userId_);
            }
            long j = this.createdAt_;
            if (j != 0) {
                codedOutputStream.writeInt64(7, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                codedOutputStream.writeInt64(8, j2);
            }
            if (!getContentBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.content_);
            }
            if (!getTypeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.type_);
            }
            if (!getRemarkBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.remark_);
            }
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 12, this.title_);
            }
            int i = this.displayStyle_;
            if (i != 0) {
                codedOutputStream.writeInt32(13, i);
            }
            int i2 = this.targetPageIndex_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(14, i2);
            }
            if (!getPathBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 15, this.path_);
            }
            if (!getExtraBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 16, this.extra_);
            }
            int i3 = this.status_;
            if (i3 != 0) {
                codedOutputStream.writeInt32(17, i3);
            }
            if (!getBoundingRectBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 18, this.boundingRect_);
            }
            if (!getRevisionIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 19, this.revisionId_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ LinkProto(GeneratedMessageV3.Builder builder, C7762a c7762a) {
            this(builder);
        }

        public static Builder newBuilder(LinkProto linkProto) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(linkProto);
        }

        public static LinkProto parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private LinkProto(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static LinkProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LinkProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static LinkProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LinkProto getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7762a c7762a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7762a) : new Builder(c7762a).mergeFrom(this);
        }

        public static LinkProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private LinkProto() {
            this.memoizedIsInitialized = (byte) -1;
            this.uniqueId_ = "";
            this.targetDocId_ = "";
            this.documentId_ = "";
            this.targetPageId_ = "";
            this.pageUniqueId_ = "";
            this.userId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.content_ = "";
            this.type_ = "";
            this.remark_ = "";
            this.title_ = "";
            this.displayStyle_ = 0;
            this.targetPageIndex_ = 0;
            this.path_ = "";
            this.extra_ = "";
            this.status_ = 0;
            this.boundingRect_ = "";
            this.revisionId_ = "";
        }

        public static LinkProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static LinkProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static LinkProto parseFrom(InputStream inputStream) throws IOException {
            return (LinkProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static LinkProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LinkProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static LinkProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (LinkProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static LinkProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LinkProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
        private LinkProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.targetDocId_ = codedInputStream.readStringRequireUtf8();
                            case 26:
                                this.documentId_ = codedInputStream.readStringRequireUtf8();
                            case 34:
                                this.targetPageId_ = codedInputStream.readStringRequireUtf8();
                            case 42:
                                this.pageUniqueId_ = codedInputStream.readStringRequireUtf8();
                            case 50:
                                this.userId_ = codedInputStream.readStringRequireUtf8();
                            case 56:
                                this.createdAt_ = codedInputStream.readInt64();
                            case 64:
                                this.updatedAt_ = codedInputStream.readInt64();
                            case 74:
                                this.content_ = codedInputStream.readStringRequireUtf8();
                            case 82:
                                this.type_ = codedInputStream.readStringRequireUtf8();
                            case 90:
                                this.remark_ = codedInputStream.readStringRequireUtf8();
                            case 98:
                                this.title_ = codedInputStream.readStringRequireUtf8();
                            case 104:
                                this.displayStyle_ = codedInputStream.readInt32();
                            case 112:
                                this.targetPageIndex_ = codedInputStream.readInt32();
                            case 122:
                                this.path_ = codedInputStream.readStringRequireUtf8();
                            case 130:
                                this.extra_ = codedInputStream.readStringRequireUtf8();
                            case 136:
                                this.status_ = codedInputStream.readInt32();
                            case 146:
                                this.boundingRect_ = codedInputStream.readStringRequireUtf8();
                            case 154:
                                this.revisionId_ = codedInputStream.readStringRequireUtf8();
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
    public static final class LinkProtoList extends GeneratedMessageV3 implements LinkProtoListOrBuilder {
        private static final LinkProtoList DEFAULT_INSTANCE = new LinkProtoList();
        private static final Parser<LinkProtoList> PARSER = new C7761a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<LinkProto> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements LinkProtoListOrBuilder {

            /* renamed from: i */
            public int f45659i;

            /* renamed from: j */
            public List<LinkProto> f45660j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> f45661k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7762a c7762a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LinkDataProto.f45635a;
            }

            public Builder addAllProto(Iterable<? extends LinkProto> iterable) {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                if (repeatedFieldBuilderV3 == null) {
                    m35281h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45660j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(LinkProto linkProto) {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                if (repeatedFieldBuilderV3 == null) {
                    linkProto.getClass();
                    m35281h();
                    this.f45660j.add(linkProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(linkProto);
                }
                return this;
            }

            public LinkProto.Builder addProtoBuilder() {
                return m35282i().addBuilder(LinkProto.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45660j = Collections.emptyList();
                    this.f45659i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LinkDataProto.f45635a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoListOrBuilder
            public LinkProto getProto(int i) {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                return repeatedFieldBuilderV3 == null ? this.f45660j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public LinkProto.Builder getProtoBuilder(int i) {
                return m35282i().getBuilder(i);
            }

            public List<LinkProto.Builder> getProtoBuilderList() {
                return m35282i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                return repeatedFieldBuilderV3 == null ? this.f45660j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoListOrBuilder
            public List<LinkProto> getProtoList() {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45660j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoListOrBuilder
            public LinkProtoOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                return repeatedFieldBuilderV3 == null ? this.f45660j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoListOrBuilder
            public List<? extends LinkProtoOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45660j);
            }

            /* renamed from: h */
            public final void m35281h() {
                if ((this.f45659i & 1) != 1) {
                    this.f45660j = new ArrayList(this.f45660j);
                    this.f45659i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> m35282i() {
                if (this.f45661k == null) {
                    this.f45661k = new RepeatedFieldBuilderV3<>(this.f45660j, (this.f45659i & 1) == 1, getParentForChildren(), isClean());
                    this.f45660j = null;
                }
                return this.f45661k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return LinkDataProto.f45636b.ensureFieldAccessorsInitialized(LinkProtoList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35283j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35282i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                if (repeatedFieldBuilderV3 == null) {
                    m35281h();
                    this.f45660j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, LinkProto linkProto) {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                if (repeatedFieldBuilderV3 == null) {
                    linkProto.getClass();
                    m35281h();
                    this.f45660j.set(i, linkProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, linkProto);
                }
                return this;
            }

            public /* synthetic */ Builder(C7762a c7762a) {
                this();
            }

            public Builder() {
                this.f45660j = Collections.emptyList();
                m35283j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LinkProtoList build() {
                LinkProtoList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LinkProtoList buildPartial() {
                LinkProtoList linkProtoList = new LinkProtoList(this, (C7762a) null);
                int i = this.f45659i;
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45660j = Collections.unmodifiableList(this.f45660j);
                        this.f45659i &= -2;
                    }
                    linkProtoList.proto_ = this.f45660j;
                } else {
                    linkProtoList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return linkProtoList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public LinkProtoList getDefaultInstanceForType() {
                return LinkProtoList.getDefaultInstance();
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

            public LinkProto.Builder addProtoBuilder(int i) {
                return m35282i().addBuilder(i, LinkProto.getDefaultInstance());
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
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45660j = Collections.emptyList();
                    this.f45659i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45660j = Collections.emptyList();
                m35283j();
            }

            public Builder addProto(int i, LinkProto linkProto) {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                if (repeatedFieldBuilderV3 == null) {
                    linkProto.getClass();
                    m35281h();
                    this.f45660j.add(i, linkProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, linkProto);
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
                if (message instanceof LinkProtoList) {
                    return mergeFrom((LinkProtoList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, LinkProto.Builder builder) {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                if (repeatedFieldBuilderV3 == null) {
                    m35281h();
                    this.f45660j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(LinkProtoList linkProtoList) {
                if (linkProtoList == LinkProtoList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45661k == null) {
                    if (!linkProtoList.proto_.isEmpty()) {
                        if (this.f45660j.isEmpty()) {
                            this.f45660j = linkProtoList.proto_;
                            this.f45659i &= -2;
                        } else {
                            m35281h();
                            this.f45660j.addAll(linkProtoList.proto_);
                        }
                        onChanged();
                    }
                } else if (!linkProtoList.proto_.isEmpty()) {
                    if (this.f45661k.isEmpty()) {
                        this.f45661k.dispose();
                        this.f45661k = null;
                        this.f45660j = linkProtoList.proto_;
                        this.f45659i &= -2;
                        this.f45661k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35282i() : null;
                    } else {
                        this.f45661k.addAllMessages(linkProtoList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) linkProtoList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(LinkProto.Builder builder) {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                if (repeatedFieldBuilderV3 == null) {
                    m35281h();
                    this.f45660j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, LinkProto.Builder builder) {
                RepeatedFieldBuilderV3<LinkProto, LinkProto.Builder, LinkProtoOrBuilder> repeatedFieldBuilderV3 = this.f45661k;
                if (repeatedFieldBuilderV3 == null) {
                    m35281h();
                    this.f45660j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.LinkDataProto$LinkProtoList r3 = (com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.LinkDataProto$LinkProtoList r4 = (com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.LinkDataProto$LinkProtoList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.LinkDataProto$LinkProtoList$a */
        /* loaded from: classes8.dex */
        public class C7761a extends AbstractParser<LinkProtoList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public LinkProtoList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new LinkProtoList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ LinkProtoList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7762a c7762a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static LinkProtoList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LinkDataProto.f45635a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static LinkProtoList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (LinkProtoList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static LinkProtoList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<LinkProtoList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof LinkProtoList)) {
                return super.equals(obj);
            }
            LinkProtoList linkProtoList = (LinkProtoList) obj;
            return (getProtoList().equals(linkProtoList.getProtoList())) && this.unknownFields.equals(linkProtoList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<LinkProtoList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoListOrBuilder
        public LinkProto getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoListOrBuilder
        public List<LinkProto> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoListOrBuilder
        public LinkProtoOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.LinkDataProto.LinkProtoListOrBuilder
        public List<? extends LinkProtoOrBuilder> getProtoOrBuilderList() {
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
            return LinkDataProto.f45636b.ensureFieldAccessorsInitialized(LinkProtoList.class, Builder.class);
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

        public /* synthetic */ LinkProtoList(GeneratedMessageV3.Builder builder, C7762a c7762a) {
            this(builder);
        }

        public static Builder newBuilder(LinkProtoList linkProtoList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(linkProtoList);
        }

        public static LinkProtoList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private LinkProtoList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static LinkProtoList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LinkProtoList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static LinkProtoList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LinkProtoList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7762a c7762a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7762a) : new Builder(c7762a).mergeFrom(this);
        }

        public static LinkProtoList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private LinkProtoList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static LinkProtoList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static LinkProtoList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static LinkProtoList parseFrom(InputStream inputStream) throws IOException {
            return (LinkProtoList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private LinkProtoList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.proto_.add((LinkProto) codedInputStream.readMessage(LinkProto.parser(), extensionRegistryLite));
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

        public static LinkProtoList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LinkProtoList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static LinkProtoList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (LinkProtoList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static LinkProtoList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LinkProtoList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface LinkProtoListOrBuilder extends MessageOrBuilder {
        LinkProto getProto(int i);

        int getProtoCount();

        List<LinkProto> getProtoList();

        LinkProtoOrBuilder getProtoOrBuilder(int i);

        List<? extends LinkProtoOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface LinkProtoOrBuilder extends MessageOrBuilder {
        String getBoundingRect();

        ByteString getBoundingRectBytes();

        String getContent();

        ByteString getContentBytes();

        long getCreatedAt();

        int getDisplayStyle();

        String getDocumentId();

        ByteString getDocumentIdBytes();

        String getExtra();

        ByteString getExtraBytes();

        String getPageUniqueId();

        ByteString getPageUniqueIdBytes();

        String getPath();

        ByteString getPathBytes();

        String getRemark();

        ByteString getRemarkBytes();

        String getRevisionId();

        ByteString getRevisionIdBytes();

        int getStatus();

        String getTargetDocId();

        ByteString getTargetDocIdBytes();

        String getTargetPageId();

        ByteString getTargetPageIdBytes();

        int getTargetPageIndex();

        String getTitle();

        ByteString getTitleBytes();

        String getType();

        ByteString getTypeBytes();

        String getUniqueId();

        ByteString getUniqueIdBytes();

        long getUpdatedAt();

        String getUserId();

        ByteString getUserIdBytes();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.LinkDataProto$a */
    /* loaded from: classes8.dex */
    public class C7762a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = LinkDataProto.f45639e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0013LinkDataProto.proto\"*\n\rLinkProtoList\u0012\u0019\n\u0005proto\u0018\u0001 \u0003(\u000b2\n.LinkProto\"ì\u0002\n\tLinkProto\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012\u0013\n\u000btargetDocId\u0018\u0002 \u0001(\t\u0012\u0012\n\ndocumentId\u0018\u0003 \u0001(\t\u0012\u0014\n\ftargetPageId\u0018\u0004 \u0001(\t\u0012\u0014\n\fpageUniqueId\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006userId\u0018\u0006 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0007 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\b \u0001(\u0003\u0012\u000f\n\u0007content\u0018\t \u0001(\t\u0012\f\n\u0004type\u0018\n \u0001(\t\u0012\u000e\n\u0006remark\u0018\u000b \u0001(\t\u0012\r\n\u0005title\u0018\f \u0001(\t\u0012\u0014\n\fdisplayStyle\u0018\r \u0001(\u0005\u0012\u0017\n\u000ftargetPageIndex\u0018\u000e \u0001(\u0005\u0012\f\n\u0004path\u0018\u000f \u0001(\t\u0012\r\n\u0005extra\u0018\u0010 \u0001(\t\u0012\u000e\n\u0006status\u0018\u0011 \u0001(\u0005\u0012\u0014\n\fboundingRect\u0018\u0012 \u0001(\t\u0012\u0012\n\nrevisionId\u0018\u0013 \u0001(\tB*\n(com.onyx.android.sdk.scribble.data.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7762a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45635a = descriptor;
        f45636b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45637c = descriptor2;
        f45638d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"UniqueId", "TargetDocId", "DocumentId", "TargetPageId", "PageUniqueId", "UserId", "CreatedAt", "UpdatedAt", MIMEHeaders.KEY_CONTENT, "Type", "Remark", "Title", "DisplayStyle", "TargetPageIndex", "Path", "Extra", PersistedInstallation.f35952i, "BoundingRect", "RevisionId"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45639e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
