package com.onyx.android.sdk.geometry.boxmanager;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.gson.internal.bind.TypeAdapters;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.collections.StringIndexedArrayList;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.p018rx.RxScrollerArgs;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxFlingArgs;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.BoxManagerViewArgs;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b`\u0010aJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\tH\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\u001e\u0010\u0013\u001a\u00020\u00042\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001a\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\u001e\u0010\u001a\u001a\u00020\u00042\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010\u0019\u001a\u00020\u0011H\u0002J\u001e\u0010\u001b\u001a\u00020\u00042\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010\u0019\u001a\u00020\u0011H\u0002J\u001a\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0002J\u001a\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u0002J\u001a\u0010 \u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u0002J&\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\tH\u0002J\u0016\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00070$2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0016\u0010'\u001a\u00020\u00042\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070$H\u0016J\u0016\u0010(\u001a\u00020\u00042\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070$H\u0016J\u0010\u0010,\u001a\u00020+2\u0006\u0010*\u001a\u00020)H\u0016J\u0010\u0010.\u001a\u00020\u00012\u0006\u0010-\u001a\u00020\u0011H\u0016J\u0018\u00102\u001a\u00020\u00042\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020\"H\u0016J \u00106\u001a\u00020\"2\u0006\u00103\u001a\u00020)2\u0006\u00104\u001a\u00020\u00022\u0006\u00105\u001a\u00020\u0002H\u0016J\u0018\u00106\u001a\u00020\u00012\u0006\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u0002H\u0016J\u0018\u0010;\u001a\u00020\u00012\u0006\u00109\u001a\u00020\u00022\u0006\u0010:\u001a\u00020\u0002H\u0016J\u000e\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00070$H\u0016J\u0016\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00070$2\u0006\u0010>\u001a\u00020=H\u0016J\u001c\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00070$2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070$H\u0016J\u0010\u0010B\u001a\u00020\u00042\u0006\u0010A\u001a\u00020\u0007H\u0016J\u0016\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00070$2\u0006\u0010!\u001a\u00020\u0011H\u0016J\u000e\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00070$H\u0016J\u000e\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00070$H\u0016J\b\u0010F\u001a\u00020+H\u0016J\u0010\u0010G\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010H\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0002H\u0016J\b\u0010I\u001a\u00020\u0002H\u0016J\u0010\u0010M\u001a\u00020L2\u0006\u0010K\u001a\u00020JH\u0016J\u0010\u0010P\u001a\u00020N2\u0006\u0010O\u001a\u00020NH\u0016J\u001e\u0010T\u001a\u00020=2\u0006\u0010Q\u001a\u00020N2\f\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00020RH\u0016J\b\u0010U\u001a\u00020\"H\u0016J\b\u0010V\u001a\u00020\u0004H\u0016J\u000e\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00070$H\u0016J\u001e\u0010X\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020N2\f\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00020RH\u0016J\u0010\u0010Z\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020)H\u0016J \u0010]\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u00112\u0006\u0010[\u001a\u00020\u00022\u0006\u0010\\\u001a\u00020\u0002H\u0016R\u0014\u0010_\u001a\u00020+8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0017\u0010^¨\u0006b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "", C6999h.f39688c, "", C4921e.f26528e, "m", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "", "list", "b", "scale", "l", "q", "p", "resultList", "Landroid/graphics/RectF;", "lastVisibleRegion", GoogleApiAvailabilityLight.f29016b, "first", TypeAdapters.C6590r.f36278f, "e", C4921e.f26537n, "boxInfoList", "boundingRectF", "c", C6998g.f39679a, C6997f.f39671c, "firstBox", "secondBox", "i", "j", "documentRectF", "", "a", "", "d", "boxList", "setData", "updateDataAndApplyScale", "", "id", "", "indexOf", "viewport", "setViewport", "Lcom/onyx/android/sdk/base/data/Size;", "size", "calculate", "updateViewportSize", "boxId", "offsetX", "offsetY", "scrollTo", "newX", "newY", "dx", "dy", "scrollBy", "visibleBoxes", "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;", "viewArgs", "collectVisibleBoxList", "convertToVisibleBoxList", "box", "updateToVisibleBox", "collectIntersectsVisibleBoxList", "collectNextViewportVisibleBoxList", "collectPrevViewportVisibleBoxList", "pageCount", "setScale", "initScale", "currentDisplayScale", "Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;", "args", "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;", "createRxScrollerArgs", "Landroid/graphics/Matrix;", "matrix", "loadReboundMatrix", "gestureDeltaMatrix", "Lorg/apache/commons/lang3/Range;", "displayScaleRange", "toBoxManagerViewArgs", "isEnabledContinuousScroll", "alignCenter", "copyBoxList", "applyMatrix", CouchFieldKey.KEY_TOC_PAGE_ID, "updateCurrentMinScale", "widthTolerance", "shrinkScale", "calculateScaleRatioForViewport", "I", "columnCount", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nVDualBoxContinuousManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VDualBoxContinuousManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,636:1\n1855#2,2:637\n350#2,7:639\n1864#2,3:646\n1549#2:650\n1620#2,3:651\n1855#2,2:654\n1#3:649\n703#4,5:656\n703#4,5:661\n*S KotlinDebug\n*F\n+ 1 VDualBoxContinuousManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager\n*L\n214#1:637,2\n224#1:639,7\n322#1:646,3\n481#1:650\n481#1:651,3\n550#1:654,2\n627#1:656,5\n632#1:661,5\n*E\n"})
/* loaded from: classes7.dex */
public final class VDualBoxContinuousManager extends BoxManager {

    /* renamed from: k, reason: from kotlin metadata */
    public final int columnCount = 2;

    /* renamed from: a */
    public final boolean m33226a(RectF documentRectF, BoxInfo firstBox, List<BoxInfo> list) {
        if (!RectF.intersects(documentRectF, firstBox.getBox())) {
            return false;
        }
        BoxInfo copy = firstBox.copy();
        updateToVisibleBox(copy);
        list.add(copy);
        return true;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void alignCenter() {
        RectFKt.alignCenterHorizontal(getViewport().getBox(), getBoundingRect());
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void applyMatrix(@NotNull Matrix gestureDeltaMatrix, @NotNull Range<Float> displayScaleRange) {
        Intrinsics.checkNotNullParameter(gestureDeltaMatrix, "gestureDeltaMatrix");
        Intrinsics.checkNotNullParameter(displayScaleRange, "displayScaleRange");
        BoxManagerViewArgs boxManagerViewArgs = toBoxManagerViewArgs(gestureDeltaMatrix, displayScaleRange);
        setScale(boxManagerViewArgs.getScale());
        scrollTo(boxManagerViewArgs.getViewportLeft(), boxManagerViewArgs.getViewportTop());
    }

    /* renamed from: b */
    public final void m33227b(BoxInfo boxInfo, List<BoxInfo> list) {
        BoxInfo copy = boxInfo.copy();
        copy.updateVisibleRect(getViewport().getBox());
        if (boxInfo.intersect(getViewport())) {
            list.add(copy);
        }
    }

    /* renamed from: c */
    public final void m33228c(List<BoxInfo> boxInfoList, RectF boundingRectF) {
        IntRange until;
        IntProgression step;
        Object orNull;
        Object first;
        if (boxInfoList.size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) boxInfoList);
            BoxInfo boxInfo = (BoxInfo) first;
            RectFKt.centerAlign(boxInfo.getBox(), boundingRectF);
            boxInfo.updateChildrenDisplayRectF();
            return;
        }
        m33232g(boxInfoList, boundingRectF);
        RectF copy = RectFKt.copy(boundingRectF);
        copy.right = (copy.left + (copy.width() / 2.0f)) - (m33233h() / 2.0f);
        RectF copy2 = RectFKt.copy(boundingRectF);
        copy2.left += (copy2.width() / 2.0f) + (m33233h() / 2.0f);
        RectF rectF = new RectF();
        until = RangesKt___RangesKt.until(0, boxInfoList.size());
        step = RangesKt___RangesKt.step(until, this.columnCount);
        int first2 = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 <= 0 || first2 > last) && (step2 >= 0 || last > first2)) {
            return;
        }
        while (true) {
            BoxInfo boxInfo2 = boxInfoList.get(first2);
            RectFKt.rightAlign(boxInfo2.getBox(), copy);
            rectF.set(boxInfo2.getBox());
            orNull = CollectionsKt___CollectionsKt.getOrNull(boxInfoList, first2 + 1);
            BoxInfo boxInfo3 = (BoxInfo) orNull;
            if (boxInfo3 != null) {
                RectFKt.leftAlign(boxInfo3.getBox(), copy2);
                rectF.union(boxInfo3.getBox());
                RectFKt.alignCenterVertical(boxInfo3.getBox(), rectF);
                boxInfo3.updateChildrenDisplayRectF();
            }
            RectFKt.alignCenterVertical(boxInfo2.getBox(), rectF);
            boxInfo2.updateChildrenDisplayRectF();
            if (first2 == last) {
                return;
            } else {
                first2 += step2;
            }
        }
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public float calculateScaleRatioForViewport(@NotNull RectF viewport, float widthTolerance, float shrinkScale) {
        BoxInfo copy;
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        float m33233h = m33233h() * (this.columnCount - 1);
        RectF copy2 = RectFKt.copy(viewport);
        BoxInfo currentOrFirstBoxInfo$sdk_geometry_release = getCurrentOrFirstBoxInfo$sdk_geometry_release();
        if (currentOrFirstBoxInfo$sdk_geometry_release == null || (copy = currentOrFirstBoxInfo$sdk_geometry_release.copy()) == null) {
            return 1.0f;
        }
        List<BoxInfo> m33229d = m33229d(copy);
        Iterator<T> it2 = m33229d.iterator();
        float f = 0.0f;
        float f2 = 0.0f;
        while (it2.hasNext()) {
            f2 += ((BoxInfo) it2.next()).width();
        }
        if (Math.abs(copy2.width() - (f2 + m33233h)) < widthTolerance) {
            RectFKt.scaleRect(copy2, shrinkScale, 1.0f);
        }
        float actualScale = copy.getActualScale();
        Iterator<T> it3 = m33229d.iterator();
        while (it3.hasNext()) {
            f += ((BoxInfo) it3.next()).getOriginRectFWithMargin().width();
        }
        return (copy2.width() / (f + m33233h)) / actualScale;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> collectIntersectsVisibleBoxList(@NotNull RectF documentRectF) {
        IntRange until;
        IntProgression step;
        Object orNull;
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
        until = RangesKt___RangesKt.until(i, getBoxIdIndexedList().size());
        step = RangesKt___RangesKt.step(until, this.columnCount);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (true) {
                BoxInfo boxInfo = getBoxIdIndexedList().get(first);
                Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
                orNull = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), first + 1);
                BoxInfo boxInfo2 = (BoxInfo) orNull;
                boolean m33226a = m33226a(documentRectF, boxInfo, arrayList);
                if (boxInfo2 != null && m33226a(documentRectF, boxInfo2, arrayList)) {
                    m33226a = true;
                }
                if (!m33226a || first == last) {
                    break;
                }
                first += step2;
            }
        }
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
            m33240o();
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
            rxScrollerArgs.setFlingActionType(args.getVelocityX() > 0.0f ? RxScrollerArgs.FlingActionType.CONTINUOUS_SCROLL_TO_RIGHT : RxScrollerArgs.FlingActionType.CONTINUOUS_SCROLL_TO_LEFT);
        } else {
            rxScrollerArgs.setStartX(args.getIsRestoreScrollBegin() ? args.getScrollBeginX() : getViewport().getBox().left);
            rxScrollerArgs.setStartY(getViewport().getBox().top);
            rxScrollerArgs.setFrictionX(Float.MAX_VALUE);
            rxScrollerArgs.setFrictionY(1.0f);
            rxScrollerArgs.setFlingActionType(args.getVelocityY() > 0.0f ? RxScrollerArgs.FlingActionType.CONTINUOUS_SCROLL_TO_BOTTOM : RxScrollerArgs.FlingActionType.CONTINUOUS_SCROLL_TO_TOP);
        }
        return rxScrollerArgs;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    /* renamed from: currentDisplayScale */
    public float getCurrentDisplayScale() {
        return getViewport().getActualScale() / getCurrentMinScale();
    }

    /* renamed from: d */
    public final List<BoxInfo> m33229d(BoxInfo boxInfo) {
        List<BoxInfo> listOf;
        int indexOfId = getBoxIdIndexedList().indexOfId(boxInfo.getId());
        if (indexOfId < 0) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(boxInfo);
            return listOf;
        }
        int i = this.columnCount;
        int i2 = ((indexOfId % i) + 1) * (indexOfId / i);
        return CollectionKt.safelySubList(getBoxIdIndexedList(), i2, i + i2);
    }

    /* renamed from: e */
    public final BoxInfo m33230e(BoxInfo first, BoxInfo second) {
        if (second == null) {
            return first;
        }
        RectF zeroOriginRoundRectF = getViewport().toZeroOriginRoundRectF();
        RectF copy = RectFKt.copy(second.getVisibleRect());
        if (!copy.intersect(zeroOriginRoundRectF)) {
            return first;
        }
        RectF copy2 = RectFKt.copy(first.getVisibleRect());
        copy2.intersect(zeroOriginRoundRectF);
        return copy.width() > copy2.width() ? second : first;
    }

    /* renamed from: f */
    public final float m33231f(BoxInfo first, BoxInfo second) {
        RectF copy = RectFKt.copy(first.getOriginRectFWithMargin());
        if (second != null) {
            float gap = copy.right + getGap();
            copy.right = gap;
            copy.right = gap + second.getOriginRectFWithMargin().width();
            copy.bottom = copy.top + Math.max(copy.height(), second.getOriginRectFWithMargin().height());
        }
        return RectFKt.scaleToPageWithAspectScaleCheck$default(copy, getViewport().toZeroOriginRoundRectF(), 0.0f, 2, null);
    }

    /* renamed from: g */
    public final void m33232g(List<BoxInfo> boxInfoList, RectF boundingRectF) {
        Iterator<T> it2 = boxInfoList.iterator();
        float f = 0.0f;
        while (it2.hasNext()) {
            f = Math.max(f, ((BoxInfo) it2.next()).getBox().width());
        }
        boundingRectF.right = boundingRectF.left + (f * 2) + m33233h();
    }

    /* renamed from: h */
    public final float m33233h() {
        return getGap() * getViewport().getActualScale();
    }

    /* renamed from: i */
    public final RectF m33234i(BoxInfo firstBox, BoxInfo secondBox) {
        RectF copy = RectFKt.copy(firstBox.getBox());
        return secondBox != null ? RectFKt.unionOrCopy(copy, secondBox.getBox()) : copy;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public int indexOf(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return getBoxIdIndexedList().indexOfId(id);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void initScale(float scale) {
        getViewport().setActualScale(scale);
        m33237l(scale);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public boolean isEnabledContinuousScroll() {
        return true;
    }

    /* renamed from: j */
    public final RectF m33235j(BoxInfo firstBox, BoxInfo secondBox) {
        RectF copy = RectFKt.copy(firstBox.getVisibleRect());
        return secondBox != null ? RectFKt.unionOrCopy(copy, secondBox.getVisibleRect()) : copy;
    }

    /* renamed from: k */
    public final void m33236k() {
        RectFKt.limit(getViewport().getBox(), getViewportLimitRect());
        if (getEnableFreeMovePaper()) {
            return;
        }
        RectFKt.alignCenterHorizontalIf(getViewport().getBox(), getBoundingRect());
    }

    /* renamed from: l */
    public final void m33237l(float scale) {
        IntRange until;
        IntProgression step;
        Object orNull;
        boolean z;
        VDualBoxContinuousManager vDualBoxContinuousManager = this;
        double m33233h = m33233h();
        until = RangesKt___RangesKt.until(0, getBoxIdIndexedList().size());
        step = RangesKt___RangesKt.step(until, vDualBoxContinuousManager.columnCount);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            double d = 0.0d;
            while (true) {
                BoxInfo boxInfo = getBoxIdIndexedList().get(first);
                Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
                BoxInfo boxInfo2 = boxInfo;
                boxInfo2.setScale(scale);
                orNull = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), first + 1);
                BoxInfo boxInfo3 = (BoxInfo) orNull;
                if (boxInfo3 != null) {
                    boxInfo3.setScale(scale);
                }
                double height = vDualBoxContinuousManager.m33234i(boxInfo2, boxInfo3).height();
                double height2 = boxInfo2.height();
                if (first > 0) {
                    d += m33233h;
                }
                boxInfo2.getBox().top = (float) d;
                boxInfo2.getBox().bottom = (float) (height2 + d);
                if (boxInfo3 != null) {
                    z = false;
                    RectFKt.moveToEnd(boxInfo3.getBox(), boxInfo2.getBox(), false, m33233h());
                    RectFKt.topAlign(boxInfo3.getBox(), boxInfo2.getBox());
                } else {
                    z = false;
                }
                d += height;
                if (first == last) {
                    break;
                }
                first += step2;
                vDualBoxContinuousManager = this;
            }
        }
        m33242q();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public Matrix loadReboundMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        RectF copy = RectFKt.copy(getViewportLimitRect());
        RectF copy2 = RectFKt.copy(getViewport().getBox());
        RectF copy3 = RectFKt.copy(getBoundingRect());
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
        RectFKt.limit(copy2, copy);
        if (!getEnableFreeMovePaper()) {
            RectFKt.alignCenterHorizontalIf(copy2, copy3);
        }
        Matrix matrix2 = new Matrix(matrix);
        matrix2.postTranslate(-(copy2.left - f4), -(copy2.top - f5));
        return matrix2;
    }

    /* renamed from: m */
    public final void m33238m() {
        IntRange until;
        IntProgression step;
        Object first;
        Object orNull;
        Object orNull2;
        setFirstVisibleIndex(-1);
        if (getBoxIdIndexedList().size() <= 0) {
            return;
        }
        float m33233h = m33233h();
        until = RangesKt___RangesKt.until(0, getBoxIdIndexedList().size());
        step = RangesKt___RangesKt.step(until, this.columnCount);
        int first2 = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first2 <= last) || (step2 < 0 && last <= first2)) {
            while (true) {
                BoxInfo boxInfo = getBoxIdIndexedList().get(first2);
                Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
                BoxInfo boxInfo2 = boxInfo;
                orNull2 = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), first2 + 1);
                if (RectFKt.verCheck(m33234i(boxInfo2, (BoxInfo) orNull2), getViewport().getBox(), m33233h) != 0) {
                    if (first2 == last) {
                        break;
                    } else {
                        first2 += step2;
                    }
                } else {
                    setFirstVisibleIndex(first2);
                    getViewport().setId(boxInfo2.getId());
                    return;
                }
            }
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) getBoxIdIndexedList());
        BoxInfo boxInfo3 = (BoxInfo) first;
        if (getViewport().bottom() < boxInfo3.top()) {
            setFirstVisibleIndex(0);
            getViewport().setId(boxInfo3.getId());
            RectFKt.topAlign(getViewport().getBox(), boxInfo3.getBox());
            return;
        }
        int size = getBoxIdIndexedList().size();
        int i = this.columnCount;
        int i2 = (size / i) * i;
        BoxInfo boxInfo4 = getBoxIdIndexedList().get(i2);
        Intrinsics.checkNotNullExpressionValue(boxInfo4, "get(...)");
        BoxInfo boxInfo5 = boxInfo4;
        orNull = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), i2 + 1);
        RectF m33234i = m33234i(boxInfo5, (BoxInfo) orNull);
        if (getViewport().bottom() > m33234i.bottom) {
            setFirstVisibleIndex(i2);
            getViewport().setId(boxInfo5.getId());
            getViewport().moveToBottom(m33234i.bottom);
        }
    }

    /* renamed from: n */
    public final void m33239n(List<BoxInfo> resultList, RectF lastVisibleRegion) {
        Object first;
        Object orNull;
        if (resultList.isEmpty()) {
            return;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) resultList);
        BoxInfo boxInfo = (BoxInfo) first;
        orNull = CollectionsKt___CollectionsKt.getOrNull(resultList, 1);
        BoxInfo boxInfo2 = (BoxInfo) orNull;
        RectF m33235j = m33235j(boxInfo, boxInfo2);
        if (m33235j.intersect(getViewport().toZeroOriginRoundRectF()) && m33235j.height() > lastVisibleRegion.height()) {
            setCurrentBoxId(m33230e(boxInfo, boxInfo2).getId());
            lastVisibleRegion.set(m33235j);
        }
    }

    /* renamed from: o */
    public final void m33240o() {
        m33236k();
        m33238m();
    }

    /* renamed from: p */
    public final void m33241p() {
        setViewportLimitRect(new RectF(getBoundingRect()));
        if (getEnableFreeMovePaper()) {
            getViewportLimitRect().inset(-getViewport().getBox().width(), -getViewport().getBox().height());
            getViewportLimitRect().inset(300.0f, 300.0f);
        }
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public int pageCount() {
        return getBoxIdIndexedList().size();
    }

    /* renamed from: q */
    public final void m33242q() {
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
        m33228c(getBoxIdIndexedList(), getBoundingRect());
        m33241p();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager scrollBy(float dx, float dy) {
        getViewport().offset(dx, dy);
        m33240o();
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
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void setScale(float scale) {
        if (getViewport().getActualScale() == scale) {
            return;
        }
        getViewport().setActualScale(scale);
        m33237l(scale);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager setViewport(@NotNull RectF viewport) {
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        getViewport().getBox().set(viewport);
        return this;
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
        m33240o();
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
        m33241p();
        m33240o();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> visibleBoxes() {
        IntRange until;
        IntProgression step;
        Float m73066minOrNull;
        Object orNull;
        ArrayList arrayList = new ArrayList();
        if (getFirstVisibleIndex() < 0) {
            return arrayList;
        }
        float m33233h = m33233h();
        RectF rectF = new RectF();
        ArrayList arrayList2 = new ArrayList();
        until = RangesKt___RangesKt.until(getFirstVisibleIndex(), getBoxIdIndexedList().size());
        step = RangesKt___RangesKt.step(until, this.columnCount);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (true) {
                BoxInfo boxInfo = getBoxIdIndexedList().get(first);
                Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
                BoxInfo boxInfo2 = boxInfo;
                orNull = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), first + 1);
                BoxInfo boxInfo3 = (BoxInfo) orNull;
                if (RectFKt.verCheck(m33234i(boxInfo2, boxInfo3), getViewport().getBox(), m33233h) == 0) {
                    ArrayList arrayList3 = new ArrayList();
                    m33227b(boxInfo2, arrayList3);
                    if (boxInfo3 != null) {
                        m33227b(boxInfo3, arrayList3);
                    }
                    arrayList2.add(Float.valueOf(m33231f(boxInfo2, boxInfo3)));
                    m33239n(arrayList3, rectF);
                    arrayList.addAll(arrayList3);
                    if (first == last) {
                        break;
                    }
                    first += step2;
                } else {
                    break;
                }
            }
        }
        m73066minOrNull = CollectionsKt___CollectionsKt.m73066minOrNull((Iterable<Float>) arrayList2);
        setCurrentMinScale(m73066minOrNull != null ? m73066minOrNull.floatValue() : 1.0f);
        return arrayList;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager scrollTo(float newX, float newY) {
        getViewport().offsetTo(newX, newY);
        m33240o();
        return this;
    }
}
