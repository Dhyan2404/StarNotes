package com.onyx.android.sdk.geometry.boxmanager;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.FloatKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.p018rx.RxScrollerArgs;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.boxmanager.DraftBoxManager;
import com.onyx.android.sdk.geometry.data.BoxCellInfo;
import com.onyx.android.sdk.geometry.data.BoxExtraInfo;
import com.onyx.android.sdk.geometry.data.BoxFlingArgs;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.BoxManagerViewArgs;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010d\u001a\u000e\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020\u00070_¢\u0006\u0004\bu\u0010vJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\tH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0002H\u0002J\u0016\u0010\u0011\u001a\u00020\t2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fH\u0002J\u0018\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0018\u0010\u001a\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\b\u0010\u001b\u001a\u00020\tH\u0002JP\u0010%\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u000526\u0010$\u001a2\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(!\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020#0\u001eH\u0002J\u0016\u0010'\u001a\u00020\t2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fH\u0016J\u0016\u0010(\u001a\u00020\t2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fH\u0016J\u0010\u0010+\u001a\u00020\u00122\u0006\u0010*\u001a\u00020)H\u0016J\u0010\u0010-\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u0005H\u0016J\u0018\u00101\u001a\u00020\t2\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020#H\u0016J \u00105\u001a\u00020#2\u0006\u00102\u001a\u00020)2\u0006\u00103\u001a\u00020\u00172\u0006\u00104\u001a\u00020\u0017H\u0016J\u0018\u00105\u001a\u00020\u00012\u0006\u00106\u001a\u00020\u00172\u0006\u00107\u001a\u00020\u0017H\u0016J\u0018\u0010:\u001a\u00020\u00012\u0006\u00108\u001a\u00020\u00172\u0006\u00109\u001a\u00020\u0017H\u0016J\u000e\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fH\u0016J\u0016\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f2\u0006\u0010=\u001a\u00020<H\u0016J\u001c\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fH\u0016J\u0010\u0010A\u001a\u00020\t2\u0006\u0010@\u001a\u00020\u0007H\u0016J\u0016\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f2\u0006\u0010B\u001a\u00020\u0005H\u0016J\u000e\u0010D\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fH\u0016J\u000e\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fH\u0016J\b\u0010G\u001a\u00020\u0012H\u0016J\u0010\u0010H\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0010\u0010I\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\b\u0010J\u001a\u00020\u0017H\u0016J\u0010\u0010N\u001a\u00020M2\u0006\u0010L\u001a\u00020KH\u0016J\u0010\u0010Q\u001a\u00020O2\u0006\u0010P\u001a\u00020OH\u0016J\u001e\u0010U\u001a\u00020<2\u0006\u0010R\u001a\u00020O2\f\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00170SH\u0016J\b\u0010V\u001a\u00020#H\u0016J\b\u0010W\u001a\u00020\tH\u0016J\u000e\u0010X\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fH\u0016J\u001e\u0010Y\u001a\u00020\t2\u0006\u0010R\u001a\u00020O2\f\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00170SH\u0016J\u0010\u0010[\u001a\u00020\t2\u0006\u0010Z\u001a\u00020)H\u0016J \u0010^\u001a\u00020\u00172\u0006\u0010,\u001a\u00020\u00052\u0006\u0010\\\u001a\u00020\u00172\u0006\u0010]\u001a\u00020\u0017H\u0016R#\u0010d\u001a\u000e\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020\u00070_8\u0006¢\u0006\f\n\u0004\b\u0016\u0010a\u001a\u0004\bb\u0010cR#\u0010i\u001a\u000e\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020\u00070e8\u0006¢\u0006\f\n\u0004\b\u0019\u0010f\u001a\u0004\bg\u0010hR\u0014\u0010k\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010jR\u001a\u0010n\u001a\b\u0012\u0004\u0012\u00020\u00070l8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010mR$\u0010t\u001a\u00020\u00052\u0006\u0010o\u001a\u00020\u00058V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bp\u0010q\"\u0004\br\u0010s¨\u0006w"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "", "e", "d", "Landroid/graphics/RectF;", "j", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "", C4921e.f26528e, "s", GoogleApiAvailabilityLight.f29016b, "number", "m", "", "list", "i", "", "rowIndex", "columnIndex", C6998g.f39679a, C4921e.f26537n, "", "scale", "l", "q", "t", "resultBox", "lastVisibleRegion", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", Keywords.FUNC_CURRENT_STRING, Keywords.FUNC_LAST_STRING, "", "accept", "r", "boxList", "setData", "updateDataAndApplyScale", "", "id", "indexOf", "viewport", "setViewport", "Lcom/onyx/android/sdk/base/data/Size;", "size", "calculate", "updateViewportSize", "boxId", "offsetX", "offsetY", "scrollTo", "newX", "newY", "dx", "dy", "scrollBy", "visibleBoxes", "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;", "viewArgs", "collectVisibleBoxList", "convertToVisibleBoxList", "box", "updateToVisibleBox", "documentRectF", "collectIntersectsVisibleBoxList", "updateBoxInfo", "collectNextViewportVisibleBoxList", "collectPrevViewportVisibleBoxList", "pageCount", "setScale", "initScale", "currentDisplayScale", "Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;", "args", "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;", "createRxScrollerArgs", "Landroid/graphics/Matrix;", "matrix", "loadReboundMatrix", "gestureDeltaMatrix", "Lorg/apache/commons/lang3/Range;", "displayScaleRange", "toBoxManagerViewArgs", "isEnabledContinuousScroll", "alignCenter", "copyBoxList", "applyMatrix", CouchFieldKey.KEY_TOC_PAGE_ID, "updateCurrentMinScale", "widthTolerance", "shrinkScale", "calculateScaleRatioForViewport", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;", "Lkotlin/jvm/functions/Function1;", "getBoxInfoCreator", "()Lkotlin/jvm/functions/Function1;", "boxInfoCreator", "", "Ljava/util/Map;", "getTable", "()Ljava/util/Map;", "table", "Landroid/graphics/RectF;", "draftLimitRectF", "Ljava/util/Comparator;", "Ljava/util/Comparator;", "comparator", "value", "getViewportLimitRect", "()Landroid/graphics/RectF;", "setViewportLimitRect", "(Landroid/graphics/RectF;)V", "viewportLimitRect", Constants.CONSTRUCTOR_NAME, "(Lkotlin/jvm/functions/Function1;)V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDraftBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DraftBoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,491:1\n1855#2,2:492\n2634#2:494\n1864#2,3:496\n1855#2,2:500\n1864#2,3:502\n1549#2:505\n1620#2,3:506\n1#3:495\n1#3:499\n*S KotlinDebug\n*F\n+ 1 DraftBoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager\n*L\n81#1:492,2\n222#1:494\n264#1:496,3\n339#1:500,2\n355#1:502,3\n454#1:505\n454#1:506,3\n222#1:495\n*E\n"})
/* loaded from: classes7.dex */
public final class DraftBoxManager extends BoxManager {

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Function1<BoxCellInfo, BoxInfo> boxInfoCreator;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Map<BoxCellInfo, BoxInfo> table;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final RectF draftLimitRectF;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Comparator<BoxInfo> comparator;

    /* JADX WARN: Multi-variable type inference failed */
    public DraftBoxManager(@NotNull Function1<? super BoxCellInfo, BoxInfo> boxInfoCreator) {
        Intrinsics.checkNotNullParameter(boxInfoCreator, "boxInfoCreator");
        this.boxInfoCreator = boxInfoCreator;
        this.table = new LinkedHashMap();
        this.draftLimitRectF = new RectF(-2.14748365E9f, -2.14748365E9f, 2.14748365E9f, 2.14748365E9f);
        this.comparator = new Comparator() { // from class: com.sunia.HTREnginev2.ghf
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m33107f;
                m33107f = DraftBoxManager.m33107f((BoxInfo) obj, (BoxInfo) obj2);
                return m33107f;
            }
        };
    }

    /* renamed from: f */
    public static final int m33107f(BoxInfo boxInfo, BoxInfo boxInfo2) {
        int compare = Intrinsics.compare(boxInfo.rowIndex(), boxInfo2.rowIndex());
        return compare == 0 ? Intrinsics.compare(boxInfo.columnIndex(), boxInfo2.columnIndex()) : compare;
    }

    /* renamed from: h */
    public static final BoxInfo m33108h(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (BoxInfo) tmp0.invoke(obj);
    }

    /* renamed from: p */
    public static final BoxInfo m33109p(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (BoxInfo) tmp0.invoke(obj);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void alignCenter() {
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void applyMatrix(@NotNull Matrix gestureDeltaMatrix, @NotNull Range<Float> displayScaleRange) {
        Intrinsics.checkNotNullParameter(gestureDeltaMatrix, "gestureDeltaMatrix");
        Intrinsics.checkNotNullParameter(displayScaleRange, "displayScaleRange");
        BoxManagerViewArgs boxManagerViewArgs = toBoxManagerViewArgs(gestureDeltaMatrix, displayScaleRange);
        setScale(boxManagerViewArgs.getScale());
        scrollTo(boxManagerViewArgs.getViewportLeft(), boxManagerViewArgs.getViewportTop());
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public float calculateScaleRatioForViewport(@NotNull RectF viewport, float widthTolerance, float shrinkScale) {
        BoxInfo copy;
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        RectF copy2 = RectFKt.copy(viewport);
        BoxInfo currentOrFirstBoxInfo$sdk_geometry_release = getCurrentOrFirstBoxInfo$sdk_geometry_release();
        if (currentOrFirstBoxInfo$sdk_geometry_release == null || (copy = currentOrFirstBoxInfo$sdk_geometry_release.copy()) == null) {
            return 1.0f;
        }
        if (Math.abs(copy2.width() - copy.width()) < widthTolerance) {
            RectFKt.scaleRect(copy2, shrinkScale, 1.0f);
        }
        float actualScale = copy.getActualScale();
        copy.scaleToViewportWidth(copy2);
        return copy.getActualScale() / actualScale;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> collectIntersectsVisibleBoxList(@NotNull RectF documentRectF) {
        Intrinsics.checkNotNullParameter(documentRectF, "documentRectF");
        ArrayList arrayList = new ArrayList();
        int floor = (int) Math.floor(m33117m(documentRectF.left / m33111e()));
        int floor2 = (int) Math.floor(m33117m(documentRectF.top / m33110d()));
        int ceil = (int) Math.ceil(m33117m(documentRectF.right / m33111e()));
        if (ceil <= floor) {
            ceil = floor + 1;
        }
        int ceil2 = (int) Math.ceil(m33117m(documentRectF.bottom / m33110d()));
        if (ceil2 <= floor2) {
            ceil2 = floor2 + 1;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (floor2 < ceil2) {
            for (int i = floor; i < ceil; i++) {
                BoxInfo m33112g = m33112g(floor2, i);
                String cellKey = m33112g.getCellKey();
                if (linkedHashMap.containsKey(cellKey)) {
                    log("cell exist, " + cellKey);
                } else {
                    BoxInfo copy = m33112g.copy();
                    copy.updateVisibleRect(getViewport().getBox());
                    arrayList.add(copy);
                    linkedHashMap.put(cellKey, copy);
                }
            }
            floor2++;
        }
        m33113i(arrayList);
        return arrayList;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> collectNextViewportVisibleBoxList() {
        RectF copy = RectFKt.copy(getViewport().getBox());
        copy.offset(0.0f, copy.height());
        return collectIntersectsVisibleBoxList(copy);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> collectPrevViewportVisibleBoxList() {
        RectF copy = RectFKt.copy(getViewport().getBox());
        copy.offset(0.0f, -copy.height());
        return collectIntersectsVisibleBoxList(copy);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> collectVisibleBoxList(@NotNull BoxManagerViewArgs viewArgs) {
        Intrinsics.checkNotNullParameter(viewArgs, "viewArgs");
        BoxInfo copy = getViewport().copy();
        int firstVisibleIndex = getFirstVisibleIndex();
        String currentBoxId = getCurrentBoxId();
        float currentMinScale = getCurrentMinScale();
        ArrayList arrayList = new ArrayList();
        try {
            float actualScale = copy.getActualScale() / viewArgs.getScale();
            getViewport().getBox().offsetTo(viewArgs.getViewportLeft(), viewArgs.getViewportTop());
            RectFKt.scaleRect(getViewport().getBox(), actualScale);
            m33122s();
            arrayList.addAll(visibleBoxes());
        } finally {
            try {
                setViewport(copy);
                setFirstVisibleIndex(firstVisibleIndex);
                setCurrentMinScale(currentMinScale);
                setCurrentBoxId(currentBoxId);
                return convertToVisibleBoxList(arrayList);
            } catch (Throwable th) {
            }
        }
        setViewport(copy);
        setFirstVisibleIndex(firstVisibleIndex);
        setCurrentMinScale(currentMinScale);
        setCurrentBoxId(currentBoxId);
        return convertToVisibleBoxList(arrayList);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> convertToVisibleBoxList(@NotNull List<BoxInfo> list) {
        List sortedWith;
        Intrinsics.checkNotNullParameter(list, "list");
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, this.comparator);
        List list2 = sortedWith;
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            ((BoxInfo) it2.next()).updateVisibleRect(getViewport().getBox());
        }
        List list3 = list2;
        m33113i(list3);
        return list3;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> copyBoxList() {
        List sortedWith;
        int collectionSizeOrDefault;
        List<BoxInfo> mutableList;
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(this.table.values(), this.comparator);
        List list = sortedWith;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((BoxInfo) it2.next()).copy());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public RxScrollerArgs createRxScrollerArgs(@NotNull BoxFlingArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        RxScrollerArgs rxScrollerArgs = new RxScrollerArgs();
        rxScrollerArgs.setVelocityX(args.getVelocityX());
        rxScrollerArgs.setVelocityY(args.getVelocityY());
        rxScrollerArgs.setLimitRect(RectFKt.copy(getViewportLimitRect()));
        rxScrollerArgs.getLimitRect().right -= getViewport().getBox().width();
        rxScrollerArgs.getLimitRect().bottom -= getViewport().getBox().height();
        if (Math.abs(args.getVelocityX()) > Math.abs(args.getVelocityY())) {
            rxScrollerArgs.setStartX(getViewport().getBox().left);
            rxScrollerArgs.setStartY(args.getIsRestoreScrollBegin() ? args.getScrollBeginY() : getViewport().getBox().top);
            rxScrollerArgs.setFrictionX(1.0f);
            rxScrollerArgs.setFrictionY(Float.MAX_VALUE);
        } else {
            rxScrollerArgs.setStartX(args.getIsRestoreScrollBegin() ? args.getScrollBeginX() : getViewport().getBox().left);
            rxScrollerArgs.setStartY(getViewport().getBox().top);
            rxScrollerArgs.setFrictionX(Float.MAX_VALUE);
            rxScrollerArgs.setFrictionY(1.0f);
        }
        return rxScrollerArgs;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    /* renamed from: currentDisplayScale */
    public float getCurrentDisplayScale() {
        return getViewport().getActualScale() / getCurrentMinScale();
    }

    /* renamed from: d */
    public final double m33110d() {
        return m33114j().height() * getViewport().getActualScale();
    }

    /* renamed from: e */
    public final double m33111e() {
        return m33114j().width() * getViewport().getActualScale();
    }

    /* renamed from: g */
    public final BoxInfo m33112g(int rowIndex, int columnIndex) {
        final BoxCellInfo boxCellInfo = new BoxCellInfo(rowIndex, columnIndex);
        Map<BoxCellInfo, BoxInfo> map = this.table;
        final Function1<BoxCellInfo, BoxInfo> function1 = new Function1<BoxCellInfo, BoxInfo>() { // from class: com.onyx.android.sdk.geometry.boxmanager.DraftBoxManager$ensureBoxInfo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final BoxInfo invoke(@NotNull BoxCellInfo it2) {
                BoxInfo m33115k;
                Intrinsics.checkNotNullParameter(it2, "it");
                DraftBoxManager draftBoxManager = DraftBoxManager.this;
                m33115k = draftBoxManager.m33115k(draftBoxManager.getBoxInfoCreator().invoke(boxCellInfo));
                return m33115k;
            }
        };
        BoxInfo computeIfAbsent = map.computeIfAbsent(boxCellInfo, new Function() { // from class: com.sunia.HTREnginev2.fhf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                BoxInfo m33108h;
                m33108h = DraftBoxManager.m33108h(Function1.this, obj);
                return m33108h;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final Function1<BoxCellInfo, BoxInfo> getBoxInfoCreator() {
        return this.boxInfoCreator;
    }

    @NotNull
    public final Map<BoxCellInfo, BoxInfo> getTable() {
        return this.table;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public RectF getViewportLimitRect() {
        return this.draftLimitRectF;
    }

    /* renamed from: i */
    public final void m33113i(List<BoxInfo> list) {
        Object orNull;
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            BoxInfo boxInfo = (BoxInfo) obj;
            float floor = FloatKt.floor(boxInfo.getVisibleRect().left);
            float floor2 = FloatKt.floor(boxInfo.getVisibleRect().top);
            boxInfo.getVisibleRect().set(floor, floor2, ((int) boxInfo.width()) + floor, ((int) boxInfo.height()) + floor2);
            orNull = CollectionsKt___CollectionsKt.getOrNull(list, i - 1);
            BoxInfo boxInfo2 = (BoxInfo) orNull;
            if (boxInfo2 != null) {
                if (boxInfo.rowIndex() == boxInfo2.rowIndex()) {
                    boxInfo.getVisibleRect().offsetTo(boxInfo2.getVisibleRect().right, boxInfo2.getVisibleRect().top);
                } else {
                    boxInfo.getVisibleRect().offsetTo(floor, boxInfo2.getVisibleRect().bottom);
                }
            }
            BoxInfo contentInfo = boxInfo.getContentInfo();
            if (contentInfo != null) {
                contentInfo.setVisibleRect(RectFKt.copy(boxInfo.getVisibleRect()));
            }
            BoxInfo noteInfo = boxInfo.getNoteInfo();
            if (noteInfo != null) {
                noteInfo.setVisibleRect(RectFKt.copy(boxInfo.getVisibleRect()));
            }
            i = i2;
        }
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public int indexOf(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return getBoxIdIndexedList().indexOfId(id);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void initScale(float scale) {
        getViewport().setActualScale(scale);
        m33116l(scale);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public boolean isEnabledContinuousScroll() {
        return true;
    }

    /* renamed from: j */
    public final RectF m33114j() {
        Object firstOrNull;
        RectF originRectF;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) getBoxIdIndexedList());
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        return (boxInfo == null || (originRectF = boxInfo.getOriginRectF()) == null) ? ResManager.INSTANCE.getScreenRectF() : originRectF;
    }

    /* renamed from: k */
    public final BoxInfo m33115k(BoxInfo boxInfo) {
        getBoxIdIndexedList().add(boxInfo);
        m33120q(boxInfo, getViewport().getActualScale());
        getBoundingRect().union(boxInfo.getBox());
        return boxInfo;
    }

    /* renamed from: l */
    public final void m33116l(float scale) {
        Iterator<BoxInfo> it2 = getBoxIdIndexedList().iterator();
        while (it2.hasNext()) {
            m33120q(it2.next(), scale);
        }
        m33123t();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public Matrix loadReboundMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        return matrix;
    }

    /* renamed from: m */
    public final double m33117m(double number) {
        int roundToInt;
        roundToInt = MathKt__MathJVMKt.roundToInt(number * 1000.0d);
        return roundToInt / 1000.0d;
    }

    /* renamed from: n */
    public final void m33118n() {
        setFirstVisibleIndex(-1);
        if (getBoxIdIndexedList().size() <= 0) {
            return;
        }
        BoxInfo m33112g = m33112g((int) Math.floor(m33117m(getViewport().getBox().top / m33110d())), (int) Math.floor(m33117m(getViewport().getBox().left / m33111e())));
        setFirstVisibleIndex(getBoxIdIndexedList().indexOfId(m33112g.getId()));
        getViewport().setId(m33112g.getId());
    }

    /* renamed from: o */
    public final void m33119o(BoxInfo boxInfo) {
        RectF cellOriginRectFCopy = boxInfo.getCellOriginRectFCopy();
        if (!(boxInfo.getActualScale() == 1.0f)) {
            RectFKt.scaleRect(cellOriginRectFCopy, boxInfo.getActualScale());
        }
        boxInfo.setBox(cellOriginRectFCopy);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public int pageCount() {
        return getBoxIdIndexedList().size();
    }

    /* renamed from: q */
    public final void m33120q(BoxInfo boxInfo, float scale) {
        boxInfo.setActualScale(scale);
        m33119o(boxInfo);
        boxInfo.updateChildrenDisplayRectF();
    }

    /* renamed from: r */
    public final void m33121r(BoxInfo resultBox, RectF lastVisibleRegion, Function2<? super RectF, ? super RectF, Boolean> accept) {
        RectF copy = RectFKt.copy(resultBox.getVisibleRect());
        RectF zeroOriginRoundRectF = getViewport().toZeroOriginRoundRectF();
        if (copy.intersect(zeroOriginRoundRectF) && accept.invoke(copy, lastVisibleRegion).booleanValue()) {
            setCurrentBoxId(resultBox.getId());
            BoxInfo copy2 = resultBox.copy();
            BoxInfo.scaleToViewportWithAspectScaleCheck$default(copy2, zeroOriginRoundRectF, false, 2, null);
            setCurrentMinScale(copy2.getActualScale());
            lastVisibleRegion.set(copy);
        }
    }

    /* renamed from: s */
    public final void m33122s() {
        m33118n();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager scrollBy(float dx, float dy) {
        getViewport().offset(dx, dy);
        m33122s();
        return this;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public boolean scrollTo(@NotNull String boxId, float offsetX, float offsetY) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Pair<Integer, BoxInfo> indexElementPairWithId = getBoxIdIndexedList().getIndexElementPairWithId(boxId);
        if (indexElementPairWithId == null) {
            return false;
        }
        setFirstVisibleIndex(indexElementPairWithId.getFirst().intValue());
        getViewport().setId(boxId);
        RectFKt.alignOrigin(getViewport().getBox(), indexElementPairWithId.getSecond().getBox());
        scrollBy(offsetX, offsetY);
        return true;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void setData(@NotNull List<BoxInfo> boxList) {
        Intrinsics.checkNotNullParameter(boxList, "boxList");
        getBoxIdIndexedList().clear();
        getBoxIdIndexedList().addAll(boxList);
        for (BoxInfo boxInfo : boxList) {
            this.table.put(boxInfo.getCellInfoCopy(), boxInfo);
        }
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void setScale(float scale) {
        if (getViewport().getActualScale() == scale) {
            return;
        }
        getViewport().setActualScale(scale);
        m33116l(scale);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager setViewport(@NotNull RectF viewport) {
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        getViewport().getBox().set(viewport);
        return this;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void setViewportLimitRect(@NotNull RectF value) {
        Intrinsics.checkNotNullParameter(value, "value");
    }

    /* renamed from: t */
    public final void m33123t() {
        getBoundingRect().setEmpty();
        boolean z = true;
        int i = 0;
        for (BoxInfo boxInfo : getBoxIdIndexedList()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            BoxInfo boxInfo2 = boxInfo;
            if (boxInfo2.isNaNBox()) {
                LogUtils.wTag(AnyKt.toSimpleNameString(this), "updatePagesBoundingRect, find NANBox, index = " + i + ", " + boxInfo2.getDebugString());
                if (z) {
                    boxInfo2.logNaNTrace();
                    z = false;
                }
            } else if (getBoundingRect().isEmpty()) {
                getBoundingRect().set(boxInfo2.getBox());
            } else {
                getBoundingRect().union(boxInfo2.getBox());
            }
            i = i2;
        }
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManagerViewArgs toBoxManagerViewArgs(@NotNull Matrix gestureDeltaMatrix, @NotNull Range<Float> displayScaleRange) {
        Intrinsics.checkNotNullParameter(gestureDeltaMatrix, "gestureDeltaMatrix");
        Intrinsics.checkNotNullParameter(displayScaleRange, "displayScaleRange");
        float[] matrixValue = MatrixKt.getMatrixValue(gestureDeltaMatrix);
        float f = -MatrixKt.getMatrixTransX(matrixValue);
        float f2 = -MatrixKt.getMatrixTransY(matrixValue);
        Matrix matrix = new Matrix();
        matrix.setScale(MatrixKt.getMatrixScaleX(matrixValue), MatrixKt.getMatrixScaleY(matrixValue));
        matrix.postTranslate(f, f2);
        float scaleX = MatrixKt.getScaleX(matrix);
        MathUtils mathUtils = MathUtils.INSTANCE;
        Float valueOf = Float.valueOf(getCurrentDisplayScale() * scaleX);
        Float minimum = displayScaleRange.getMinimum();
        Intrinsics.checkNotNullExpressionValue(minimum, "getMinimum(...)");
        Float maximum = displayScaleRange.getMaximum();
        Intrinsics.checkNotNullExpressionValue(maximum, "getMaximum(...)");
        float floatValue = ((Number) mathUtils.clamp(valueOf, minimum, maximum)).floatValue() * getCurrentMinScale();
        RectF copy = RectFKt.copy(getViewport().getBox());
        PointF pointF = new PointF(copy.left, copy.top);
        MatrixKt.mapSelfPoint(matrix, pointF);
        return new BoxManagerViewArgs(floatValue, pointF.x, pointF.y);
    }

    @NotNull
    public final BoxInfo updateBoxInfo(@NotNull final BoxInfo boxInfo) {
        BoxCellInfo boxCellInfo;
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        BoxExtraInfo extraInfo = boxInfo.getExtraInfo();
        if (extraInfo == null || (boxCellInfo = extraInfo.getBoxCellInfo()) == null) {
            return boxInfo;
        }
        BoxInfo remove = this.table.remove(boxCellInfo);
        if (remove != null) {
            getBoxIdIndexedList().removeWithId(remove.getId());
        }
        Map<BoxCellInfo, BoxInfo> map = this.table;
        final Function1<BoxCellInfo, BoxInfo> function1 = new Function1<BoxCellInfo, BoxInfo>() { // from class: com.onyx.android.sdk.geometry.boxmanager.DraftBoxManager$updateBoxInfo$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final BoxInfo invoke(@NotNull BoxCellInfo it2) {
                BoxInfo m33115k;
                Intrinsics.checkNotNullParameter(it2, "it");
                m33115k = DraftBoxManager.this.m33115k(boxInfo);
                return m33115k;
            }
        };
        BoxInfo computeIfAbsent = map.computeIfAbsent(boxCellInfo, new Function() { // from class: com.sunia.HTREnginev2.hhf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                BoxInfo m33109p;
                m33109p = DraftBoxManager.m33109p(Function1.this, obj);
                return m33109p;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void updateCurrentMinScale(@NotNull String pageId) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        BoxInfo withId = getBoxIdIndexedList().getWithId(pageId);
        if (withId == null) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) getBoxIdIndexedList());
            withId = (BoxInfo) firstOrNull;
        }
        if (withId == null) {
            return;
        }
        BoxInfo copy = withId.copy();
        BoxInfo.scaleToViewportWithAspectScaleCheck$default(copy, getViewport().toZeroOriginRoundRectF(), false, 2, null);
        setCurrentMinScale(copy.getActualScale());
        setCurrentBoxId(copy.getId());
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void updateDataAndApplyScale(@NotNull List<BoxInfo> boxList) {
        Intrinsics.checkNotNullParameter(boxList, "boxList");
        setData(boxList);
        BoxManager.updateCurrentMinScale$default(this, null, 1, null);
        initScale(getViewport().getActualScale());
        m33122s();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void updateToVisibleBox(@NotNull BoxInfo box) {
        Intrinsics.checkNotNullParameter(box, "box");
        box.updateVisibleRect(getViewport().getBox());
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void updateViewportSize(@NotNull Size size, boolean calculate) {
        Intrinsics.checkNotNullParameter(size, "size");
        RectFKt.resize(getViewport().getBox(), size);
        m33122s();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> visibleBoxes() {
        ArrayList arrayList = new ArrayList();
        int floor = (int) Math.floor(m33117m(getViewport().getBox().left / m33111e()));
        int floor2 = (int) Math.floor(m33117m(getViewport().getBox().top / m33110d()));
        int ceil = (int) Math.ceil(m33117m(getViewport().getBox().right / m33111e()));
        if (ceil <= floor) {
            ceil = floor + 1;
        }
        int ceil2 = (int) Math.ceil(m33117m(getViewport().getBox().bottom / m33110d()));
        if (ceil2 <= floor2) {
            ceil2 = floor2 + 1;
        }
        RectF rectF = new RectF();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (floor2 < ceil2) {
            for (int i = floor; i < ceil; i++) {
                BoxInfo m33112g = m33112g(floor2, i);
                String cellKey = m33112g.getCellKey();
                if (linkedHashMap.containsKey(cellKey)) {
                    log("cell exist, " + cellKey);
                } else {
                    BoxInfo copy = m33112g.copy();
                    copy.updateVisibleRect(getViewport().getBox());
                    if (m33112g.intersect(getViewport())) {
                        arrayList.add(copy);
                        linkedHashMap.put(cellKey, copy);
                        m33121r(copy, rectF, new Function2<RectF, RectF, Boolean>() { // from class: com.onyx.android.sdk.geometry.boxmanager.DraftBoxManager$visibleBoxes$1
                            @Override // kotlin.jvm.functions.Function2
                            @NotNull
                            public final Boolean invoke(@NotNull RectF current, @NotNull RectF last) {
                                Intrinsics.checkNotNullParameter(current, "current");
                                Intrinsics.checkNotNullParameter(last, "last");
                                return Boolean.valueOf(RectKt.area(current) > RectKt.area(last));
                            }
                        });
                        setCurrentMinScale(1.0f);
                    }
                }
            }
            floor2++;
        }
        m33113i(arrayList);
        return arrayList;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager scrollTo(float newX, float newY) {
        getViewport().offsetTo(newX, newY);
        m33122s();
        return this;
    }
}
