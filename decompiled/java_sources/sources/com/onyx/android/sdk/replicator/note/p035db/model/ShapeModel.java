package com.onyx.android.sdk.replicator.note.p035db.model;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.MatrixValues;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.OptionsRepo;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeConnectionBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeExtraBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeSourceBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u0097\u00012\u00020\u0001:\u0002\u0097\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0090\u0001\u001a\u00030\u0091\u0001J\b\u0010\u0092\u0001\u001a\u00030\u0091\u0001J\u0013\u0010\u0093\u0001\u001a\u00030\u0094\u00012\t\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0004J\t\u0010\u0096\u0001\u001a\u00020\u0013H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000eR\u001c\u0010!\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0015\"\u0004\b#\u0010\u0017R\u001c\u0010$\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R\u001a\u0010'\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\f\"\u0004\b)\u0010\u000eR\"\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001c\u00100\u001a\u0004\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001c\u00106\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0015\"\u0004\b8\u0010\u0017R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001a\u0010?\u001a\u00020@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u001a\u0010E\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010\f\"\u0004\bG\u0010\u000eR\u001a\u0010H\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010\f\"\u0004\bJ\u0010\u000eR\u001c\u0010K\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010\u0015\"\u0004\bM\u0010\u0017R\u001a\u0010N\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010\f\"\u0004\bP\u0010\u000eR\u001c\u0010Q\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010\u0015\"\u0004\bS\u0010\u0017R\u001c\u0010T\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bU\u0010\u0015\"\u0004\bV\u0010\u0017R\u001c\u0010W\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bX\u0010\u0015\"\u0004\bY\u0010\u0017R\u001a\u0010Z\u001a\u00020@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b[\u0010B\"\u0004\b\\\u0010DR\u001a\u0010]\u001a\u00020@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u0010B\"\u0004\b_\u0010DR\u001c\u0010`\u001a\u0004\u0018\u00010aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\u001c\u0010f\u001a\u0004\u0018\u00010gX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bh\u0010i\"\u0004\bj\u0010kR\u001c\u0010l\u001a\u0004\u0018\u00010mX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bn\u0010o\"\u0004\bp\u0010qR\u001a\u0010r\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bs\u0010\f\"\u0004\bt\u0010\u000eR\u001a\u0010u\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bv\u0010\f\"\u0004\bw\u0010\u000eR\u001c\u0010x\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\by\u0010\u0015\"\u0004\bz\u0010\u0017R\u001a\u0010{\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b|\u0010\f\"\u0004\b}\u0010\u000eR#\u0010~\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010+X\u0086\u000e¢\u0006\u000f\n\u0000\u001a\u0004\b\u007f\u0010-\"\u0005\b\u0080\u0001\u0010/R\u001f\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0082\u0001\u0010\u0015\"\u0005\b\u0083\u0001\u0010\u0017R\"\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0086\u0001\u0010\u0087\u0001\"\u0006\b\u0088\u0001\u0010\u0089\u0001R\u001d\u0010\u008a\u0001\u001a\u00020@X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u008b\u0001\u0010B\"\u0005\b\u008c\u0001\u0010DR\u001d\u0010\u008d\u0001\u001a\u00020\nX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u008e\u0001\u0010\f\"\u0005\b\u008f\u0001\u0010\u000e¨\u0006\u0098\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "boundingRect", "Landroid/graphics/RectF;", "getBoundingRect", "()Landroid/graphics/RectF;", "setBoundingRect", "(Landroid/graphics/RectF;)V", "color", "", "getColor", "()I", "setColor", "(I)V", "coordType", "getCoordType", "setCoordType", CouchFieldKey.KEY_DOCUMENT_ID, "", "getDocumentUniqueId", "()Ljava/lang/String;", "setDocumentUniqueId", "(Ljava/lang/String;)V", "extraAttributes", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;", "getExtraAttributes", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;", "setExtraAttributes", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;)V", CouchFieldKey.KEY_FILL_COLOR, "getFillColor", "setFillColor", CouchFieldKey.KEY_GROUP_ID, "getGroupId", "setGroupId", CouchFieldKey.KEY_INFO_REVISION_ID, "getInfoRevisionId", "setInfoRevisionId", "layoutType", "getLayoutType", "setLayoutType", "linkIdList", "", "getLinkIdList", "()Ljava/util/List;", "setLinkIdList", "(Ljava/util/List;)V", "matrixValues", "Lcom/onyx/android/sdk/base/data/MatrixValues;", "getMatrixValues", "()Lcom/onyx/android/sdk/base/data/MatrixValues;", "setMatrixValues", "(Lcom/onyx/android/sdk/base/data/MatrixValues;)V", "objectId", "getObjectId", "setObjectId", "options", "Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "getOptions", "()Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "setOptions", "(Lcom/onyx/android/sdk/base/utils/OptionsRepo;)V", "orientation", "", "getOrientation", "()F", "setOrientation", "(F)V", "pageOriginHeight", "getPageOriginHeight", "setPageOriginHeight", "pageOriginWidth", "getPageOriginWidth", "setPageOriginWidth", CouchFieldKey.KEY_PAGE_ID, "getPageUniqueId", "setPageUniqueId", "pointSaveType", "getPointSaveType", "setPointSaveType", CouchFieldKey.KEY_RESOURCE_ID, "getResourceId", "setResourceId", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", "richText", "getRichText", "setRichText", "rotationPointXCoordinate", "getRotationPointXCoordinate", "setRotationPointXCoordinate", "rotationPointYCoordinate", "getRotationPointYCoordinate", "setRotationPointYCoordinate", CouchFieldKey.KEY_SHAPE_CONNECTION_BEAN, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;", "getShapeConnectionBean", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;", "setShapeConnectionBean", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;)V", "shapeCreateArgs", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", "getShapeCreateArgs", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", "setShapeCreateArgs", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V", "shapeLineStyle", "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "getShapeLineStyle", "()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "setShapeLineStyle", "(Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)V", "shapeType", "getShapeType", "setShapeType", "status", "getStatus", "setStatus", CouchFieldKey.KEY_SUB_PAGE_NAME, "getSubPageName", "setSubPageName", CouchFieldKey.KEY_SYNC_STATUS, "getSyncStatus", "setSyncStatus", CouchFieldKey.KEY_TAG_ID_LIST, "getTagIdList", "setTagIdList", "text", "getText", "setText", "textStyle", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "getTextStyle", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "setTextStyle", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V", "thickness", "getThickness", "setThickness", CouchFieldKey.KEY_ZORDER, "getZorder", "setZorder", "hasShapeConnectData", "", "isEnabled", "setShapeBoundingRect", "", "rect", "toString", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeModel extends BaseReplicatorModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private RectF boundingRect;
    private int color;

    @Nullable
    private ShapeExtraBean extraAttributes;
    private int fillColor;

    @Nullable
    private String groupId;

    @Nullable
    private String infoRevisionId;
    private int layoutType;

    @Nullable
    private List<String> linkIdList;

    @Nullable
    private MatrixValues matrixValues;

    @Nullable
    private String objectId;

    @Nullable
    private OptionsRepo options;
    private float orientation;
    private int pageOriginHeight;
    private int pageOriginWidth;

    @Nullable
    private String pageUniqueId;

    @Nullable
    private String resourceId;

    @Nullable
    private String revisionId;

    @Nullable
    private String richText;
    private float rotationPointXCoordinate;
    private float rotationPointYCoordinate;

    @Nullable
    private ShapeConnectionBean shapeConnectionBean;

    @Nullable
    private ShapeCreateArgs shapeCreateArgs;

    @Nullable
    private ShapeLineStyle shapeLineStyle;
    private int shapeType;
    private int status;

    @Nullable
    private String subPageName;
    private int syncStatus;

    @Nullable
    private List<String> tagIdList;

    @Nullable
    private String text;

    @Nullable
    private ShapeTextStyle textStyle;
    private float thickness;
    private int zorder;

    @NotNull
    private String documentUniqueId = "";
    private int coordType = 1;
    private int pointSaveType = 1;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel$Companion;", "", "()V", "newRevisionId", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String newRevisionId() {
            return UUIDUtils.INSTANCE.rawUUID();
        }

        public Companion() {
        }
    }

    @Nullable
    public final RectF getBoundingRect() {
        return this.boundingRect;
    }

    public final int getColor() {
        return this.color;
    }

    public final int getCoordType() {
        return this.coordType;
    }

    @NotNull
    public final String getDocumentUniqueId() {
        return this.documentUniqueId;
    }

    @Nullable
    public final ShapeExtraBean getExtraAttributes() {
        return this.extraAttributes;
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    @Nullable
    public final String getGroupId() {
        return this.groupId;
    }

    @Nullable
    public final String getInfoRevisionId() {
        return this.infoRevisionId;
    }

    public final int getLayoutType() {
        return this.layoutType;
    }

    @Nullable
    public final List<String> getLinkIdList() {
        return this.linkIdList;
    }

    @Nullable
    public final MatrixValues getMatrixValues() {
        return this.matrixValues;
    }

    @Nullable
    public final String getObjectId() {
        return this.objectId;
    }

    @Nullable
    public final OptionsRepo getOptions() {
        return this.options;
    }

    public final float getOrientation() {
        return this.orientation;
    }

    public final int getPageOriginHeight() {
        return this.pageOriginHeight;
    }

    public final int getPageOriginWidth() {
        return this.pageOriginWidth;
    }

    @Nullable
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    public final int getPointSaveType() {
        return this.pointSaveType;
    }

    @Nullable
    public final String getResourceId() {
        return this.resourceId;
    }

    @Nullable
    public final String getRevisionId() {
        return this.revisionId;
    }

    @Nullable
    public final String getRichText() {
        return this.richText;
    }

    public final float getRotationPointXCoordinate() {
        return this.rotationPointXCoordinate;
    }

    public final float getRotationPointYCoordinate() {
        return this.rotationPointYCoordinate;
    }

    @Nullable
    public final ShapeConnectionBean getShapeConnectionBean() {
        return this.shapeConnectionBean;
    }

    @Nullable
    public final ShapeCreateArgs getShapeCreateArgs() {
        return this.shapeCreateArgs;
    }

    @Nullable
    public final ShapeLineStyle getShapeLineStyle() {
        return this.shapeLineStyle;
    }

    public final int getShapeType() {
        return this.shapeType;
    }

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final String getSubPageName() {
        return this.subPageName;
    }

    public final int getSyncStatus() {
        return this.syncStatus;
    }

    @Nullable
    public final List<String> getTagIdList() {
        return this.tagIdList;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    @Nullable
    public final ShapeTextStyle getTextStyle() {
        return this.textStyle;
    }

    public final float getThickness() {
        return this.thickness;
    }

    public final int getZorder() {
        return this.zorder;
    }

    public final boolean hasShapeConnectData() {
        ShapeConnectionBean shapeConnectionBean = this.shapeConnectionBean;
        if (shapeConnectionBean == null) {
            return false;
        }
        if (shapeConnectionBean.getShapeReferenceBean() == null) {
            ShapeSourceBean shapeSrcBean = shapeConnectionBean.getShapeSrcBean();
            if (!CollectionKt.isNonBlank(CollectionKt.ensureMutableList(shapeSrcBean != null ? shapeSrcBean.getReferenceShapeBeanList() : null))) {
                return false;
            }
        }
        return true;
    }

    public final boolean isEnabled() {
        return this.status == 0;
    }

    public final void setBoundingRect(@Nullable RectF rectF) {
        this.boundingRect = rectF;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setCoordType(int i) {
        this.coordType = i;
    }

    public final void setDocumentUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentUniqueId = str;
    }

    public final void setExtraAttributes(@Nullable ShapeExtraBean shapeExtraBean) {
        this.extraAttributes = shapeExtraBean;
    }

    public final void setFillColor(int i) {
        this.fillColor = i;
    }

    public final void setGroupId(@Nullable String str) {
        this.groupId = str;
    }

    public final void setInfoRevisionId(@Nullable String str) {
        this.infoRevisionId = str;
    }

    public final void setLayoutType(int i) {
        this.layoutType = i;
    }

    public final void setLinkIdList(@Nullable List<String> list) {
        this.linkIdList = list;
    }

    public final void setMatrixValues(@Nullable MatrixValues matrixValues) {
        this.matrixValues = matrixValues;
    }

    public final void setObjectId(@Nullable String str) {
        this.objectId = str;
    }

    public final void setOptions(@Nullable OptionsRepo optionsRepo) {
        this.options = optionsRepo;
    }

    public final void setOrientation(float f) {
        this.orientation = f;
    }

    public final void setPageOriginHeight(int i) {
        this.pageOriginHeight = i;
    }

    public final void setPageOriginWidth(int i) {
        this.pageOriginWidth = i;
    }

    public final void setPageUniqueId(@Nullable String str) {
        this.pageUniqueId = str;
    }

    public final void setPointSaveType(int i) {
        this.pointSaveType = i;
    }

    public final void setResourceId(@Nullable String str) {
        this.resourceId = str;
    }

    public final void setRevisionId(@Nullable String str) {
        this.revisionId = str;
    }

    public final void setRichText(@Nullable String str) {
        this.richText = str;
    }

    public final void setRotationPointXCoordinate(float f) {
        this.rotationPointXCoordinate = f;
    }

    public final void setRotationPointYCoordinate(float f) {
        this.rotationPointYCoordinate = f;
    }

    public final void setShapeBoundingRect(@Nullable RectF rect) {
        this.boundingRect = rect;
    }

    public final void setShapeConnectionBean(@Nullable ShapeConnectionBean shapeConnectionBean) {
        this.shapeConnectionBean = shapeConnectionBean;
    }

    public final void setShapeCreateArgs(@Nullable ShapeCreateArgs shapeCreateArgs) {
        this.shapeCreateArgs = shapeCreateArgs;
    }

    public final void setShapeLineStyle(@Nullable ShapeLineStyle shapeLineStyle) {
        this.shapeLineStyle = shapeLineStyle;
    }

    public final void setShapeType(int i) {
        this.shapeType = i;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setSubPageName(@Nullable String str) {
        this.subPageName = str;
    }

    public final void setSyncStatus(int i) {
        this.syncStatus = i;
    }

    public final void setTagIdList(@Nullable List<String> list) {
        this.tagIdList = list;
    }

    public final void setText(@Nullable String str) {
        this.text = str;
    }

    public final void setTextStyle(@Nullable ShapeTextStyle shapeTextStyle) {
        this.textStyle = shapeTextStyle;
    }

    public final void setThickness(float f) {
        this.thickness = f;
    }

    public final void setZorder(int i) {
        this.zorder = i;
    }

    @NotNull
    public String toString() {
        return "documentUniqueId:" + this.documentUniqueId + ",shapeUniqueId:" + getUniqueId() + ",type:" + this.shapeType + ",status:" + this.status;
    }
}
