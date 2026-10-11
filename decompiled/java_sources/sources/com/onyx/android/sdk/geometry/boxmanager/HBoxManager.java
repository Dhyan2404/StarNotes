package com.onyx.android.sdk.geometry.boxmanager;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.collections.StringIndexedArrayList;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.p018rx.RxScrollerArgs;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxFlingArgs;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.BoxManagerViewArgs;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bq\u0010rJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\n\u0010\u000b\u001a\u0004\u0018\u00010\bH\u0002J\n\u0010\r\u001a\u0004\u0018\u00010\fH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0013H\u0002J\n\u0010\u0019\u001a\u0004\u0018\u00010\fH\u0002J\u0010\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\fH\u0002J\u0010\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\fH\u0002J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\fH\u0002J\b\u0010\u001f\u001a\u00020\u0004H\u0002JP\u0010)\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\b2\u0006\u0010!\u001a\u00020\f26\u0010(\u001a2\u0012\u0013\u0012\u00110\f¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b(%\u0012\u0013\u0012\u00110\f¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020'0\"H\u0002J\u0012\u0010,\u001a\u0004\u0018\u00010\b2\u0006\u0010+\u001a\u00020*H\u0002J\b\u0010-\u001a\u00020\u0004H\u0002J\b\u0010.\u001a\u00020\u0004H\u0002J\b\u0010/\u001a\u00020\u0004H\u0002J\u0010\u00100\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\fH\u0002J\u0006\u00101\u001a\u00020\u0002J\u0016\u00103\u001a\u00020\u00042\f\u00102\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016J\u0016\u00104\u001a\u00020\u00042\f\u00102\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016J\u0010\u00108\u001a\u0002072\u0006\u00106\u001a\u000205H\u0016J\u0010\u0010:\u001a\u00020\u00012\u0006\u00109\u001a\u00020\fH\u0016J\u0018\u0010>\u001a\u00020\u00042\u0006\u0010<\u001a\u00020;2\u0006\u0010=\u001a\u00020'H\u0016J \u0010B\u001a\u00020'2\u0006\u0010?\u001a\u0002052\u0006\u0010@\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u0002H\u0016J\u0018\u0010B\u001a\u00020\u00012\u0006\u0010C\u001a\u00020\u00022\u0006\u0010D\u001a\u00020\u0002H\u0016J\u0018\u0010G\u001a\u00020\u00012\u0006\u0010E\u001a\u00020\u00022\u0006\u0010F\u001a\u00020\u0002H\u0016J\u000e\u0010H\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016J\u0016\u0010K\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010J\u001a\u00020IH\u0016J\u001c\u0010M\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010L\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016J\u0010\u0010O\u001a\u00020\u00042\u0006\u0010N\u001a\u00020\bH\u0016J\u0016\u0010Q\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010P\u001a\u00020\fH\u0016J\u000e\u0010R\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016J\u000e\u0010S\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016J\b\u0010T\u001a\u000207H\u0016J\u0010\u0010U\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010V\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\b\u0010W\u001a\u00020\u0002H\u0016J\u0010\u0010X\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010Z\u001a\u00020*2\u0006\u0010Y\u001a\u00020*H\u0016J\u001e\u0010]\u001a\u00020I2\u0006\u0010+\u001a\u00020*2\f\u0010\\\u001a\b\u0012\u0004\u0012\u00020\u00020[H\u0016J\b\u0010^\u001a\u00020'H\u0016J\b\u0010_\u001a\u00020\u0004H\u0016J\u000e\u0010`\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016J\u001e\u0010a\u001a\u00020\u00042\u0006\u0010+\u001a\u00020*2\f\u0010\\\u001a\b\u0012\u0004\u0012\u00020\u00020[H\u0016J\u0010\u0010c\u001a\u00020\u00042\u0006\u0010b\u001a\u000205H\u0016J \u0010f\u001a\u00020\u00022\u0006\u00109\u001a\u00020\f2\u0006\u0010d\u001a\u00020\u00022\u0006\u0010e\u001a\u00020\u0002H\u0016R\u0016\u0010W\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010gR\u001a\u0010j\u001a\b\u0012\u0004\u0012\u00020\b0h8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010iR$\u0010p\u001a\u00020'2\u0006\u0010k\u001a\u00020'8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bl\u0010m\"\u0004\bn\u0010o¨\u0006s"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/boxmanager/HBoxManager;", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "", C6999h.f39688c, "", "u", "r", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "y", "x", "j", "Landroid/graphics/RectF;", "i", "scale", "p", "w", "Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;", "args", "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;", "a", "b", "c", "d", "e", C4921e.f26537n, "displayRectF", "m", "targetRectF", C6998g.f39679a, C6997f.f39671c, "v", "resultBox", "lastVisibleRegion", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", Keywords.FUNC_CURRENT_STRING, Keywords.FUNC_LAST_STRING, "", "accept", "t", "Landroid/graphics/Matrix;", "gestureDeltaMatrix", "l", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "s", "q", "minDisplayScale", "boxList", "setData", "updateDataAndApplyScale", "", "id", "", "indexOf", "viewport", "setViewport", "Lcom/onyx/android/sdk/base/data/Size;", "size", "calculate", "updateViewportSize", "boxId", "offsetX", "offsetY", "scrollTo", "newX", "newY", "dx", "dy", "scrollBy", "visibleBoxes", "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;", "viewArgs", "collectVisibleBoxList", "list", "convertToVisibleBoxList", "box", "updateToVisibleBox", "documentRectF", "collectIntersectsVisibleBoxList", "collectNextViewportVisibleBoxList", "collectPrevViewportVisibleBoxList", "pageCount", "setScale", "initScale", "currentDisplayScale", "createRxScrollerArgs", "matrix", "loadReboundMatrix", "Lorg/apache/commons/lang3/Range;", "displayScaleRange", "toBoxManagerViewArgs", "isEnabledContinuousScroll", "alignCenter", "copyBoxList", "applyMatrix", CouchFieldKey.KEY_TOC_PAGE_ID, "updateCurrentMinScale", "widthTolerance", "shrinkScale", "calculateScaleRatioForViewport", "F", "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;", "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;", "containerIdIndexedList", "value", "getEnableFreeMovePaper", Constants.BOOLEAN_VALUE_SIG, "setEnableFreeMovePaper", "(Z)V", "enableFreeMovePaper", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HBoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/HBoxManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,800:1\n1855#2,2:801\n350#2,7:803\n1864#2,3:810\n1864#2,3:813\n1549#2:817\n1620#2,3:818\n1#3:816\n*S KotlinDebug\n*F\n+ 1 HBoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/HBoxManager\n*L\n255#1:801,2\n265#1:803,7\n363#1:810,3\n398#1:813,3\n715#1:817\n715#1:818,3\n*E\n"})
/* loaded from: classes7.dex */
public class HBoxManager extends BoxManager {

    /* renamed from: k, reason: from kotlin metadata */
    public float currentDisplayScale = 1.0f;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final StringIndexedArrayList<BoxInfo> containerIdIndexedList = new StringIndexedArrayList<>(new Function1<BoxInfo, String>() { // from class: com.onyx.android.sdk.geometry.boxmanager.HBoxManager$containerIdIndexedList$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final String invoke(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getId();
        }
    }, 0, 2, null);

    /* renamed from: a */
    public final RxScrollerArgs m33133a(BoxFlingArgs args) {
        RxScrollerArgs rxScrollerArgs = new RxScrollerArgs();
        rxScrollerArgs.setVelocityX(args.getVelocityX());
        rxScrollerArgs.setVelocityY(args.getVelocityY());
        rxScrollerArgs.setLimitRect(RectFKt.copy(getViewportLimitRect()));
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
    public void alignCenter() {
        m33147o();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void applyMatrix(@NotNull Matrix gestureDeltaMatrix, @NotNull Range<Float> displayScaleRange) {
        Intrinsics.checkNotNullParameter(gestureDeltaMatrix, "gestureDeltaMatrix");
        Intrinsics.checkNotNullParameter(displayScaleRange, "displayScaleRange");
        BoxInfo m33144l = m33144l(gestureDeltaMatrix);
        BoxManagerViewArgs boxManagerViewArgs = toBoxManagerViewArgs(gestureDeltaMatrix, displayScaleRange);
        setScale(boxManagerViewArgs.getScale());
        if (m33144l == null) {
            scrollTo(boxManagerViewArgs.getViewportLeft(), boxManagerViewArgs.getViewportTop());
        } else {
            scrollTo(m33144l.getId(), -m33144l.getVisibleRect().left, -m33144l.getVisibleRect().top);
        }
        m33151s();
        m33146n();
        m33153u();
    }

    /* renamed from: b */
    public final RxScrollerArgs m33134b(BoxFlingArgs args) {
        log("create continuous fling in current display rect");
        RxScrollerArgs m33133a = m33133a(args);
        RectF m33141i = m33141i();
        if (m33141i != null) {
            RectF copy = RectFKt.copy(m33141i);
            copy.bottom -= getViewport().height();
            copy.right -= getViewport().width();
            m33133a.setLimitRect(copy);
            m33133a.setFlingActionType(RxScrollerArgs.FlingActionType.CONTINUOUS_SCROLL_IN_CURRENT_SCREEN);
        }
        return m33133a;
    }

    /* renamed from: c */
    public final RxScrollerArgs m33135c(BoxFlingArgs args) {
        Object orNull;
        orNull = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), getBoxIdIndexedList().indexOfId(args.getScrollBeginBoxId()) + 1);
        BoxInfo boxInfo = (BoxInfo) orNull;
        if (boxInfo == null) {
            return null;
        }
        RectF copy = RectFKt.copy(boxInfo.getBox());
        RectF m33145m = m33145m(copy);
        if (copy.width() <= getViewport().width()) {
            RectFKt.alignCenterHorizontal(m33145m, copy);
        } else {
            RectFKt.leftAlign(m33145m, copy);
        }
        RxScrollerArgs rxScrollerArgs = new RxScrollerArgs();
        rxScrollerArgs.setStartX(getViewport().getBox().left);
        rxScrollerArgs.setStartY(getViewport().getBox().top);
        rxScrollerArgs.setVelocityY(0.0f);
        m33145m.offset(-getViewport().width(), 0.0f);
        m33145m.left = Math.min(rxScrollerArgs.getStartX(), m33145m.left);
        rxScrollerArgs.setLimitRect(m33145m);
        float velocityX = args.getVelocityX();
        BoxManager.Companion companion = BoxManager.INSTANCE;
        rxScrollerArgs.setVelocityX(Math.max(velocityX, companion.getAutoScrollToNewBoxVelocityValue(rxScrollerArgs.getLimitRect().right - getViewport().getBox().left)));
        rxScrollerArgs.setFrictionX(companion.getAutoScrollToNewBoxFriction());
        rxScrollerArgs.setFlingActionType(RxScrollerArgs.FlingActionType.NEXT_SCREEN);
        return rxScrollerArgs;
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
        Iterator<BoxInfo> it2 = getBoxIdIndexedList().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            if (RectF.intersects(documentRectF, it2.next().getBox())) {
                break;
            }
            i++;
        }
        if (i < 0) {
            return arrayList;
        }
        int size = getBoxIdIndexedList().size();
        while (i < size) {
            BoxInfo boxInfo = getBoxIdIndexedList().get(i);
            Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
            BoxInfo boxInfo2 = boxInfo;
            if (!RectF.intersects(documentRectF, boxInfo2.getBox())) {
                break;
            }
            BoxInfo copy = boxInfo2.copy();
            updateToVisibleBox(copy);
            arrayList.add(copy);
            i++;
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> collectNextViewportVisibleBoxList() {
        RectF copy = RectFKt.copy(getViewport().getBox());
        copy.offset(copy.width(), 0.0f);
        return collectIntersectsVisibleBoxList(copy);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> collectPrevViewportVisibleBoxList() {
        RectF copy = RectFKt.copy(getViewport().getBox());
        copy.offset(-copy.width(), 0.0f);
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
            m33153u();
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
        Intrinsics.checkNotNullParameter(list, "list");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            updateToVisibleBox((BoxInfo) it2.next());
        }
        return list;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> copyBoxList() {
        int collectionSizeOrDefault;
        List<BoxInfo> mutableList;
        StringIndexedArrayList<BoxInfo> boxIdIndexedList = getBoxIdIndexedList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(boxIdIndexedList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<BoxInfo> it2 = boxIdIndexedList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().copy());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public RxScrollerArgs createRxScrollerArgs(@NotNull BoxFlingArgs args) {
        RxScrollerArgs m33137e;
        Intrinsics.checkNotNullParameter(args, "args");
        List<BoxInfo> m33157y = m33157y();
        RectF m33141i = m33141i();
        if (m33141i == null) {
            return m33134b(args);
        }
        if (m33157y.size() <= 1 && m33141i.width() > getViewport().width() && getViewport().right() <= m33141i.right && getViewport().left() >= m33141i.left) {
            log("continuous fling in current display rect");
            return m33134b(args);
        }
        float velocityX = args.getVelocityX();
        BoxManager.Companion companion = BoxManager.INSTANCE;
        boolean z = ((Math.abs(args.getVelocityY()) > Math.abs(args.getVelocityX()) ? 1 : (Math.abs(args.getVelocityY()) == Math.abs(args.getVelocityX()) ? 0 : -1)) < 0 && (Math.abs(getViewport().top() - args.getScrollBeginY()) > Math.abs(getViewport().left() - args.getScrollBeginX()) ? 1 : (Math.abs(getViewport().top() - args.getScrollBeginY()) == Math.abs(getViewport().left() - args.getScrollBeginX()) ? 0 : -1)) < 0) && ((Math.abs(velocityX) > companion.getMinFlingVelocity() ? 1 : (Math.abs(velocityX) == companion.getMinFlingVelocity() ? 0 : -1)) >= 0);
        if (z && velocityX > 0.0f) {
            log("next screen");
            m33137e = m33135c(args);
        } else if (!z || velocityX >= 0.0f) {
            log("rebound screen");
            m33137e = m33137e();
        } else {
            log("prev screen");
            m33137e = m33136d(args);
        }
        if (m33137e != null) {
            m33137e.setEnabledAbortFlingAnimation(false);
        }
        if (companion.getDEBUG_LOG() && m33137e != null) {
            log("userVelocity = " + velocityX + ", minFlingVelocity = " + companion.getMinFlingVelocity() + ", scrollArgs = " + m33137e.getDebugString());
        }
        return m33137e == null ? m33134b(args) : m33137e;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    /* renamed from: currentDisplayScale, reason: from getter */
    public float getCurrentDisplayScale() {
        return this.currentDisplayScale;
    }

    /* renamed from: d */
    public final RxScrollerArgs m33136d(BoxFlingArgs args) {
        Object orNull;
        orNull = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), getBoxIdIndexedList().indexOfId(args.getScrollBeginBoxId()) - 1);
        BoxInfo boxInfo = (BoxInfo) orNull;
        if (boxInfo == null) {
            return null;
        }
        RectF copy = RectFKt.copy(boxInfo.getBox());
        RectF m33145m = m33145m(copy);
        if (copy.width() <= getViewport().width()) {
            RectFKt.alignCenterHorizontal(m33145m, copy);
        } else {
            RectFKt.rightAlign(m33145m, copy);
        }
        RxScrollerArgs rxScrollerArgs = new RxScrollerArgs();
        rxScrollerArgs.setStartX(getViewport().getBox().left);
        rxScrollerArgs.setStartY(getViewport().getBox().top);
        rxScrollerArgs.setVelocityY(0.0f);
        m33145m.right = Math.max(rxScrollerArgs.getStartX(), m33145m.right);
        rxScrollerArgs.setLimitRect(m33145m);
        float abs = Math.abs(args.getVelocityX());
        BoxManager.Companion companion = BoxManager.INSTANCE;
        rxScrollerArgs.setVelocityX(-Math.max(abs, companion.getAutoScrollToNewBoxVelocityValue(getViewport().getBox().left - rxScrollerArgs.getLimitRect().left)));
        rxScrollerArgs.setFrictionX(companion.getAutoScrollToNewBoxFriction());
        rxScrollerArgs.setFlingActionType(RxScrollerArgs.FlingActionType.PREV_SCREEN);
        return rxScrollerArgs;
    }

    /* renamed from: e */
    public final RxScrollerArgs m33137e() {
        RxScrollerArgs m33138f;
        RectF m33143k = m33143k();
        if (m33143k == null) {
            return null;
        }
        if (getViewport().getBox().right > m33143k.right) {
            log("rebound right, targetRectF = " + m33143k + ", viewportRect = " + getViewport().getBox());
            m33138f = m33139g(m33143k);
        } else if (getViewport().getBox().left < m33143k.left) {
            log("rebound left, targetRectF = " + m33143k + ", viewportRect = " + getViewport().getBox());
            m33138f = m33138f(m33143k);
        } else {
            log("else, rebound left, targetRectF = " + m33143k + ", viewportRect = " + getViewport().getBox());
            m33138f = m33138f(m33143k);
        }
        m33138f.setFlingActionType(RxScrollerArgs.FlingActionType.REBOUND_CURRENT_SCREEN);
        return m33138f;
    }

    /* renamed from: f */
    public final RxScrollerArgs m33138f(RectF targetRectF) {
        RxScrollerArgs rxScrollerArgs = new RxScrollerArgs();
        rxScrollerArgs.setStartX(getViewport().getBox().left);
        rxScrollerArgs.setStartY(getViewport().getBox().top);
        rxScrollerArgs.setVelocityY(0.0f);
        rxScrollerArgs.setLimitRect(targetRectF);
        rxScrollerArgs.getLimitRect().offset(-rxScrollerArgs.getLimitRect().width(), 0.0f);
        float startX = rxScrollerArgs.getStartX() - rxScrollerArgs.getLimitRect().right;
        BoxManager.Companion companion = BoxManager.INSTANCE;
        rxScrollerArgs.setVelocityX(companion.getAutoScrollToNewBoxVelocityValue(startX));
        rxScrollerArgs.setFrictionX(companion.getReboundToCurrentBoxInfoFriction());
        return rxScrollerArgs;
    }

    /* renamed from: g */
    public final RxScrollerArgs m33139g(RectF targetRectF) {
        RxScrollerArgs rxScrollerArgs = new RxScrollerArgs();
        rxScrollerArgs.setStartX(getViewport().getBox().left);
        rxScrollerArgs.setStartY(getViewport().getBox().top);
        rxScrollerArgs.setVelocityY(0.0f);
        rxScrollerArgs.setLimitRect(targetRectF);
        rxScrollerArgs.getLimitRect().left = rxScrollerArgs.getLimitRect().right - getViewport().width();
        float startX = rxScrollerArgs.getStartX() - rxScrollerArgs.getLimitRect().left;
        BoxManager.Companion companion = BoxManager.INSTANCE;
        rxScrollerArgs.setVelocityX(-companion.getAutoScrollToNewBoxVelocityValue(startX));
        rxScrollerArgs.setFrictionX(companion.getReboundToCurrentBoxInfoFriction());
        return rxScrollerArgs;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public boolean getEnableFreeMovePaper() {
        return false;
    }

    /* renamed from: h */
    public final float m33140h() {
        return 0.0f;
    }

    /* renamed from: i */
    public final RectF m33141i() {
        RectF box;
        BoxInfo currentOrFirstBoxInfo$sdk_geometry_release = getCurrentOrFirstBoxInfo$sdk_geometry_release();
        if (currentOrFirstBoxInfo$sdk_geometry_release == null || (box = currentOrFirstBoxInfo$sdk_geometry_release.getBox()) == null) {
            return null;
        }
        return RectFKt.copy(box);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public int indexOf(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return getBoxIdIndexedList().indexOfId(id);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void initScale(float scale) {
        updateCurrentMinScale(getCurrentBoxId());
        this.currentDisplayScale = scale / getCurrentMinScale();
        float minDisplayScale = minDisplayScale();
        if (this.currentDisplayScale < minDisplayScale) {
            this.currentDisplayScale = minDisplayScale;
            getViewport().setActualScale(minDisplayScale * getCurrentMinScale());
        } else {
            getViewport().setActualScale(scale);
        }
        m33148p(scale);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public boolean isEnabledContinuousScroll() {
        return false;
    }

    /* renamed from: j */
    public final BoxInfo m33142j() {
        Object orNull;
        BoxInfo currentOrFirstBoxInfo$sdk_geometry_release = getCurrentOrFirstBoxInfo$sdk_geometry_release();
        if (currentOrFirstBoxInfo$sdk_geometry_release == null) {
            return null;
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.containerIdIndexedList, getBoxIdIndexedList().indexOfId(currentOrFirstBoxInfo$sdk_geometry_release.getId()));
        return (BoxInfo) orNull;
    }

    /* renamed from: k */
    public final RectF m33143k() {
        RectF m33141i = m33141i();
        if (m33141i == null) {
            return null;
        }
        RectF m33145m = m33145m(m33141i);
        if (m33141i.width() <= getViewport().width()) {
            log("alignCenterHorizontal");
            RectFKt.alignCenterHorizontal(m33145m, m33141i);
        } else if (getViewport().getBox().right > m33141i.right) {
            log("rightAlign");
            RectFKt.rightAlign(m33145m, m33141i);
        } else if (getViewport().getBox().left < m33141i.left) {
            log("leftAlign");
            RectFKt.leftAlign(m33145m, m33141i);
        } else {
            log("default align, leftAlign");
            RectFKt.leftAlign(m33145m, m33141i);
        }
        return m33145m;
    }

    /* renamed from: l */
    public final BoxInfo m33144l(Matrix gestureDeltaMatrix) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) visibleBoxes());
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        if (boxInfo == null) {
            return null;
        }
        gestureDeltaMatrix.mapRect(boxInfo.getVisibleRect());
        return boxInfo;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public Matrix loadReboundMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        RectF m33141i = m33141i();
        if (m33141i == null) {
            return matrix;
        }
        RectF copy = RectFKt.copy(m33141i);
        RectF copy2 = RectFKt.copy(getViewport().getBox());
        RectF copy3 = RectFKt.copy(m33141i);
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        float f = fArr[0];
        float f2 = -fArr[2];
        float f3 = -fArr[5];
        float f4 = (copy2.left * f) + f2;
        float f5 = (copy2.top * f) + f3;
        copy2.offsetTo(f4, f5);
        RectFKt.scaleRect(copy, f);
        RectFKt.scaleRect(copy3, f);
        RectFKt.limitAndCenterIf(copy2, copy, copy3);
        Matrix matrix2 = new Matrix(matrix);
        matrix2.postTranslate(-(copy2.left - f4), -(copy2.top - f5));
        return matrix2;
    }

    /* renamed from: m */
    public final RectF m33145m(RectF displayRectF) {
        return new RectF(getViewport().left(), displayRectF.top, getViewport().right(), displayRectF.bottom);
    }

    public final float minDisplayScale() {
        return 1.0f;
    }

    /* renamed from: n */
    public final void m33146n() {
        RectF m33141i = m33141i();
        if (m33141i == null) {
            return;
        }
        RectFKt.limitAndCenterIf(getViewport().getBox(), m33141i, m33141i);
    }

    /* renamed from: o */
    public final void m33147o() {
        RectF m33141i = m33141i();
        if (m33141i == null) {
            RectFKt.limitAndCenterVerticalIf(getViewport().getBox(), getViewportLimitRect(), getBoundingRect());
            return;
        }
        RectF copy = RectFKt.copy(getViewportLimitRect());
        copy.top = m33141i.top;
        copy.bottom = m33141i.bottom;
        RectF copy2 = RectFKt.copy(getBoundingRect());
        copy2.top = m33141i.top;
        copy2.bottom = m33141i.bottom;
        RectFKt.limitAndCenterVerticalIf(getViewport().getBox(), copy, copy2);
    }

    /* renamed from: p */
    public final void m33148p(float scale) {
        this.containerIdIndexedList.clear();
        float currentDisplayScale = getCurrentDisplayScale();
        RectF zeroOriginRoundRectF = getViewport().toZeroOriginRoundRectF();
        RectFKt.scaleRect(zeroOriginRoundRectF, currentDisplayScale);
        double d = 0.0d;
        boolean z = false;
        int i = 0;
        for (BoxInfo boxInfo : getBoxIdIndexedList()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            BoxInfo boxInfo2 = boxInfo;
            BoxInfo boxInfo3 = new BoxInfo(String.valueOf(i), RectFKt.copy(zeroOriginRoundRectF));
            boxInfo3.setActualScale(currentDisplayScale);
            double width = boxInfo3.getBox().width();
            boxInfo2.scaleToViewportWithAspectScaleCheck(boxInfo3.getBox(), z);
            double width2 = boxInfo2.width();
            if (Math.rint(width2) > Math.rint(width)) {
                boxInfo3.getBox().right = (float) width2;
                width = width2;
            }
            double d2 = boxInfo2.getBox().left + d;
            boxInfo2.getBox().left = (float) d2;
            boxInfo2.getBox().right = (float) (width2 + d2);
            boxInfo2.updateChildrenDisplayRectF();
            RectF box = boxInfo3.getBox();
            box.left = (float) d;
            box.top = boxInfo2.getBox().top;
            d += width;
            box.right = (float) d;
            box.bottom = boxInfo2.getBox().bottom;
            this.containerIdIndexedList.add(boxInfo3);
            i = i2;
            z = false;
        }
        m33155w();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public int pageCount() {
        return getBoxIdIndexedList().size();
    }

    /* renamed from: q */
    public final void m33149q(RectF displayRectF) {
        if (m33157y().size() > 1) {
            RectFKt.limitAndCenterIf(getViewport().getBox(), displayRectF, displayRectF);
            m33153u();
        }
    }

    /* renamed from: r */
    public final void m33150r() {
        Object first;
        Object last;
        Object last2;
        Object first2;
        setFirstVisibleIndex(-1);
        if (this.containerIdIndexedList.size() <= 0) {
            return;
        }
        float m33140h = m33140h();
        int size = this.containerIdIndexedList.size();
        for (int i = 0; i < size; i++) {
            BoxInfo boxInfo = this.containerIdIndexedList.get(i);
            Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
            if (boxInfo.horCheck(getViewport(), m33140h) == 0) {
                setFirstVisibleIndex(i);
                getViewport().setId(getBoxIdIndexedList().get(i).getId());
                return;
            }
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.containerIdIndexedList);
        BoxInfo boxInfo2 = (BoxInfo) first;
        if (getViewport().right() < boxInfo2.left()) {
            setFirstVisibleIndex(0);
            BoxInfo viewport = getViewport();
            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) getBoxIdIndexedList());
            viewport.setId(((BoxInfo) first2).getId());
            RectFKt.leftAlign(getViewport().getBox(), boxInfo2.getBox());
            return;
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.containerIdIndexedList);
        BoxInfo boxInfo3 = (BoxInfo) last;
        if (getViewport().right() > boxInfo3.right()) {
            setFirstVisibleIndex(this.containerIdIndexedList.size() - 1);
            BoxInfo viewport2 = getViewport();
            last2 = CollectionsKt___CollectionsKt.last((List<? extends Object>) getBoxIdIndexedList());
            viewport2.setId(((BoxInfo) last2).getId());
            RectFKt.moveToEnd$default(getViewport().getBox(), boxInfo3.getBox(), false, 0.0f, 4, null);
        }
    }

    /* renamed from: s */
    public final void m33151s() {
        visibleBoxes();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager scrollBy(float dx, float dy) {
        getViewport().offset(dx, dy);
        m33153u();
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
        RectF copy = RectFKt.copy(indexElementPairWithId.getSecond().getBox());
        RectF m33145m = m33145m(copy);
        if (copy.width() <= getViewport().width()) {
            RectFKt.alignCenterHorizontal(m33145m, copy);
            RectFKt.alignOrigin(getViewport().getBox(), m33145m);
            scrollBy(0.0f, offsetY);
        } else {
            if (offsetX == 0.0f) {
                if (offsetY == 0.0f) {
                    RectFKt.leftAlign(m33145m, copy);
                    RectFKt.alignOrigin(getViewport().getBox(), m33145m);
                    m33153u();
                }
            }
            RectFKt.alignOrigin(getViewport().getBox(), copy);
            scrollBy(offsetX, offsetY);
            m33149q(copy);
        }
        return true;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void setData(@NotNull List<BoxInfo> boxList) {
        Intrinsics.checkNotNullParameter(boxList, "boxList");
        getBoxIdIndexedList().clear();
        getBoxIdIndexedList().addAll(boxList);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void setEnableFreeMovePaper(boolean z) {
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void setScale(float scale) {
        initScale(scale);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager setViewport(@NotNull RectF viewport) {
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        getViewport().getBox().set(viewport);
        return this;
    }

    /* renamed from: t */
    public final void m33152t(BoxInfo resultBox, RectF lastVisibleRegion, Function2<? super RectF, ? super RectF, Boolean> accept) {
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

    /* renamed from: u */
    public final void m33153u() {
        m33147o();
        m33150r();
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
        m33153u();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void updateToVisibleBox(@NotNull BoxInfo box) {
        Intrinsics.checkNotNullParameter(box, "box");
        box.updateVisibleRect(getViewport().getBox());
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void updateViewportSize(@NotNull Size size, boolean calculate) {
        Object firstOrNull;
        float f;
        float f2;
        Intrinsics.checkNotNullParameter(size, "size");
        if (!calculate) {
            RectFKt.resize(getViewport().getBox(), size);
            m33154v();
            m33153u();
            return;
        }
        float actualScale = getViewport().getActualScale();
        String currentBoxId = getCurrentBoxId();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) visibleBoxes());
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        if (boxInfo != null) {
            currentBoxId = boxInfo.getId();
            actualScale = boxInfo.getActualScale();
            f = -boxInfo.getVisibleRect().left;
            f2 = -boxInfo.getVisibleRect().top;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        RectFKt.resize(getViewport().getBox(), size);
        initScale(actualScale);
        scrollTo(currentBoxId, f, f2);
    }

    /* renamed from: v */
    public final void m33154v() {
        setViewportLimitRect(new RectF(getBoundingRect()));
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> visibleBoxes() {
        ArrayList arrayList = new ArrayList();
        if (getFirstVisibleIndex() < 0) {
            return arrayList;
        }
        float m33140h = m33140h();
        RectF rectF = new RectF();
        int size = this.containerIdIndexedList.size();
        for (int firstVisibleIndex = getFirstVisibleIndex(); firstVisibleIndex < size; firstVisibleIndex++) {
            BoxInfo boxInfo = this.containerIdIndexedList.get(firstVisibleIndex);
            Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
            BoxInfo boxInfo2 = boxInfo;
            if (boxInfo2.horCheck(getViewport(), m33140h) != 0) {
                break;
            }
            if (boxInfo2.isVisibleIntersectWidth(getViewport())) {
                BoxInfo boxInfo3 = getBoxIdIndexedList().get(firstVisibleIndex);
                Intrinsics.checkNotNullExpressionValue(boxInfo3, "get(...)");
                BoxInfo copy = boxInfo3.copy();
                copy.updateVisibleRect(getViewport().getBox());
                arrayList.add(copy);
                m33152t(copy, rectF, new Function2<RectF, RectF, Boolean>() { // from class: com.onyx.android.sdk.geometry.boxmanager.HBoxManager$visibleBoxes$1
                    @Override // kotlin.jvm.functions.Function2
                    @NotNull
                    public final Boolean invoke(@NotNull RectF current, @NotNull RectF last) {
                        Intrinsics.checkNotNullParameter(current, "current");
                        Intrinsics.checkNotNullParameter(last, "last");
                        return Boolean.valueOf(current.width() > last.width());
                    }
                });
            } else {
                log("not visible width");
            }
        }
        updateCurrentMinScale(getCurrentBoxId());
        m33156x();
        if (BoxManager.INSTANCE.getDEBUG_LOG()) {
            log("visibleBoxInfo size = " + arrayList.size());
        }
        return arrayList;
    }

    /* renamed from: w */
    public final void m33155w() {
        getBoundingRect().setEmpty();
        int i = 0;
        for (BoxInfo boxInfo : this.containerIdIndexedList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            BoxInfo boxInfo2 = boxInfo;
            if (getBoundingRect().isEmpty()) {
                getBoundingRect().set(boxInfo2.getBox());
            } else {
                getBoundingRect().union(boxInfo2.getBox());
            }
            i = i2;
        }
        m33154v();
    }

    /* renamed from: x */
    public final void m33156x() {
        BoxInfo currentOrFirstBoxInfo$sdk_geometry_release = getCurrentOrFirstBoxInfo$sdk_geometry_release();
        if (currentOrFirstBoxInfo$sdk_geometry_release != null) {
            getViewport().setActualScale(currentOrFirstBoxInfo$sdk_geometry_release.getActualScale());
        }
    }

    /* renamed from: y */
    public final List<BoxInfo> m33157y() {
        ArrayList arrayList = new ArrayList();
        if (getFirstVisibleIndex() < 0) {
            return arrayList;
        }
        float m33140h = m33140h();
        int size = this.containerIdIndexedList.size();
        for (int firstVisibleIndex = getFirstVisibleIndex(); firstVisibleIndex < size; firstVisibleIndex++) {
            BoxInfo boxInfo = this.containerIdIndexedList.get(firstVisibleIndex);
            Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
            BoxInfo boxInfo2 = boxInfo;
            if (boxInfo2.horCheck(getViewport(), m33140h) != 0) {
                break;
            }
            if (boxInfo2.isVisibleIntersectWidth(getViewport())) {
                arrayList.add(boxInfo2);
            } else {
                log("not visible width");
            }
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager scrollTo(float newX, float newY) {
        getViewport().getBox().offsetTo(newX, newY);
        m33153u();
        return this;
    }
}
