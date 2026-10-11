package com.onyx.android.sdk.geometry.boxmanager;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.blankj.utilcode.util.LogUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.collections.StringIndexedArrayList;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.p018rx.RxScrollerArgs;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxFlingArgs;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.BoxManagerViewArgs;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sun.org.apache.bcel.internal.Constants;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bW\u0010XJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002JP\u0010\u0016\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r26\u0010\u0015\u001a2\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00140\u000fH\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\u001e\u0010\u001b\u001a\u00020\u00042\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00182\u0006\u0010\u001a\u001a\u00020\rH\u0002J\u0016\u0010\u001e\u001a\u00020\u00042\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\u0016\u0010\u001f\u001a\u00020\u00042\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\u0010\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0016J\u0010\u0010%\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\rH\u0016J\u0018\u0010)\u001a\u00020\u00042\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u0014H\u0016J \u0010-\u001a\u00020\u00142\u0006\u0010*\u001a\u00020 2\u0006\u0010+\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u0002H\u0016J\u0018\u0010-\u001a\u00020\u00012\u0006\u0010.\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u0002H\u0016J\u0018\u00102\u001a\u00020\u00012\u0006\u00100\u001a\u00020\u00022\u0006\u00101\u001a\u00020\u0002H\u0016J\u000e\u00103\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\u0016\u00106\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001c2\u0006\u00105\u001a\u000204H\u0016J\u001c\u00108\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001c2\f\u00107\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\u0010\u0010:\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u000bH\u0016J\u0016\u0010<\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001c2\u0006\u0010;\u001a\u00020\rH\u0016J\u000e\u0010=\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\u000e\u0010>\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\b\u0010?\u001a\u00020\"H\u0016J\u0010\u0010@\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010A\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\b\u0010B\u001a\u00020\u0002H\u0016J\u0010\u0010F\u001a\u00020E2\u0006\u0010D\u001a\u00020CH\u0016J\u0010\u0010I\u001a\u00020G2\u0006\u0010H\u001a\u00020GH\u0016J\u001e\u0010M\u001a\u0002042\u0006\u0010J\u001a\u00020G2\f\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00020KH\u0016J\b\u0010N\u001a\u00020\u0014H\u0016J\b\u0010O\u001a\u00020\u0004H\u0016J\u000e\u0010P\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\u001e\u0010Q\u001a\u00020\u00042\u0006\u0010J\u001a\u00020G2\f\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00020KH\u0016J\u0010\u0010S\u001a\u00020\u00042\u0006\u0010R\u001a\u00020 H\u0016J \u0010V\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\r2\u0006\u0010T\u001a\u00020\u00022\u0006\u0010U\u001a\u00020\u0002H\u0016¨\u0006Y"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/boxmanager/HBoxContinuousManager;", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "", "b", "", C6998g.f39679a, "e", "scale", "d", "i", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "resultBox", "Landroid/graphics/RectF;", "lastVisibleRegion", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", Keywords.FUNC_CURRENT_STRING, Keywords.FUNC_LAST_STRING, "", "accept", C6997f.f39671c, "c", "", "boxInfoList", "boundingRectF", "a", "", "boxList", "setData", "updateDataAndApplyScale", "", "id", "", "indexOf", "viewport", "setViewport", "Lcom/onyx/android/sdk/base/data/Size;", "size", "calculate", "updateViewportSize", "boxId", "offsetX", "offsetY", "scrollTo", "newX", "newY", "dx", "dy", "scrollBy", "visibleBoxes", "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;", "viewArgs", "collectVisibleBoxList", "list", "convertToVisibleBoxList", "box", "updateToVisibleBox", "documentRectF", "collectIntersectsVisibleBoxList", "collectNextViewportVisibleBoxList", "collectPrevViewportVisibleBoxList", "pageCount", "setScale", "initScale", "currentDisplayScale", "Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;", "args", "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;", "createRxScrollerArgs", "Landroid/graphics/Matrix;", "matrix", "loadReboundMatrix", "gestureDeltaMatrix", "Lorg/apache/commons/lang3/Range;", "displayScaleRange", "toBoxManagerViewArgs", "isEnabledContinuousScroll", "alignCenter", "copyBoxList", "applyMatrix", CouchFieldKey.KEY_TOC_PAGE_ID, "updateCurrentMinScale", "widthTolerance", "shrinkScale", "calculateScaleRatioForViewport", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHBoxContinuousManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HBoxContinuousManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/HBoxContinuousManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,466:1\n1855#2,2:467\n350#2,7:469\n1864#2,3:476\n1864#2,3:479\n1549#2:483\n1620#2,3:484\n1855#2,2:487\n1#3:482\n*S KotlinDebug\n*F\n+ 1 HBoxContinuousManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/HBoxContinuousManager\n*L\n191#1:467,2\n201#1:469,7\n251#1:476,3\n271#1:479,3\n415#1:483\n415#1:484,3\n446#1:487,2\n*E\n"})
/* loaded from: classes7.dex */
public class HBoxContinuousManager extends BoxManager {
    /* renamed from: a */
    public final void m33124a(List<BoxInfo> boxInfoList, RectF boundingRectF) {
        for (BoxInfo boxInfo : boxInfoList) {
            RectFKt.alignCenterVertical(boxInfo.getBox(), boundingRectF);
            boxInfo.updateChildrenDisplayRectF();
        }
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void alignCenter() {
        RectFKt.alignCenterVertical(getViewport().getBox(), getBoundingRect());
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
    public final float m33125b() {
        return getGap() * getViewport().getActualScale();
    }

    /* renamed from: c */
    public final void m33126c() {
        RectFKt.limit(getViewport().getBox(), getViewportLimitRect());
        if (getEnableFreeMovePaper()) {
            return;
        }
        RectFKt.alignCenterVerticalIf(getViewport().getBox(), getBoundingRect());
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
            m33130g();
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
    public final void m33127d(float scale) {
        double m33125b = m33125b();
        double d = 0.0d;
        int i = 0;
        for (BoxInfo boxInfo : getBoxIdIndexedList()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            BoxInfo boxInfo2 = boxInfo;
            boxInfo2.setScale(scale);
            double width = boxInfo2.width();
            if (i > 0) {
                d += m33125b;
            }
            double d2 = width + d;
            boxInfo2.getBox().left = (float) d;
            boxInfo2.getBox().right = (float) d2;
            i = i2;
            d = d2;
        }
        m33132i();
    }

    /* renamed from: e */
    public final void m33128e() {
        Object first;
        Object last;
        setFirstVisibleIndex(-1);
        if (getBoxIdIndexedList().size() <= 0) {
            return;
        }
        float m33125b = m33125b();
        int size = getBoxIdIndexedList().size();
        for (int i = 0; i < size; i++) {
            BoxInfo boxInfo = getBoxIdIndexedList().get(i);
            Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
            BoxInfo boxInfo2 = boxInfo;
            if (boxInfo2.horCheck(getViewport(), m33125b) == 0) {
                setFirstVisibleIndex(i);
                getViewport().setId(boxInfo2.getId());
                return;
            }
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) getBoxIdIndexedList());
        BoxInfo boxInfo3 = (BoxInfo) first;
        if (getViewport().right() < boxInfo3.left()) {
            setFirstVisibleIndex(0);
            getViewport().setId(boxInfo3.getId());
            RectFKt.leftAlign(getViewport().getBox(), boxInfo3.getBox());
            return;
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) getBoxIdIndexedList());
        BoxInfo boxInfo4 = (BoxInfo) last;
        if (getViewport().right() > boxInfo4.right()) {
            setFirstVisibleIndex(getBoxIdIndexedList().size() - 1);
            getViewport().setId(boxInfo4.getId());
            RectFKt.moveToEnd$default(getViewport().getBox(), boxInfo4.getBox(), false, 0.0f, 4, null);
        }
    }

    /* renamed from: f */
    public final void m33129f(BoxInfo resultBox, RectF lastVisibleRegion, Function2<? super RectF, ? super RectF, Boolean> accept) {
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

    /* renamed from: g */
    public final void m33130g() {
        m33126c();
        m33128e();
    }

    /* renamed from: h */
    public final void m33131h() {
        setViewportLimitRect(new RectF(getBoundingRect()));
        if (getEnableFreeMovePaper()) {
            getViewportLimitRect().inset(-getViewport().getBox().width(), -getViewport().getBox().height());
            getViewportLimitRect().inset(300.0f, 300.0f);
        }
    }

    /* renamed from: i */
    public final void m33132i() {
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
        m33124a(getBoxIdIndexedList(), getBoundingRect());
        m33131h();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public int indexOf(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return getBoxIdIndexedList().indexOfId(id);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void initScale(float scale) {
        getViewport().setActualScale(scale);
        m33127d(scale);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public boolean isEnabledContinuousScroll() {
        return true;
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
            RectFKt.alignCenterVerticalIf(copy2, copy3);
        }
        Matrix matrix2 = new Matrix(matrix);
        matrix2.postTranslate(-(copy2.left - f4), -(copy2.top - f5));
        return matrix2;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public int pageCount() {
        return getBoxIdIndexedList().size();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager scrollBy(float dx, float dy) {
        getViewport().offset(dx, dy);
        m33130g();
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
        m33127d(scale);
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
        m33130g();
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
        m33131h();
        m33130g();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> visibleBoxes() {
        ArrayList arrayList = new ArrayList();
        if (getFirstVisibleIndex() < 0) {
            return arrayList;
        }
        float m33125b = m33125b();
        RectF rectF = new RectF();
        int size = getBoxIdIndexedList().size();
        for (int firstVisibleIndex = getFirstVisibleIndex(); firstVisibleIndex < size; firstVisibleIndex++) {
            BoxInfo boxInfo = getBoxIdIndexedList().get(firstVisibleIndex);
            Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
            BoxInfo boxInfo2 = boxInfo;
            if (boxInfo2.horCheck(getViewport(), m33125b) != 0) {
                break;
            }
            BoxInfo copy = boxInfo2.copy();
            copy.updateVisibleRect(getViewport().getBox());
            if (boxInfo2.intersect(getViewport())) {
                arrayList.add(copy);
                m33129f(copy, rectF, new Function2<RectF, RectF, Boolean>() { // from class: com.onyx.android.sdk.geometry.boxmanager.HBoxContinuousManager$visibleBoxes$1
                    @Override // kotlin.jvm.functions.Function2
                    @NotNull
                    public final Boolean invoke(@NotNull RectF current, @NotNull RectF last) {
                        Intrinsics.checkNotNullParameter(current, "current");
                        Intrinsics.checkNotNullParameter(last, "last");
                        return Boolean.valueOf(current.width() > last.width());
                    }
                });
            }
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager scrollTo(float newX, float newY) {
        getViewport().offsetTo(newX, newY);
        m33130g();
        return this;
    }
}
