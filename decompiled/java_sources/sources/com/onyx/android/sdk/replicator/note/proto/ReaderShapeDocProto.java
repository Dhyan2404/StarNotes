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
public final class ReaderShapeDocProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f45770a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f45771b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f45772c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f45773d;

    /* renamed from: e */
    public static Descriptors.FileDescriptor f45774e;

    /* loaded from: classes8.dex */
    public static final class ShapeInfoProto extends GeneratedMessageV3 implements ShapeInfoProtoOrBuilder {
        public static final int ANCHOR_FIELD_NUMBER = 18;
        public static final int APPID_FIELD_NUMBER = 6;
        public static final int BOOKPOSITION_FIELD_NUMBER = 17;
        public static final int BOUNDINGRECT_FIELD_NUMBER = 14;
        public static final int COLOR_FIELD_NUMBER = 9;
        public static final int CREATEARGS_FIELD_NUMBER = 11;
        public static final int CREATEDAT_FIELD_NUMBER = 3;
        public static final int EXTRAATTRIBUTES_FIELD_NUMBER = 16;
        public static final int FILLCOLOR_FIELD_NUMBER = 29;
        public static final int INFOREVISIONID_FIELD_NUMBER = 28;
        public static final int LINESTYLE_FIELD_NUMBER = 24;
        public static final int MATRIXVALUES_FIELD_NUMBER = 20;
        public static final int OBJECTID_FIELD_NUMBER = 2;
        public static final int PAGEORIGINHEIGHT_FIELD_NUMBER = 8;
        public static final int PAGEORIGINWIDTH_FIELD_NUMBER = 7;
        public static final int PAGEPOSITIONV2_FIELD_NUMBER = 31;
        public static final int PAGEUNIQUEIDV2_FIELD_NUMBER = 32;
        public static final int PAINTSTYLE_FIELD_NUMBER = 10;
        public static final int POSITION_FIELD_NUMBER = 23;
        public static final int RESOURCE_FIELD_NUMBER = 26;
        public static final int REVISIONID_FIELD_NUMBER = 25;
        public static final int RICHTEXT_FIELD_NUMBER = 30;
        public static final int SCRIBBLETYPE_FIELD_NUMBER = 19;
        public static final int SHAPETYPE_FIELD_NUMBER = 15;
        public static final int STATUS_FIELD_NUMBER = 27;
        public static final int SUBPAGEUNIQUEID_FIELD_NUMBER = 5;
        public static final int TEXTSTYLE_FIELD_NUMBER = 21;
        public static final int TEXT_FIELD_NUMBER = 22;
        public static final int THICKNESS_FIELD_NUMBER = 12;
        public static final int UNIQUEID_FIELD_NUMBER = 1;
        public static final int UPDATEDAT_FIELD_NUMBER = 4;
        public static final int ZORDER_FIELD_NUMBER = 13;
        private static final long serialVersionUID = 0;
        private volatile Object anchor_;
        private volatile Object appId_;
        private int bookPosition_;
        private volatile Object boundingRect_;
        private int color_;
        private volatile Object createArgs_;
        private long createdAt_;
        private volatile Object extraAttributes_;
        private int fillColor_;
        private volatile Object infoRevisionId_;
        private volatile Object lineStyle_;
        private volatile Object matrixValues_;
        private byte memoizedIsInitialized;
        private volatile Object objectId_;
        private int pageOriginHeight_;
        private int pageOriginWidth_;
        private volatile Object pagePositionV2_;
        private volatile Object pageUniqueIdV2_;
        private int paintStyle_;
        private volatile Object position_;
        private volatile Object resource_;
        private volatile Object revisionId_;
        private volatile Object richText_;
        private int scribbleType_;
        private int shapeType_;
        private int status_;
        private volatile Object subPageUniqueId_;
        private volatile Object textStyle_;
        private volatile Object text_;
        private float thickness_;
        private volatile Object uniqueId_;
        private long updatedAt_;
        private int zorder_;
        private static final ShapeInfoProto DEFAULT_INSTANCE = new ShapeInfoProto();
        private static final Parser<ShapeInfoProto> PARSER = new C7772a();

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ShapeInfoProtoOrBuilder {

            /* renamed from: A0 */
            public Object f45775A0;

            /* renamed from: J */
            public int f45776J;

            /* renamed from: O */
            public Object f45777O;

            /* renamed from: Q */
            public Object f45778Q;

            /* renamed from: Z */
            public Object f45779Z;

            /* renamed from: i */
            public Object f45780i;

            /* renamed from: j */
            public Object f45781j;

            /* renamed from: k */
            public long f45782k;

            /* renamed from: k0 */
            public Object f45783k0;

            /* renamed from: l */
            public long f45784l;

            /* renamed from: m */
            public Object f45785m;

            /* renamed from: n */
            public Object f45786n;

            /* renamed from: o */
            public int f45787o;

            /* renamed from: p */
            public int f45788p;

            /* renamed from: q */
            public int f45789q;

            /* renamed from: q0 */
            public Object f45790q0;

            /* renamed from: r */
            public int f45791r;

            /* renamed from: s */
            public Object f45792s;

            /* renamed from: t */
            public float f45793t;

            /* renamed from: t0 */
            public Object f45794t0;

            /* renamed from: u */
            public int f45795u;

            /* renamed from: u0 */
            public Object f45796u0;

            /* renamed from: v */
            public Object f45797v;

            /* renamed from: v0 */
            public int f45798v0;

            /* renamed from: w */
            public int f45799w;

            /* renamed from: w0 */
            public Object f45800w0;

            /* renamed from: x */
            public Object f45801x;

            /* renamed from: x0 */
            public int f45802x0;

            /* renamed from: y */
            public int f45803y;

            /* renamed from: y0 */
            public Object f45804y0;

            /* renamed from: z */
            public Object f45805z;

            /* renamed from: z0 */
            public Object f45806z0;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7774a c7774a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ReaderShapeDocProto.f45772c;
            }

            public Builder clearAnchor() {
                this.f45805z = ShapeInfoProto.getDefaultInstance().getAnchor();
                onChanged();
                return this;
            }

            public Builder clearAppId() {
                this.f45786n = ShapeInfoProto.getDefaultInstance().getAppId();
                onChanged();
                return this;
            }

            public Builder clearBookPosition() {
                this.f45803y = 0;
                onChanged();
                return this;
            }

            public Builder clearBoundingRect() {
                this.f45797v = ShapeInfoProto.getDefaultInstance().getBoundingRect();
                onChanged();
                return this;
            }

            public Builder clearColor() {
                this.f45789q = 0;
                onChanged();
                return this;
            }

            public Builder clearCreateArgs() {
                this.f45792s = ShapeInfoProto.getDefaultInstance().getCreateArgs();
                onChanged();
                return this;
            }

            public Builder clearCreatedAt() {
                this.f45782k = 0L;
                onChanged();
                return this;
            }

            public Builder clearExtraAttributes() {
                this.f45801x = ShapeInfoProto.getDefaultInstance().getExtraAttributes();
                onChanged();
                return this;
            }

            public Builder clearFillColor() {
                this.f45802x0 = 0;
                onChanged();
                return this;
            }

            public Builder clearInfoRevisionId() {
                this.f45800w0 = ShapeInfoProto.getDefaultInstance().getInfoRevisionId();
                onChanged();
                return this;
            }

            public Builder clearLineStyle() {
                this.f45790q0 = ShapeInfoProto.getDefaultInstance().getLineStyle();
                onChanged();
                return this;
            }

            public Builder clearMatrixValues() {
                this.f45777O = ShapeInfoProto.getDefaultInstance().getMatrixValues();
                onChanged();
                return this;
            }

            public Builder clearObjectId() {
                this.f45781j = ShapeInfoProto.getDefaultInstance().getObjectId();
                onChanged();
                return this;
            }

            public Builder clearPageOriginHeight() {
                this.f45788p = 0;
                onChanged();
                return this;
            }

            public Builder clearPageOriginWidth() {
                this.f45787o = 0;
                onChanged();
                return this;
            }

            public Builder clearPagePositionV2() {
                this.f45806z0 = ShapeInfoProto.getDefaultInstance().getPagePositionV2();
                onChanged();
                return this;
            }

            public Builder clearPageUniqueIdV2() {
                this.f45775A0 = ShapeInfoProto.getDefaultInstance().getPageUniqueIdV2();
                onChanged();
                return this;
            }

            public Builder clearPaintStyle() {
                this.f45791r = 0;
                onChanged();
                return this;
            }

            public Builder clearPosition() {
                this.f45783k0 = ShapeInfoProto.getDefaultInstance().getPosition();
                onChanged();
                return this;
            }

            public Builder clearResource() {
                this.f45796u0 = ShapeInfoProto.getDefaultInstance().getResource();
                onChanged();
                return this;
            }

            public Builder clearRevisionId() {
                this.f45794t0 = ShapeInfoProto.getDefaultInstance().getRevisionId();
                onChanged();
                return this;
            }

            public Builder clearRichText() {
                this.f45804y0 = ShapeInfoProto.getDefaultInstance().getRichText();
                onChanged();
                return this;
            }

            public Builder clearScribbleType() {
                this.f45776J = 0;
                onChanged();
                return this;
            }

            public Builder clearShapeType() {
                this.f45799w = 0;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.f45798v0 = 0;
                onChanged();
                return this;
            }

            public Builder clearSubPageUniqueId() {
                this.f45785m = ShapeInfoProto.getDefaultInstance().getSubPageUniqueId();
                onChanged();
                return this;
            }

            public Builder clearText() {
                this.f45779Z = ShapeInfoProto.getDefaultInstance().getText();
                onChanged();
                return this;
            }

            public Builder clearTextStyle() {
                this.f45778Q = ShapeInfoProto.getDefaultInstance().getTextStyle();
                onChanged();
                return this;
            }

            public Builder clearThickness() {
                this.f45793t = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearUniqueId() {
                this.f45780i = ShapeInfoProto.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            public Builder clearUpdatedAt() {
                this.f45784l = 0L;
                onChanged();
                return this;
            }

            public Builder clearZorder() {
                this.f45795u = 0;
                onChanged();
                return this;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getAnchor() {
                Object obj = this.f45805z;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45805z = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getAnchorBytes() {
                Object obj = this.f45805z;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45805z = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getAppId() {
                Object obj = this.f45786n;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45786n = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getAppIdBytes() {
                Object obj = this.f45786n;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45786n = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public int getBookPosition() {
                return this.f45803y;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getBoundingRect() {
                Object obj = this.f45797v;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45797v = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getBoundingRectBytes() {
                Object obj = this.f45797v;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45797v = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public int getColor() {
                return this.f45789q;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getCreateArgs() {
                Object obj = this.f45792s;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45792s = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getCreateArgsBytes() {
                Object obj = this.f45792s;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45792s = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public long getCreatedAt() {
                return this.f45782k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ReaderShapeDocProto.f45772c;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getExtraAttributes() {
                Object obj = this.f45801x;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45801x = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getExtraAttributesBytes() {
                Object obj = this.f45801x;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45801x = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public int getFillColor() {
                return this.f45802x0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getInfoRevisionId() {
                Object obj = this.f45800w0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45800w0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getInfoRevisionIdBytes() {
                Object obj = this.f45800w0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45800w0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getLineStyle() {
                Object obj = this.f45790q0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45790q0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getLineStyleBytes() {
                Object obj = this.f45790q0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45790q0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getMatrixValues() {
                Object obj = this.f45777O;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45777O = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getMatrixValuesBytes() {
                Object obj = this.f45777O;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45777O = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getObjectId() {
                Object obj = this.f45781j;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45781j = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getObjectIdBytes() {
                Object obj = this.f45781j;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45781j = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public int getPageOriginHeight() {
                return this.f45788p;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public int getPageOriginWidth() {
                return this.f45787o;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getPagePositionV2() {
                Object obj = this.f45806z0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45806z0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getPagePositionV2Bytes() {
                Object obj = this.f45806z0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45806z0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getPageUniqueIdV2() {
                Object obj = this.f45775A0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45775A0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getPageUniqueIdV2Bytes() {
                Object obj = this.f45775A0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45775A0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public int getPaintStyle() {
                return this.f45791r;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getPosition() {
                Object obj = this.f45783k0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45783k0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getPositionBytes() {
                Object obj = this.f45783k0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45783k0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getResource() {
                Object obj = this.f45796u0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45796u0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getResourceBytes() {
                Object obj = this.f45796u0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45796u0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getRevisionId() {
                Object obj = this.f45794t0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45794t0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getRevisionIdBytes() {
                Object obj = this.f45794t0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45794t0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getRichText() {
                Object obj = this.f45804y0;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45804y0 = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getRichTextBytes() {
                Object obj = this.f45804y0;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45804y0 = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public int getScribbleType() {
                return this.f45776J;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public int getShapeType() {
                return this.f45799w;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public int getStatus() {
                return this.f45798v0;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getSubPageUniqueId() {
                Object obj = this.f45785m;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45785m = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getSubPageUniqueIdBytes() {
                Object obj = this.f45785m;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45785m = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getText() {
                Object obj = this.f45779Z;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45779Z = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getTextBytes() {
                Object obj = this.f45779Z;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45779Z = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getTextStyle() {
                Object obj = this.f45778Q;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45778Q = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getTextStyleBytes() {
                Object obj = this.f45778Q;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45778Q = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public float getThickness() {
                return this.f45793t;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public String getUniqueId() {
                Object obj = this.f45780i;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.f45780i = stringUtf8;
                return stringUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public ByteString getUniqueIdBytes() {
                Object obj = this.f45780i;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.f45780i = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public long getUpdatedAt() {
                return this.f45784l;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
            public int getZorder() {
                return this.f45795u;
            }

            /* renamed from: h */
            public final void m35323h() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ReaderShapeDocProto.f45773d.ensureFieldAccessorsInitialized(ShapeInfoProto.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setAnchor(String str) {
                str.getClass();
                this.f45805z = str;
                onChanged();
                return this;
            }

            public Builder setAnchorBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45805z = byteString;
                onChanged();
                return this;
            }

            public Builder setAppId(String str) {
                str.getClass();
                this.f45786n = str;
                onChanged();
                return this;
            }

            public Builder setAppIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45786n = byteString;
                onChanged();
                return this;
            }

            public Builder setBookPosition(int i) {
                this.f45803y = i;
                onChanged();
                return this;
            }

            public Builder setBoundingRect(String str) {
                str.getClass();
                this.f45797v = str;
                onChanged();
                return this;
            }

            public Builder setBoundingRectBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45797v = byteString;
                onChanged();
                return this;
            }

            public Builder setColor(int i) {
                this.f45789q = i;
                onChanged();
                return this;
            }

            public Builder setCreateArgs(String str) {
                str.getClass();
                this.f45792s = str;
                onChanged();
                return this;
            }

            public Builder setCreateArgsBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45792s = byteString;
                onChanged();
                return this;
            }

            public Builder setCreatedAt(long j) {
                this.f45782k = j;
                onChanged();
                return this;
            }

            public Builder setExtraAttributes(String str) {
                str.getClass();
                this.f45801x = str;
                onChanged();
                return this;
            }

            public Builder setExtraAttributesBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45801x = byteString;
                onChanged();
                return this;
            }

            public Builder setFillColor(int i) {
                this.f45802x0 = i;
                onChanged();
                return this;
            }

            public Builder setInfoRevisionId(String str) {
                str.getClass();
                this.f45800w0 = str;
                onChanged();
                return this;
            }

            public Builder setInfoRevisionIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45800w0 = byteString;
                onChanged();
                return this;
            }

            public Builder setLineStyle(String str) {
                str.getClass();
                this.f45790q0 = str;
                onChanged();
                return this;
            }

            public Builder setLineStyleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45790q0 = byteString;
                onChanged();
                return this;
            }

            public Builder setMatrixValues(String str) {
                str.getClass();
                this.f45777O = str;
                onChanged();
                return this;
            }

            public Builder setMatrixValuesBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45777O = byteString;
                onChanged();
                return this;
            }

            public Builder setObjectId(String str) {
                str.getClass();
                this.f45781j = str;
                onChanged();
                return this;
            }

            public Builder setObjectIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45781j = byteString;
                onChanged();
                return this;
            }

            public Builder setPageOriginHeight(int i) {
                this.f45788p = i;
                onChanged();
                return this;
            }

            public Builder setPageOriginWidth(int i) {
                this.f45787o = i;
                onChanged();
                return this;
            }

            public Builder setPagePositionV2(String str) {
                str.getClass();
                this.f45806z0 = str;
                onChanged();
                return this;
            }

            public Builder setPagePositionV2Bytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45806z0 = byteString;
                onChanged();
                return this;
            }

            public Builder setPageUniqueIdV2(String str) {
                str.getClass();
                this.f45775A0 = str;
                onChanged();
                return this;
            }

            public Builder setPageUniqueIdV2Bytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45775A0 = byteString;
                onChanged();
                return this;
            }

            public Builder setPaintStyle(int i) {
                this.f45791r = i;
                onChanged();
                return this;
            }

            public Builder setPosition(String str) {
                str.getClass();
                this.f45783k0 = str;
                onChanged();
                return this;
            }

            public Builder setPositionBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45783k0 = byteString;
                onChanged();
                return this;
            }

            public Builder setResource(String str) {
                str.getClass();
                this.f45796u0 = str;
                onChanged();
                return this;
            }

            public Builder setResourceBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45796u0 = byteString;
                onChanged();
                return this;
            }

            public Builder setRevisionId(String str) {
                str.getClass();
                this.f45794t0 = str;
                onChanged();
                return this;
            }

            public Builder setRevisionIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45794t0 = byteString;
                onChanged();
                return this;
            }

            public Builder setRichText(String str) {
                str.getClass();
                this.f45804y0 = str;
                onChanged();
                return this;
            }

            public Builder setRichTextBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45804y0 = byteString;
                onChanged();
                return this;
            }

            public Builder setScribbleType(int i) {
                this.f45776J = i;
                onChanged();
                return this;
            }

            public Builder setShapeType(int i) {
                this.f45799w = i;
                onChanged();
                return this;
            }

            public Builder setStatus(int i) {
                this.f45798v0 = i;
                onChanged();
                return this;
            }

            public Builder setSubPageUniqueId(String str) {
                str.getClass();
                this.f45785m = str;
                onChanged();
                return this;
            }

            public Builder setSubPageUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45785m = byteString;
                onChanged();
                return this;
            }

            public Builder setText(String str) {
                str.getClass();
                this.f45779Z = str;
                onChanged();
                return this;
            }

            public Builder setTextBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45779Z = byteString;
                onChanged();
                return this;
            }

            public Builder setTextStyle(String str) {
                str.getClass();
                this.f45778Q = str;
                onChanged();
                return this;
            }

            public Builder setTextStyleBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45778Q = byteString;
                onChanged();
                return this;
            }

            public Builder setThickness(float f) {
                this.f45793t = f;
                onChanged();
                return this;
            }

            public Builder setUniqueId(String str) {
                str.getClass();
                this.f45780i = str;
                onChanged();
                return this;
            }

            public Builder setUniqueIdBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.f45780i = byteString;
                onChanged();
                return this;
            }

            public Builder setUpdatedAt(long j) {
                this.f45784l = j;
                onChanged();
                return this;
            }

            public Builder setZorder(int i) {
                this.f45795u = i;
                onChanged();
                return this;
            }

            public /* synthetic */ Builder(C7774a c7774a) {
                this();
            }

            public Builder() {
                this.f45780i = "";
                this.f45781j = "";
                this.f45785m = "";
                this.f45786n = "";
                this.f45792s = "";
                this.f45797v = "";
                this.f45801x = "";
                this.f45805z = "";
                this.f45777O = "";
                this.f45778Q = "";
                this.f45779Z = "";
                this.f45783k0 = "";
                this.f45790q0 = "";
                this.f45794t0 = "";
                this.f45796u0 = "";
                this.f45800w0 = "";
                this.f45804y0 = "";
                this.f45806z0 = "";
                this.f45775A0 = "";
                m35323h();
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
                ShapeInfoProto shapeInfoProto = new ShapeInfoProto(this, (C7774a) null);
                shapeInfoProto.uniqueId_ = this.f45780i;
                shapeInfoProto.objectId_ = this.f45781j;
                shapeInfoProto.createdAt_ = this.f45782k;
                shapeInfoProto.updatedAt_ = this.f45784l;
                shapeInfoProto.subPageUniqueId_ = this.f45785m;
                shapeInfoProto.appId_ = this.f45786n;
                shapeInfoProto.pageOriginWidth_ = this.f45787o;
                shapeInfoProto.pageOriginHeight_ = this.f45788p;
                shapeInfoProto.color_ = this.f45789q;
                shapeInfoProto.paintStyle_ = this.f45791r;
                shapeInfoProto.createArgs_ = this.f45792s;
                shapeInfoProto.thickness_ = this.f45793t;
                shapeInfoProto.zorder_ = this.f45795u;
                shapeInfoProto.boundingRect_ = this.f45797v;
                shapeInfoProto.shapeType_ = this.f45799w;
                shapeInfoProto.extraAttributes_ = this.f45801x;
                shapeInfoProto.bookPosition_ = this.f45803y;
                shapeInfoProto.anchor_ = this.f45805z;
                shapeInfoProto.scribbleType_ = this.f45776J;
                shapeInfoProto.matrixValues_ = this.f45777O;
                shapeInfoProto.textStyle_ = this.f45778Q;
                shapeInfoProto.text_ = this.f45779Z;
                shapeInfoProto.position_ = this.f45783k0;
                shapeInfoProto.lineStyle_ = this.f45790q0;
                shapeInfoProto.revisionId_ = this.f45794t0;
                shapeInfoProto.resource_ = this.f45796u0;
                shapeInfoProto.status_ = this.f45798v0;
                shapeInfoProto.infoRevisionId_ = this.f45800w0;
                shapeInfoProto.fillColor_ = this.f45802x0;
                shapeInfoProto.richText_ = this.f45804y0;
                shapeInfoProto.pagePositionV2_ = this.f45806z0;
                shapeInfoProto.pageUniqueIdV2_ = this.f45775A0;
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
                this.f45780i = "";
                this.f45781j = "";
                this.f45782k = 0L;
                this.f45784l = 0L;
                this.f45785m = "";
                this.f45786n = "";
                this.f45787o = 0;
                this.f45788p = 0;
                this.f45789q = 0;
                this.f45791r = 0;
                this.f45792s = "";
                this.f45793t = 0.0f;
                this.f45795u = 0;
                this.f45797v = "";
                this.f45799w = 0;
                this.f45801x = "";
                this.f45803y = 0;
                this.f45805z = "";
                this.f45776J = 0;
                this.f45777O = "";
                this.f45778Q = "";
                this.f45779Z = "";
                this.f45783k0 = "";
                this.f45790q0 = "";
                this.f45794t0 = "";
                this.f45796u0 = "";
                this.f45798v0 = 0;
                this.f45800w0 = "";
                this.f45802x0 = 0;
                this.f45804y0 = "";
                this.f45806z0 = "";
                this.f45775A0 = "";
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
                    this.f45780i = shapeInfoProto.uniqueId_;
                    onChanged();
                }
                if (!shapeInfoProto.getObjectId().isEmpty()) {
                    this.f45781j = shapeInfoProto.objectId_;
                    onChanged();
                }
                if (shapeInfoProto.getCreatedAt() != 0) {
                    setCreatedAt(shapeInfoProto.getCreatedAt());
                }
                if (shapeInfoProto.getUpdatedAt() != 0) {
                    setUpdatedAt(shapeInfoProto.getUpdatedAt());
                }
                if (!shapeInfoProto.getSubPageUniqueId().isEmpty()) {
                    this.f45785m = shapeInfoProto.subPageUniqueId_;
                    onChanged();
                }
                if (!shapeInfoProto.getAppId().isEmpty()) {
                    this.f45786n = shapeInfoProto.appId_;
                    onChanged();
                }
                if (shapeInfoProto.getPageOriginWidth() != 0) {
                    setPageOriginWidth(shapeInfoProto.getPageOriginWidth());
                }
                if (shapeInfoProto.getPageOriginHeight() != 0) {
                    setPageOriginHeight(shapeInfoProto.getPageOriginHeight());
                }
                if (shapeInfoProto.getColor() != 0) {
                    setColor(shapeInfoProto.getColor());
                }
                if (shapeInfoProto.getPaintStyle() != 0) {
                    setPaintStyle(shapeInfoProto.getPaintStyle());
                }
                if (!shapeInfoProto.getCreateArgs().isEmpty()) {
                    this.f45792s = shapeInfoProto.createArgs_;
                    onChanged();
                }
                if (shapeInfoProto.getThickness() != 0.0f) {
                    setThickness(shapeInfoProto.getThickness());
                }
                if (shapeInfoProto.getZorder() != 0) {
                    setZorder(shapeInfoProto.getZorder());
                }
                if (!shapeInfoProto.getBoundingRect().isEmpty()) {
                    this.f45797v = shapeInfoProto.boundingRect_;
                    onChanged();
                }
                if (shapeInfoProto.getShapeType() != 0) {
                    setShapeType(shapeInfoProto.getShapeType());
                }
                if (!shapeInfoProto.getExtraAttributes().isEmpty()) {
                    this.f45801x = shapeInfoProto.extraAttributes_;
                    onChanged();
                }
                if (shapeInfoProto.getBookPosition() != 0) {
                    setBookPosition(shapeInfoProto.getBookPosition());
                }
                if (!shapeInfoProto.getAnchor().isEmpty()) {
                    this.f45805z = shapeInfoProto.anchor_;
                    onChanged();
                }
                if (shapeInfoProto.getScribbleType() != 0) {
                    setScribbleType(shapeInfoProto.getScribbleType());
                }
                if (!shapeInfoProto.getMatrixValues().isEmpty()) {
                    this.f45777O = shapeInfoProto.matrixValues_;
                    onChanged();
                }
                if (!shapeInfoProto.getTextStyle().isEmpty()) {
                    this.f45778Q = shapeInfoProto.textStyle_;
                    onChanged();
                }
                if (!shapeInfoProto.getText().isEmpty()) {
                    this.f45779Z = shapeInfoProto.text_;
                    onChanged();
                }
                if (!shapeInfoProto.getPosition().isEmpty()) {
                    this.f45783k0 = shapeInfoProto.position_;
                    onChanged();
                }
                if (!shapeInfoProto.getLineStyle().isEmpty()) {
                    this.f45790q0 = shapeInfoProto.lineStyle_;
                    onChanged();
                }
                if (!shapeInfoProto.getRevisionId().isEmpty()) {
                    this.f45794t0 = shapeInfoProto.revisionId_;
                    onChanged();
                }
                if (!shapeInfoProto.getResource().isEmpty()) {
                    this.f45796u0 = shapeInfoProto.resource_;
                    onChanged();
                }
                if (shapeInfoProto.getStatus() != 0) {
                    setStatus(shapeInfoProto.getStatus());
                }
                if (!shapeInfoProto.getInfoRevisionId().isEmpty()) {
                    this.f45800w0 = shapeInfoProto.infoRevisionId_;
                    onChanged();
                }
                if (shapeInfoProto.getFillColor() != 0) {
                    setFillColor(shapeInfoProto.getFillColor());
                }
                if (!shapeInfoProto.getRichText().isEmpty()) {
                    this.f45804y0 = shapeInfoProto.richText_;
                    onChanged();
                }
                if (!shapeInfoProto.getPagePositionV2().isEmpty()) {
                    this.f45806z0 = shapeInfoProto.pagePositionV2_;
                    onChanged();
                }
                if (!shapeInfoProto.getPageUniqueIdV2().isEmpty()) {
                    this.f45775A0 = shapeInfoProto.pageUniqueIdV2_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) shapeInfoProto).unknownFields);
                onChanged();
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45780i = "";
                this.f45781j = "";
                this.f45785m = "";
                this.f45786n = "";
                this.f45792s = "";
                this.f45797v = "";
                this.f45801x = "";
                this.f45805z = "";
                this.f45777O = "";
                this.f45778Q = "";
                this.f45779Z = "";
                this.f45783k0 = "";
                this.f45790q0 = "";
                this.f45794t0 = "";
                this.f45796u0 = "";
                this.f45800w0 = "";
                this.f45804y0 = "";
                this.f45806z0 = "";
                this.f45775A0 = "";
                m35323h();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProto.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProto.access$5000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto$ShapeInfoProto r3 = (com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProto) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto$ShapeInfoProto r4 = (com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProto) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProto.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto$ShapeInfoProto$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto$ShapeInfoProto$a */
        /* loaded from: classes8.dex */
        public class C7772a extends AbstractParser<ShapeInfoProto> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public ShapeInfoProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ShapeInfoProto(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ ShapeInfoProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7774a c7774a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ShapeInfoProto getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ReaderShapeDocProto.f45772c;
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
            return ((((((((((((((((((((((((((((((((getUniqueId().equals(shapeInfoProto.getUniqueId())) && getObjectId().equals(shapeInfoProto.getObjectId())) && (getCreatedAt() > shapeInfoProto.getCreatedAt() ? 1 : (getCreatedAt() == shapeInfoProto.getCreatedAt() ? 0 : -1)) == 0) && (getUpdatedAt() > shapeInfoProto.getUpdatedAt() ? 1 : (getUpdatedAt() == shapeInfoProto.getUpdatedAt() ? 0 : -1)) == 0) && getSubPageUniqueId().equals(shapeInfoProto.getSubPageUniqueId())) && getAppId().equals(shapeInfoProto.getAppId())) && getPageOriginWidth() == shapeInfoProto.getPageOriginWidth()) && getPageOriginHeight() == shapeInfoProto.getPageOriginHeight()) && getColor() == shapeInfoProto.getColor()) && getPaintStyle() == shapeInfoProto.getPaintStyle()) && getCreateArgs().equals(shapeInfoProto.getCreateArgs())) && Float.floatToIntBits(getThickness()) == Float.floatToIntBits(shapeInfoProto.getThickness())) && getZorder() == shapeInfoProto.getZorder()) && getBoundingRect().equals(shapeInfoProto.getBoundingRect())) && getShapeType() == shapeInfoProto.getShapeType()) && getExtraAttributes().equals(shapeInfoProto.getExtraAttributes())) && getBookPosition() == shapeInfoProto.getBookPosition()) && getAnchor().equals(shapeInfoProto.getAnchor())) && getScribbleType() == shapeInfoProto.getScribbleType()) && getMatrixValues().equals(shapeInfoProto.getMatrixValues())) && getTextStyle().equals(shapeInfoProto.getTextStyle())) && getText().equals(shapeInfoProto.getText())) && getPosition().equals(shapeInfoProto.getPosition())) && getLineStyle().equals(shapeInfoProto.getLineStyle())) && getRevisionId().equals(shapeInfoProto.getRevisionId())) && getResource().equals(shapeInfoProto.getResource())) && getStatus() == shapeInfoProto.getStatus()) && getInfoRevisionId().equals(shapeInfoProto.getInfoRevisionId())) && getFillColor() == shapeInfoProto.getFillColor()) && getRichText().equals(shapeInfoProto.getRichText())) && getPagePositionV2().equals(shapeInfoProto.getPagePositionV2())) && getPageUniqueIdV2().equals(shapeInfoProto.getPageUniqueIdV2())) && this.unknownFields.equals(shapeInfoProto.unknownFields);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getAnchor() {
            Object obj = this.anchor_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.anchor_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getAnchorBytes() {
            Object obj = this.anchor_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.anchor_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getAppId() {
            Object obj = this.appId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getAppIdBytes() {
            Object obj = this.appId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public int getBookPosition() {
            return this.bookPosition_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getBoundingRect() {
            Object obj = this.boundingRect_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.boundingRect_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getBoundingRectBytes() {
            Object obj = this.boundingRect_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.boundingRect_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public int getColor() {
            return this.color_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getCreateArgs() {
            Object obj = this.createArgs_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.createArgs_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getCreateArgsBytes() {
            Object obj = this.createArgs_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.createArgs_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public long getCreatedAt() {
            return this.createdAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getExtraAttributes() {
            Object obj = this.extraAttributes_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.extraAttributes_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getExtraAttributesBytes() {
            Object obj = this.extraAttributes_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.extraAttributes_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public int getFillColor() {
            return this.fillColor_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getInfoRevisionId() {
            Object obj = this.infoRevisionId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.infoRevisionId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getInfoRevisionIdBytes() {
            Object obj = this.infoRevisionId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.infoRevisionId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getLineStyle() {
            Object obj = this.lineStyle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.lineStyle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getLineStyleBytes() {
            Object obj = this.lineStyle_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.lineStyle_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getMatrixValues() {
            Object obj = this.matrixValues_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.matrixValues_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getMatrixValuesBytes() {
            Object obj = this.matrixValues_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.matrixValues_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getObjectId() {
            Object obj = this.objectId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.objectId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getObjectIdBytes() {
            Object obj = this.objectId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.objectId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public int getPageOriginHeight() {
            return this.pageOriginHeight_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public int getPageOriginWidth() {
            return this.pageOriginWidth_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getPagePositionV2() {
            Object obj = this.pagePositionV2_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pagePositionV2_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getPagePositionV2Bytes() {
            Object obj = this.pagePositionV2_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pagePositionV2_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getPageUniqueIdV2() {
            Object obj = this.pageUniqueIdV2_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pageUniqueIdV2_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getPageUniqueIdV2Bytes() {
            Object obj = this.pageUniqueIdV2_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pageUniqueIdV2_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public int getPaintStyle() {
            return this.paintStyle_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ShapeInfoProto> getParserForType() {
            return PARSER;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getPosition() {
            Object obj = this.position_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.position_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getPositionBytes() {
            Object obj = this.position_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.position_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getResource() {
            Object obj = this.resource_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.resource_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getResourceBytes() {
            Object obj = this.resource_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.resource_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getRevisionId() {
            Object obj = this.revisionId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.revisionId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getRevisionIdBytes() {
            Object obj = this.revisionId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.revisionId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getRichText() {
            Object obj = this.richText_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.richText_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getRichTextBytes() {
            Object obj = this.richText_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.richText_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public int getScribbleType() {
            return this.scribbleType_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = getUniqueIdBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.uniqueId_);
            if (!getObjectIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.objectId_);
            }
            long j = this.createdAt_;
            if (j != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(3, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(4, j2);
            }
            if (!getSubPageUniqueIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.subPageUniqueId_);
            }
            if (!getAppIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(6, this.appId_);
            }
            int i2 = this.pageOriginWidth_;
            if (i2 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(7, i2);
            }
            int i3 = this.pageOriginHeight_;
            if (i3 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(8, i3);
            }
            int i4 = this.color_;
            if (i4 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(9, i4);
            }
            int i5 = this.paintStyle_;
            if (i5 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(10, i5);
            }
            if (!getCreateArgsBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(11, this.createArgs_);
            }
            float f = this.thickness_;
            if (f != 0.0f) {
                computeStringSize += CodedOutputStream.computeFloatSize(12, f);
            }
            int i6 = this.zorder_;
            if (i6 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(13, i6);
            }
            if (!getBoundingRectBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(14, this.boundingRect_);
            }
            int i7 = this.shapeType_;
            if (i7 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(15, i7);
            }
            if (!getExtraAttributesBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(16, this.extraAttributes_);
            }
            int i8 = this.bookPosition_;
            if (i8 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(17, i8);
            }
            if (!getAnchorBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(18, this.anchor_);
            }
            int i9 = this.scribbleType_;
            if (i9 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(19, i9);
            }
            if (!getMatrixValuesBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(20, this.matrixValues_);
            }
            if (!getTextStyleBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(21, this.textStyle_);
            }
            if (!getTextBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(22, this.text_);
            }
            if (!getPositionBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(23, this.position_);
            }
            if (!getLineStyleBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(24, this.lineStyle_);
            }
            if (!getRevisionIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(25, this.revisionId_);
            }
            if (!getResourceBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(26, this.resource_);
            }
            int i10 = this.status_;
            if (i10 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(27, i10);
            }
            if (!getInfoRevisionIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(28, this.infoRevisionId_);
            }
            int i11 = this.fillColor_;
            if (i11 != 0) {
                computeStringSize += CodedOutputStream.computeInt32Size(29, i11);
            }
            if (!getRichTextBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(30, this.richText_);
            }
            if (!getPagePositionV2Bytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(31, this.pagePositionV2_);
            }
            if (!getPageUniqueIdV2Bytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(32, this.pageUniqueIdV2_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public int getShapeType() {
            return this.shapeType_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getSubPageUniqueId() {
            Object obj = this.subPageUniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.subPageUniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getSubPageUniqueIdBytes() {
            Object obj = this.subPageUniqueId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.subPageUniqueId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getText() {
            Object obj = this.text_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.text_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getTextBytes() {
            Object obj = this.text_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.text_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getTextStyle() {
            Object obj = this.textStyle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.textStyle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public ByteString getTextStyleBytes() {
            Object obj = this.textStyle_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.textStyle_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public float getThickness() {
            return this.thickness_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
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

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public long getUpdatedAt() {
            return this.updatedAt_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoOrBuilder
        public int getZorder() {
            return this.zorder_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + getObjectId().hashCode()) * 37) + 3) * 53) + Internal.hashLong(getCreatedAt())) * 37) + 4) * 53) + Internal.hashLong(getUpdatedAt())) * 37) + 5) * 53) + getSubPageUniqueId().hashCode()) * 37) + 6) * 53) + getAppId().hashCode()) * 37) + 7) * 53) + getPageOriginWidth()) * 37) + 8) * 53) + getPageOriginHeight()) * 37) + 9) * 53) + getColor()) * 37) + 10) * 53) + getPaintStyle()) * 37) + 11) * 53) + getCreateArgs().hashCode()) * 37) + 12) * 53) + Float.floatToIntBits(getThickness())) * 37) + 13) * 53) + getZorder()) * 37) + 14) * 53) + getBoundingRect().hashCode()) * 37) + 15) * 53) + getShapeType()) * 37) + 16) * 53) + getExtraAttributes().hashCode()) * 37) + 17) * 53) + getBookPosition()) * 37) + 18) * 53) + getAnchor().hashCode()) * 37) + 19) * 53) + getScribbleType()) * 37) + 20) * 53) + getMatrixValues().hashCode()) * 37) + 21) * 53) + getTextStyle().hashCode()) * 37) + 22) * 53) + getText().hashCode()) * 37) + 23) * 53) + getPosition().hashCode()) * 37) + 24) * 53) + getLineStyle().hashCode()) * 37) + 25) * 53) + getRevisionId().hashCode()) * 37) + 26) * 53) + getResource().hashCode()) * 37) + 27) * 53) + getStatus()) * 37) + 28) * 53) + getInfoRevisionId().hashCode()) * 37) + 29) * 53) + getFillColor()) * 37) + 30) * 53) + getRichText().hashCode()) * 37) + 31) * 53) + getPagePositionV2().hashCode()) * 37) + 32) * 53) + getPageUniqueIdV2().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ReaderShapeDocProto.f45773d.ensureFieldAccessorsInitialized(ShapeInfoProto.class, Builder.class);
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
            if (!getObjectIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.objectId_);
            }
            long j = this.createdAt_;
            if (j != 0) {
                codedOutputStream.writeInt64(3, j);
            }
            long j2 = this.updatedAt_;
            if (j2 != 0) {
                codedOutputStream.writeInt64(4, j2);
            }
            if (!getSubPageUniqueIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.subPageUniqueId_);
            }
            if (!getAppIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.appId_);
            }
            int i = this.pageOriginWidth_;
            if (i != 0) {
                codedOutputStream.writeInt32(7, i);
            }
            int i2 = this.pageOriginHeight_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(8, i2);
            }
            int i3 = this.color_;
            if (i3 != 0) {
                codedOutputStream.writeInt32(9, i3);
            }
            int i4 = this.paintStyle_;
            if (i4 != 0) {
                codedOutputStream.writeInt32(10, i4);
            }
            if (!getCreateArgsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.createArgs_);
            }
            float f = this.thickness_;
            if (f != 0.0f) {
                codedOutputStream.writeFloat(12, f);
            }
            int i5 = this.zorder_;
            if (i5 != 0) {
                codedOutputStream.writeInt32(13, i5);
            }
            if (!getBoundingRectBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 14, this.boundingRect_);
            }
            int i6 = this.shapeType_;
            if (i6 != 0) {
                codedOutputStream.writeInt32(15, i6);
            }
            if (!getExtraAttributesBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 16, this.extraAttributes_);
            }
            int i7 = this.bookPosition_;
            if (i7 != 0) {
                codedOutputStream.writeInt32(17, i7);
            }
            if (!getAnchorBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 18, this.anchor_);
            }
            int i8 = this.scribbleType_;
            if (i8 != 0) {
                codedOutputStream.writeInt32(19, i8);
            }
            if (!getMatrixValuesBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 20, this.matrixValues_);
            }
            if (!getTextStyleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 21, this.textStyle_);
            }
            if (!getTextBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 22, this.text_);
            }
            if (!getPositionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 23, this.position_);
            }
            if (!getLineStyleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 24, this.lineStyle_);
            }
            if (!getRevisionIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 25, this.revisionId_);
            }
            if (!getResourceBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 26, this.resource_);
            }
            int i9 = this.status_;
            if (i9 != 0) {
                codedOutputStream.writeInt32(27, i9);
            }
            if (!getInfoRevisionIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 28, this.infoRevisionId_);
            }
            int i10 = this.fillColor_;
            if (i10 != 0) {
                codedOutputStream.writeInt32(29, i10);
            }
            if (!getRichTextBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 30, this.richText_);
            }
            if (!getPagePositionV2Bytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 31, this.pagePositionV2_);
            }
            if (!getPageUniqueIdV2Bytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 32, this.pageUniqueIdV2_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public /* synthetic */ ShapeInfoProto(GeneratedMessageV3.Builder builder, C7774a c7774a) {
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
            C7774a c7774a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7774a) : new Builder(c7774a).mergeFrom(this);
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
            this.objectId_ = "";
            this.createdAt_ = 0L;
            this.updatedAt_ = 0L;
            this.subPageUniqueId_ = "";
            this.appId_ = "";
            this.pageOriginWidth_ = 0;
            this.pageOriginHeight_ = 0;
            this.color_ = 0;
            this.paintStyle_ = 0;
            this.createArgs_ = "";
            this.thickness_ = 0.0f;
            this.zorder_ = 0;
            this.boundingRect_ = "";
            this.shapeType_ = 0;
            this.extraAttributes_ = "";
            this.bookPosition_ = 0;
            this.anchor_ = "";
            this.scribbleType_ = 0;
            this.matrixValues_ = "";
            this.textStyle_ = "";
            this.text_ = "";
            this.position_ = "";
            this.lineStyle_ = "";
            this.revisionId_ = "";
            this.resource_ = "";
            this.status_ = 0;
            this.infoRevisionId_ = "";
            this.fillColor_ = 0;
            this.richText_ = "";
            this.pagePositionV2_ = "";
            this.pageUniqueIdV2_ = "";
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
                                case 18:
                                    this.objectId_ = codedInputStream.readStringRequireUtf8();
                                case 24:
                                    this.createdAt_ = codedInputStream.readInt64();
                                case 32:
                                    this.updatedAt_ = codedInputStream.readInt64();
                                case 42:
                                    this.subPageUniqueId_ = codedInputStream.readStringRequireUtf8();
                                case 50:
                                    this.appId_ = codedInputStream.readStringRequireUtf8();
                                case 56:
                                    this.pageOriginWidth_ = codedInputStream.readInt32();
                                case 64:
                                    this.pageOriginHeight_ = codedInputStream.readInt32();
                                case 72:
                                    this.color_ = codedInputStream.readInt32();
                                case 80:
                                    this.paintStyle_ = codedInputStream.readInt32();
                                case 90:
                                    this.createArgs_ = codedInputStream.readStringRequireUtf8();
                                case 101:
                                    this.thickness_ = codedInputStream.readFloat();
                                case 104:
                                    this.zorder_ = codedInputStream.readInt32();
                                case 114:
                                    this.boundingRect_ = codedInputStream.readStringRequireUtf8();
                                case 120:
                                    this.shapeType_ = codedInputStream.readInt32();
                                case 130:
                                    this.extraAttributes_ = codedInputStream.readStringRequireUtf8();
                                case 136:
                                    this.bookPosition_ = codedInputStream.readInt32();
                                case 146:
                                    this.anchor_ = codedInputStream.readStringRequireUtf8();
                                case 152:
                                    this.scribbleType_ = codedInputStream.readInt32();
                                case 162:
                                    this.matrixValues_ = codedInputStream.readStringRequireUtf8();
                                case 170:
                                    this.textStyle_ = codedInputStream.readStringRequireUtf8();
                                case 178:
                                    this.text_ = codedInputStream.readStringRequireUtf8();
                                case 186:
                                    this.position_ = codedInputStream.readStringRequireUtf8();
                                case 194:
                                    this.lineStyle_ = codedInputStream.readStringRequireUtf8();
                                case 202:
                                    this.revisionId_ = codedInputStream.readStringRequireUtf8();
                                case 210:
                                    this.resource_ = codedInputStream.readStringRequireUtf8();
                                case 216:
                                    this.status_ = codedInputStream.readInt32();
                                case 226:
                                    this.infoRevisionId_ = codedInputStream.readStringRequireUtf8();
                                case 232:
                                    this.fillColor_ = codedInputStream.readInt32();
                                case DataBinderMapperImpl.f53038H3 /* 242 */:
                                    this.richText_ = codedInputStream.readStringRequireUtf8();
                                case 250:
                                    this.pagePositionV2_ = codedInputStream.readStringRequireUtf8();
                                case 258:
                                    this.pageUniqueIdV2_ = codedInputStream.readStringRequireUtf8();
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
        private static final Parser<ShapeInfoProtoList> PARSER = new C7773a();
        public static final int PROTO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<ShapeInfoProto> proto_;

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ShapeInfoProtoListOrBuilder {

            /* renamed from: i */
            public int f45807i;

            /* renamed from: j */
            public List<ShapeInfoProto> f45808j;

            /* renamed from: k */
            public RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> f45809k;

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C7774a c7774a) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ReaderShapeDocProto.f45770a;
            }

            public Builder addAllProto(Iterable<? extends ShapeInfoProto> iterable) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                if (repeatedFieldBuilderV3 == null) {
                    m35325h();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.f45808j);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addProto(ShapeInfoProto shapeInfoProto) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                if (repeatedFieldBuilderV3 == null) {
                    shapeInfoProto.getClass();
                    m35325h();
                    this.f45808j.add(shapeInfoProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(shapeInfoProto);
                }
                return this;
            }

            public ShapeInfoProto.Builder addProtoBuilder() {
                return m35326i().addBuilder(ShapeInfoProto.getDefaultInstance());
            }

            public Builder clearProto() {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45808j = Collections.emptyList();
                    this.f45807i &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ReaderShapeDocProto.f45770a;
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoListOrBuilder
            public ShapeInfoProto getProto(int i) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                return repeatedFieldBuilderV3 == null ? this.f45808j.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public ShapeInfoProto.Builder getProtoBuilder(int i) {
                return m35326i().getBuilder(i);
            }

            public List<ShapeInfoProto.Builder> getProtoBuilderList() {
                return m35326i().getBuilderList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoListOrBuilder
            public int getProtoCount() {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                return repeatedFieldBuilderV3 == null ? this.f45808j.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoListOrBuilder
            public List<ShapeInfoProto> getProtoList() {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f45808j) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoListOrBuilder
            public ShapeInfoProtoOrBuilder getProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                return repeatedFieldBuilderV3 == null ? this.f45808j.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoListOrBuilder
            public List<? extends ShapeInfoProtoOrBuilder> getProtoOrBuilderList() {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f45808j);
            }

            /* renamed from: h */
            public final void m35325h() {
                if ((this.f45807i & 1) != 1) {
                    this.f45808j = new ArrayList(this.f45808j);
                    this.f45807i |= 1;
                }
            }

            /* renamed from: i */
            public final RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> m35326i() {
                if (this.f45809k == null) {
                    this.f45809k = new RepeatedFieldBuilderV3<>(this.f45808j, (this.f45807i & 1) == 1, getParentForChildren(), isClean());
                    this.f45808j = null;
                }
                return this.f45809k;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ReaderShapeDocProto.f45771b.ensureFieldAccessorsInitialized(ShapeInfoProtoList.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* renamed from: j */
            public final void m35327j() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    m35326i();
                }
            }

            public Builder removeProto(int i) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                if (repeatedFieldBuilderV3 == null) {
                    m35325h();
                    this.f45808j.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Builder setProto(int i, ShapeInfoProto shapeInfoProto) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                if (repeatedFieldBuilderV3 == null) {
                    shapeInfoProto.getClass();
                    m35325h();
                    this.f45808j.set(i, shapeInfoProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, shapeInfoProto);
                }
                return this;
            }

            public /* synthetic */ Builder(C7774a c7774a) {
                this();
            }

            public Builder() {
                this.f45808j = Collections.emptyList();
                m35327j();
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
                ShapeInfoProtoList shapeInfoProtoList = new ShapeInfoProtoList(this, (C7774a) null);
                int i = this.f45807i;
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.f45808j = Collections.unmodifiableList(this.f45808j);
                        this.f45807i &= -2;
                    }
                    shapeInfoProtoList.proto_ = this.f45808j;
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
                return m35326i().addBuilder(i, ShapeInfoProto.getDefaultInstance());
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
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                if (repeatedFieldBuilderV3 == null) {
                    this.f45808j = Collections.emptyList();
                    this.f45807i &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.f45808j = Collections.emptyList();
                m35327j();
            }

            public Builder addProto(int i, ShapeInfoProto shapeInfoProto) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                if (repeatedFieldBuilderV3 == null) {
                    shapeInfoProto.getClass();
                    m35325h();
                    this.f45808j.add(i, shapeInfoProto);
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
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                if (repeatedFieldBuilderV3 == null) {
                    m35325h();
                    this.f45808j.set(i, builder.build());
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
                if (this.f45809k == null) {
                    if (!shapeInfoProtoList.proto_.isEmpty()) {
                        if (this.f45808j.isEmpty()) {
                            this.f45808j = shapeInfoProtoList.proto_;
                            this.f45807i &= -2;
                        } else {
                            m35325h();
                            this.f45808j.addAll(shapeInfoProtoList.proto_);
                        }
                        onChanged();
                    }
                } else if (!shapeInfoProtoList.proto_.isEmpty()) {
                    if (this.f45809k.isEmpty()) {
                        this.f45809k.dispose();
                        this.f45809k = null;
                        this.f45808j = shapeInfoProtoList.proto_;
                        this.f45807i &= -2;
                        this.f45809k = GeneratedMessageV3.alwaysUseFieldBuilders ? m35326i() : null;
                    } else {
                        this.f45809k.addAllMessages(shapeInfoProtoList.proto_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) shapeInfoProtoList).unknownFields);
                onChanged();
                return this;
            }

            public Builder addProto(ShapeInfoProto.Builder builder) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                if (repeatedFieldBuilderV3 == null) {
                    m35325h();
                    this.f45808j.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addProto(int i, ShapeInfoProto.Builder builder) {
                RepeatedFieldBuilderV3<ShapeInfoProto, ShapeInfoProto.Builder, ShapeInfoProtoOrBuilder> repeatedFieldBuilderV3 = this.f45809k;
                if (repeatedFieldBuilderV3 == null) {
                    m35325h();
                    this.f45808j.add(i, builder.build());
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
            public com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoList.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto$ShapeInfoProtoList r3 = (com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto$ShapeInfoProtoList r4 = (com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto$ShapeInfoProtoList$Builder");
            }
        }

        /* renamed from: com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto$ShapeInfoProtoList$a */
        /* loaded from: classes8.dex */
        public class C7773a extends AbstractParser<ShapeInfoProtoList> {
            @Override // com.google.protobuf.Parser
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public ShapeInfoProtoList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ShapeInfoProtoList(codedInputStream, extensionRegistryLite, null);
            }
        }

        public /* synthetic */ ShapeInfoProtoList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, C7774a c7774a) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ShapeInfoProtoList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ReaderShapeDocProto.f45770a;
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

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoListOrBuilder
        public ShapeInfoProto getProto(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoListOrBuilder
        public int getProtoCount() {
            return this.proto_.size();
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoListOrBuilder
        public List<ShapeInfoProto> getProtoList() {
            return this.proto_;
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoListOrBuilder
        public ShapeInfoProtoOrBuilder getProtoOrBuilder(int i) {
            return this.proto_.get(i);
        }

        @Override // com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto.ShapeInfoProtoListOrBuilder
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
            return ReaderShapeDocProto.f45771b.ensureFieldAccessorsInitialized(ShapeInfoProtoList.class, Builder.class);
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

        public /* synthetic */ ShapeInfoProtoList(GeneratedMessageV3.Builder builder, C7774a c7774a) {
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
            C7774a c7774a = null;
            return this == DEFAULT_INSTANCE ? new Builder(c7774a) : new Builder(c7774a).mergeFrom(this);
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
        String getAnchor();

        ByteString getAnchorBytes();

        String getAppId();

        ByteString getAppIdBytes();

        int getBookPosition();

        String getBoundingRect();

        ByteString getBoundingRectBytes();

        int getColor();

        String getCreateArgs();

        ByteString getCreateArgsBytes();

        long getCreatedAt();

        String getExtraAttributes();

        ByteString getExtraAttributesBytes();

        int getFillColor();

        String getInfoRevisionId();

        ByteString getInfoRevisionIdBytes();

        String getLineStyle();

        ByteString getLineStyleBytes();

        String getMatrixValues();

        ByteString getMatrixValuesBytes();

        String getObjectId();

        ByteString getObjectIdBytes();

        int getPageOriginHeight();

        int getPageOriginWidth();

        String getPagePositionV2();

        ByteString getPagePositionV2Bytes();

        String getPageUniqueIdV2();

        ByteString getPageUniqueIdV2Bytes();

        int getPaintStyle();

        String getPosition();

        ByteString getPositionBytes();

        String getResource();

        ByteString getResourceBytes();

        String getRevisionId();

        ByteString getRevisionIdBytes();

        String getRichText();

        ByteString getRichTextBytes();

        int getScribbleType();

        int getShapeType();

        int getStatus();

        String getSubPageUniqueId();

        ByteString getSubPageUniqueIdBytes();

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

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto$a */
    /* loaded from: classes8.dex */
    public class C7774a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = ReaderShapeDocProto.f45774e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0016ReaderShapeProto.proto\"4\n\u0012ShapeInfoProtoList\u0012\u001e\n\u0005proto\u0018\u0001 \u0003(\u000b2\u000f.ShapeInfoProto\"\u008c\u0005\n\u000eShapeInfoProto\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012\u0010\n\bobjectId\u0018\u0002 \u0001(\t\u0012\u0011\n\tcreatedAt\u0018\u0003 \u0001(\u0003\u0012\u0011\n\tupdatedAt\u0018\u0004 \u0001(\u0003\u0012\u0017\n\u000fsubPageUniqueId\u0018\u0005 \u0001(\t\u0012\r\n\u0005appId\u0018\u0006 \u0001(\t\u0012\u0017\n\u000fpageOriginWidth\u0018\u0007 \u0001(\u0005\u0012\u0018\n\u0010pageOriginHeight\u0018\b \u0001(\u0005\u0012\r\n\u0005color\u0018\t \u0001(\u0005\u0012\u0012\n\npaintStyle\u0018\n \u0001(\u0005\u0012\u0012\n\ncreateArgs\u0018\u000b \u0001(\t\u0012\u0011\n\tthickness\u0018\f \u0001(\u0002\u0012\u000e\n\u0006zorder\u0018\r \u0001(\u0005\u0012\u0014\n\fboundingRect\u0018\u000e \u0001(\t\u0012\u0011\n\tshapeType\u0018\u000f \u0001(\u0005\u0012\u0017\n\u000fextraAttributes\u0018\u0010 \u0001(\t\u0012\u0014\n\fbookPosition\u0018\u0011 \u0001(\u0005\u0012\u000e\n\u0006anchor\u0018\u0012 \u0001(\t\u0012\u0014\n\fscribbleType\u0018\u0013 \u0001(\u0005\u0012\u0014\n\fmatrixValues\u0018\u0014 \u0001(\t\u0012\u0011\n\ttextStyle\u0018\u0015 \u0001(\t\u0012\f\n\u0004text\u0018\u0016 \u0001(\t\u0012\u0010\n\bposition\u0018\u0017 \u0001(\t\u0012\u0011\n\tlineStyle\u0018\u0018 \u0001(\t\u0012\u0012\n\nrevisionId\u0018\u0019 \u0001(\t\u0012\u0010\n\bresource\u0018\u001a \u0001(\t\u0012\u000e\n\u0006status\u0018\u001b \u0001(\u0005\u0012\u0016\n\u000einfoRevisionId\u0018\u001c \u0001(\t\u0012\u0011\n\tfillColor\u0018\u001d \u0001(\u0005\u0012\u0010\n\brichText\u0018\u001e \u0001(\t\u0012\u0016\n\u000epagePositionV2\u0018\u001f \u0001(\t\u0012\u0016\n\u000epageUniqueIdV2\u0018  \u0001(\tB*\n(com.onyx.android.sdk.scribble.data.protob\u0006proto3"}, new Descriptors.FileDescriptor[0], new C7774a());
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f45770a = descriptor;
        f45771b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Proto"});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(1);
        f45772c = descriptor2;
        f45773d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"UniqueId", "ObjectId", "CreatedAt", "UpdatedAt", "SubPageUniqueId", "AppId", "PageOriginWidth", "PageOriginHeight", "Color", "PaintStyle", "CreateArgs", "Thickness", "Zorder", "BoundingRect", "ShapeType", "ExtraAttributes", "BookPosition", "Anchor", "ScribbleType", "MatrixValues", "TextStyle", "Text", "Position", "LineStyle", "RevisionId", "Resource", PersistedInstallation.f35952i, "InfoRevisionId", "FillColor", "RichText", "PagePositionV2", "PageUniqueIdV2"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f45774e;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
