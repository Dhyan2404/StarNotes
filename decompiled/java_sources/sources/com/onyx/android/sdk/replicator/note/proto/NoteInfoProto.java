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
import com.onyx.galaxy.note.DataBinderMapperImpl;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes8.dex */
public final class NoteInfoProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45662a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45663b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45664c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45665d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45666e;

    /* loaded from: classes8.dex */
    public static final class NoteInfo extends GeneratedMessageV3 implements NoteInfoOrBuilder {
        public static final int ACTIVESCENE_FIELD_NUMBER = 43;
        public static final int ASSOCIATEDATE_FIELD_NUMBER = 25;
        public static final int ASSOCIATIONID_FIELD_NUMBER = 29;
        public static final int ASSOCIATIONTYPE_FIELD_NUMBER = 30;
        public static final int ASYNCSTATUS_FIELD_NUMBER = 26;
        public static final int BACKGROUND_FIELD_NUMBER = 17;
        public static final int CLOUDNOTESIZE_FIELD_NUMBER = 32;
        public static final int CLOUDUPDATEDAT_FIELD_NUMBER = 33;
        public static final int COMMITID_FIELD_NUMBER = 34;
        public static final int CREATEDAT_FIELD_NUMBER = 2;
        public static final int CURRENTSHAPETYPE_FIELD_NUMBER = 16;
        public static final int DEVICEINFO_FIELD_NUMBER = 14;
        public static final int DIGEST_FIELD_NUMBER = 28;
        public static final int EMBEDDEDAT_FIELD_NUMBER = 35;
        public static final int ENCRYPTIONTYPE_FIELD_NUMBER = 27;
        public static final int ERASERWIDTH_FIELD_NUMBER = 10;
        public static final int EXTRAATTRIBUTES_FIELD_NUMBER = 7;
        public static final int FAVORITE_FIELD_NUMBER = 38;
        public static final int GROUPID_FIELD_NUMBER = 41;
        public static final int LINELAYOUTBACKGROUND_FIELD_NUMBER = 18;
        public static final int NOTEBACKGROUND_FIELD_NUMBER = 13;
        public static final int NOTEPAGEINFO_FIELD_NUMBER = 12;
        public static final int NOTEPENINFO_FIELD_NUMBER = 11;
        public static final int NOTESYNCSTATUS_FIELD_NUMBER = 37;
        public static final int ORDERINDEX_FIELD_NUMBER = 47;
        public static final int PAGENAMELIST_FIELD_NUMBER = 20;
        public static final int PAGEORIGINHEIGHT_FIELD_NUMBER = 23;
        public static final int PAGEORIGINWIDTH_FIELD_NUMBER = 22;
        public static final int PARENTUNIQUEID_FIELD_NUMBER = 4;
        public static final int POSITION_FIELD_NUMBER = 19;
        public static final int REMOVEPAGELIST_FIELD_NUMBER = 44;
        public static final int RICHTEXTPAGENAMELIST_FIELD_NUMBER = 21;
        public static final int SOURCE_FIELD_NUMBER = 24;
        public static final int STATUS_FIELD_NUMBER = 31;
        public static final int STROKECOLOR_FIELD_NUMBER = 15;
        public static final int STROKEWIDTH_FIELD_NUMBER = 9;
        public static final int STYLE_FIELD_NUMBER = 46;
        public static final int SUBPAGENAME_FIELD_NUMBER = 5;
        public static final int SYNCFROM_FIELD_NUMBER = 36;
        public static final int TAGIDLIST_FIELD_NUMBER = 45;
        public static final int THUMBNAILRES_FIELD_NUMBER = 42;
        public static final int TITLE_FIELD_NUMBER = 6;
        public static final int TYPE_FIELD_NUMBER = 8;
        public static final int UNIQUEID_FIELD_NUMBER = 1;
        public static final int UPDATEDAT_FIELD_NUMBER = 3;
        public static final int USERID_FIELD_NUMBER = 39;
        public static final int VERSION_FIELD_NUMBER = 40;
        private static final long serialVersionUID = 0;
        private int activeScene_;
        private volatile Object associateDate_;
        private volatile Object associationId_;
        private int associationType_;
        private int asyncStatus_;
        private int background_;
        private long cloudNoteSize_;
        private long cloudUpdatedAt_;
        private volatile Object commitId_;
        private long createdAt_;
        private int currentShapeType_;
        private volatile Object deviceInfo_;
        private volatile Object digest_;
        private long embeddedAt_;
        private int encryptionType_;
        private float eraserWidth_;
        private volatile Object extraAttributes_;
        private int favorite_;
        private volatile Object groupId_;
        private int lineLayoutBackground_;
        private byte memoizedIsInitialized;
        private volatile Object noteBackground_;
        private volatile Object notePageInfo_;
        private volatile Object notePenInfo_;
        private int noteSyncStatus_;
        private float orderIndex_;
        private volatile Object pageNameList_;
        private float pageOriginHeight_;
        private float pageOriginWidth_;
        private volatile Object parentUniqueId_;
        private int position_;
        private volatile Object removePageList_;
        private volatile Object richTextPageNameList_;
        private volatile Object source_;
        private int status_;
        private int strokeColor_;
        private float strokeWidth_;
        private volatile Object style_;
        private volatile Object subPageName_;
        private int syncFrom_;
        private volatile Object tagIdList_;
        private volatile Object thumbnailRes_;
        private volatile Object title_;
        private int type_;
        private volatile Object uniqueId_;
        private long updatedAt_;
        private volatile Object userId_;
        private int version_;
        private static final NoteInfo DEFAULT_INSTANCE = new NoteInfo();
        private static final Parser<NoteInfo> PARSER = new C7763a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements NoteInfoOrBuilder {

            /* renamed from: A0 */
            public long f45667A0;

            /* renamed from: B0 */
            public long f45668B0;

            /* renamed from: C0 */
            public Object f45669C0;

            /* renamed from: D0 */
            public long f45670D0;

            /* renamed from: E0 */
            public int f45671E0;

            /* renamed from: F0 */
            public int f45672F0;

            /* renamed from: G0 */
            public int f45673G0;

            /* renamed from: H0 */
            public Object f45674H0;

            /* renamed from: I0 */
            public int f45675I0;

            /* renamed from: J */
            public int f45676J;

            /* renamed from: J0 */
            public Object f45677J0;

            /* renamed from: K0 */
            public Object f45678K0;

            /* renamed from: L0 */
            public int f45679L0;

            /* renamed from: M0 */
            public Object f45680M0;

            /* renamed from: N0 */
            public Object f45681N0;

            /* renamed from: O */
            public Object f45682O;

            /* renamed from: O0 */
            public Object f45683O0;

            /* renamed from: P0 */
            public float f45684P0;

            /* renamed from: Q */
            public Object f45685Q;

            /* renamed from: Z */
            public float f45686Z;

            /* renamed from: i */
            public Object f45687i;

            /* renamed from: j */
            public long f45688j;

            /* renamed from: k */
            public long f45689k;

            /* renamed from: k0 */
            public float f45690k0;

            /* renamed from: l */
            public Object f45691l;

            /* renamed from: m */
            public Object f45692m;

            /* renamed from: n */
            public Object f45693n;

            /* renamed from: o */
            public Object f45694o;

            /* renamed from: p */
            public int f45695p;

            /* renamed from: q */
            public float f45696q;

            /* renamed from: q0 */
            public Object f45697q0;

            /* renamed from: r */
            public float f45698r;

            /* renamed from: s */
            public Object f45699s;

            /* renamed from: t */
            public Object f45700t;

            /* renamed from: t0 */
            public Object f45701t0;

            /* renamed from: u */
            public Object f45702u;

            /* renamed from: u0 */
            public int f45703u0;

            /* renamed from: v */
            public Object f45704v;

            /* renamed from: v0 */
            public int f45705v0;

            /* renamed from: w */
            public int f45706w;

            /* renamed from: w0 */
            public Object f45707w0;

            /* renamed from: x */
            public int f45708x;

            /* renamed from: x0 */
            public Object f45709x0;

            /* renamed from: y */
            public int f45710y;

            /* renamed from: y0 */
            public int f45711y0;

            /* renamed from: z */
            public int f45712z;

            /* renamed from: z0 */
            public int f45713z0;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7765a c7765a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return NoteInfoProto.f45664c;
            }

            public Builder clearActiveScene() {
                this.f45679L0 = 0;
                onChanged();
                return this;
            }

            public Builder clearAssociateDate() {
                this.f45701t0 = NoteInfo.getDefaultInstance().getAssociateDate();
                onChanged();
                return this;
            }

            public Builder clearAssociationId() {
                this.f45709x0 = NoteInfo.getDefaultInstance().getAssociationId();
                onChanged();
                return this;
            }

            public Builder clearAssociationType() {
                this.f45711y0 = 0;
                onChanged();
                return this;
            }

            public Builder clearAsyncStatus() {
                this.f45703u0 = 0;
                onChanged();
                return this;
            }

            public Builder clearBackground() {
                this.f45710y = 0;
                onChanged();
                return this;
            }

            public Builder clearCloudNoteSize() {
                this.f45667A0 = 0L;
                onChanged();
                return this;
            }

            public Builder clearCloudUpdatedAt() {
                this.f45668B0 = 0L;
                onChanged();
                return this;
            }

            public Builder clearCommitId() {
                this.f45669C0 = NoteInfo.getDefaultInstance().getCommitId();
                onChanged();
                return this;
            }

            public Builder clearCreatedAt() {
                this.f45688j = 0L;
                onChanged();
                return this;
            }

            public Builder clearCurrentShapeType() {
                this.f45708x = 0;
                onChanged();
                return this;
            }

            public Builder clearDeviceInfo() {
                this.f45704v = NoteInfo.getDefaultInstance().getDeviceInfo();
                onChanged();
                return this;
            }

            public Builder clearDigest() {
                this.f45707w0 = NoteInfo.getDefaultInstance().getDigest();
                onChanged();
                return this;
            }

            public Builder clearEmbeddedAt() {
                this.f45670D0 = 0L;
                onChanged();
                return this;
            }

            public Builder clearEncryptionType() {
                this.f45705v0 = 0;
                onChanged();
                return this;
            }

            public Builder clearEraserWidth() {
                this.f45698r = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearExtraAttributes() {
                this.f45694o = NoteInfo.getDefaultInstance().getExtraAttributes();
                onChanged();
                return this;
            }

            public Builder clearFavorite() {
                this.f45673G0 = 0;
                onChanged();
                return this;
            }

            public Builder clearGroupId() {
                this.f45677J0 = NoteInfo.getDefaultInstance().getGroupId();
                onChanged();
                return this;
            }

            public Builder clearLineLayoutBackground() {
                this.f45712z = 0;
                onChanged();
                return this;
            }

            public Builder clearNoteBackground() {
                this.f45702u = NoteInfo.getDefaultInstance().getNoteBackground();
                onChanged();
                return this;
            }

            public Builder clearNotePageInfo() {
                this.f45700t = NoteInfo.getDefaultInstance().getNotePageInfo();
                onChanged();
                return this;
            }

            public Builder clearNotePenInfo() {
                this.f45699s = NoteInfo.getDefaultInstance().getNotePenInfo();
                onChanged();
                return this;
            }

            public Builder clearNoteSyncStatus() {
                this.f45672F0 = 0;
                onChanged();
                return this;
            }

            public Builder clearOrderIndex() {
                this.f45684P0 = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearPageNameList() {
                this.f45682O = NoteInfo.getDefaultInstance().getPageNameList();
                onChanged();
                return this;
            }

            public Builder clearPageOriginHeight() {
                this.f45690k0 = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearPageOriginWidth() {
                this.f45686Z = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearParentUniqueId() {
                this.f45691l = NoteInfo.getDefaultInstance().getParentUniqueId();
                onChanged();
                return this;
            }

            public Builder clearPosition() {
                this.f45676J = 0;
                onChanged();
                return this;
            }

            public Builder clearRemovePageList() {
                this.f45680M0 = NoteInfo.getDefaultInstance().getRemovePageList();
                onChanged();
                return this;
            }

            public Builder clearRichTextPageNameList() {
                this.f45685Q = NoteInfo.getDefaultInstance().getRichTextPageNameList();
                onChanged();
                return this;
            }

            public Builder clearSource() {
                this.f45697q0 = NoteInfo.getDefaultInstance().getSource();
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.f45713z0 = 0;
                onChanged();
                return this;
            }

            public Builder clearStrokeColor() {
                this.f45706w = 0;
                onChanged();
                return this;
            }

            public Builder clearStrokeWidth() {
                this.f45696q = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearStyle() {
                this.f45683O0 = NoteInfo.getDefaultInstance().getStyle();
                onChanged();
                return this;
            }

            public Builder clearSubPageName() {
                this.f45692m = NoteInfo.getDefaultInstance().getSubPageName();
                onChanged();
                return this;
            }

            public Builder clearSyncFrom() {
                this.f45671E0 = 0;
                onChanged();
                return this;
            }

            public Builder clearTagIdList() {
                this.f45681N0 = NoteInfo.getDefaultInstance().getTagIdList();
                onChanged();
                return this;
            }

            public Builder clearThumbnailRes() {
                this.f45678K0 = NoteInfo.getDefaultInstance().getThumbnailRes();
                onChanged();
                return this;
            }

            public Builder clearTitle() {
                this.f45693n = NoteInfo.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.f45695p = 0;
                onChanged();
                return this;
            }

            public Builder clearUniqueId() {
                this.f45687i = NoteInfo.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45689k = 0L;
                onChanged();
                return this;
            }

            public Builder clearUserId() {
                this.f45674H0 = NoteInfo.getDefaultInstance().getUserId();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.f45675I0 = 0;
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getActiveScene() {
                return this.f45679L0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getAssociateDate() {
                Object obj = this.f45701t0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45701t0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getAssociateDateBytes() {
                Object obj = this.f45701t0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45701t0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getAssociationId() {
                Object obj = this.f45709x0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45709x0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getAssociationIdBytes() {
                Object obj = this.f45709x0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45709x0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getAssociationType() {
                return this.f45711y0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getAsyncStatus() {
                return this.f45703u0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getBackground() {
                return this.f45710y;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public long getCloudNoteSize() {
                return this.f45667A0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public long getCloudUpdatedAt() {
                return this.f45668B0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getCommitId() {
                Object obj = this.f45669C0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45669C0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getCommitIdBytes() {
                Object obj = this.f45669C0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45669C0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public long getCreatedAt() {
                return this.f45688j;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getCurrentShapeType() {
                return this.f45708x;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return NoteInfoProto.f45664c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getDeviceInfo() {
                Object obj = this.f45704v;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45704v = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getDeviceInfoBytes() {
                Object obj = this.f45704v;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45704v = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getDigest() {
                Object obj = this.f45707w0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45707w0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getDigestBytes() {
                Object obj = this.f45707w0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45707w0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public long getEmbeddedAt() {
                return this.f45670D0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getEncryptionType() {
                return this.f45705v0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public float getEraserWidth() {
                return this.f45698r;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getExtraAttributes() {
                Object obj = this.f45694o;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45694o = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getExtraAttributesBytes() {
                Object obj = this.f45694o;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45694o = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getFavorite() {
                return this.f45673G0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getGroupId() {
                Object obj = this.f45677J0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45677J0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getGroupIdBytes() {
                Object obj = this.f45677J0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45677J0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getLineLayoutBackground() {
                return this.f45712z;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getNoteBackground() {
                Object obj = this.f45702u;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45702u = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getNoteBackgroundBytes() {
                Object obj = this.f45702u;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45702u = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getNotePageInfo() {
                Object obj = this.f45700t;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45700t = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getNotePageInfoBytes() {
                Object obj = this.f45700t;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45700t = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getNotePenInfo() {
                Object obj = this.f45699s;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45699s = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getNotePenInfoBytes() {
                Object obj = this.f45699s;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45699s = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getNoteSyncStatus() {
                return this.f45672F0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public float getOrderIndex() {
                return this.f45684P0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getPageNameList() {
                Object obj = this.f45682O;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45682O = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getPageNameListBytes() {
                Object obj = this.f45682O;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45682O = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public float getPageOriginHeight() {
                return this.f45690k0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public float getPageOriginWidth() {
                return this.f45686Z;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getParentUniqueId() {
                Object obj = this.f45691l;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45691l = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getParentUniqueIdBytes() {
                Object obj = this.f45691l;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45691l = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getPosition() {
                return this.f45676J;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getRemovePageList() {
                Object obj = this.f45680M0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45680M0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getRemovePageListBytes() {
                Object obj = this.f45680M0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45680M0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getRichTextPageNameList() {
                Object obj = this.f45685Q;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45685Q = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getRichTextPageNameListBytes() {
                Object obj = this.f45685Q;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45685Q = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getSource() {
                Object obj = this.f45697q0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45697q0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getSourceBytes() {
                Object obj = this.f45697q0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45697q0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getStatus() {
                return this.f45713z0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getStrokeColor() {
                return this.f45706w;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public float getStrokeWidth() {
                return this.f45696q;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getStyle() {
                Object obj = this.f45683O0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45683O0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getStyleBytes() {
                Object obj = this.f45683O0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45683O0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getSubPageName() {
                Object obj = this.f45692m;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45692m = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getSubPageNameBytes() {
                Object obj = this.f45692m;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45692m = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getSyncFrom() {
                return this.f45671E0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getTagIdList() {
                Object obj = this.f45681N0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45681N0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getTagIdListBytes() {
                Object obj = this.f45681N0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45681N0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getThumbnailRes() {
                Object obj = this.f45678K0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45678K0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getThumbnailResBytes() {
                Object obj = this.f45678K0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45678K0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getTitle() {
                Object obj = this.f45693n;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45693n = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getTitleBytes() {
                Object obj = this.f45693n;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45693n = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getType() {
                return this.f45695p;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getUniqueId() {
                Object obj = this.f45687i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45687i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getUniqueIdBytes() {
                Object obj = this.f45687i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45687i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public long getUpdatedAt() {
                return this.f45689k;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public String getUserId() {
                Object obj = this.f45674H0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45674H0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public ByteString getUserIdBytes() {
                Object obj = this.f45674H0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45674H0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
            public int getVersion() {
                return this.f45675I0;
            }

            /* renamed from: h */
            public final void m35290h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return NoteInfoProto.f45665d.ensureFieldAccessorsInitialized(NoteInfo.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setActiveScene(int i) {
                this.f45679L0 = i;
                onChanged();
                return this;
            }

            public Builder setAssociateDate(String str) {
                str.getClass();
                this.f45701t0 = str;
                onChanged();
                return this;
            }

            public Builder setAssociateDateBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45701t0 = byteString;
                onChanged();
                return this;
            }

            public Builder setAssociationId(String str) {
                str.getClass();
                this.f45709x0 = str;
                onChanged();
                return this;
            }

            public Builder setAssociationIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45709x0 = byteString;
                onChanged();
                return this;
            }

            public Builder setAssociationType(int i) {
                this.f45711y0 = i;
                onChanged();
                return this;
            }

            public Builder setAsyncStatus(int i) {
                this.f45703u0 = i;
                onChanged();
                return this;
            }

            public Builder setBackground(int i) {
                this.f45710y = i;
                onChanged();
                return this;
            }

            public Builder setCloudNoteSize(long j) {
                this.f45667A0 = j;
                onChanged();
                return this;
            }

            public Builder setCloudUpdatedAt(long j) {
                this.f45668B0 = j;
                onChanged();
                return this;
            }

            public Builder setCommitId(String str) {
                str.getClass();
                this.f45669C0 = str;
                onChanged();
                return this;
            }

            public Builder setCommitIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45669C0 = byteString;
                onChanged();
                return this;
            }

            public Builder setCreatedAt(long j) {
                this.f45688j = j;
                onChanged();
                return this;
            }

            public Builder setCurrentShapeType(int i) {
                this.f45708x = i;
                onChanged();
                return this;
            }

            public Builder setDeviceInfo(String str) {
                str.getClass();
                this.f45704v = str;
                onChanged();
                return this;
            }

            public Builder setDeviceInfoBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45704v = byteString;
                onChanged();
                return this;
            }

            public Builder setDigest(String str) {
                str.getClass();
                this.f45707w0 = str;
                onChanged();
                return this;
            }

            public Builder setDigestBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45707w0 = byteString;
                onChanged();
                return this;
            }

            public Builder setEmbeddedAt(long j) {
                this.f45670D0 = j;
                onChanged();
                return this;
            }

            public Builder setEncryptionType(int i) {
                this.f45705v0 = i;
                onChanged();
                return this;
            }

            public Builder setEraserWidth(float f) {
                this.f45698r = f;
                onChanged();
                return this;
            }

            public Builder setExtraAttributes(String str) {
                str.getClass();
                this.f45694o = str;
                onChanged();
                return this;
            }

            public Builder setExtraAttributesBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45694o = byteString;
                onChanged();
                return this;
            }

            public Builder setFavorite(int i) {
                this.f45673G0 = i;
                onChanged();
                return this;
            }

            public Builder setGroupId(String str) {
                str.getClass();
                this.f45677J0 = str;
                onChanged();
                return this;
            }

            public Builder setGroupIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45677J0 = byteString;
                onChanged();
                return this;
            }

            public Builder setLineLayoutBackground(int i) {
                this.f45712z = i;
                onChanged();
                return this;
            }

            public Builder setNoteBackground(String str) {
                str.getClass();
                this.f45702u = str;
                onChanged();
                return this;
            }

            public Builder setNoteBackgroundBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45702u = byteString;
                onChanged();
                return this;
            }

            public Builder setNotePageInfo(String str) {
                str.getClass();
                this.f45700t = str;
                onChanged();
                return this;
            }

            public Builder setNotePageInfoBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45700t = byteString;
                onChanged();
                return this;
            }

            public Builder setNotePenInfo(String str) {
                str.getClass();
                this.f45699s = str;
                onChanged();
                return this;
            }

            public Builder setNotePenInfoBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45699s = byteString;
                onChanged();
                return this;
            }

            public Builder setNoteSyncStatus(int i) {
                this.f45672F0 = i;
                onChanged();
                return this;
            }

            public Builder setOrderIndex(float f) {
                this.f45684P0 = f;
                onChanged();
                return this;
            }

            public Builder setPageNameList(String str) {
                str.getClass();
                this.f45682O = str;
                onChanged();
                return this;
            }

            public Builder setPageNameListBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45682O = byteString;
                onChanged();
                return this;
            }

            public Builder setPageOriginHeight(float f) {
                this.f45690k0 = f;
                onChanged();
                return this;
            }

            public Builder setPageOriginWidth(float f) {
                this.f45686Z = f;
                onChanged();
                return this;
            }

            public Builder setParentUniqueId(String str) {
                str.getClass();
                this.f45691l = str;
                onChanged();
                return this;
            }

            public Builder setParentUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45691l = byteString;
                onChanged();
                return this;
            }

            public Builder setPosition(int i) {
                this.f45676J = i;
                onChanged();
                return this;
            }

            public Builder setRemovePageList(String str) {
                str.getClass();
                this.f45680M0 = str;
                onChanged();
                return this;
            }

            public Builder setRemovePageListBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45680M0 = byteString;
                onChanged();
                return this;
            }

            public Builder setRichTextPageNameList(String str) {
                str.getClass();
                this.f45685Q = str;
                onChanged();
                return this;
            }

            public Builder setRichTextPageNameListBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45685Q = byteString;
                onChanged();
                return this;
            }

            public Builder setSource(String str) {
                str.getClass();
                this.f45697q0 = str;
                onChanged();
                return this;
            }

            public Builder setSourceBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45697q0 = byteString;
                onChanged();
                return this;
            }

            public Builder setStatus(int i) {
                this.f45713z0 = i;
                onChanged();
                return this;
            }

            public Builder setStrokeColor(int i) {
                this.f45706w = i;
                onChanged();
                return this;
            }

            public Builder setStrokeWidth(float f) {
                this.f45696q = f;
                onChanged();
                return this;
            }

            public Builder setStyle(String str) {
                str.getClass();
                this.f45683O0 = str;
                onChanged();
                return this;
            }

            public Builder setStyleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45683O0 = byteString;
                onChanged();
                return this;
            }

            public Builder setSubPageName(String str) {
                str.getClass();
                this.f45692m = str;
                onChanged();
                return this;
            }

            public Builder setSubPageNameBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45692m = byteString;
                onChanged();
                return this;
            }

            public Builder setSyncFrom(int i) {
                this.f45671E0 = i;
                onChanged();
                return this;
            }

            public Builder setTagIdList(String str) {
                str.getClass();
                this.f45681N0 = str;
                onChanged();
                return this;
            }

            public Builder setTagIdListBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45681N0 = byteString;
                onChanged();
                return this;
            }

            public Builder setThumbnailRes(String str) {
                str.getClass();
                this.f45678K0 = str;
                onChanged();
                return this;
            }

            public Builder setThumbnailResBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45678K0 = byteString;
                onChanged();
                return this;
            }

            public Builder setTitle(String str) {
                str.getClass();
                this.f45693n = str;
                onChanged();
                return this;
            }

            public Builder setTitleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45693n = byteString;
                onChanged();
                return this;
            }

            public Builder setType(int i) {
                this.f45695p = i;
                onChanged();
                return this;
            }

            public Builder setUniqueId(String str) {
                str.getClass();
                this.f45687i = str;
                onChanged();
                return this;
            }

            public Builder setUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45687i = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45689k = j;
                onChanged();
                return this;
            }

            public Builder setUserId(String str) {
                str.getClass();
                this.f45674H0 = str;
                onChanged();
                return this;
            }

            public Builder setUserIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45674H0 = byteString;
                onChanged();
                return this;
            }

            public Builder setVersion(int i) {
                this.f45675I0 = i;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7765a c7765a) {
                this();
            }

            public Builder() {
                this.f45687i = "";
                this.f45691l = "";
                this.f45692m = "";
                this.f45693n = "";
                this.f45694o = "";
                this.f45699s = "";
                this.f45700t = "";
                this.f45702u = "";
                this.f45704v = "";
                this.f45682O = "";
                this.f45685Q = "";
                this.f45697q0 = "";
                this.f45701t0 = "";
                this.f45707w0 = "";
                this.f45709x0 = "";
                this.f45669C0 = "";
                this.f45674H0 = "";
                this.f45677J0 = "";
                this.f45678K0 = "";
                this.f45680M0 = "";
                this.f45681N0 = "";
                this.f45683O0 = "";
                m35290h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NoteInfo build() {
                NoteInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NoteInfo buildPartial() {
                NoteInfo noteInfo = new NoteInfo(this, (C7765a) null);
                noteInfo.uniqueId_ = this.f45687i;
                noteInfo.createdAt_ = this.f45688j;
                noteInfo.updatedAt_ = this.f45689k;
                noteInfo.parentUniqueId_ = this.f45691l;
                noteInfo.subPageName_ = this.f45692m;
                noteInfo.title_ = this.f45693n;
                noteInfo.extraAttributes_ = this.f45694o;
                noteInfo.type_ = this.f45695p;
                noteInfo.strokeWidth_ = this.f45696q;
                noteInfo.eraserWidth_ = this.f45698r;
                noteInfo.notePenInfo_ = this.f45699s;
                noteInfo.notePageInfo_ = this.f45700t;
                noteInfo.noteBackground_ = this.f45702u;
                noteInfo.deviceInfo_ = this.f45704v;
                noteInfo.strokeColor_ = this.f45706w;
                noteInfo.currentShapeType_ = this.f45708x;
                noteInfo.background_ = this.f45710y;
                noteInfo.lineLayoutBackground_ = this.f45712z;
                noteInfo.position_ = this.f45676J;
                noteInfo.pageNameList_ = this.f45682O;
                noteInfo.richTextPageNameList_ = this.f45685Q;
                noteInfo.pageOriginWidth_ = this.f45686Z;
                noteInfo.pageOriginHeight_ = this.f45690k0;
                noteInfo.source_ = this.f45697q0;
                noteInfo.associateDate_ = this.f45701t0;
                noteInfo.asyncStatus_ = this.f45703u0;
                noteInfo.encryptionType_ = this.f45705v0;
                noteInfo.digest_ = this.f45707w0;
                noteInfo.associationId_ = this.f45709x0;
                noteInfo.associationType_ = this.f45711y0;
                noteInfo.status_ = this.f45713z0;
                noteInfo.cloudNoteSize_ = this.f45667A0;
                noteInfo.cloudUpdatedAt_ = this.f45668B0;
                noteInfo.commitId_ = this.f45669C0;
                noteInfo.embeddedAt_ = this.f45670D0;
                noteInfo.syncFrom_ = this.f45671E0;
                noteInfo.noteSyncStatus_ = this.f45672F0;
                noteInfo.favorite_ = this.f45673G0;
                noteInfo.userId_ = this.f45674H0;
                noteInfo.version_ = this.f45675I0;
                noteInfo.groupId_ = this.f45677J0;
                noteInfo.thumbnailRes_ = this.f45678K0;
                noteInfo.activeScene_ = this.f45679L0;
                noteInfo.removePageList_ = this.f45680M0;
                noteInfo.tagIdList_ = this.f45681N0;
                noteInfo.style_ = this.f45683O0;
                noteInfo.orderIndex_ = this.f45684P0;
                onBuilt();
                return noteInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public NoteInfo getDefaultInstanceForType() {
                return NoteInfo.getDefaultInstance();
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
                this.f45687i = "";
                this.f45688j = 0L;
                this.f45689k = 0L;
                this.f45691l = "";
                this.f45692m = "";
                this.f45693n = "";
                this.f45694o = "";
                this.f45695p = 0;
                this.f45696q = 0.0f;
                this.f45698r = 0.0f;
                this.f45699s = "";
                this.f45700t = "";
                this.f45702u = "";
                this.f45704v = "";
                this.f45706w = 0;
                this.f45708x = 0;
                this.f45710y = 0;
                this.f45712z = 0;
                this.f45676J = 0;
                this.f45682O = "";
                this.f45685Q = "";
                this.f45686Z = 0.0f;
                this.f45690k0 = 0.0f;
                this.f45697q0 = "";
                this.f45701t0 = "";
                this.f45703u0 = 0;
                this.f45705v0 = 0;
                this.f45707w0 = "";
                this.f45709x0 = "";
                this.f45711y0 = 0;
                this.f45713z0 = 0;
                this.f45667A0 = 0L;
                this.f45668B0 = 0L;
                this.f45669C0 = "";
                this.f45670D0 = 0L;
                this.f45671E0 = 0;
                this.f45672F0 = 0;
                this.f45673G0 = 0;
                this.f45674H0 = "";
                this.f45675I0 = 0;
                this.f45677J0 = "";
                this.f45678K0 = "";
                this.f45679L0 = 0;
                this.f45680M0 = "";
                this.f45681N0 = "";
                this.f45683O0 = "";
                this.f45684P0 = 0.0f;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof NoteInfo) {
                    return mergeFrom((NoteInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(NoteInfo noteInfo) {
                if (noteInfo == NoteInfo.getDefaultInstance()) {
                    return this;
                }
                if (!noteInfo.getUniqueId().isEmpty()) {
                    this.f45687i = noteInfo.uniqueId_;
                    onChanged();
                }
                if (noteInfo.getCreatedAt() != 0) {
                    setCreatedAt(noteInfo.getCreatedAt());
                }
                if (noteInfo.getUpdatedAt() != 0) {
                    setUpdatedAt(noteInfo.getUpdatedAt());
                }
                if (!noteInfo.getParentUniqueId().isEmpty()) {
                    this.f45691l = noteInfo.parentUniqueId_;
                    onChanged();
                }
                if (!noteInfo.getSubPageName().isEmpty()) {
                    this.f45692m = noteInfo.subPageName_;
                    onChanged();
                }
                if (!noteInfo.getTitle().isEmpty()) {
                    this.f45693n = noteInfo.title_;
                    onChanged();
                }
                if (!noteInfo.getExtraAttributes().isEmpty()) {
                    this.f45694o = noteInfo.extraAttributes_;
                    onChanged();
                }
                if (noteInfo.getType() != 0) {
                    setType(noteInfo.getType());
                }
                if (noteInfo.getStrokeWidth() != 0.0f) {
                    setStrokeWidth(noteInfo.getStrokeWidth());
                }
                if (noteInfo.getEraserWidth() != 0.0f) {
                    setEraserWidth(noteInfo.getEraserWidth());
                }
                if (!noteInfo.getNotePenInfo().isEmpty()) {
                    this.f45699s = noteInfo.notePenInfo_;
                    onChanged();
                }
                if (!noteInfo.getNotePageInfo().isEmpty()) {
                    this.f45700t = noteInfo.notePageInfo_;
                    onChanged();
                }
                if (!noteInfo.getNoteBackground().isEmpty()) {
                    this.f45702u = noteInfo.noteBackground_;
                    onChanged();
                }
                if (!noteInfo.getDeviceInfo().isEmpty()) {
                    this.f45704v = noteInfo.deviceInfo_;
                    onChanged();
                }
                if (noteInfo.getStrokeColor() != 0) {
                    setStrokeColor(noteInfo.getStrokeColor());
                }
                if (noteInfo.getCurrentShapeType() != 0) {
                    setCurrentShapeType(noteInfo.getCurrentShapeType());
                }
                if (noteInfo.getBackground() != 0) {
                    setBackground(noteInfo.getBackground());
                }
                if (noteInfo.getLineLayoutBackground() != 0) {
                    setLineLayoutBackground(noteInfo.getLineLayoutBackground());
                }
                if (noteInfo.getPosition() != 0) {
                    setPosition(noteInfo.getPosition());
                }
                if (!noteInfo.getPageNameList().isEmpty()) {
                    this.f45682O = noteInfo.pageNameList_;
                    onChanged();
                }
                if (!noteInfo.getRichTextPageNameList().isEmpty()) {
                    this.f45685Q = noteInfo.richTextPageNameList_;
                    onChanged();
                }
                if (noteInfo.getPageOriginWidth() != 0.0f) {
                    setPageOriginWidth(noteInfo.getPageOriginWidth());
                }
                if (noteInfo.getPageOriginHeight() != 0.0f) {
                    setPageOriginHeight(noteInfo.getPageOriginHeight());
                }
                if (!noteInfo.getSource().isEmpty()) {
                    this.f45697q0 = noteInfo.source_;
                    onChanged();
                }
                if (!noteInfo.getAssociateDate().isEmpty()) {
                    this.f45701t0 = noteInfo.associateDate_;
                    onChanged();
                }
                if (noteInfo.getAsyncStatus() != 0) {
                    setAsyncStatus(noteInfo.getAsyncStatus());
                }
                if (noteInfo.getEncryptionType() != 0) {
                    setEncryptionType(noteInfo.getEncryptionType());
                }
                if (!noteInfo.getDigest().isEmpty()) {
                    this.f45707w0 = noteInfo.digest_;
                    onChanged();
                }
                if (!noteInfo.getAssociationId().isEmpty()) {
                    this.f45709x0 = noteInfo.associationId_;
                    onChanged();
                }
                if (noteInfo.getAssociationType() != 0) {
                    setAssociationType(noteInfo.getAssociationType());
                }
                if (noteInfo.getStatus() != 0) {
                    setStatus(noteInfo.getStatus());
                }
                if (noteInfo.getCloudNoteSize() != 0) {
                    setCloudNoteSize(noteInfo.getCloudNoteSize());
                }
                if (noteInfo.getCloudUpdatedAt() != 0) {
                    setCloudUpdatedAt(noteInfo.getCloudUpdatedAt());
                }
                if (!noteInfo.getCommitId().isEmpty()) {
                    this.f45669C0 = noteInfo.commitId_;
                    onChanged();
                }
                if (noteInfo.getEmbeddedAt() != 0) {
                    setEmbeddedAt(noteInfo.getEmbeddedAt());
                }
                if (noteInfo.getSyncFrom() != 0) {
                    setSyncFrom(noteInfo.getSyncFrom());
                }
                if (noteInfo.getNoteSyncStatus() != 0) {
                    setNoteSyncStatus(noteInfo.getNoteSyncStatus());
                }
                if (noteInfo.getFavorite() != 0) {
                    setFavorite(noteInfo.getFavorite());
                }
                if (!noteInfo.getUserId().isEmpty()) {
                    this.f45674H0 = noteInfo.userId_;
                    onChanged();
                }
                if (noteInfo.getVersion() != 0) {
                    setVersion(noteInfo.getVersion());
                }
                if (!noteInfo.getGroupId().isEmpty()) {
                    this.f45677J0 = noteInfo.groupId_;
                    onChanged();
                }
                if (!noteInfo.getThumbnailRes().isEmpty()) {
                    this.f45678K0 = noteInfo.thumbnailRes_;
                    onChanged();
                }
                if (noteInfo.getActiveScene() != 0) {
                    setActiveScene(noteInfo.getActiveScene());
                }
                if (!noteInfo.getRemovePageList().isEmpty()) {
                    this.f45680M0 = noteInfo.removePageList_;
                    onChanged();
                }
                if (!noteInfo.getTagIdList().isEmpty()) {
                    this.f45681N0 = noteInfo.tagIdList_;
                    onChanged();
                }
                if (!noteInfo.getStyle().isEmpty()) {
                    this.f45683O0 = noteInfo.style_;
                    onChanged();
                }
                if (noteInfo.getOrderIndex() != 0.0f) {
                    setOrderIndex(noteInfo.getOrderIndex());
                }
                mergeUnknownFields(((GeneratedMessageV3) noteInfo).unknownFields);
                onChanged();
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45687i = "";
                this.f45691l = "";
                this.f45692m = "";
                this.f45693n = "";
                this.f45694o = "";
                this.f45699s = "";
                this.f45700t = "";
                this.f45702u = "";
                this.f45704v = "";
                this.f45682O = "";
                this.f45685Q = "";
                this.f45697q0 = "";
                this.f45701t0 = "";
                this.f45707w0 = "";
                this.f45709x0 = "";
                this.f45669C0 = "";
                this.f45674H0 = "";
                this.f45677J0 = "";
                this.f45678K0 = "";
                this.f45680M0 = "";
                this.f45681N0 = "";
                this.f45683O0 = "";
                m35290h();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfo.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfo.access$6500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.NoteInfoProto$NoteInfo r3 = (com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfo) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.NoteInfoProto$NoteInfo r4 = (com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfo) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfo.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.NoteInfoProto$NoteInfo$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.NoteInfoProto$NoteInfo$a */
        /* loaded from: classes8.dex */
        public class C7763a extends AbstractParser<NoteInfo> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public NoteInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new NoteInfo(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ NoteInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7765a c7765a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static NoteInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return NoteInfoProto.f45664c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static NoteInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (NoteInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static NoteInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<NoteInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof NoteInfo)) {
                return super.equals(obj);
            }
            NoteInfo noteInfo = (NoteInfo) obj;
            return (((((((((((((((((((((((((((((((((((((((((((((((getUniqueId().equals(noteInfo.getUniqueId())) && (getCreatedAt() > noteInfo.getCreatedAt() ? 1 : (getCreatedAt() == noteInfo.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > noteInfo.getUpdatedAt() ? 1 : (getUpdatedAt() == noteInfo.getUpdatedAt() ? 0 : -1)) == 0) && getParentUniqueId().equals(noteInfo.getParentUniqueId())) && getSubPageName().equals(noteInfo.getSubPageName())) && getTitle().equals(noteInfo.getTitle())) && getExtraAttributes().equals(noteInfo.getExtraAttributes())) && getType() == noteInfo.getType()) && Float.floatToIntBits(getStrokeWidth()) == Float.floatToIntBits(noteInfo.getStrokeWidth())) && Float.floatToIntBits(getEraserWidth()) == Float.floatToIntBits(noteInfo.getEraserWidth())) && getNotePenInfo().equals(noteInfo.getNotePenInfo())) && getNotePageInfo().equals(noteInfo.getNotePageInfo())) && getNoteBackground().equals(noteInfo.getNoteBackground())) && getDeviceInfo().equals(noteInfo.getDeviceInfo())) && getStrokeColor() == noteInfo.getStrokeColor()) && getCurrentShapeType() == noteInfo.getCurrentShapeType()) && getBackground() == noteInfo.getBackground()) && getLineLayoutBackground() == noteInfo.getLineLayoutBackground()) && getPosition() == noteInfo.getPosition()) && getPageNameList().equals(noteInfo.getPageNameList())) && getRichTextPageNameList().equals(noteInfo.getRichTextPageNameList())) && Float.floatToIntBits(getPageOriginWidth()) == Float.floatToIntBits(noteInfo.getPageOriginWidth())) && Float.floatToIntBits(getPageOriginHeight()) == Float.floatToIntBits(noteInfo.getPageOriginHeight())) && getSource().equals(noteInfo.getSource())) && getAssociateDate().equals(noteInfo.getAssociateDate())) && getAsyncStatus() == noteInfo.getAsyncStatus()) && getEncryptionType() == noteInfo.getEncryptionType()) && getDigest().equals(noteInfo.getDigest())) && getAssociationId().equals(noteInfo.getAssociationId())) && getAssociationType() == noteInfo.getAssociationType()) && getStatus() == noteInfo.getStatus()) && (getCloudNoteSize() > noteInfo.getCloudNoteSize() ? 1 : (getCloudNoteSize() == noteInfo.getCloudNoteSize() ? 0 : -1)) == 0) && (getCloudUpdatedAt() > noteInfo.getCloudUpdatedAt() ? 1 : (getCloudUpdatedAt() == noteInfo.getCloudUpdatedAt() ? 0 : -1)) == 0) && getCommitId().equals(noteInfo.getCommitId())) && (getEmbeddedAt() > noteInfo.getEmbeddedAt() ? 1 : (getEmbeddedAt() == noteInfo.getEmbeddedAt() ? 0 : -1)) == 0) && getSyncFrom() == noteInfo.getSyncFrom()) && getNoteSyncStatus() == noteInfo.getNoteSyncStatus()) && getFavorite() == noteInfo.getFavorite()) && getUserId().equals(noteInfo.getUserId())) && getVersion() == noteInfo.getVersion()) && getGroupId().equals(noteInfo.getGroupId())) && getThumbnailRes().equals(noteInfo.getThumbnailRes())) && getActiveScene() == noteInfo.getActiveScene()) && getRemovePageList().equals(noteInfo.getRemovePageList())) && getTagIdList().equals(noteInfo.getTagIdList())) && getStyle().equals(noteInfo.getStyle())) && Float.floatToIntBits(getOrderIndex()) == Float.floatToIntBits(noteInfo.getOrderIndex())) && this.unknownFields.equals(noteInfo.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getActiveScene() {
            return this.activeScene_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getAssociateDate() {
            Object obj = this.associateDate_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.associateDate_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getAssociateDateBytes() {
            Object obj = this.associateDate_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.associateDate_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getAssociationId() {
            Object obj = this.associationId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.associationId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getAssociationIdBytes() {
            Object obj = this.associationId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.associationId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getAssociationType() {
            return this.associationType_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getAsyncStatus() {
            return this.asyncStatus_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getBackground() {
            return this.background_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public long getCloudNoteSize() {
            return this.cloudNoteSize_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public long getCloudUpdatedAt() {
            return this.cloudUpdatedAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getCommitId() {
            Object obj = this.commitId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.commitId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getCommitIdBytes() {
            Object obj = this.commitId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.commitId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getCurrentShapeType() {
            return this.currentShapeType_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getDeviceInfo() {
            Object obj = this.deviceInfo_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.deviceInfo_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getDeviceInfoBytes() {
            Object obj = this.deviceInfo_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.deviceInfo_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getDigest() {
            Object obj = this.digest_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.digest_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getDigestBytes() {
            Object obj = this.digest_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.digest_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public long getEmbeddedAt() {
            return this.embeddedAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getEncryptionType() {
            return this.encryptionType_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public float getEraserWidth() {
            return this.eraserWidth_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getExtraAttributes() {
            Object obj = this.extraAttributes_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.extraAttributes_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getExtraAttributesBytes() {
            Object obj = this.extraAttributes_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.extraAttributes_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getFavorite() {
            return this.favorite_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getGroupId() {
            Object obj = this.groupId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.groupId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getGroupIdBytes() {
            Object obj = this.groupId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.groupId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getLineLayoutBackground() {
            return this.lineLayoutBackground_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getNoteBackground() {
            Object obj = this.noteBackground_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.noteBackground_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getNoteBackgroundBytes() {
            Object obj = this.noteBackground_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.noteBackground_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getNotePageInfo() {
            Object obj = this.notePageInfo_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.notePageInfo_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getNotePageInfoBytes() {
            Object obj = this.notePageInfo_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.notePageInfo_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getNotePenInfo() {
            Object obj = this.notePenInfo_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.notePenInfo_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getNotePenInfoBytes() {
            Object obj = this.notePenInfo_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.notePenInfo_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getNoteSyncStatus() {
            return this.noteSyncStatus_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public float getOrderIndex() {
            return this.orderIndex_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getPageNameList() {
            Object obj = this.pageNameList_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pageNameList_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getPageNameListBytes() {
            Object obj = this.pageNameList_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pageNameList_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public float getPageOriginHeight() {
            return this.pageOriginHeight_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public float getPageOriginWidth() {
            return this.pageOriginWidth_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getParentUniqueId() {
            Object obj = this.parentUniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.parentUniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getParentUniqueIdBytes() {
            Object obj = this.parentUniqueId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.parentUniqueId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<NoteInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getPosition() {
            return this.position_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getRemovePageList() {
            Object obj = this.removePageList_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.removePageList_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getRemovePageListBytes() {
            Object obj = this.removePageList_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.removePageList_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getRichTextPageNameList() {
            Object obj = this.richTextPageNameList_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.richTextPageNameList_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getRichTextPageNameListBytes() {
            Object obj = this.richTextPageNameList_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.richTextPageNameList_ = copyFromUtf8;
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
            if (!getParentUniqueIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(4, this.parentUniqueId_);
            }
            if (!getSubPageNameBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.subPageName_);
            }
            if (!getTitleBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(6, this.title_);
            }
            if (!getExtraAttributesBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(7, this.extraAttributes_);
            }
            int i2 = this.type_;
            if (i2 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(8, i2);
            }
            float f = this.strokeWidth_;
            if (f != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(9, f);
            }
            float f2 = this.eraserWidth_;
            if (f2 != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(10, f2);
            }
            if (!getNotePenInfoBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(11, this.notePenInfo_);
            }
            if (!getNotePageInfoBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(12, this.notePageInfo_);
            }
            if (!getNoteBackgroundBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(13, this.noteBackground_);
            }
            if (!getDeviceInfoBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(14, this.deviceInfo_);
            }
            int i3 = this.strokeColor_;
            if (i3 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(15, i3);
            }
            int i4 = this.currentShapeType_;
            if (i4 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(16, i4);
            }
            int i5 = this.background_;
            if (i5 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(17, i5);
            }
            int i6 = this.lineLayoutBackground_;
            if (i6 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(18, i6);
            }
            int i7 = this.position_;
            if (i7 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(19, i7);
            }
            if (!getPageNameListBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(20, this.pageNameList_);
            }
            if (!getRichTextPageNameListBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(21, this.richTextPageNameList_);
            }
            float f3 = this.pageOriginWidth_;
            if (f3 != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(22, f3);
            }
            float f4 = this.pageOriginHeight_;
            if (f4 != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(23, f4);
            }
            if (!getSourceBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(24, this.source_);
            }
            if (!getAssociateDateBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(25, this.associateDate_);
            }
            int i8 = this.asyncStatus_;
            if (i8 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(26, i8);
            }
            int i9 = this.encryptionType_;
            if (i9 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(27, i9);
            }
            if (!getDigestBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(28, this.digest_);
            }
            if (!getAssociationIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(29, this.associationId_);
            }
            int i10 = this.associationType_;
            if (i10 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(30, i10);
            }
            int i11 = this.status_;
            if (i11 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(31, i11);
            }
            long j3 = this.cloudNoteSize_;
            if (j3 != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(32, j3);
            }
            long j4 = this.cloudUpdatedAt_;
            if (j4 != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(33, j4);
            }
            if (!getCommitIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(34, this.commitId_);
            }
            long j5 = this.embeddedAt_;
            if (j5 != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(35, j5);
            }
            int i12 = this.syncFrom_;
            if (i12 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(36, i12);
            }
            int i13 = this.noteSyncStatus_;
            if (i13 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(37, i13);
            }
            int i14 = this.favorite_;
            if (i14 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(38, i14);
            }
            if (!getUserIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(39, this.userId_);
            }
            int i15 = this.version_;
            if (i15 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(40, i15);
            }
            if (!getGroupIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(41, this.groupId_);
            }
            if (!getThumbnailResBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(42, this.thumbnailRes_);
            }
            int i16 = this.activeScene_;
            if (i16 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(43, i16);
            }
            if (!getRemovePageListBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(44, this.removePageList_);
            }
            if (!getTagIdListBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(45, this.tagIdList_);
            }
            if (!getStyleBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(46, this.style_);
            }
            float f5 = this.orderIndex_;
            if (f5 != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(47, f5);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getSource() {
            Object obj = this.source_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.source_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getSourceBytes() {
            Object obj = this.source_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.source_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getStrokeColor() {
            return this.strokeColor_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public float getStrokeWidth() {
            return this.strokeWidth_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getStyle() {
            Object obj = this.style_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.style_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getStyleBytes() {
            Object obj = this.style_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.style_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getSubPageName() {
            Object obj = this.subPageName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.subPageName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getSubPageNameBytes() {
            Object obj = this.subPageName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.subPageName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getSyncFrom() {
            return this.syncFrom_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getTagIdList() {
            Object obj = this.tagIdList_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.tagIdList_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getTagIdListBytes() {
            Object obj = this.tagIdList_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.tagIdList_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getThumbnailRes() {
            Object obj = this.thumbnailRes_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.thumbnailRes_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getThumbnailResBytes() {
            Object obj = this.thumbnailRes_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.thumbnailRes_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getType() {
            return this.type_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
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

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public String getUserId() {
            Object obj = this.userId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.userId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public ByteString getUserIdBytes() {
            Object obj = this.userId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 3) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 4) * 53) + getParentUniqueId().hashCode()) * 37) + 5) * 53) + getSubPageName().hashCode()) * 37) + 6) * 53) + getTitle().hashCode()) * 37) + 7) * 53) + getExtraAttributes().hashCode()) * 37) + 8) * 53) + getType()) * 37) + 9) * 53) + Float.floatToIntBits(getStrokeWidth())) * 37) + 10) * 53) + Float.floatToIntBits(getEraserWidth())) * 37) + 11) * 53) + getNotePenInfo().hashCode()) * 37) + 12) * 53) + getNotePageInfo().hashCode()) * 37) + 13) * 53) + getNoteBackground().hashCode()) * 37) + 14) * 53) + getDeviceInfo().hashCode()) * 37) + 15) * 53) + getStrokeColor()) * 37) + 16) * 53) + getCurrentShapeType()) * 37) + 17) * 53) + getBackground()) * 37) + 18) * 53) + getLineLayoutBackground()) * 37) + 19) * 53) + getPosition()) * 37) + 20) * 53) + getPageNameList().hashCode()) * 37) + 21) * 53) + getRichTextPageNameList().hashCode()) * 37) + 22) * 53) + Float.floatToIntBits(getPageOriginWidth())) * 37) + 23) * 53) + Float.floatToIntBits(getPageOriginHeight())) * 37) + 24) * 53) + getSource().hashCode()) * 37) + 25) * 53) + getAssociateDate().hashCode()) * 37) + 26) * 53) + getAsyncStatus()) * 37) + 27) * 53) + getEncryptionType()) * 37) + 28) * 53) + getDigest().hashCode()) * 37) + 29) * 53) + getAssociationId().hashCode()) * 37) + 30) * 53) + getAssociationType()) * 37) + 31) * 53) + getStatus()) * 37) + 32) * 53) + Internal.hashLong(getCloudNoteSize())) * 37) + 33) * 53) + Internal.hashLong(getCloudUpdatedAt())) * 37) + 34) * 53) + getCommitId().hashCode()) * 37) + 35) * 53) + Internal.hashLong(getEmbeddedAt())) * 37) + 36) * 53) + getSyncFrom()) * 37) + 37) * 53) + getNoteSyncStatus()) * 37) + 38) * 53) + getFavorite()) * 37) + 39) * 53) + getUserId().hashCode()) * 37) + 40) * 53) + getVersion()) * 37) + 41) * 53) + getGroupId().hashCode()) * 37) + 42) * 53) + getThumbnailRes().hashCode()) * 37) + 43) * 53) + getActiveScene()) * 37) + 44) * 53) + getRemovePageList().hashCode()) * 37) + 45) * 53) + getTagIdList().hashCode()) * 37) + 46) * 53) + getStyle().hashCode()) * 37) + 47) * 53) + Float.floatToIntBits(getOrderIndex())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return NoteInfoProto.f45665d.ensureFieldAccessorsInitialized(NoteInfo.class, Builder.class);
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
            if (!getParentUniqueIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.parentUniqueId_);
            }
            if (!getSubPageNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.subPageName_);
            }
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.title_);
            }
            if (!getExtraAttributesBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.extraAttributes_);
            }
            int i = this.type_;
            if (i != 0) {
                codedOutputStream.writeInt32(8, i);
            }
            float f = this.strokeWidth_;
            if (f != 0.0f) {
                codedOutputStream.writeFloat(9, f);
            }
            float f2 = this.eraserWidth_;
            if (f2 != 0.0f) {
                codedOutputStream.writeFloat(10, f2);
            }
            if (!getNotePenInfoBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.notePenInfo_);
            }
            if (!getNotePageInfoBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 12, this.notePageInfo_);
            }
            if (!getNoteBackgroundBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 13, this.noteBackground_);
            }
            if (!getDeviceInfoBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 14, this.deviceInfo_);
            }
            int i2 = this.strokeColor_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(15, i2);
            }
            int i3 = this.currentShapeType_;
            if (i3 != 0) {
                codedOutputStream.writeInt32(16, i3);
            }
            int i4 = this.background_;
            if (i4 != 0) {
                codedOutputStream.writeInt32(17, i4);
            }
            int i5 = this.lineLayoutBackground_;
            if (i5 != 0) {
                codedOutputStream.writeInt32(18, i5);
            }
            int i6 = this.position_;
            if (i6 != 0) {
                codedOutputStream.writeInt32(19, i6);
            }
            if (!getPageNameListBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 20, this.pageNameList_);
            }
            if (!getRichTextPageNameListBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 21, this.richTextPageNameList_);
            }
            float f3 = this.pageOriginWidth_;
            if (f3 != 0.0f) {
                codedOutputStream.writeFloat(22, f3);
            }
            float f4 = this.pageOriginHeight_;
            if (f4 != 0.0f) {
                codedOutputStream.writeFloat(23, f4);
            }
            if (!getSourceBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 24, this.source_);
            }
            if (!getAssociateDateBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 25, this.associateDate_);
            }
            int i7 = this.asyncStatus_;
            if (i7 != 0) {
                codedOutputStream.writeInt32(26, i7);
            }
            int i8 = this.encryptionType_;
            if (i8 != 0) {
                codedOutputStream.writeInt32(27, i8);
            }
            if (!getDigestBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 28, this.digest_);
            }
            if (!getAssociationIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 29, this.associationId_);
            }
            int i9 = this.associationType_;
            if (i9 != 0) {
                codedOutputStream.writeInt32(30, i9);
            }
            int i10 = this.status_;
            if (i10 != 0) {
                codedOutputStream.writeInt32(31, i10);
            }
            long j3 = this.cloudNoteSize_;
            if (j3 != 0) {
                codedOutputStream.writeInt64(32, j3);
            }
            long j4 = this.cloudUpdatedAt_;
            if (j4 != 0) {
                codedOutputStream.writeInt64(33, j4);
            }
            if (!getCommitIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 34, this.commitId_);
            }
            long j5 = this.embeddedAt_;
            if (j5 != 0) {
                codedOutputStream.writeInt64(35, j5);
            }
            int i11 = this.syncFrom_;
            if (i11 != 0) {
                codedOutputStream.writeInt32(36, i11);
            }
            int i12 = this.noteSyncStatus_;
            if (i12 != 0) {
                codedOutputStream.writeInt32(37, i12);
            }
            int i13 = this.favorite_;
            if (i13 != 0) {
                codedOutputStream.writeInt32(38, i13);
            }
            if (!getUserIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 39, this.userId_);
            }
            int i14 = this.version_;
            if (i14 != 0) {
                codedOutputStream.writeInt32(40, i14);
            }
            if (!getGroupIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 41, this.groupId_);
            }
            if (!getThumbnailResBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 42, this.thumbnailRes_);
            }
            int i15 = this.activeScene_;
            if (i15 != 0) {
                codedOutputStream.writeInt32(43, i15);
            }
            if (!getRemovePageListBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 44, this.removePageList_);
            }
            if (!getTagIdListBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 45, this.tagIdList_);
            }
            if (!getStyleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 46, this.style_);
            }
            float f5 = this.orderIndex_;
            if (f5 != 0.0f) {
                codedOutputStream.writeFloat(47, f5);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ NoteInfo(GeneratedMessageV3.Builder builder, C7765a c7765a) {
            this(builder);
        }

        public static Builder newBuilder(NoteInfo noteInfo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(noteInfo);
        }

        public static NoteInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private NoteInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static NoteInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (NoteInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static NoteInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public NoteInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7765a c7765a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7765a) : new Builder(c7765a).mergeFrom(this);
        }

        public static NoteInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private NoteInfo() {
            this.memoizedIsInitialized = (byte) -1;
            this.uniqueId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.parentUniqueId_ = "";
            this.subPageName_ = "";
            this.title_ = "";
            this.extraAttributes_ = "";
            this.type_ = 0;
            this.strokeWidth_ = 0.0f;
            this.eraserWidth_ = 0.0f;
            this.notePenInfo_ = "";
            this.notePageInfo_ = "";
            this.noteBackground_ = "";
            this.deviceInfo_ = "";
            this.strokeColor_ = 0;
            this.currentShapeType_ = 0;
            this.background_ = 0;
            this.lineLayoutBackground_ = 0;
            this.position_ = 0;
            this.pageNameList_ = "";
            this.richTextPageNameList_ = "";
            this.pageOriginWidth_ = 0.0f;
            this.pageOriginHeight_ = 0.0f;
            this.source_ = "";
            this.associateDate_ = "";
            this.asyncStatus_ = 0;
            this.encryptionType_ = 0;
            this.digest_ = "";
            this.associationId_ = "";
            this.associationType_ = 0;
            this.status_ = 0;
            this.cloudNoteSize_ = 0L;
            this.cloudUpdatedAt_ = 0L;
            this.commitId_ = "";
            this.embeddedAt_ = 0L;
            this.syncFrom_ = 0;
            this.noteSyncStatus_ = 0;
            this.favorite_ = 0;
            this.userId_ = "";
            this.version_ = 0;
            this.groupId_ = "";
            this.thumbnailRes_ = "";
            this.activeScene_ = 0;
            this.removePageList_ = "";
            this.tagIdList_ = "";
            this.style_ = "";
            this.orderIndex_ = 0.0f;
        }

        public static NoteInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static NoteInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static NoteInfo parseFrom(InputStream inputStream) throws IOException {
            return (NoteInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static NoteInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (NoteInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static NoteInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (NoteInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static NoteInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (NoteInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
        private NoteInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.parentUniqueId_ = codedInputStream.readStringRequireUtf8();
                            case 42:
                                this.subPageName_ = codedInputStream.readStringRequireUtf8();
                            case 50:
                                this.title_ = codedInputStream.readStringRequireUtf8();
                            case 58:
                                this.extraAttributes_ = codedInputStream.readStringRequireUtf8();
                            case 64:
                                this.type_ = codedInputStream.readInt32();
                            case 77:
                                this.strokeWidth_ = codedInputStream.readFloat();
                            case 85:
                                this.eraserWidth_ = codedInputStream.readFloat();
                            case 90:
                                this.notePenInfo_ = codedInputStream.readStringRequireUtf8();
                            case 98:
                                this.notePageInfo_ = codedInputStream.readStringRequireUtf8();
                            case 106:
                                this.noteBackground_ = codedInputStream.readStringRequireUtf8();
                            case 114:
                                this.deviceInfo_ = codedInputStream.readStringRequireUtf8();
                            case 120:
                                this.strokeColor_ = codedInputStream.readInt32();
                            case 128:
                                this.currentShapeType_ = codedInputStream.readInt32();
                            case 136:
                                this.background_ = codedInputStream.readInt32();
                            case 144:
                                this.lineLayoutBackground_ = codedInputStream.readInt32();
                            case 152:
                                this.position_ = codedInputStream.readInt32();
                            case 162:
                                this.pageNameList_ = codedInputStream.readStringRequireUtf8();
                            case 170:
                                this.richTextPageNameList_ = codedInputStream.readStringRequireUtf8();
                            case 181:
                                this.pageOriginWidth_ = codedInputStream.readFloat();
                            case 189:
                                this.pageOriginHeight_ = codedInputStream.readFloat();
                            case 194:
                                this.source_ = codedInputStream.readStringRequireUtf8();
                            case 202:
                                this.associateDate_ = codedInputStream.readStringRequireUtf8();
                            case 208:
                                this.asyncStatus_ = codedInputStream.readInt32();
                            case 216:
                                this.encryptionType_ = codedInputStream.readInt32();
                            case 226:
                                this.digest_ = codedInputStream.readStringRequireUtf8();
                            case 234:
                                this.associationId_ = codedInputStream.readStringRequireUtf8();
                            case 240:
                                this.associationType_ = codedInputStream.readInt32();
                            case 248:
                                this.status_ = codedInputStream.readInt32();
                            case 256:
                                this.cloudNoteSize_ = codedInputStream.readInt64();
                            case 264:
                                this.cloudUpdatedAt_ = codedInputStream.readInt64();
                            case 274:
                                this.commitId_ = codedInputStream.readStringRequireUtf8();
                            case 280:
                                this.embeddedAt_ = codedInputStream.readInt64();
                            case 288:
                                this.syncFrom_ = codedInputStream.readInt32();
                            case 296:
                                this.noteSyncStatus_ = codedInputStream.readInt32();
                            case 304:
                                this.favorite_ = codedInputStream.readInt32();
                            case 314:
                                this.userId_ = codedInputStream.readStringRequireUtf8();
                            case 320:
                                this.version_ = codedInputStream.readInt32();
                            case 330:
                                this.groupId_ = codedInputStream.readStringRequireUtf8();
                            case 338:
                                this.thumbnailRes_ = codedInputStream.readStringRequireUtf8();
                            case DataBinderMapperImpl.f53026F5 /* 344 */:
                                this.activeScene_ = codedInputStream.readInt32();
                            case DataBinderMapperImpl.f53096P5 /* 354 */:
                                this.removePageList_ = codedInputStream.readStringRequireUtf8();
                            case 362:
                                this.tagIdList_ = codedInputStream.readStringRequireUtf8();
                            case 370:
                                this.style_ = codedInputStream.readStringRequireUtf8();
                            case 381:
                                this.orderIndex_ = codedInputStream.readFloat();
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
    public static final class NoteInfoList extends GeneratedMessageV3 implements NoteInfoListOrBuilder {
        private static final NoteInfoList DEFAULT_INSTANCE = new NoteInfoList();
        private static final Parser<NoteInfoList> PARSER = new C7764a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<NoteInfo> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements NoteInfoListOrBuilder {

            /* renamed from: i */
            public int f45714i;

            /* renamed from: j */
            public List<NoteInfo> f45715j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> f45716k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7765a c7765a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return NoteInfoProto.f45662a;
            }

            public Builder addAllProto(Iterable<? extends NoteInfo> iterable) {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                if (repeatedFieldBuilderV3 == null) {
                    m35292h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45715j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(NoteInfo noteInfo) {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                if (repeatedFieldBuilderV3 == null) {
                    noteInfo.getClass();
                    m35292h();
                    this.f45715j.add(noteInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(noteInfo);
                }
                return this;
            }

            public NoteInfo.Builder addProtoBuilder() {
                return m35293i().addBuilder(NoteInfo.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45715j = Collections.emptyList();
                    this.f45714i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return NoteInfoProto.f45662a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoListOrBuilder
            public NoteInfo getProto(int i) {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                return repeatedFieldBuilderV3 == null ? this.f45715j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public NoteInfo.Builder getProtoBuilder(int i) {
                return m35293i().getBuilder(i);
            }

            public List<NoteInfo.Builder> getProtoBuilderList() {
                return m35293i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                return repeatedFieldBuilderV3 == null ? this.f45715j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoListOrBuilder
            public List<NoteInfo> getProtoList() {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45715j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoListOrBuilder
            public NoteInfoOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                return repeatedFieldBuilderV3 == null ? this.f45715j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoListOrBuilder
            public List<? extends NoteInfoOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45715j);
            }

            /* renamed from: h */
            public final void m35292h() {
                if ((this.f45714i & 1) != 1) {
                    this.f45715j = new ArrayList(this.f45715j);
                    this.f45714i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> m35293i() {
                if (this.f45716k == null) {
                    this.f45716k = new RepeatedFieldBuilderV3<>(this.f45715j, (this.f45714i & 1) == 1, getParentForChildren(), isClean());
                    this.f45715j = null;
                }
                return this.f45716k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return NoteInfoProto.f45663b.ensureFieldAccessorsInitialized(NoteInfoList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35294j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35293i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                if (repeatedFieldBuilderV3 == null) {
                    m35292h();
                    this.f45715j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, NoteInfo noteInfo) {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                if (repeatedFieldBuilderV3 == null) {
                    noteInfo.getClass();
                    m35292h();
                    this.f45715j.set(i, noteInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, noteInfo);
                }
                return this;
            }

            public /* synthetic */ Builder(C7765a c7765a) {
                this();
            }

            public Builder() {
                this.f45715j = Collections.emptyList();
                m35294j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NoteInfoList build() {
                NoteInfoList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NoteInfoList buildPartial() {
                NoteInfoList noteInfoList = new NoteInfoList(this, (C7765a) null);
                int i = this.f45714i;
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45715j = Collections.unmodifiableList(this.f45715j);
                        this.f45714i &= -2;
                    }
                    noteInfoList.proto_ = this.f45715j;
                } else {
                    noteInfoList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return noteInfoList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public NoteInfoList getDefaultInstanceForType() {
                return NoteInfoList.getDefaultInstance();
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

            public NoteInfo.Builder addProtoBuilder(int i) {
                return m35293i().addBuilder(i, NoteInfo.getDefaultInstance());
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
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45715j = Collections.emptyList();
                    this.f45714i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45715j = Collections.emptyList();
                m35294j();
            }

            public Builder addProto(int i, NoteInfo noteInfo) {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                if (repeatedFieldBuilderV3 == null) {
                    noteInfo.getClass();
                    m35292h();
                    this.f45715j.add(i, noteInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, noteInfo);
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
                if (message instanceof NoteInfoList) {
                    return mergeFrom((NoteInfoList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, NoteInfo.Builder builder) {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                if (repeatedFieldBuilderV3 == null) {
                    m35292h();
                    this.f45715j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(NoteInfoList noteInfoList) {
                if (noteInfoList == NoteInfoList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45716k == null) {
                    if (!noteInfoList.proto_.isEmpty()) {
                        if (this.f45715j.isEmpty()) {
                            this.f45715j = noteInfoList.proto_;
                            this.f45714i &= -2;
                        } else {
                            m35292h();
                            this.f45715j.addAll(noteInfoList.proto_);
                        }
                        onChanged();
                    }
                } else if (!noteInfoList.proto_.isEmpty()) {
                    if (this.f45716k.isEmpty()) {
                        this.f45716k.dispose();
                        this.f45716k = null;
                        this.f45715j = noteInfoList.proto_;
                        this.f45714i &= -2;
                        this.f45716k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35293i() : null;
                    } else {
                        this.f45716k.addAllMessages(noteInfoList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) noteInfoList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(NoteInfo.Builder builder) {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                if (repeatedFieldBuilderV3 == null) {
                    m35292h();
                    this.f45715j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, NoteInfo.Builder builder) {
                RepeatedFieldBuilderV3<NoteInfo, NoteInfo.Builder, NoteInfoOrBuilder> repeatedFieldBuilderV3 = this.f45716k;
                if (repeatedFieldBuilderV3 == null) {
                    m35292h();
                    this.f45715j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.NoteInfoProto$NoteInfoList r3 = (com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.NoteInfoProto$NoteInfoList r4 = (com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.NoteInfoProto$NoteInfoList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.NoteInfoProto$NoteInfoList$a */
        /* loaded from: classes8.dex */
        public class C7764a extends AbstractParser<NoteInfoList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public NoteInfoList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new NoteInfoList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ NoteInfoList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7765a c7765a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static NoteInfoList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return NoteInfoProto.f45662a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static NoteInfoList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (NoteInfoList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static NoteInfoList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<NoteInfoList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof NoteInfoList)) {
                return super.equals(obj);
            }
            NoteInfoList noteInfoList = (NoteInfoList) obj;
            return (getProtoList().equals(noteInfoList.getProtoList())) && this.unknownFields.equals(noteInfoList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<NoteInfoList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoListOrBuilder
        public NoteInfo getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoListOrBuilder
        public List<NoteInfo> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoListOrBuilder
        public NoteInfoOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteInfoProto.NoteInfoListOrBuilder
        public List<? extends NoteInfoOrBuilder> getProtoOrBuilderList() {
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
            return NoteInfoProto.f45663b.ensureFieldAccessorsInitialized(NoteInfoList.class, Builder.class);
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

        public /* synthetic */ NoteInfoList(GeneratedMessageV3.Builder builder, C7765a c7765a) {
            this(builder);
        }

        public static Builder newBuilder(NoteInfoList noteInfoList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(noteInfoList);
        }

        public static NoteInfoList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private NoteInfoList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static NoteInfoList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (NoteInfoList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static NoteInfoList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public NoteInfoList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7765a c7765a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7765a) : new Builder(c7765a).mergeFrom(this);
        }

        public static NoteInfoList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private NoteInfoList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static NoteInfoList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static NoteInfoList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static NoteInfoList parseFrom(InputStream inputStream) throws IOException {
            return (NoteInfoList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private NoteInfoList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.proto_.add((NoteInfo) codedInputStream.readMessage(NoteInfo.parser(), extensionRegistryLite));
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

        public static NoteInfoList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (NoteInfoList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static NoteInfoList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (NoteInfoList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static NoteInfoList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (NoteInfoList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface NoteInfoListOrBuilder extends MessageOrBuilder {
        NoteInfo getProto(int i);

        int getProtoCount();

        List<NoteInfo> getProtoList();

        NoteInfoOrBuilder getProtoOrBuilder(int i);

        List<? extends NoteInfoOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface NoteInfoOrBuilder extends MessageOrBuilder {
        int getActiveScene();

        String getAssociateDate();

        ByteString getAssociateDateBytes();

        String getAssociationId();

        ByteString getAssociationIdBytes();

        int getAssociationType();

        int getAsyncStatus();

        int getBackground();

        long getCloudNoteSize();

        long getCloudUpdatedAt();

        String getCommitId();

        ByteString getCommitIdBytes();

        long getCreatedAt();

        int getCurrentShapeType();

        String getDeviceInfo();

        ByteString getDeviceInfoBytes();

        String getDigest();

        ByteString getDigestBytes();

        long getEmbeddedAt();

        int getEncryptionType();

        float getEraserWidth();

        String getExtraAttributes();

        ByteString getExtraAttributesBytes();

        int getFavorite();

        String getGroupId();

        ByteString getGroupIdBytes();

        int getLineLayoutBackground();

        String getNoteBackground();

        ByteString getNoteBackgroundBytes();

        String getNotePageInfo();

        ByteString getNotePageInfoBytes();

        String getNotePenInfo();

        ByteString getNotePenInfoBytes();

        int getNoteSyncStatus();

        float getOrderIndex();

        String getPageNameList();

        ByteString getPageNameListBytes();

        float getPageOriginHeight();

        float getPageOriginWidth();

        String getParentUniqueId();

        ByteString getParentUniqueIdBytes();

        int getPosition();

        String getRemovePageList();

        ByteString getRemovePageListBytes();

        String getRichTextPageNameList();

        ByteString getRichTextPageNameListBytes();

        String getSource();

        ByteString getSourceBytes();

        int getStatus();

        int getStrokeColor();

        float getStrokeWidth();

        String getStyle();

        ByteString getStyleBytes();

        String getSubPageName();

        ByteString getSubPageNameBytes();

        int getSyncFrom();

        String getTagIdList();

        ByteString getTagIdListBytes();

        String getThumbnailRes();

        ByteString getThumbnailResBytes();

        String getTitle();

        ByteString getTitleBytes();

        int getType();

        String getUniqueId();

        ByteString getUniqueIdBytes();

        long getUpdatedAt();

        String getUserId();

        ByteString getUserIdBytes();

        int getVersion();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.NoteInfoProto$a */
    /* loaded from: classes8.dex */
    public class C7765a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = NoteInfoProto.f45666e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0013NoteInfoProto.proto\"(\n\fNoteInfoList\u0012\u0018\n\u0005proto\u0018\u0001 \u0003(\u000b2\t.NoteInfo\"à\u0007\n\bNoteInfo\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\u0016\n\u000eparentUniqueId\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bsubPageName\u0018\u0005 \u0001(\t\u0012\r\n\u0005title\u0018\u0006 \u0001(\t\u0012\u0017\n\u000fextraAttributes\u0018\u0007 \u0001(\t\u0012\f\n\u0004type\u0018\b \u0001(\u0005\u0012\u0013\n\u000bstrokeWidth\u0018\t \u0001(\u0002\u0012\u0013\n\u000beraserWidth\u0018\n \u0001(\u0002\u0012\u0013\n\u000bnotePenInfo\u0018\u000b \u0001(\t\u0012\u0014\n\fnotePageInfo\u0018\f \u0001(\t\u0012\u0016\n\u000enoteBackground\u0018\r \u0001(\t\u0012\u0012\n\ndeviceInfo\u0018\u000e \u0001(\t\u0012\u0013\n\u000bstrokeColor\u0018\u000f \u0001(\u0005\u0012\u0018\n\u0010currentShapeType\u0018\u0010 \u0001(\u0005\u0012\u0012\n\nbackground\u0018\u0011 \u0001(\u0005\u0012\u001c\n\u0014lineLayoutBackground\u0018\u0012 \u0001(\u0005\u0012\u0010\n\bposition\u0018\u0013 \u0001(\u0005\u0012\u0014\n\fpageNameList\u0018\u0014 \u0001(\t\u0012\u001c\n\u0014richTextPageNameList\u0018\u0015 \u0001(\t\u0012\u0017\n\u000fpageOriginWidth\u0018\u0016 \u0001(\u0002\u0012\u0018\n\u0010pageOriginHeight\u0018\u0017 \u0001(\u0002\u0012\u000e\n\u0006source\u0018\u0018 \u0001(\t\u0012\u0015\n\rassociateDate\u0018\u0019 \u0001(\t\u0012\u0013\n\u000basyncStatus\u0018\u001a \u0001(\u0005\u0012\u0016\n\u000eencryptionType\u0018\u001b \u0001(\u0005\u0012\u000e\n\u0006digest\u0018\u001c \u0001(\t\u0012\u0015\n\rassociationId\u0018\u001d \u0001(\t\u0012\u0017\n\u000fassociationType\u0018\u001e \u0001(\u0005\u0012\u000e\n\u0006status\u0018\u001f \u0001(\u0005\u0012\u0015\n\rcloudNoteSize\u0018  \u0001(\u0003\u0012\u0016\n\u000ecloudUpdatedAt\u0018! \u0001(\u0003\u0012\u0010\n\bcommitId\u0018\" \u0001(\t\u0012\u0012\n\nembeddedAt\u0018# \u0001(\u0003\u0012\u0010\n\bsyncFrom\u0018$ \u0001(\u0005\u0012\u0016\n\u000enoteSyncStatus\u0018% \u0001(\u0005\u0012\u0010\n\bfavorite\u0018& \u0001(\u0005\u0012\u000e\n\u0006userId\u0018' \u0001(\t\u0012\u000f\n\u0007version\u0018( \u0001(\u0005\u0012\u000f\n\u0007groupId\u0018) \u0001(\t\u0012\u0014\n\fthumbnailRes\u0018* \u0001(\t\u0012\u0013\n\u000bactiveScene\u0018+ \u0001(\u0005\u0012\u0016\n\u000eremovePageList\u0018, \u0001(\t\u0012\u0011\n\ttagIdList\u0018- \u0001(\t\u0012\r\n\u0005style\u0018. \u0001(\t\u0012\u0012\n\norderIndex\u0018/ \u0001(\u0002B,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7765a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45662a = descriptor;
        f45663b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45664c = descriptor2;
        f45665d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"UniqueId", "CreatedAt", "UpdatedAt", "ParentUniqueId", "SubPageName", "Title", "ExtraAttributes", "Type", "StrokeWidth", "EraserWidth", "NotePenInfo", "NotePageInfo", "NoteBackground", "DeviceInfo", "StrokeColor", "CurrentShapeType", "Background", "LineLayoutBackground", "Position", "PageNameList", "RichTextPageNameList", "PageOriginWidth", "PageOriginHeight", "Source", "AssociateDate", "AsyncStatus", "EncryptionType", "Digest", "AssociationId", "AssociationType", PersistedInstallation.f35952i, "CloudNoteSize", "CloudUpdatedAt", "CommitId", "EmbeddedAt", "SyncFrom", "NoteSyncStatus", "Favorite", "UserId", "Version", "GroupId", "ThumbnailRes", "ActiveScene", "RemovePageList", "TagIdList", "Style", "OrderIndex"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45666e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
