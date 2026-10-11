package com.onyx.android.sdk.replicator.note.p035db.model;

import android.graphics.RectF;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.data.common.data.template.SpaceArgs;
import com.onyx.android.sdk.data.common.data.template.TemplateArgs;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.genericshape.FillAttr;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.GeoLayoutChildParams;
import com.onyx.android.sdk.genericshape.GeoLayoutMargin;
import com.onyx.android.sdk.genericshape.GeoLayoutMarginGeometry;
import com.onyx.android.sdk.genericshape.PageMargins;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.genericshape.StrokeAttr;
import com.onyx.android.sdk.replicator.C7594R;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.galaxy.note.message.data.MessageConst;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 O2\u00020\u0001:\u0001OB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010G\u001a\u00020\u0004H\u0007J\b\u0010H\u001a\u00020IH\u0007J\b\u0010J\u001a\u00020IH\u0007J\b\u0010K\u001a\u00020IH\u0007J\u0006\u0010L\u001a\u00020MJ\b\u0010N\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R \u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001a\u0010$\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R\u001a\u0010'\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0015\"\u0004\b)\u0010\u0017R\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001e\u00100\u001a\u0002018\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001a\u00106\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0006\"\u0004\b8\u0010\bR \u00109\u001a\b\u0012\u0004\u0012\u00020;0:X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\u001b\"\u0004\b=\u0010\u001dR\u001a\u0010>\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u0006\"\u0004\b@\u0010\bR\u001a\u0010A\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010\u0015\"\u0004\bC\u0010\u0017R\u001a\u0010D\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010\u0015\"\u0004\bF\u0010\u0017¨\u0006P"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", CouchFieldKey.KEY_CATEGORY_ID, "", "getCategoryId", "()Ljava/lang/String;", "setCategoryId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_CONTENT_PAGE_ID, "getContentPageId", "setContentPageId", CouchFieldKey.KEY_ORDER_INDEX, "", "getOrderIndex", "()F", "setOrderIndex", "(F)V", "orientation", "", "getOrientation", "()I", "setOrientation", "(I)V", "resourceIdList", "", "getResourceIdList", "()Ljava/util/List;", "setResourceIdList", "(Ljava/util/List;)V", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", CouchFieldKey.KEY_SIZE_FORMAT, "getSizeFormat", "setSizeFormat", "source", "getSource", "setSource", "status", "getStatus", "setStatus", "templateArgs", "Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;", "getTemplateArgs", "()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;", "setTemplateArgs", "(Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;)V", "templateResourceWrapper", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;", "getTemplateResourceWrapper", "()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;", "setTemplateResourceWrapper", "(Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;)V", "title", "getTitle", "setTitle", MessageConst.KEY_TITLE_LIST, "", "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;", "getTitleList", "setTitleList", "titleResName", "getTitleResName", "setTitleResName", "type", "getType", "setType", "version", "getVersion", "setVersion", "getLocalTitle", "isLandscape", "", "isOfficialSource", "isPortrait", "resetRevisionId", "", "toString", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTemplateModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/TemplateModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,220:1\n1#2:221\n*E\n"})
/* loaded from: classes8.dex */
public final class TemplateModel extends BaseReplicatorModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int source;
    private int status;

    @Nullable
    private TemplateArgs templateArgs;

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    private transient TemplateResourceWrapper templateResourceWrapper;

    @NotNull
    private List<TitleModel> titleList;
    private int version;

    @NotNull
    private String title = "";

    @NotNull
    private String titleResName = "";
    private int orientation = Orientation.PORTRAIT.getValue();

    @NotNull
    private String sizeFormat = "A4";
    private int type = -1;

    @NotNull
    private List<String> resourceIdList = new ArrayList();

    @NotNull
    private String categoryId = "";

    @NotNull
    private String contentPageId = "";
    private float orderIndex = -1.0f;

    @NotNull
    private String revisionId = "";

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u001a\u0010\t\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0007\u001a\u00020\bJ\"\u0010\f\u001a\u0004\u0018\u00010\u000b*\u00020\r2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0007\u001a\u00020\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;", "", "()V", "updateMarginTemplate", "", "geoLayoutMargin", "Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;", "isThumbnail", "", "updateTemplateFromStandard", "geoLayout", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "loadGeoLayoutFromTemplateModel", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nTemplateModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,220:1\n1855#2:221\n1855#2,2:222\n1856#2:224\n*S KotlinDebug\n*F\n+ 1 TemplateModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion\n*L\n150#1:221\n151#1:222,2\n150#1:224\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ GeoLayout loadGeoLayoutFromTemplateModel$default(Companion companion, TemplateModel templateModel, GeoLayout geoLayout, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                geoLayout = null;
            }
            if ((i & 2) != 0) {
                z = false;
            }
            return companion.loadGeoLayoutFromTemplateModel(templateModel, geoLayout, z);
        }

        public static /* synthetic */ void updateMarginTemplate$default(Companion companion, GeoLayoutMargin geoLayoutMargin, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            companion.updateMarginTemplate(geoLayoutMargin, z);
        }

        public static /* synthetic */ void updateTemplateFromStandard$default(Companion companion, GeoLayout geoLayout, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            companion.updateTemplateFromStandard(geoLayout, z);
        }

        @Nullable
        public final GeoLayout loadGeoLayoutFromTemplateModel(@NotNull TemplateModel templateModel, @Nullable GeoLayout geoLayout, boolean z) {
            GeoLayout createResVectorGeoLayout;
            SpaceArgs spaceArgs;
            SpaceArgs spaceArgs2;
            RectF pagePaddingRect;
            SpaceArgs spaceArgs3;
            SpaceArgs spaceArgs4;
            SpaceArgs spaceArgs5;
            SpaceArgs spaceArgs6;
            boolean endsWith;
            boolean endsWith2;
            Intrinsics.checkNotNullParameter(templateModel, "<this>");
            if (geoLayout != null) {
                return geoLayout;
            }
            String curResName = templateModel.getTemplateResourceWrapper().getCurResName();
            String curRelativePath = templateModel.getTemplateResourceWrapper().getCurRelativePath();
            String curResourceType = templateModel.getTemplateResourceWrapper().getCurResourceType();
            int hashCode = curResourceType.hashCode();
            Float f = null;
            if (hashCode == -820387517) {
                if (curResourceType.equals("vector")) {
                    createResVectorGeoLayout = GeoLayout.INSTANCE.createResVectorGeoLayout(curResName);
                }
                createResVectorGeoLayout = null;
            } else if (hashCode != -577741570) {
                if (hashCode == 2124767295 && curResourceType.equals(TemplateResourceConstant.TYPE_DYNAMIC)) {
                    if (CoverPaperExtKt.isCloud(templateModel)) {
                        endsWith2 = StringsKt__StringsJVMKt.endsWith(curRelativePath, "json", true);
                        if (endsWith2) {
                            createResVectorGeoLayout = GeoLayout.INSTANCE.loadDynamicLayoutFromFile(curRelativePath);
                        }
                    }
                    createResVectorGeoLayout = GeoLayout.INSTANCE.loadDynamicLayoutFromRes(curResName);
                }
                createResVectorGeoLayout = null;
            } else {
                if (curResourceType.equals(TemplateResourceConstant.TYPE_PICTURE)) {
                    if (CoverPaperExtKt.isCloud(templateModel)) {
                        endsWith = StringsKt__StringsJVMKt.endsWith(curRelativePath, FileTypeConstant.SVG, true);
                        if (endsWith) {
                            createResVectorGeoLayout = GeoLayout.INSTANCE.createVectorGeoLayout(curRelativePath);
                        }
                    }
                    createResVectorGeoLayout = GeoLayout.INSTANCE.createImageGeoLayout(curRelativePath);
                }
                createResVectorGeoLayout = null;
            }
            if (createResVectorGeoLayout == null) {
                return null;
            }
            Properties properties = createResVectorGeoLayout.getProperties();
            ResManager resManager = ResManager.INSTANCE;
            properties.setRadius(resManager.getDimension(C7594R.dimen.dynamic_radius));
            if (templateModel.getTemplateResourceWrapper().getCurSpacing() > 0.0f) {
                f = Float.valueOf(z ? templateModel.getTemplateResourceWrapper().getCurSpacing() / resManager.getFloat(C7373R.dimen.template_thumbnail_ratio) : templateModel.getTemplateResourceWrapper().getCurSpacing());
            } else if (z) {
                TemplateArgs templateArgs = templateModel.getTemplateArgs();
                if (templateArgs != null && (spaceArgs2 = templateArgs.getSpaceArgs()) != null) {
                    f = Float.valueOf(spaceArgs2.loadSpaceValuePxThumbnail());
                }
            } else {
                TemplateArgs templateArgs2 = templateModel.getTemplateArgs();
                if (templateArgs2 != null && (spaceArgs = templateArgs2.getSpaceArgs()) != null) {
                    f = Float.valueOf(spaceArgs.loadSpaceValuePx());
                }
            }
            PageMargins pageMargins = createResVectorGeoLayout.getProperties().getPageMargins();
            if (pageMargins != null) {
                pageMargins.setSpacing(f != null ? f.floatValue() : 0.0f);
            }
            DimenUtils dimenUtils = DimenUtils.INSTANCE;
            TemplateArgs templateArgs3 = templateModel.getTemplateArgs();
            float dp2PxFloat = dimenUtils.dp2PxFloat((templateArgs3 == null || (spaceArgs6 = templateArgs3.getSpaceArgs()) == null) ? 0.0f : spaceArgs6.getPagePaddingLeft());
            TemplateArgs templateArgs4 = templateModel.getTemplateArgs();
            float dp2PxFloat2 = dimenUtils.dp2PxFloat((templateArgs4 == null || (spaceArgs5 = templateArgs4.getSpaceArgs()) == null) ? 0.0f : spaceArgs5.getPagePaddingRight());
            TemplateArgs templateArgs5 = templateModel.getTemplateArgs();
            float dp2PxFloat3 = dimenUtils.dp2PxFloat((templateArgs5 == null || (spaceArgs4 = templateArgs5.getSpaceArgs()) == null) ? 0.0f : spaceArgs4.getPagePaddingTop());
            TemplateArgs templateArgs6 = templateModel.getTemplateArgs();
            float dp2PxFloat4 = dimenUtils.dp2PxFloat((templateArgs6 == null || (spaceArgs3 = templateArgs6.getSpaceArgs()) == null) ? 0.0f : spaceArgs3.getPagePaddingBottom());
            if (z) {
                if (dp2PxFloat > 0.0f) {
                    dp2PxFloat /= resManager.getFloat(C7373R.dimen.template_thumbnail_ratio);
                }
                if (dp2PxFloat2 > 0.0f) {
                    dp2PxFloat2 /= resManager.getFloat(C7373R.dimen.template_thumbnail_ratio);
                }
                if (dp2PxFloat3 > 0.0f) {
                    dp2PxFloat3 /= resManager.getFloat(C7373R.dimen.template_thumbnail_ratio);
                }
                if (dp2PxFloat4 > 0.0f) {
                    dp2PxFloat4 /= resManager.getFloat(C7373R.dimen.template_thumbnail_ratio);
                }
            }
            PageMargins pageMargins2 = createResVectorGeoLayout.getProperties().getPageMargins();
            if (pageMargins2 != null && (pagePaddingRect = pageMargins2.getPagePaddingRect()) != null) {
                pagePaddingRect.set(dp2PxFloat, dp2PxFloat3, dp2PxFloat2, dp2PxFloat4);
            }
            Properties properties2 = createResVectorGeoLayout.getProperties();
            FillAttr fillAttr = new FillAttr();
            fillAttr.setColor(templateModel.getTemplateResourceWrapper().getCurFillColor());
            properties2.setFillAttr(fillAttr);
            Properties properties3 = createResVectorGeoLayout.getProperties();
            StrokeAttr strokeAttr = new StrokeAttr();
            strokeAttr.setColor(templateModel.getTemplateResourceWrapper().getCurStrokeColor());
            strokeAttr.setWidth(resManager.getDimension(C7594R.dimen.dynamic_line_width));
            strokeAttr.setColorTransformMode(templateModel.getTemplateResourceWrapper().getCurColorTransformMode());
            properties3.setStrokeAttr(strokeAttr);
            return createResVectorGeoLayout;
        }

        public final void updateMarginTemplate(@NotNull GeoLayoutMargin geoLayoutMargin, boolean isThumbnail) {
            Intrinsics.checkNotNullParameter(geoLayoutMargin, "geoLayoutMargin");
            Iterator<T> it2 = geoLayoutMargin.getGeometries().iterator();
            while (it2.hasNext()) {
                Iterator<T> it3 = ((GeoLayoutMarginGeometry) it2.next()).getGeometries().iterator();
                while (it3.hasNext()) {
                    TemplateModel.INSTANCE.updateTemplateFromStandard(((GeoLayoutChildParams) it3.next()).getGeoLayout(), isThumbnail);
                }
            }
        }

        public final void updateTemplateFromStandard(@Nullable GeoLayout geoLayout, boolean isThumbnail) {
            float dimension;
            float dimension2;
            float f;
            float dimension3;
            if (geoLayout == null) {
                return;
            }
            PageMargins pageMargins = geoLayout.getProperties().getPageMargins();
            if (pageMargins != null) {
                DimenUtils dimenUtils = DimenUtils.INSTANCE;
                float dp2PxFloat = dimenUtils.dp2PxFloat(pageMargins.getPaddingLeft());
                float dp2PxFloat2 = dimenUtils.dp2PxFloat(pageMargins.getPaddingRight());
                float dp2PxFloat3 = dimenUtils.dp2PxFloat(pageMargins.getPaddingTop());
                float dp2PxFloat4 = dimenUtils.dp2PxFloat(pageMargins.getPaddingBottom());
                Properties properties = geoLayout.getProperties();
                if (isThumbnail) {
                    ResManager resManager = ResManager.INSTANCE;
                    dimension3 = resManager.getDimension(C7594R.dimen.dynamic_radius) * resManager.getFloat(C7373R.dimen.template_thumbnail_ratio);
                } else {
                    dimension3 = ResManager.INSTANCE.getDimension(C7594R.dimen.dynamic_radius);
                }
                properties.setRadius(dimension3);
                if (isThumbnail) {
                    if (dp2PxFloat > 0.0f) {
                        dp2PxFloat /= ResManager.INSTANCE.getFloat(C7373R.dimen.template_thumbnail_ratio);
                    }
                    if (dp2PxFloat2 > 0.0f) {
                        dp2PxFloat2 /= ResManager.INSTANCE.getFloat(C7373R.dimen.template_thumbnail_ratio);
                    }
                    if (dp2PxFloat3 > 0.0f) {
                        dp2PxFloat3 /= ResManager.INSTANCE.getFloat(C7373R.dimen.template_thumbnail_ratio);
                    }
                    if (dp2PxFloat4 > 0.0f) {
                        dp2PxFloat4 /= ResManager.INSTANCE.getFloat(C7373R.dimen.template_thumbnail_ratio);
                    }
                }
                pageMargins.getPagePaddingRect().set(dp2PxFloat + dimenUtils.dp2PxActual(pageMargins.getPagePaddingRect().left), dp2PxFloat3 + dimenUtils.dp2PxActual(pageMargins.getPagePaddingRect().top), dp2PxFloat2 + dimenUtils.dp2PxActual(pageMargins.getPagePaddingRect().right), dp2PxFloat4 + dimenUtils.dp2PxActual(pageMargins.getPagePaddingRect().bottom));
            }
            StrokeAttr strokeAttr = geoLayout.getProperties().getStrokeAttr();
            if (strokeAttr != null) {
                if (Intrinsics.areEqual(geoLayout.getProperties().getLayoutType(), GeoConstant.LayoutDivider)) {
                    if (!isThumbnail) {
                        dimension = ResManager.INSTANCE.getDimension(C7594R.dimen.dynamic_divider_width);
                        strokeAttr.setWidth(dimension);
                    }
                    ResManager resManager2 = ResManager.INSTANCE;
                    dimension2 = resManager2.getDimension(C7594R.dimen.dynamic_divider_width);
                    f = resManager2.getFloat(C7373R.dimen.template_thumbnail_ratio);
                    dimension = dimension2 * f;
                    strokeAttr.setWidth(dimension);
                }
                if (!isThumbnail) {
                    dimension = ResManager.INSTANCE.getDimension(C7594R.dimen.dynamic_line_width);
                    strokeAttr.setWidth(dimension);
                }
                ResManager resManager3 = ResManager.INSTANCE;
                dimension2 = resManager3.getDimension(C7594R.dimen.dynamic_line_width);
                f = resManager3.getFloat(C7373R.dimen.template_thumbnail_ratio);
                dimension = dimension2 * f;
                strokeAttr.setWidth(dimension);
            }
        }

        public Companion() {
        }
    }

    public TemplateModel() {
        List<TitleModel> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.titleList = emptyList;
        TemplateResourceWrapper templateResourceWrapper = new TemplateResourceWrapper();
        templateResourceWrapper.setTemplateUniqueId(TemplateResourceWrapper.INSTANCE.generateResourceId(this.categoryId, getUniqueId()));
        this.templateResourceWrapper = templateResourceWrapper;
    }

    @NotNull
    public final String getCategoryId() {
        return this.categoryId;
    }

    @NotNull
    public final String getContentPageId() {
        return this.contentPageId;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getLocalTitle() {
        return TitleModelKt.getLocalTitle(this.titleList, this.title);
    }

    public final float getOrderIndex() {
        return this.orderIndex;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final List<String> getResourceIdList() {
        return this.resourceIdList;
    }

    @NotNull
    public final String getRevisionId() {
        return this.revisionId;
    }

    @NotNull
    public final String getSizeFormat() {
        return this.sizeFormat;
    }

    public final int getSource() {
        return this.source;
    }

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final TemplateArgs getTemplateArgs() {
        return this.templateArgs;
    }

    @NotNull
    public final TemplateResourceWrapper getTemplateResourceWrapper() {
        return this.templateResourceWrapper;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final List<TitleModel> getTitleList() {
        return this.titleList;
    }

    @NotNull
    public final String getTitleResName() {
        return this.titleResName;
    }

    public final int getType() {
        return this.type;
    }

    public final int getVersion() {
        return this.version;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isLandscape() {
        return Orientation.INSTANCE.isLandscape(this.orientation);
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isOfficialSource() {
        int i = this.source;
        return i == 0 || i == 2;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isPortrait() {
        return Orientation.INSTANCE.isPortrait(this.orientation);
    }

    public final void resetRevisionId() {
        this.revisionId = "";
    }

    public final void setCategoryId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.categoryId = str;
    }

    public final void setContentPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentPageId = str;
    }

    public final void setOrderIndex(float f) {
        this.orderIndex = f;
    }

    public final void setOrientation(int i) {
        this.orientation = i;
    }

    public final void setResourceIdList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.resourceIdList = list;
    }

    public final void setRevisionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.revisionId = str;
    }

    public final void setSizeFormat(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sizeFormat = str;
    }

    public final void setSource(int i) {
        this.source = i;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTemplateArgs(@Nullable TemplateArgs templateArgs) {
        this.templateArgs = templateArgs;
    }

    public final void setTemplateResourceWrapper(@NotNull TemplateResourceWrapper templateResourceWrapper) {
        Intrinsics.checkNotNullParameter(templateResourceWrapper, "<set-?>");
        this.templateResourceWrapper = templateResourceWrapper;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setTitleList(@NotNull List<TitleModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.titleList = list;
    }

    public final void setTitleResName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.titleResName = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("uniqueId:");
        sb.append(getUniqueId());
        sb.append(", orientation:");
        sb.append(this.orientation);
        sb.append(", sizeFormat:");
        sb.append(this.sizeFormat);
        sb.append(", templateResourceWrapper:");
        sb.append(this.templateResourceWrapper);
        sb.append(" spaceArgs:");
        TemplateArgs templateArgs = this.templateArgs;
        sb.append(templateArgs != null ? templateArgs.getSpaceArgs() : null);
        return sb.toString();
    }
}
