package com.onyx.android.sdk.replicator.note.proto;

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
public final class NoteShapeDocProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45717a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45718b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45719c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45720d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45721e;

    /* loaded from: classes8.dex */
    public static final class ShapeInfoProto extends GeneratedMessageV3 implements ShapeInfoProtoOrBuilder {
        public static final int BOUNDINGRECT_FIELD_NUMBER = 7;
        public static final int COLOR_FIELD_NUMBER = 4;
        public static final int CONNECTIONBEAN_FIELD_NUMBER = 26;
        public static final int CREATEARGS_FIELD_NUMBER = 11;
        public static final int CREATEDAT_FIELD_NUMBER = 2;
        public static final int EXTRA_FIELD_NUMBER = 20;
        public static final int FILLCOLOR_FIELD_NUMBER = 23;
        public static final int GROUPID_FIELD_NUMBER = 13;
        public static final int INFOREVISIONID_FIELD_NUMBER = 18;
        public static final int LINESTYLE_FIELD_NUMBER = 17;
        public static final int LINKIDLIST_FIELD_NUMBER = 21;
        public static final int MATRIXVALUES_FIELD_NUMBER = 8;
        public static final int OPTIONS_FIELD_NUMBER = 24;
        public static final int POINTLIST_FIELD_NUMBER = 25;
        public static final int RESOURCE_FIELD_NUMBER = 14;
        public static final int REVISIONID_FIELD_NUMBER = 16;
        public static final int RICHTEXT_FIELD_NUMBER = 22;
        public static final int SHAPESTATUS_FIELD_NUMBER = 15;
        public static final int SHAPETYPE_FIELD_NUMBER = 12;
        public static final int TAGIDLIST_FIELD_NUMBER = 19;
        public static final int TEXTSTYLE_FIELD_NUMBER = 9;
        public static final int TEXT_FIELD_NUMBER = 10;
        public static final int THICKNESS_FIELD_NUMBER = 5;
        public static final int UNIQUEID_FIELD_NUMBER = 1;
        public static final int UPDATEDAT_FIELD_NUMBER = 3;
        public static final int ZORDER_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private volatile Object boundingRect_;
        private int color_;
        private volatile Object connectionBean_;
        private volatile Object createArgs_;
        private long createdAt_;
        private volatile Object extra_;
        private int fillColor_;
        private volatile Object groupId_;
        private volatile Object infoRevisionId_;
        private volatile Object lineStyle_;
        private volatile Object linkIdList_;
        private volatile Object matrixValues_;
        private byte memoizedIsInitialized;
        private volatile Object options_;
        private ByteString pointList_;
        private volatile Object resource_;
        private volatile Object revisionId_;
        private volatile Object richText_;
        private int shapeStatus_;
        private int shapeType_;
        private volatile Object tagIdList_;
        private volatile Object textStyle_;
        private volatile Object text_;
        private float thickness_;
        private volatile Object uniqueId_;
        private long updatedAt_;
        private int zorder_;
        private static final ShapeInfoProto DEFAULT_INSTANCE = new ShapeInfoProto();
        private static final Parser<ShapeInfoProto> PARSER = new C7766a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ShapeInfoProtoOrBuilder {

            /* renamed from: J */
            public Object f45722J;

            /* renamed from: O */
            public Object f45723O;

            /* renamed from: Q */
            public Object f45724Q;

            /* renamed from: Z */
            public Object f45725Z;

            /* renamed from: i */
            public Object f45726i;

            /* renamed from: j */
            public long f45727j;

            /* renamed from: k */
            public long f45728k;

            /* renamed from: k0 */
            public int f45729k0;

            /* renamed from: l */
            public int f45730l;

            /* renamed from: m */
            public float f45731m;

            /* renamed from: n */
            public int f45732n;

            /* renamed from: o */
            public Object f45733o;

            /* renamed from: p */
            public Object f45734p;

            /* renamed from: q */
            public Object f45735q;

            /* renamed from: q0 */
            public Object f45736q0;

            /* renamed from: r */
            public Object f45737r;

            /* renamed from: s */
            public Object f45738s;

            /* renamed from: t */
            public int f45739t;

            /* renamed from: t0 */
            public ByteString f45740t0;

            /* renamed from: u */
            public Object f45741u;

            /* renamed from: u0 */
            public Object f45742u0;

            /* renamed from: v */
            public Object f45743v;

            /* renamed from: w */
            public int f45744w;

            /* renamed from: x */
            public Object f45745x;

            /* renamed from: y */
            public Object f45746y;

            /* renamed from: z */
            public Object f45747z;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7768a c7768a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return NoteShapeDocProto.f45719c;
            }

            public Builder clearBoundingRect() {
                this.f45733o = ShapeInfoProto.getDefaultInstance().getBoundingRect();
                onChanged();
                return this;
            }

            public Builder clearColor() {
                this.f45730l = 0;
                onChanged();
                return this;
            }

            public Builder clearConnectionBean() {
                this.f45742u0 = ShapeInfoProto.getDefaultInstance().getConnectionBean();
                onChanged();
                return this;
            }

            public Builder clearCreateArgs() {
                this.f45738s = ShapeInfoProto.getDefaultInstance().getCreateArgs();
                onChanged();
                return this;
            }

            public Builder clearCreatedAt() {
                this.f45727j = 0L;
                onChanged();
                return this;
            }

            public Builder clearExtra() {
                this.f45723O = ShapeInfoProto.getDefaultInstance().getExtra();
                onChanged();
                return this;
            }

            public Builder clearFillColor() {
                this.f45729k0 = 0;
                onChanged();
                return this;
            }

            public Builder clearGroupId() {
                this.f45741u = ShapeInfoProto.getDefaultInstance().getGroupId();
                onChanged();
                return this;
            }

            public Builder clearInfoRevisionId() {
                this.f45747z = ShapeInfoProto.getDefaultInstance().getInfoRevisionId();
                onChanged();
                return this;
            }

            public Builder clearLineStyle() {
                this.f45746y = ShapeInfoProto.getDefaultInstance().getLineStyle();
                onChanged();
                return this;
            }

            public Builder clearLinkIdList() {
                this.f45724Q = ShapeInfoProto.getDefaultInstance().getLinkIdList();
                onChanged();
                return this;
            }

            public Builder clearMatrixValues() {
                this.f45734p = ShapeInfoProto.getDefaultInstance().getMatrixValues();
                onChanged();
                return this;
            }

            public Builder clearOptions() {
                this.f45736q0 = ShapeInfoProto.getDefaultInstance().getOptions();
                onChanged();
                return this;
            }

            public Builder clearPointList() {
                this.f45740t0 = ShapeInfoProto.getDefaultInstance().getPointList();
                onChanged();
                return this;
            }

            public Builder clearResource() {
                this.f45743v = ShapeInfoProto.getDefaultInstance().getResource();
                onChanged();
                return this;
            }

            public Builder clearRevisionId() {
                this.f45745x = ShapeInfoProto.getDefaultInstance().getRevisionId();
                onChanged();
                return this;
            }

            public Builder clearRichText() {
                this.f45725Z = ShapeInfoProto.getDefaultInstance().getRichText();
                onChanged();
                return this;
            }

            public Builder clearShapeStatus() {
                this.f45744w = 0;
                onChanged();
                return this;
            }

            public Builder clearShapeType() {
                this.f45739t = 0;
                onChanged();
                return this;
            }

            public Builder clearTagIdList() {
                this.f45722J = ShapeInfoProto.getDefaultInstance().getTagIdList();
                onChanged();
                return this;
            }

            public Builder clearText() {
                this.f45737r = ShapeInfoProto.getDefaultInstance().getText();
                onChanged();
                return this;
            }

            public Builder clearTextStyle() {
                this.f45735q = ShapeInfoProto.getDefaultInstance().getTextStyle();
                onChanged();
                return this;
            }

            public Builder clearThickness() {
                this.f45731m = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearUniqueId() {
                this.f45726i = ShapeInfoProto.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45728k = 0L;
                onChanged();
                return this;
            }

            public Builder clearZorder() {
                this.f45732n = 0;
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getBoundingRect() {
                Object obj = this.f45733o;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45733o = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getBoundingRectBytes() {
                Object obj = this.f45733o;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45733o = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public int getColor() {
                return this.f45730l;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getConnectionBean() {
                Object obj = this.f45742u0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45742u0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getConnectionBeanBytes() {
                Object obj = this.f45742u0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45742u0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getCreateArgs() {
                Object obj = this.f45738s;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45738s = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getCreateArgsBytes() {
                Object obj = this.f45738s;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45738s = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public long getCreatedAt() {
                return this.f45727j;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return NoteShapeDocProto.f45719c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getExtra() {
                Object obj = this.f45723O;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45723O = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getExtraBytes() {
                Object obj = this.f45723O;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45723O = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public int getFillColor() {
                return this.f45729k0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getGroupId() {
                Object obj = this.f45741u;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45741u = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getGroupIdBytes() {
                Object obj = this.f45741u;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45741u = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getInfoRevisionId() {
                Object obj = this.f45747z;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45747z = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getInfoRevisionIdBytes() {
                Object obj = this.f45747z;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45747z = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getLineStyle() {
                Object obj = this.f45746y;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45746y = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getLineStyleBytes() {
                Object obj = this.f45746y;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45746y = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getLinkIdList() {
                Object obj = this.f45724Q;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45724Q = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getLinkIdListBytes() {
                Object obj = this.f45724Q;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45724Q = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getMatrixValues() {
                Object obj = this.f45734p;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45734p = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getMatrixValuesBytes() {
                Object obj = this.f45734p;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45734p = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getOptions() {
                Object obj = this.f45736q0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45736q0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getOptionsBytes() {
                Object obj = this.f45736q0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45736q0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getPointList() {
                return this.f45740t0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getResource() {
                Object obj = this.f45743v;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45743v = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getResourceBytes() {
                Object obj = this.f45743v;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45743v = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getRevisionId() {
                Object obj = this.f45745x;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45745x = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getRevisionIdBytes() {
                Object obj = this.f45745x;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45745x = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getRichText() {
                Object obj = this.f45725Z;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45725Z = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getRichTextBytes() {
                Object obj = this.f45725Z;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45725Z = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public int getShapeStatus() {
                return this.f45744w;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public int getShapeType() {
                return this.f45739t;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getTagIdList() {
                Object obj = this.f45722J;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45722J = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getTagIdListBytes() {
                Object obj = this.f45722J;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45722J = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getText() {
                Object obj = this.f45737r;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45737r = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getTextBytes() {
                Object obj = this.f45737r;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45737r = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getTextStyle() {
                Object obj = this.f45735q;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45735q = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getTextStyleBytes() {
                Object obj = this.f45735q;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45735q = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public float getThickness() {
                return this.f45731m;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public String getUniqueId() {
                Object obj = this.f45726i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45726i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getUniqueIdBytes() {
                Object obj = this.f45726i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45726i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public long getUpdatedAt() {
                return this.f45728k;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
            public int getZorder() {
                return this.f45732n;
            }

            /* renamed from: h */
            public final void m35301h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return NoteShapeDocProto.f45720d.ensureFieldAccessorsInitialized(ShapeInfoProto.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setBoundingRect(String str) {
                str.getClass();
                this.f45733o = str;
                onChanged();
                return this;
            }

            public Builder setBoundingRectBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45733o = byteString;
                onChanged();
                return this;
            }

            public Builder setColor(int i) {
                this.f45730l = i;
                onChanged();
                return this;
            }

            public Builder setConnectionBean(String str) {
                str.getClass();
                this.f45742u0 = str;
                onChanged();
                return this;
            }

            public Builder setConnectionBeanBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45742u0 = byteString;
                onChanged();
                return this;
            }

            public Builder setCreateArgs(String str) {
                str.getClass();
                this.f45738s = str;
                onChanged();
                return this;
            }

            public Builder setCreateArgsBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45738s = byteString;
                onChanged();
                return this;
            }

            public Builder setCreatedAt(long j) {
                this.f45727j = j;
                onChanged();
                return this;
            }

            public Builder setExtra(String str) {
                str.getClass();
                this.f45723O = str;
                onChanged();
                return this;
            }

            public Builder setExtraBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45723O = byteString;
                onChanged();
                return this;
            }

            public Builder setFillColor(int i) {
                this.f45729k0 = i;
                onChanged();
                return this;
            }

            public Builder setGroupId(String str) {
                str.getClass();
                this.f45741u = str;
                onChanged();
                return this;
            }

            public Builder setGroupIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45741u = byteString;
                onChanged();
                return this;
            }

            public Builder setInfoRevisionId(String str) {
                str.getClass();
                this.f45747z = str;
                onChanged();
                return this;
            }

            public Builder setInfoRevisionIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45747z = byteString;
                onChanged();
                return this;
            }

            public Builder setLineStyle(String str) {
                str.getClass();
                this.f45746y = str;
                onChanged();
                return this;
            }

            public Builder setLineStyleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45746y = byteString;
                onChanged();
                return this;
            }

            public Builder setLinkIdList(String str) {
                str.getClass();
                this.f45724Q = str;
                onChanged();
                return this;
            }

            public Builder setLinkIdListBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45724Q = byteString;
                onChanged();
                return this;
            }

            public Builder setMatrixValues(String str) {
                str.getClass();
                this.f45734p = str;
                onChanged();
                return this;
            }

            public Builder setMatrixValuesBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45734p = byteString;
                onChanged();
                return this;
            }

            public Builder setOptions(String str) {
                str.getClass();
                this.f45736q0 = str;
                onChanged();
                return this;
            }

            public Builder setOptionsBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45736q0 = byteString;
                onChanged();
                return this;
            }

            public Builder setPointList(ByteString byteString) {
                byteString.getClass();
                this.f45740t0 = byteString;
                onChanged();
                return this;
            }

            public Builder setResource(String str) {
                str.getClass();
                this.f45743v = str;
                onChanged();
                return this;
            }

            public Builder setResourceBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45743v = byteString;
                onChanged();
                return this;
            }

            public Builder setRevisionId(String str) {
                str.getClass();
                this.f45745x = str;
                onChanged();
                return this;
            }

            public Builder setRevisionIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45745x = byteString;
                onChanged();
                return this;
            }

            public Builder setRichText(String str) {
                str.getClass();
                this.f45725Z = str;
                onChanged();
                return this;
            }

            public Builder setRichTextBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45725Z = byteString;
                onChanged();
                return this;
            }

            public Builder setShapeStatus(int i) {
                this.f45744w = i;
                onChanged();
                return this;
            }

            public Builder setShapeType(int i) {
                this.f45739t = i;
                onChanged();
                return this;
            }

            public Builder setTagIdList(String str) {
                str.getClass();
                this.f45722J = str;
                onChanged();
                return this;
            }

            public Builder setTagIdListBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45722J = byteString;
                onChanged();
                return this;
            }

            public Builder setText(String str) {
                str.getClass();
                this.f45737r = str;
                onChanged();
                return this;
            }

            public Builder setTextBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45737r = byteString;
                onChanged();
                return this;
            }

            public Builder setTextStyle(String str) {
                str.getClass();
                this.f45735q = str;
                onChanged();
                return this;
            }

            public Builder setTextStyleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45735q = byteString;
                onChanged();
                return this;
            }

            public Builder setThickness(float f) {
                this.f45731m = f;
                onChanged();
                return this;
            }

            public Builder setUniqueId(String str) {
                str.getClass();
                this.f45726i = str;
                onChanged();
                return this;
            }

            public Builder setUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45726i = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45728k = j;
                onChanged();
                return this;
            }

            public Builder setZorder(int i) {
                this.f45732n = i;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7768a c7768a) {
                this();
            }

            public Builder() {
                this.f45726i = "";
                this.f45733o = "";
                this.f45734p = "";
                this.f45735q = "";
                this.f45737r = "";
                this.f45738s = "";
                this.f45741u = "";
                this.f45743v = "";
                this.f45745x = "";
                this.f45746y = "";
                this.f45747z = "";
                this.f45722J = "";
                this.f45723O = "";
                this.f45724Q = "";
                this.f45725Z = "";
                this.f45736q0 = "";
                this.f45740t0 = ByteString.EMPTY;
                this.f45742u0 = "";
                m35301h();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ShapeInfoProto build() {
                ShapeInfoProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ShapeInfoProto buildPartial() {
                ShapeInfoProto shapeInfoProto = new ShapeInfoProto(this, (C7768a) null);
                shapeInfoProto.uniqueId_ = this.f45726i;
                shapeInfoProto.createdAt_ = this.f45727j;
                shapeInfoProto.updatedAt_ = this.f45728k;
                shapeInfoProto.color_ = this.f45730l;
                shapeInfoProto.thickness_ = this.f45731m;
                shapeInfoProto.zorder_ = this.f45732n;
                shapeInfoProto.boundingRect_ = this.f45733o;
                shapeInfoProto.matrixValues_ = this.f45734p;
                shapeInfoProto.textStyle_ = this.f45735q;
                shapeInfoProto.text_ = this.f45737r;
                shapeInfoProto.createArgs_ = this.f45738s;
                shapeInfoProto.shapeType_ = this.f45739t;
                shapeInfoProto.groupId_ = this.f45741u;
                shapeInfoProto.resource_ = this.f45743v;
                shapeInfoProto.shapeStatus_ = this.f45744w;
                shapeInfoProto.revisionId_ = this.f45745x;
                shapeInfoProto.lineStyle_ = this.f45746y;
                shapeInfoProto.infoRevisionId_ = this.f45747z;
                shapeInfoProto.tagIdList_ = this.f45722J;
                shapeInfoProto.extra_ = this.f45723O;
                shapeInfoProto.linkIdList_ = this.f45724Q;
                shapeInfoProto.richText_ = this.f45725Z;
                shapeInfoProto.fillColor_ = this.f45729k0;
                shapeInfoProto.options_ = this.f45736q0;
                shapeInfoProto.pointList_ = this.f45740t0;
                shapeInfoProto.connectionBean_ = this.f45742u0;
                onBuilt();
                return shapeInfoProto;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ShapeInfoProto getDefaultInstanceForType() {
                return ShapeInfoProto.getDefaultInstance();
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
                this.f45726i = "";
                this.f45727j = 0L;
                this.f45728k = 0L;
                this.f45730l = 0;
                this.f45731m = 0.0f;
                this.f45732n = 0;
                this.f45733o = "";
                this.f45734p = "";
                this.f45735q = "";
                this.f45737r = "";
                this.f45738s = "";
                this.f45739t = 0;
                this.f45741u = "";
                this.f45743v = "";
                this.f45744w = 0;
                this.f45745x = "";
                this.f45746y = "";
                this.f45747z = "";
                this.f45722J = "";
                this.f45723O = "";
                this.f45724Q = "";
                this.f45725Z = "";
                this.f45729k0 = 0;
                this.f45736q0 = "";
                this.f45740t0 = ByteString.EMPTY;
                this.f45742u0 = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo72165clone() {
                return (Builder) super.mo72165clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ShapeInfoProto) {
                    return mergeFrom((ShapeInfoProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ShapeInfoProto shapeInfoProto) {
                if (shapeInfoProto == ShapeInfoProto.getDefaultInstance()) {
                    return this;
                }
                if (!shapeInfoProto.getUniqueId().isEmpty()) {
                    this.f45726i = shapeInfoProto.uniqueId_;
                    onChanged();
                }
                if (shapeInfoProto.getCreatedAt() != 0) {
                    setCreatedAt(shapeInfoProto.getCreatedAt());
                }
                if (shapeInfoProto.getUpdatedAt() != 0) {
                    setUpdatedAt(shapeInfoProto.getUpdatedAt());
                }
                if (shapeInfoProto.getColor() != 0) {
                    setColor(shapeInfoProto.getColor());
                }
                if (shapeInfoProto.getThickness() != 0.0f) {
                    setThickness(shapeInfoProto.getThickness());
                }
                if (shapeInfoProto.getZorder() != 0) {
                    setZorder(shapeInfoProto.getZorder());
                }
                if (!shapeInfoProto.getBoundingRect().isEmpty()) {
                    this.f45733o = shapeInfoProto.boundingRect_;
                    onChanged();
                }
                if (!shapeInfoProto.getMatrixValues().isEmpty()) {
                    this.f45734p = shapeInfoProto.matrixValues_;
                    onChanged();
                }
                if (!shapeInfoProto.getTextStyle().isEmpty()) {
                    this.f45735q = shapeInfoProto.textStyle_;
                    onChanged();
                }
                if (!shapeInfoProto.getText().isEmpty()) {
                    this.f45737r = shapeInfoProto.text_;
                    onChanged();
                }
                if (!shapeInfoProto.getCreateArgs().isEmpty()) {
                    this.f45738s = shapeInfoProto.createArgs_;
                    onChanged();
                }
                if (shapeInfoProto.getShapeType() != 0) {
                    setShapeType(shapeInfoProto.getShapeType());
                }
                if (!shapeInfoProto.getGroupId().isEmpty()) {
                    this.f45741u = shapeInfoProto.groupId_;
                    onChanged();
                }
                if (!shapeInfoProto.getResource().isEmpty()) {
                    this.f45743v = shapeInfoProto.resource_;
                    onChanged();
                }
                if (shapeInfoProto.getShapeStatus() != 0) {
                    setShapeStatus(shapeInfoProto.getShapeStatus());
                }
                if (!shapeInfoProto.getRevisionId().isEmpty()) {
                    this.f45745x = shapeInfoProto.revisionId_;
                    onChanged();
                }
                if (!shapeInfoProto.getLineStyle().isEmpty()) {
                    this.f45746y = shapeInfoProto.lineStyle_;
                    onChanged();
                }
                if (!shapeInfoProto.getInfoRevisionId().isEmpty()) {
                    this.f45747z = shapeInfoProto.infoRevisionId_;
                    onChanged();
                }
                if (!shapeInfoProto.getTagIdList().isEmpty()) {
                    this.f45722J = shapeInfoProto.tagIdList_;
                    onChanged();
                }
                if (!shapeInfoProto.getExtra().isEmpty()) {
                    this.f45723O = shapeInfoProto.extra_;
                    onChanged();
                }
                if (!shapeInfoProto.getLinkIdList().isEmpty()) {
                    this.f45724Q = shapeInfoProto.linkIdList_;
                    onChanged();
                }
                if (!shapeInfoProto.getRichText().isEmpty()) {
                    this.f45725Z = shapeInfoProto.richText_;
                    onChanged();
                }
                if (shapeInfoProto.getFillColor() != 0) {
                    setFillColor(shapeInfoProto.getFillColor());
                }
                if (!shapeInfoProto.getOptions().isEmpty()) {
                    this.f45736q0 = shapeInfoProto.options_;
                    onChanged();
                }
                if (shapeInfoProto.getPointList() != ByteString.EMPTY) {
                    setPointList(shapeInfoProto.getPointList());
                }
                if (!shapeInfoProto.getConnectionBean().isEmpty()) {
                    this.f45742u0 = shapeInfoProto.connectionBean_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) shapeInfoProto).unknownFields);
                onChanged();
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45726i = "";
                this.f45733o = "";
                this.f45734p = "";
                this.f45735q = "";
                this.f45737r = "";
                this.f45738s = "";
                this.f45741u = "";
                this.f45743v = "";
                this.f45745x = "";
                this.f45746y = "";
                this.f45747z = "";
                this.f45722J = "";
                this.f45723O = "";
                this.f45724Q = "";
                this.f45725Z = "";
                this.f45736q0 = "";
                this.f45740t0 = ByteString.EMPTY;
                this.f45742u0 = "";
                m35301h();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProto.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProto.access$4400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto$ShapeInfoProto r3 = (com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProto) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto$ShapeInfoProto r4 = (com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProto) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProto.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto$ShapeInfoProto$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto$ShapeInfoProto$a */
        /* loaded from: classes8.dex */
        public class C7766a extends AbstractParser<ShapeInfoProto> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public ShapeInfoProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ShapeInfoProto(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ ShapeInfoProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7768a c7768a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ShapeInfoProto getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return NoteShapeDocProto.f45719c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ShapeInfoProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ShapeInfoProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ShapeInfoProto parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ShapeInfoProto> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ShapeInfoProto)) {
                return super.equals(obj);
            }
            ShapeInfoProto shapeInfoProto = (ShapeInfoProto) obj;
            return ((((((((((((((((((((((((((getUniqueId().equals(shapeInfoProto.getUniqueId())) && (getCreatedAt() > shapeInfoProto.getCreatedAt() ? 1 : (getCreatedAt() == shapeInfoProto.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > shapeInfoProto.getUpdatedAt() ? 1 : (getUpdatedAt() == shapeInfoProto.getUpdatedAt() ? 0 : -1)) == 0) && getColor() == shapeInfoProto.getColor()) && Float.floatToIntBits(getThickness()) == Float.floatToIntBits(shapeInfoProto.getThickness())) && getZorder() == shapeInfoProto.getZorder()) && getBoundingRect().equals(shapeInfoProto.getBoundingRect())) && getMatrixValues().equals(shapeInfoProto.getMatrixValues())) && getTextStyle().equals(shapeInfoProto.getTextStyle())) && getText().equals(shapeInfoProto.getText())) && getCreateArgs().equals(shapeInfoProto.getCreateArgs())) && getShapeType() == shapeInfoProto.getShapeType()) && getGroupId().equals(shapeInfoProto.getGroupId())) && getResource().equals(shapeInfoProto.getResource())) && getShapeStatus() == shapeInfoProto.getShapeStatus()) && getRevisionId().equals(shapeInfoProto.getRevisionId())) && getLineStyle().equals(shapeInfoProto.getLineStyle())) && getInfoRevisionId().equals(shapeInfoProto.getInfoRevisionId())) && getTagIdList().equals(shapeInfoProto.getTagIdList())) && getExtra().equals(shapeInfoProto.getExtra())) && getLinkIdList().equals(shapeInfoProto.getLinkIdList())) && getRichText().equals(shapeInfoProto.getRichText())) && getFillColor() == shapeInfoProto.getFillColor()) && getOptions().equals(shapeInfoProto.getOptions())) && getPointList().equals(shapeInfoProto.getPointList())) && getConnectionBean().equals(shapeInfoProto.getConnectionBean())) && this.unknownFields.equals(shapeInfoProto.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getBoundingRect() {
            Object obj = this.boundingRect_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.boundingRect_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getBoundingRectBytes() {
            Object obj = this.boundingRect_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.boundingRect_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public int getColor() {
            return this.color_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getConnectionBean() {
            Object obj = this.connectionBean_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.connectionBean_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getConnectionBeanBytes() {
            Object obj = this.connectionBean_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.connectionBean_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getCreateArgs() {
            Object obj = this.createArgs_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.createArgs_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getCreateArgsBytes() {
            Object obj = this.createArgs_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.createArgs_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getExtra() {
            Object obj = this.extra_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.extra_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getExtraBytes() {
            Object obj = this.extra_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.extra_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public int getFillColor() {
            return this.fillColor_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getGroupId() {
            Object obj = this.groupId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.groupId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getGroupIdBytes() {
            Object obj = this.groupId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.groupId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getInfoRevisionId() {
            Object obj = this.infoRevisionId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.infoRevisionId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getInfoRevisionIdBytes() {
            Object obj = this.infoRevisionId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.infoRevisionId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getLineStyle() {
            Object obj = this.lineStyle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.lineStyle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getLineStyleBytes() {
            Object obj = this.lineStyle_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.lineStyle_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getLinkIdList() {
            Object obj = this.linkIdList_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.linkIdList_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getLinkIdListBytes() {
            Object obj = this.linkIdList_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.linkIdList_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getMatrixValues() {
            Object obj = this.matrixValues_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.matrixValues_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getMatrixValuesBytes() {
            Object obj = this.matrixValues_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.matrixValues_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getOptions() {
            Object obj = this.options_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.options_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getOptionsBytes() {
            Object obj = this.options_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.options_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ShapeInfoProto> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getPointList() {
            return this.pointList_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getResource() {
            Object obj = this.resource_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.resource_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getResourceBytes() {
            Object obj = this.resource_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.resource_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getRevisionId() {
            Object obj = this.revisionId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.revisionId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getRevisionIdBytes() {
            Object obj = this.revisionId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.revisionId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getRichText() {
            Object obj = this.richText_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.richText_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getRichTextBytes() {
            Object obj = this.richText_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.richText_ = copyFromUtf8;
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
            int i2 = this.color_;
            if (i2 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(4, i2);
            }
            float f = this.thickness_;
            if (f != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(5, f);
            }
            int i3 = this.zorder_;
            if (i3 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(6, i3);
            }
            if (!getBoundingRectBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(7, this.boundingRect_);
            }
            if (!getMatrixValuesBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(8, this.matrixValues_);
            }
            if (!getTextStyleBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(9, this.textStyle_);
            }
            if (!getTextBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(10, this.text_);
            }
            if (!getCreateArgsBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(11, this.createArgs_);
            }
            int i4 = this.shapeType_;
            if (i4 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(12, i4);
            }
            if (!getGroupIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(13, this.groupId_);
            }
            if (!getResourceBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(14, this.resource_);
            }
            int i5 = this.shapeStatus_;
            if (i5 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(15, i5);
            }
            if (!getRevisionIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(16, this.revisionId_);
            }
            if (!getLineStyleBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(17, this.lineStyle_);
            }
            if (!getInfoRevisionIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(18, this.infoRevisionId_);
            }
            if (!getTagIdListBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(19, this.tagIdList_);
            }
            if (!getExtraBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(20, this.extra_);
            }
            if (!getLinkIdListBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(21, this.linkIdList_);
            }
            if (!getRichTextBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(22, this.richText_);
            }
            int i6 = this.fillColor_;
            if (i6 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(23, i6);
            }
            if (!getOptionsBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(24, this.options_);
            }
            if (!this.pointList_.isEmpty()) {
                computeStringSize += CodedOutputStream.computeBytesSize(25, this.pointList_);
            }
            if (!getConnectionBeanBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(26, this.connectionBean_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public int getShapeStatus() {
            return this.shapeStatus_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public int getShapeType() {
            return this.shapeType_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getTagIdList() {
            Object obj = this.tagIdList_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.tagIdList_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getTagIdListBytes() {
            Object obj = this.tagIdList_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.tagIdList_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getText() {
            Object obj = this.text_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.text_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getTextBytes() {
            Object obj = this.text_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.text_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getTextStyle() {
            Object obj = this.textStyle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.textStyle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getTextStyleBytes() {
            Object obj = this.textStyle_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.textStyle_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public float getThickness() {
            return this.thickness_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
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

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoOrBuilder
        public int getZorder() {
            return this.zorder_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 3) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 4) * 53) + getColor()) * 37) + 5) * 53) + Float.floatToIntBits(getThickness())) * 37) + 6) * 53) + getZorder()) * 37) + 7) * 53) + getBoundingRect().hashCode()) * 37) + 8) * 53) + getMatrixValues().hashCode()) * 37) + 9) * 53) + getTextStyle().hashCode()) * 37) + 10) * 53) + getText().hashCode()) * 37) + 11) * 53) + getCreateArgs().hashCode()) * 37) + 12) * 53) + getShapeType()) * 37) + 13) * 53) + getGroupId().hashCode()) * 37) + 14) * 53) + getResource().hashCode()) * 37) + 15) * 53) + getShapeStatus()) * 37) + 16) * 53) + getRevisionId().hashCode()) * 37) + 17) * 53) + getLineStyle().hashCode()) * 37) + 18) * 53) + getInfoRevisionId().hashCode()) * 37) + 19) * 53) + getTagIdList().hashCode()) * 37) + 20) * 53) + getExtra().hashCode()) * 37) + 21) * 53) + getLinkIdList().hashCode()) * 37) + 22) * 53) + getRichText().hashCode()) * 37) + 23) * 53) + getFillColor()) * 37) + 24) * 53) + getOptions().hashCode()) * 37) + 25) * 53) + getPointList().hashCode()) * 37) + 26) * 53) + getConnectionBean().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return NoteShapeDocProto.f45720d.ensureFieldAccessorsInitialized(ShapeInfoProto.class, Builder.class);
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
            int i = this.color_;
            if (i != 0) {
                codedOutputStream.writeInt32(4, i);
            }
            float f = this.thickness_;
            if (f != 0.0f) {
                codedOutputStream.writeFloat(5, f);
            }
            int i2 = this.zorder_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(6, i2);
            }
            if (!getBoundingRectBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.boundingRect_);
            }
            if (!getMatrixValuesBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.matrixValues_);
            }
            if (!getTextStyleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.textStyle_);
            }
            if (!getTextBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.text_);
            }
            if (!getCreateArgsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.createArgs_);
            }
            int i3 = this.shapeType_;
            if (i3 != 0) {
                codedOutputStream.writeInt32(12, i3);
            }
            if (!getGroupIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 13, this.groupId_);
            }
            if (!getResourceBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 14, this.resource_);
            }
            int i4 = this.shapeStatus_;
            if (i4 != 0) {
                codedOutputStream.writeInt32(15, i4);
            }
            if (!getRevisionIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 16, this.revisionId_);
            }
            if (!getLineStyleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 17, this.lineStyle_);
            }
            if (!getInfoRevisionIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 18, this.infoRevisionId_);
            }
            if (!getTagIdListBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 19, this.tagIdList_);
            }
            if (!getExtraBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 20, this.extra_);
            }
            if (!getLinkIdListBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 21, this.linkIdList_);
            }
            if (!getRichTextBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 22, this.richText_);
            }
            int i5 = this.fillColor_;
            if (i5 != 0) {
                codedOutputStream.writeInt32(23, i5);
            }
            if (!getOptionsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 24, this.options_);
            }
            if (!this.pointList_.isEmpty()) {
                codedOutputStream.writeBytes(25, this.pointList_);
            }
            if (!getConnectionBeanBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 26, this.connectionBean_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ ShapeInfoProto(GeneratedMessageV3.Builder builder, C7768a c7768a) {
            this(builder);
        }

        public static Builder newBuilder(ShapeInfoProto shapeInfoProto) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(shapeInfoProto);
        }

        public static ShapeInfoProto parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private ShapeInfoProto(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ShapeInfoProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ShapeInfoProto) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ShapeInfoProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ShapeInfoProto getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7768a c7768a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7768a) : new Builder(c7768a).mergeFrom(this);
        }

        public static ShapeInfoProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ShapeInfoProto() {
            this.memoizedIsInitialized = (byte) -1;
            this.uniqueId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.color_ = 0;
            this.thickness_ = 0.0f;
            this.zorder_ = 0;
            this.boundingRect_ = "";
            this.matrixValues_ = "";
            this.textStyle_ = "";
            this.text_ = "";
            this.createArgs_ = "";
            this.shapeType_ = 0;
            this.groupId_ = "";
            this.resource_ = "";
            this.shapeStatus_ = 0;
            this.revisionId_ = "";
            this.lineStyle_ = "";
            this.infoRevisionId_ = "";
            this.tagIdList_ = "";
            this.extra_ = "";
            this.linkIdList_ = "";
            this.richText_ = "";
            this.fillColor_ = 0;
            this.options_ = "";
            this.pointList_ = ByteString.EMPTY;
            this.connectionBean_ = "";
        }

        public static ShapeInfoProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ShapeInfoProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ShapeInfoProto parseFrom(InputStream inputStream) throws IOException {
            return (ShapeInfoProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ShapeInfoProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ShapeInfoProto) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ShapeInfoProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ShapeInfoProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ShapeInfoProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ShapeInfoProto) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
        private ShapeInfoProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                case 16:
                                    this.createdAt_ = codedInputStream.readInt64();
                                case 24:
                                    this.updatedAt_ = codedInputStream.readInt64();
                                case 32:
                                    this.color_ = codedInputStream.readInt32();
                                case 45:
                                    this.thickness_ = codedInputStream.readFloat();
                                case 48:
                                    this.zorder_ = codedInputStream.readInt32();
                                case 58:
                                    this.boundingRect_ = codedInputStream.readStringRequireUtf8();
                                case 66:
                                    this.matrixValues_ = codedInputStream.readStringRequireUtf8();
                                case 74:
                                    this.textStyle_ = codedInputStream.readStringRequireUtf8();
                                case 82:
                                    this.text_ = codedInputStream.readStringRequireUtf8();
                                case 90:
                                    this.createArgs_ = codedInputStream.readStringRequireUtf8();
                                case 96:
                                    this.shapeType_ = codedInputStream.readInt32();
                                case 106:
                                    this.groupId_ = codedInputStream.readStringRequireUtf8();
                                case 114:
                                    this.resource_ = codedInputStream.readStringRequireUtf8();
                                case 120:
                                    this.shapeStatus_ = codedInputStream.readInt32();
                                case 130:
                                    this.revisionId_ = codedInputStream.readStringRequireUtf8();
                                case 138:
                                    this.lineStyle_ = codedInputStream.readStringRequireUtf8();
                                case 146:
                                    this.infoRevisionId_ = codedInputStream.readStringRequireUtf8();
                                case 154:
                                    this.tagIdList_ = codedInputStream.readStringRequireUtf8();
                                case 162:
                                    this.extra_ = codedInputStream.readStringRequireUtf8();
                                case 170:
                                    this.linkIdList_ = codedInputStream.readStringRequireUtf8();
                                case 178:
                                    this.richText_ = codedInputStream.readStringRequireUtf8();
                                case 184:
                                    this.fillColor_ = codedInputStream.readInt32();
                                case 194:
                                    this.options_ = codedInputStream.readStringRequireUtf8();
                                case 202:
                                    this.pointList_ = codedInputStream.readBytes();
                                case 210:
                                    this.connectionBean_ = codedInputStream.readStringRequireUtf8();
                                default:
                                    if (!parseUnknownFieldProto3(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                        z = true;
                                    }
                            }
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }
    }

    /* loaded from: classes8.dex */
    public static final class ShapeInfoProtoList extends GeneratedMessageV3 implements ShapeInfoProtoListOrBuilder {
        private static final ShapeInfoProtoList DEFAULT_INSTANCE = new ShapeInfoProtoList();
        private static final Parser<ShapeInfoProtoList> PARSER = new C7767a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<ShapeInfoProto> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ShapeInfoProtoListOrBuilder {

            /* renamed from: i */
            public int f45748i;

            /* renamed from: j */
            public List<ShapeInfoProto> f45749j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> f45750k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7768a c7768a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return NoteShapeDocProto.f45717a;
            }

            public Builder addAllProto(Iterable<? extends ShapeInfoProto> iterable) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                if (repeatedFieldBuilderV3 == null) {
                    m35303h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45749j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(ShapeInfoProto shapeInfoProto) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                if (repeatedFieldBuilderV3 == null) {
                    shapeInfoProto.getClass();
                    m35303h();
                    this.f45749j.add(shapeInfoProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(shapeInfoProto);
                }
                return this;
            }

            public ShapeInfoProto.Builder addProtoBuilder() {
                return m35304i().addBuilder(ShapeInfoProto.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45749j = Collections.emptyList();
                    this.f45748i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return NoteShapeDocProto.f45717a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoListOrBuilder
            public ShapeInfoProto getProto(int i) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                return repeatedFieldBuilderV3 == null ? this.f45749j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public ShapeInfoProto.Builder getProtoBuilder(int i) {
                return m35304i().getBuilder(i);
            }

            public List<ShapeInfoProto.Builder> getProtoBuilderList() {
                return m35304i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                return repeatedFieldBuilderV3 == null ? this.f45749j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoListOrBuilder
            public List<ShapeInfoProto> getProtoList() {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45749j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoListOrBuilder
            public ShapeInfoProtoOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                return repeatedFieldBuilderV3 == null ? this.f45749j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoListOrBuilder
            public List<? extends ShapeInfoProtoOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45749j);
            }

            /* renamed from: h */
            public final void m35303h() {
                if ((this.f45748i & 1) != 1) {
                    this.f45749j = new ArrayList(this.f45749j);
                    this.f45748i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> m35304i() {
                if (this.f45750k == null) {
                    this.f45750k = new RepeatedFieldBuilderV3<>(this.f45749j, (this.f45748i & 1) == 1, getParentForChildren(), isClean());
                    this.f45749j = null;
                }
                return this.f45750k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return NoteShapeDocProto.f45718b.ensureFieldAccessorsInitialized(ShapeInfoProtoList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35305j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35304i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                if (repeatedFieldBuilderV3 == null) {
                    m35303h();
                    this.f45749j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, ShapeInfoProto shapeInfoProto) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                if (repeatedFieldBuilderV3 == null) {
                    shapeInfoProto.getClass();
                    m35303h();
                    this.f45749j.set(i, shapeInfoProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, shapeInfoProto);
                }
                return this;
            }

            public /* synthetic */ Builder(C7768a c7768a) {
                this();
            }

            public Builder() {
                this.f45749j = Collections.emptyList();
                m35305j();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ShapeInfoProtoList build() {
                ShapeInfoProtoList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ShapeInfoProtoList buildPartial() {
                ShapeInfoProtoList shapeInfoProtoList = new ShapeInfoProtoList(this, (C7768a) null);
                int i = this.f45748i;
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45749j = Collections.unmodifiableList(this.f45749j);
                        this.f45748i &= -2;
                    }
                    shapeInfoProtoList.proto_ = this.f45749j;
                } else {
                    shapeInfoProtoList.proto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return shapeInfoProtoList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ShapeInfoProtoList getDefaultInstanceForType() {
                return ShapeInfoProtoList.getDefaultInstance();
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

            public ShapeInfoProto.Builder addProtoBuilder(int i) {
                return m35304i().addBuilder(i, ShapeInfoProto.getDefaultInstance());
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
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45749j = Collections.emptyList();
                    this.f45748i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45749j = Collections.emptyList();
                m35305j();
            }

            public Builder addProto(int i, ShapeInfoProto shapeInfoProto) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                if (repeatedFieldBuilderV3 == null) {
                    shapeInfoProto.getClass();
                    m35303h();
                    this.f45749j.add(i, shapeInfoProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, shapeInfoProto);
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
                if (message instanceof ShapeInfoProtoList) {
                    return mergeFrom((ShapeInfoProtoList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setProto(int i, ShapeInfoProto.Builder builder) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                if (repeatedFieldBuilderV3 == null) {
                    m35303h();
                    this.f45749j.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(ShapeInfoProtoList shapeInfoProtoList) {
                if (shapeInfoProtoList == ShapeInfoProtoList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45750k == null) {
                    if (!shapeInfoProtoList.proto_.isEmpty()) {
                        if (this.f45749j.isEmpty()) {
                            this.f45749j = shapeInfoProtoList.proto_;
                            this.f45748i &= -2;
                        } else {
                            m35303h();
                            this.f45749j.addAll(shapeInfoProtoList.proto_);
                        }
                        onChanged();
                    }
                } else if (!shapeInfoProtoList.proto_.isEmpty()) {
                    if (this.f45750k.isEmpty()) {
                        this.f45750k.dispose();
                        this.f45750k = null;
                        this.f45749j = shapeInfoProtoList.proto_;
                        this.f45748i &= -2;
                        this.f45750k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35304i() : null;
                    } else {
                        this.f45750k.addAllMessages(shapeInfoProtoList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) shapeInfoProtoList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(ShapeInfoProto.Builder builder) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                if (repeatedFieldBuilderV3 == null) {
                    m35303h();
                    this.f45749j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, ShapeInfoProto.Builder builder) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45750k;
                if (repeatedFieldBuilderV3 == null) {
                    m35303h();
                    this.f45749j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto$ShapeInfoProtoList r3 = (com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto$ShapeInfoProtoList r4 = (com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto$ShapeInfoProtoList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto$ShapeInfoProtoList$a */
        /* loaded from: classes8.dex */
        public class C7767a extends AbstractParser<ShapeInfoProtoList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public ShapeInfoProtoList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ShapeInfoProtoList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ ShapeInfoProtoList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7768a c7768a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ShapeInfoProtoList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return NoteShapeDocProto.f45717a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ShapeInfoProtoList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ShapeInfoProtoList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ShapeInfoProtoList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ShapeInfoProtoList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ShapeInfoProtoList)) {
                return super.equals(obj);
            }
            ShapeInfoProtoList shapeInfoProtoList = (ShapeInfoProtoList) obj;
            return (getProtoList().equals(shapeInfoProtoList.getProtoList())) && this.unknownFields.equals(shapeInfoProtoList.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ShapeInfoProtoList> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoListOrBuilder
        public ShapeInfoProto getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoListOrBuilder
        public List<ShapeInfoProto> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoListOrBuilder
        public ShapeInfoProtoOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto.ShapeInfoProtoListOrBuilder
        public List<? extends ShapeInfoProtoOrBuilder> getProtoOrBuilderList() {
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
            return NoteShapeDocProto.f45718b.ensureFieldAccessorsInitialized(ShapeInfoProtoList.class, Builder.class);
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

        public /* synthetic */ ShapeInfoProtoList(GeneratedMessageV3.Builder builder, C7768a c7768a) {
            this(builder);
        }

        public static Builder newBuilder(ShapeInfoProtoList shapeInfoProtoList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(shapeInfoProtoList);
        }

        public static ShapeInfoProtoList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private ShapeInfoProtoList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ShapeInfoProtoList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ShapeInfoProtoList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ShapeInfoProtoList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ShapeInfoProtoList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            C7768a c7768a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7768a) : new Builder(c7768a).mergeFrom(this);
        }

        public static ShapeInfoProtoList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ShapeInfoProtoList() {
            this.memoizedIsInitialized = (byte) -1;
            this.proto_ = Collections.emptyList();
        }

        public static ShapeInfoProtoList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ShapeInfoProtoList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ShapeInfoProtoList parseFrom(InputStream inputStream) throws IOException {
            return (ShapeInfoProtoList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ShapeInfoProtoList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.proto_.add((ShapeInfoProto) codedInputStream.readMessage(ShapeInfoProto.parser(), extensionRegistryLite));
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

        public static ShapeInfoProtoList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ShapeInfoProtoList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ShapeInfoProtoList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ShapeInfoProtoList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ShapeInfoProtoList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ShapeInfoProtoList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes8.dex */
    public interface ShapeInfoProtoListOrBuilder extends MessageOrBuilder {
        ShapeInfoProto getProto(int i);

        int getProtoCount();

        List<ShapeInfoProto> getProtoList();

        ShapeInfoProtoOrBuilder getProtoOrBuilder(int i);

        List<? extends ShapeInfoProtoOrBuilder> getProtoOrBuilderList();
    }

    /* loaded from: classes8.dex */
    public interface ShapeInfoProtoOrBuilder extends MessageOrBuilder {
        String getBoundingRect();

        ByteString getBoundingRectBytes();

        int getColor();

        String getConnectionBean();

        ByteString getConnectionBeanBytes();

        String getCreateArgs();

        ByteString getCreateArgsBytes();

        long getCreatedAt();

        String getExtra();

        ByteString getExtraBytes();

        int getFillColor();

        String getGroupId();

        ByteString getGroupIdBytes();

        String getInfoRevisionId();

        ByteString getInfoRevisionIdBytes();

        String getLineStyle();

        ByteString getLineStyleBytes();

        String getLinkIdList();

        ByteString getLinkIdListBytes();

        String getMatrixValues();

        ByteString getMatrixValuesBytes();

        String getOptions();

        ByteString getOptionsBytes();

        ByteString getPointList();

        String getResource();

        ByteString getResourceBytes();

        String getRevisionId();

        ByteString getRevisionIdBytes();

        String getRichText();

        ByteString getRichTextBytes();

        int getShapeStatus();

        int getShapeType();

        String getTagIdList();

        ByteString getTagIdListBytes();

        String getText();

        ByteString getTextBytes();

        String getTextStyle();

        ByteString getTextStyleBytes();

        float getThickness();

        String getUniqueId();

        ByteString getUniqueIdBytes();

        long getUpdatedAt();

        int getZorder();
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto$a */
    /* loaded from: classes8.dex */
    public class C7768a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = NoteShapeDocProto.f45721e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0017NoteShapeDocProto.proto\"4\n\u0012ShapeInfoProtoList\u0012\u001e\n\u0005proto\u0018\u0001 \u0003(\u000b2\u000f.ShapeInfoProto\"ü\u0003\n\u000eShapeInfoProto\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0003 \u0001(\u0003\u0012\r\n\u0005color\u0018\u0004 \u0001(\u0005\u0012\u0011\n\tthickness\u0018\u0005 \u0001(\u0002\u0012\u000e\n\u0006zorder\u0018\u0006 \u0001(\u0005\u0012\u0014\n\fboundingRect\u0018\u0007 \u0001(\t\u0012\u0014\n\fmatrixValues\u0018\b \u0001(\t\u0012\u0011\n\ttextStyle\u0018\t \u0001(\t\u0012\f\n\u0004text\u0018\n \u0001(\t\u0012\u0012\n\ncreateArgs\u0018\u000b \u0001(\t\u0012\u0011\n\tshapeType\u0018\f \u0001(\u0005\u0012\u000f\n\u0007groupId\u0018\r \u0001(\t\u0012\u0010\n\bresource\u0018\u000e \u0001(\t\u0012\u0013\n\u000bshapeStatus\u0018\u000f \u0001(\u0005\u0012\u0012\n\nrevisionId\u0018\u0010 \u0001(\t\u0012\u0011\n\tlineStyle\u0018\u0011 \u0001(\t\u0012\u0016\n\u000einfoRevisionId\u0018\u0012 \u0001(\t\u0012\u0011\n\ttagIdList\u0018\u0013 \u0001(\t\u0012\r\n\u0005extra\u0018\u0014 \u0001(\t\u0012\u0012\n\nlinkIdList\u0018\u0015 \u0001(\t\u0012\u0010\n\brichText\u0018\u0016 \u0001(\t\u0012\u0011\n\tfillColor\u0018\u0017 \u0001(\u0005\u0012\u000f\n\u0007options\u0018\u0018 \u0001(\t\u0012\u0011\n\tpointList\u0018\u0019 \u0001(\f\u0012\u0016\n\u000econnectionBean\u0018\u001a \u0001(\tB,\n*com.onyx.android.sdk.replicator.note.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7768a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45717a = descriptor;
        f45718b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45719c = descriptor2;
        f45720d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"UniqueId", "CreatedAt", "UpdatedAt", "Color", "Thickness", "Zorder", "BoundingRect", "MatrixValues", "TextStyle", "Text", "CreateArgs", "ShapeType", "GroupId", "Resource", "ShapeStatus", "RevisionId", "LineStyle", "InfoRevisionId", "TagIdList", "Extra", "LinkIdList", "RichText", "FillColor", "Options", "PointList", "ConnectionBean"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45721e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
