package com.onyx.android.sdk.geometry.boxmanager;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.gson.internal.bind.TypeAdapters;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.collections.StringIndexedArrayList;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.CollectionKt;
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
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b|\u0010}J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\b\u0010\f\u001a\u00020\u0006H\u0002J\u001e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u000eH\u0002J\n\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\u001a\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\nH\u0002J\u001a\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\nH\u0002J&\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u000eH\u0002J\b\u0010\u001f\u001a\u00020\u0006H\u0002J\u0010\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0002J\u0010\u0010$\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0002J\u0012\u0010%\u001a\u0004\u0018\u00010\"2\u0006\u0010!\u001a\u00020 H\u0002J\u0012\u0010&\u001a\u0004\u0018\u00010\"2\u0006\u0010!\u001a\u00020 H\u0002J\n\u0010'\u001a\u0004\u0018\u00010\"H\u0002J\n\u0010(\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004H\u0002J\u0010\u0010,\u001a\u00020\"2\u0006\u0010+\u001a\u00020\u0004H\u0002J\u0010\u0010-\u001a\u00020\"2\u0006\u0010+\u001a\u00020\u0004H\u0002J\b\u0010.\u001a\u00020\u0006H\u0002J\u001e\u00101\u001a\u00020\u00062\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\n0\u000e2\u0006\u00100\u001a\u00020\u0004H\u0002J\u001a\u00104\u001a\u00020\n2\u0006\u00102\u001a\u00020\n2\b\u00103\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u00107\u001a\u0004\u0018\u00010\n2\u0006\u00106\u001a\u000205H\u0002J\b\u00108\u001a\u00020\u0004H\u0002J\b\u00109\u001a\u00020\u0004H\u0002J\b\u0010:\u001a\u00020\u0006H\u0002J\b\u0010;\u001a\u00020\u0006H\u0002J\b\u0010<\u001a\u00020\u0006H\u0002J\u0010\u0010=\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0004H\u0002J\u0006\u0010>\u001a\u00020\u0002J\u0016\u0010@\u001a\u00020\u00062\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0016\u0010A\u001a\u00020\u00062\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0010\u0010D\u001a\u00020\u00132\u0006\u0010C\u001a\u00020BH\u0016J\u0010\u0010F\u001a\u00020\u00012\u0006\u0010E\u001a\u00020\u0004H\u0016J\u0018\u0010J\u001a\u00020\u00062\u0006\u0010H\u001a\u00020G2\u0006\u0010I\u001a\u00020\u001dH\u0016J \u0010N\u001a\u00020\u001d2\u0006\u0010K\u001a\u00020B2\u0006\u0010L\u001a\u00020\u00022\u0006\u0010M\u001a\u00020\u0002H\u0016J\u0018\u0010N\u001a\u00020\u00012\u0006\u0010O\u001a\u00020\u00022\u0006\u0010P\u001a\u00020\u0002H\u0016J\u0018\u0010S\u001a\u00020\u00012\u0006\u0010Q\u001a\u00020\u00022\u0006\u0010R\u001a\u00020\u0002H\u0016J\u000e\u0010T\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0016\u0010W\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010V\u001a\u00020UH\u0016J\u001c\u0010X\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0010\u0010Z\u001a\u00020\u00062\u0006\u0010Y\u001a\u00020\nH\u0016J\u0016\u0010[\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u001c\u001a\u00020\u0004H\u0016J\u000e\u0010\\\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u000e\u0010]\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\b\u0010^\u001a\u00020\u0013H\u0016J\u0010\u0010_\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010`\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010a\u001a\u00020\u0002H\u0016J\u0010\u0010b\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0016J\u0010\u0010d\u001a\u0002052\u0006\u0010c\u001a\u000205H\u0016J\u001e\u0010g\u001a\u00020U2\u0006\u00106\u001a\u0002052\f\u0010f\u001a\b\u0012\u0004\u0012\u00020\u00020eH\u0016J\b\u0010h\u001a\u00020\u001dH\u0016J\b\u0010i\u001a\u00020\u0006H\u0016J\u000e\u0010j\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u001e\u0010k\u001a\u00020\u00062\u0006\u00106\u001a\u0002052\f\u0010f\u001a\b\u0012\u0004\u0012\u00020\u00020eH\u0016J\u0010\u0010m\u001a\u00020\u00062\u0006\u0010l\u001a\u00020BH\u0016J \u0010p\u001a\u00020\u00022\u0006\u0010E\u001a\u00020\u00042\u0006\u0010n\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u0002H\u0016R\u0014\u0010r\u001a\u00020\u00138\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0003\u0010qR\u0016\u0010a\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u001fR\u001a\u0010u\u001a\b\u0012\u0004\u0012\u00020\n0s8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010tR$\u0010{\u001a\u00020\u001d2\u0006\u0010v\u001a\u00020\u001d8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bw\u0010x\"\u0004\by\u0010z¨\u0006~"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "", C4921e.f26537n, "Landroid/graphics/RectF;", "v", "", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "A", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "H", "G", "boxInfo", "", "list", "b", "l", GoogleApiAvailabilityLight.f29016b, "", "containerIndex", "r", "scale", "y", "firstBox", "secondBox", "s", "t", "documentRectF", "", "a", "F", "Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;", "args", "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;", "d", "e", C6997f.f39671c, C6998g.f39679a, C6999h.f39688c, "m", "displayRectF", "u", "targetRectF", "j", "i", "E", "resultList", "lastVisibleRegion", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "first", TypeAdapters.C6590r.f36278f, "c", "Landroid/graphics/Matrix;", "gestureDeltaMatrix", C4921e.f26528e, "q", "p", "x", "w", "B", "z", "minDisplayScale", "boxList", "setData", "updateDataAndApplyScale", "", "id", "indexOf", "viewport", "setViewport", "Lcom/onyx/android/sdk/base/data/Size;", "size", "calculate", "updateViewportSize", "boxId", "offsetX", "offsetY", "scrollTo", "newX", "newY", "dx", "dy", "scrollBy", "visibleBoxes", "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;", "viewArgs", "collectVisibleBoxList", "convertToVisibleBoxList", "box", "updateToVisibleBox", "collectIntersectsVisibleBoxList", "collectNextViewportVisibleBoxList", "collectPrevViewportVisibleBoxList", "pageCount", "setScale", "initScale", "currentDisplayScale", "createRxScrollerArgs", "matrix", "loadReboundMatrix", "Lorg/apache/commons/lang3/Range;", "displayScaleRange", "toBoxManagerViewArgs", "isEnabledContinuousScroll", "alignCenter", "copyBoxList", "applyMatrix", CouchFieldKey.KEY_TOC_PAGE_ID, "updateCurrentMinScale", "widthTolerance", "shrinkScale", "calculateScaleRatioForViewport", "I", "columnCount", "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;", "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;", "containerIdIndexedList", "value", "getEnableFreeMovePaper", Constants.BOOLEAN_VALUE_SIG, "setEnableFreeMovePaper", "(Z)V", "enableFreeMovePaper", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHDualBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HDualBoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,945:1\n1855#2,2:946\n350#2,7:948\n1864#2,3:955\n1549#2:959\n1620#2,3:960\n1#3:958\n*S KotlinDebug\n*F\n+ 1 HDualBoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager\n*L\n269#1:946,2\n279#1:948,7\n493#1:955,3\n825#1:959\n825#1:960,3\n*E\n"})
/* loaded from: classes7.dex */
public final class HDualBoxManager extends BoxManager {

    /* renamed from: k, reason: from kotlin metadata */
    public final int columnCount = 2;

    /* renamed from: l, reason: from kotlin metadata */
    public float currentDisplayScale = 1.0f;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final StringIndexedArrayList<BoxInfo> containerIdIndexedList = new StringIndexedArrayList<>(new Function1<BoxInfo, String>() { // from class: com.onyx.android.sdk.geometry.boxmanager.HDualBoxManager$containerIdIndexedList$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final String invoke(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getId();
        }
    }, 0, 2, null);

    /* renamed from: A */
    public final void m33158A() {
        Object first;
        Object last;
        Object first2;
        setFirstVisibleIndex(-1);
        if (this.containerIdIndexedList.size() <= 0) {
            return;
        }
        float m33176k = m33176k();
        int size = this.containerIdIndexedList.size();
        for (int i = 0; i < size; i++) {
            BoxInfo boxInfo = this.containerIdIndexedList.get(i);
            Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
            if (boxInfo.horCheck(getViewport(), m33176k) == 0) {
                setFirstVisibleIndex(i * this.columnCount);
                getViewport().setId(getBoxIdIndexedList().get(getFirstVisibleIndex()).getId());
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
            setFirstVisibleIndex((this.containerIdIndexedList.size() - 1) * this.columnCount);
            getViewport().setId(getBoxIdIndexedList().get(getFirstVisibleIndex()).getId());
            RectFKt.moveToEnd$default(getViewport().getBox(), boxInfo3.getBox(), false, 0.0f, 4, null);
        }
    }

    /* renamed from: B */
    public final void m33159B() {
        visibleBoxes();
    }

    /* renamed from: C */
    public final void m33160C(List<BoxInfo> resultList, RectF lastVisibleRegion) {
        Object first;
        Object orNull;
        if (resultList.isEmpty()) {
            return;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) resultList);
        BoxInfo boxInfo = (BoxInfo) first;
        orNull = CollectionsKt___CollectionsKt.getOrNull(resultList, 1);
        BoxInfo boxInfo2 = (BoxInfo) orNull;
        RectF m33185t = m33185t(boxInfo, boxInfo2);
        if (m33185t.intersect(m33187v()) && m33185t.width() > lastVisibleRegion.width()) {
            setCurrentBoxId(m33168c(boxInfo, boxInfo2).getId());
            lastVisibleRegion.set(m33185t);
        }
    }

    /* renamed from: D */
    public final void m33161D() {
        m33189x();
        m33158A();
    }

    /* renamed from: E */
    public final void m33162E() {
        setViewportLimitRect(new RectF(getBoundingRect()));
    }

    /* renamed from: F */
    public final void m33163F() {
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
        m33162E();
    }

    /* renamed from: G */
    public final void m33164G() {
        BoxInfo currentOrFirstBoxInfo$sdk_geometry_release = getCurrentOrFirstBoxInfo$sdk_geometry_release();
        if (currentOrFirstBoxInfo$sdk_geometry_release != null) {
            getViewport().setActualScale(currentOrFirstBoxInfo$sdk_geometry_release.getActualScale());
        }
    }

    /* renamed from: H */
    public final List<BoxInfo> m33165H() {
        ArrayList arrayList = new ArrayList();
        if (getFirstVisibleIndex() < 0) {
            return arrayList;
        }
        float m33176k = m33176k();
        int size = this.containerIdIndexedList.size();
        for (int firstVisibleIndex = getFirstVisibleIndex() / this.columnCount; firstVisibleIndex < size; firstVisibleIndex++) {
            BoxInfo boxInfo = this.containerIdIndexedList.get(firstVisibleIndex);
            Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
            BoxInfo boxInfo2 = boxInfo;
            if (boxInfo2.horCheck(getViewport(), m33176k) != 0) {
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

    /* renamed from: a */
    public final boolean m33166a(RectF documentRectF, BoxInfo firstBox, List<BoxInfo> list) {
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
        m33189x();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void applyMatrix(@NotNull Matrix gestureDeltaMatrix, @NotNull Range<Float> displayScaleRange) {
        Intrinsics.checkNotNullParameter(gestureDeltaMatrix, "gestureDeltaMatrix");
        Intrinsics.checkNotNullParameter(displayScaleRange, "displayScaleRange");
        BoxInfo m33180o = m33180o(gestureDeltaMatrix);
        BoxManagerViewArgs boxManagerViewArgs = toBoxManagerViewArgs(gestureDeltaMatrix, displayScaleRange);
        setScale(boxManagerViewArgs.getScale());
        if (m33180o == null) {
            scrollTo(boxManagerViewArgs.getViewportLeft(), boxManagerViewArgs.getViewportTop());
        } else {
            scrollTo(m33180o.getId(), -m33180o.getVisibleRect().left, -m33180o.getVisibleRect().top);
        }
        m33159B();
        m33188w();
        m33161D();
    }

    /* renamed from: b */
    public final void m33167b(BoxInfo boxInfo, List<BoxInfo> list) {
        BoxInfo copy = boxInfo.copy();
        copy.updateVisibleRect(getViewport().getBox());
        list.add(copy);
    }

    /* renamed from: c */
    public final BoxInfo m33168c(BoxInfo first, BoxInfo second) {
        if (second == null) {
            return first;
        }
        RectF m33187v = m33187v();
        RectF copy = RectFKt.copy(second.getVisibleRect());
        if (!copy.intersect(m33187v)) {
            return first;
        }
        RectF copy2 = RectFKt.copy(first.getVisibleRect());
        copy2.intersect(m33187v);
        return copy.width() > copy2.width() ? second : first;
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
                boolean m33166a = m33166a(documentRectF, boxInfo, arrayList);
                if (boxInfo2 != null && m33166a(documentRectF, boxInfo2, arrayList)) {
                    m33166a = true;
                }
                if (!m33166a || first == last) {
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
            m33161D();
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
        RxScrollerArgs m33173h;
        Intrinsics.checkNotNullParameter(args, "args");
        List<BoxInfo> m33165H = m33165H();
        RectF m33179n = m33179n();
        if (m33179n == null) {
            return m33170e(args);
        }
        if (m33165H.size() <= 1 && m33179n.width() > getViewport().width() && getViewport().right() <= m33179n.right && getViewport().left() >= m33179n.left) {
            log("continuous fling in current display rect");
            return m33170e(args);
        }
        float velocityX = args.getVelocityX();
        BoxManager.Companion companion = BoxManager.INSTANCE;
        boolean z = ((Math.abs(args.getVelocityY()) > Math.abs(args.getVelocityX()) ? 1 : (Math.abs(args.getVelocityY()) == Math.abs(args.getVelocityX()) ? 0 : -1)) < 0 && (Math.abs(getViewport().top() - args.getScrollBeginY()) > Math.abs(getViewport().left() - args.getScrollBeginX()) ? 1 : (Math.abs(getViewport().top() - args.getScrollBeginY()) == Math.abs(getViewport().left() - args.getScrollBeginX()) ? 0 : -1)) < 0) && ((Math.abs(velocityX) > companion.getMinFlingVelocity() ? 1 : (Math.abs(velocityX) == companion.getMinFlingVelocity() ? 0 : -1)) >= 0);
        if (z && velocityX > 0.0f) {
            log("next screen");
            m33173h = m33171f(args);
        } else if (!z || velocityX >= 0.0f) {
            log("rebound screen");
            m33173h = m33173h();
        } else {
            log("prev screen");
            m33173h = m33172g(args);
        }
        if (m33173h != null) {
            m33173h.setEnabledAbortFlingAnimation(false);
        }
        if (companion.getDEBUG_LOG() && m33173h != null) {
            log("userVelocity = " + velocityX + ", minFlingVelocity = " + companion.getMinFlingVelocity() + ", scrollArgs = " + m33173h.getDebugString());
        }
        return m33173h == null ? m33170e(args) : m33173h;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    /* renamed from: currentDisplayScale, reason: from getter */
    public float getCurrentDisplayScale() {
        return this.currentDisplayScale;
    }

    /* renamed from: d */
    public final RxScrollerArgs m33169d(BoxFlingArgs args) {
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

    /* renamed from: e */
    public final RxScrollerArgs m33170e(BoxFlingArgs args) {
        log("create continuous fling in current display rect");
        RxScrollerArgs m33169d = m33169d(args);
        RectF m33179n = m33179n();
        if (m33179n != null) {
            RectF copy = RectFKt.copy(m33179n);
            copy.bottom -= getViewport().height();
            copy.right -= getViewport().width();
            m33169d.setLimitRect(copy);
            m33169d.setFlingActionType(RxScrollerArgs.FlingActionType.CONTINUOUS_SCROLL_IN_CURRENT_SCREEN);
        }
        return m33169d;
    }

    /* renamed from: f */
    public final RxScrollerArgs m33171f(BoxFlingArgs args) {
        RectF m33183r = m33183r((getBoxIdIndexedList().indexOfId(args.getScrollBeginBoxId()) / this.columnCount) + 1);
        if (m33183r == null) {
            return null;
        }
        RectF m33186u = m33186u(m33183r);
        if (m33183r.width() <= getViewport().width()) {
            RectFKt.alignCenterHorizontal(m33186u, m33183r);
        } else {
            RectFKt.leftAlign(m33186u, m33183r);
        }
        RxScrollerArgs rxScrollerArgs = new RxScrollerArgs();
        rxScrollerArgs.setStartX(getViewport().getBox().left);
        rxScrollerArgs.setStartY(getViewport().getBox().top);
        rxScrollerArgs.setVelocityY(0.0f);
        m33186u.offset(-getViewport().width(), 0.0f);
        m33186u.left = Math.min(rxScrollerArgs.getStartX(), m33186u.left);
        rxScrollerArgs.setLimitRect(m33186u);
        float velocityX = args.getVelocityX();
        BoxManager.Companion companion = BoxManager.INSTANCE;
        rxScrollerArgs.setVelocityX(Math.max(velocityX, companion.getAutoScrollToNewBoxVelocityValue(rxScrollerArgs.getLimitRect().right - getViewport().getBox().left)));
        rxScrollerArgs.setFrictionX(companion.getAutoScrollToNewBoxFriction());
        rxScrollerArgs.setFlingActionType(RxScrollerArgs.FlingActionType.NEXT_SCREEN);
        return rxScrollerArgs;
    }

    /* renamed from: g */
    public final RxScrollerArgs m33172g(BoxFlingArgs args) {
        RectF m33183r = m33183r((getBoxIdIndexedList().indexOfId(args.getScrollBeginBoxId()) / this.columnCount) - 1);
        if (m33183r == null) {
            return null;
        }
        RectF m33186u = m33186u(m33183r);
        if (m33183r.width() <= getViewport().width()) {
            RectFKt.alignCenterHorizontal(m33186u, m33183r);
        } else {
            RectFKt.rightAlign(m33186u, m33183r);
        }
        RxScrollerArgs rxScrollerArgs = new RxScrollerArgs();
        rxScrollerArgs.setStartX(getViewport().getBox().left);
        rxScrollerArgs.setStartY(getViewport().getBox().top);
        rxScrollerArgs.setVelocityY(0.0f);
        m33186u.right = Math.max(rxScrollerArgs.getStartX(), m33186u.right);
        rxScrollerArgs.setLimitRect(m33186u);
        float abs = Math.abs(args.getVelocityX());
        BoxManager.Companion companion = BoxManager.INSTANCE;
        rxScrollerArgs.setVelocityX(-Math.max(abs, companion.getAutoScrollToNewBoxVelocityValue(getViewport().getBox().left - rxScrollerArgs.getLimitRect().left)));
        rxScrollerArgs.setFrictionX(companion.getAutoScrollToNewBoxFriction());
        rxScrollerArgs.setFlingActionType(RxScrollerArgs.FlingActionType.PREV_SCREEN);
        return rxScrollerArgs;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public boolean getEnableFreeMovePaper() {
        return false;
    }

    /* renamed from: h */
    public final RxScrollerArgs m33173h() {
        RxScrollerArgs m33174i;
        RectF m33178m = m33178m();
        if (m33178m == null) {
            return null;
        }
        if (getViewport().getBox().right > m33178m.right) {
            log("rebound right, targetRectF = " + m33178m + ", viewportRect = " + getViewport().getBox());
            m33174i = m33175j(m33178m);
        } else if (getViewport().getBox().left < m33178m.left) {
            log("rebound left, targetRectF = " + m33178m + ", viewportRect = " + getViewport().getBox());
            m33174i = m33174i(m33178m);
        } else {
            log("else, rebound left, targetRectF = " + m33178m + ", viewportRect = " + getViewport().getBox());
            m33174i = m33174i(m33178m);
        }
        m33174i.setFlingActionType(RxScrollerArgs.FlingActionType.REBOUND_CURRENT_SCREEN);
        return m33174i;
    }

    /* renamed from: i */
    public final RxScrollerArgs m33174i(RectF targetRectF) {
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
        m33190y(scale);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public boolean isEnabledContinuousScroll() {
        return false;
    }

    /* renamed from: j */
    public final RxScrollerArgs m33175j(RectF targetRectF) {
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

    /* renamed from: k */
    public final float m33176k() {
        return 0.0f;
    }

    /* renamed from: l */
    public final BoxInfo m33177l() {
        Object orNull;
        BoxInfo currentOrFirstBoxInfo$sdk_geometry_release = getCurrentOrFirstBoxInfo$sdk_geometry_release();
        if (currentOrFirstBoxInfo$sdk_geometry_release == null) {
            return null;
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.containerIdIndexedList, getBoxIdIndexedList().indexOfId(currentOrFirstBoxInfo$sdk_geometry_release.getId()) / this.columnCount);
        return (BoxInfo) orNull;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public Matrix loadReboundMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        RectF m33179n = m33179n();
        if (m33179n == null) {
            return matrix;
        }
        RectF copy = RectFKt.copy(m33179n);
        RectF copy2 = RectFKt.copy(getViewport().getBox());
        RectF copy3 = RectFKt.copy(m33179n);
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
    public final RectF m33178m() {
        RectF m33179n = m33179n();
        if (m33179n == null) {
            return null;
        }
        RectF m33186u = m33186u(m33179n);
        if (m33179n.width() <= getViewport().width()) {
            log("alignCenterHorizontal");
            RectFKt.alignCenterHorizontal(m33186u, m33179n);
        } else if (getViewport().getBox().right > m33179n.right) {
            log("rightAlign");
            RectFKt.rightAlign(m33186u, m33179n);
        } else if (getViewport().getBox().left < m33179n.left) {
            log("leftAlign");
            RectFKt.leftAlign(m33186u, m33179n);
        } else {
            log("default align, leftAlign");
            RectFKt.leftAlign(m33186u, m33179n);
        }
        return m33186u;
    }

    public final float minDisplayScale() {
        return 1.0f;
    }

    /* renamed from: n */
    public final RectF m33179n() {
        BoxInfo currentOrFirstBoxInfo$sdk_geometry_release = getCurrentOrFirstBoxInfo$sdk_geometry_release();
        if (currentOrFirstBoxInfo$sdk_geometry_release == null) {
            return null;
        }
        return m33183r(getBoxIdIndexedList().indexOfId(currentOrFirstBoxInfo$sdk_geometry_release.getId()) / this.columnCount);
    }

    /* renamed from: o */
    public final BoxInfo m33180o(Matrix gestureDeltaMatrix) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) visibleBoxes());
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        if (boxInfo == null) {
            return null;
        }
        gestureDeltaMatrix.mapRect(boxInfo.getVisibleRect());
        return boxInfo;
    }

    /* renamed from: p */
    public final RectF m33181p() {
        return new RectF(0.0f, 0.0f, (getViewport().width() / 2) - getGap(), getViewport().height());
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public int pageCount() {
        return getBoxIdIndexedList().size();
    }

    /* renamed from: q */
    public final RectF m33182q() {
        return new RectF((getViewport().width() / 2) + getGap(), 0.0f, getViewport().width(), getViewport().height());
    }

    /* renamed from: r */
    public final RectF m33183r(int containerIndex) {
        Object orNull;
        Object orNull2;
        orNull = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), this.columnCount * containerIndex);
        BoxInfo boxInfo = (BoxInfo) orNull;
        if (boxInfo == null) {
            return null;
        }
        orNull2 = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), (containerIndex * this.columnCount) + 1);
        return m33184s(boxInfo, (BoxInfo) orNull2);
    }

    /* renamed from: s */
    public final RectF m33184s(BoxInfo firstBox, BoxInfo secondBox) {
        RectF copy = RectFKt.copy(firstBox.getBox());
        return secondBox != null ? RectFKt.unionOrCopy(copy, secondBox.getBox()) : copy;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager scrollBy(float dx, float dy) {
        getViewport().offset(dx, dy);
        m33161D();
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
        RectF m33183r = m33183r(getFirstVisibleIndex() / this.columnCount);
        if (m33183r == null) {
            return false;
        }
        RectF m33186u = m33186u(m33183r);
        if (m33183r.width() <= getViewport().width()) {
            RectFKt.alignCenterHorizontal(m33186u, m33183r);
            RectFKt.alignOrigin(getViewport().getBox(), m33186u);
            scrollBy(0.0f, offsetY);
        } else {
            if (offsetX == 0.0f) {
                if (offsetY == 0.0f) {
                    RectFKt.leftAlign(m33186u, m33183r);
                    RectFKt.alignOrigin(getViewport().getBox(), m33186u);
                    m33161D();
                }
            }
            RectFKt.alignOrigin(getViewport().getBox(), m33183r);
            scrollBy(offsetX, offsetY);
            m33191z(m33183r);
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
    public final RectF m33185t(BoxInfo firstBox, BoxInfo secondBox) {
        RectF copy = RectFKt.copy(firstBox.getVisibleRect());
        return secondBox != null ? RectFKt.unionOrCopy(copy, secondBox.getVisibleRect()) : copy;
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
    public final RectF m33186u(RectF displayRectF) {
        return new RectF(getViewport().left(), displayRectF.top, getViewport().right(), displayRectF.bottom);
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
        int indexOfId = getBoxIdIndexedList().indexOfId(withId.getId());
        boolean z = indexOfId % this.columnCount == 0;
        if (z && CollectionKt.isLastElement(getBoxIdIndexedList(), indexOfId)) {
            RectF zeroOriginRoundRectF = getViewport().toZeroOriginRoundRectF();
            BoxInfo copy = withId.copy();
            BoxInfo.scaleToViewportWithAspectScaleCheck$default(copy, zeroOriginRoundRectF, false, 2, null);
            setCurrentMinScale(copy.getActualScale());
        } else if (z) {
            RectF m33181p = m33181p();
            BoxInfo copy2 = withId.copy();
            BoxInfo.scaleToViewportWithAspectScaleCheck$default(copy2, m33181p, false, 2, null);
            setCurrentMinScale(copy2.getActualScale());
        } else {
            RectF m33182q = m33182q();
            BoxInfo copy3 = withId.copy();
            BoxInfo.scaleToViewportWithAspectScaleCheck$default(copy3, m33182q, false, 2, null);
            setCurrentMinScale(copy3.getActualScale());
        }
        setCurrentBoxId(withId.getId());
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void updateDataAndApplyScale(@NotNull List<BoxInfo> boxList) {
        Intrinsics.checkNotNullParameter(boxList, "boxList");
        setData(boxList);
        BoxManager.updateCurrentMinScale$default(this, null, 1, null);
        initScale(getViewport().getActualScale());
        m33161D();
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
            m33162E();
            m33161D();
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
    public final RectF m33187v() {
        RectF zeroOriginRoundRectF = getViewport().toZeroOriginRoundRectF();
        zeroOriginRoundRectF.inset(getGap() / 2.0f, getGap() / 2.0f);
        return zeroOriginRoundRectF;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> visibleBoxes() {
        Object orNull;
        ArrayList arrayList = new ArrayList();
        if (getFirstVisibleIndex() < 0) {
            return arrayList;
        }
        float m33176k = m33176k();
        RectF rectF = new RectF();
        int size = this.containerIdIndexedList.size();
        for (int firstVisibleIndex = getFirstVisibleIndex() / this.columnCount; firstVisibleIndex < size; firstVisibleIndex++) {
            BoxInfo boxInfo = this.containerIdIndexedList.get(firstVisibleIndex);
            Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
            BoxInfo boxInfo2 = boxInfo;
            if (boxInfo2.horCheck(getViewport(), m33176k) != 0) {
                break;
            }
            if (boxInfo2.isVisibleIntersectWidth(getViewport())) {
                ArrayList arrayList2 = new ArrayList();
                BoxInfo boxInfo3 = getBoxIdIndexedList().get(this.columnCount * firstVisibleIndex);
                Intrinsics.checkNotNullExpressionValue(boxInfo3, "get(...)");
                m33167b(boxInfo3, arrayList2);
                orNull = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), (this.columnCount * firstVisibleIndex) + 1);
                BoxInfo boxInfo4 = (BoxInfo) orNull;
                if (boxInfo4 != null) {
                    m33167b(boxInfo4, arrayList2);
                }
                m33160C(arrayList2, rectF);
                arrayList.addAll(arrayList2);
            } else {
                log("not visible width");
            }
        }
        updateCurrentMinScale(getCurrentBoxId());
        m33164G();
        if (BoxManager.INSTANCE.getDEBUG_LOG()) {
            log("visibleBoxInfo size = " + arrayList.size());
        }
        return arrayList;
    }

    /* renamed from: w */
    public final void m33188w() {
        RectF m33179n = m33179n();
        if (m33179n == null) {
            return;
        }
        RectFKt.limitAndCenterIf(getViewport().getBox(), m33179n, m33179n);
    }

    /* renamed from: x */
    public final void m33189x() {
        RectF m33179n = m33179n();
        if (m33179n == null) {
            RectFKt.limitAndCenterVerticalIf(getViewport().getBox(), getViewportLimitRect(), getBoundingRect());
            return;
        }
        RectF copy = RectFKt.copy(getViewportLimitRect());
        copy.top = m33179n.top;
        copy.bottom = m33179n.bottom;
        RectF copy2 = RectFKt.copy(getBoundingRect());
        copy2.top = m33179n.top;
        copy2.bottom = m33179n.bottom;
        RectFKt.limitAndCenterVerticalIf(getViewport().getBox(), copy, copy2);
    }

    /* renamed from: y */
    public final void m33190y(float scale) {
        IntRange until;
        IntProgression step;
        Object orNull;
        float f;
        this.containerIdIndexedList.clear();
        float currentDisplayScale = getCurrentDisplayScale();
        RectF zeroOriginRoundRectF = getViewport().toZeroOriginRoundRectF();
        RectFKt.scaleRect(zeroOriginRoundRectF, currentDisplayScale);
        RectF m33181p = m33181p();
        RectFKt.scaleRect(m33181p, currentDisplayScale);
        RectF m33182q = m33182q();
        RectFKt.scaleRect(m33182q, currentDisplayScale);
        until = RangesKt___RangesKt.until(0, getBoxIdIndexedList().size());
        step = RangesKt___RangesKt.step(until, this.columnCount);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            double d = 0.0d;
            while (true) {
                BoxInfo boxInfo = new BoxInfo(String.valueOf(first), RectFKt.copy(zeroOriginRoundRectF));
                boxInfo.setActualScale(currentDisplayScale);
                double width = boxInfo.getBox().width();
                BoxInfo boxInfo2 = getBoxIdIndexedList().get(first);
                Intrinsics.checkNotNullExpressionValue(boxInfo2, "get(...)");
                BoxInfo boxInfo3 = boxInfo2;
                orNull = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), first + 1);
                BoxInfo boxInfo4 = (BoxInfo) orNull;
                RectF rectF = new RectF();
                if (boxInfo4 != null) {
                    f = currentDisplayScale;
                    boxInfo3.scaleToViewportWithAspectScaleCheck(m33181p, false);
                    RectFKt.rightAlign(boxInfo3.getBox(), m33181p);
                } else {
                    f = currentDisplayScale;
                    boxInfo3.scaleToViewportWithAspectScaleCheck(zeroOriginRoundRectF, false);
                }
                RectF rectF2 = zeroOriginRoundRectF;
                float f2 = (float) d;
                RectF rectF3 = m33181p;
                boxInfo3.getBox().offset(f2, 0.0f);
                boxInfo3.updateChildrenDisplayRectF();
                rectF.set(boxInfo3.getBox());
                if (boxInfo4 != null) {
                    boxInfo4.scaleToViewportWithAspectScaleCheck(m33182q, false);
                    RectFKt.leftAlign(boxInfo4.getBox(), m33182q);
                    boxInfo4.getBox().offset(f2, 0.0f);
                    boxInfo4.updateChildrenDisplayRectF();
                    RectFKt.unionOrCopy(rectF, boxInfo4.getBox());
                }
                double width2 = rectF.width();
                if (Math.rint(width2) > Math.rint(width)) {
                    boxInfo.getBox().right = (float) width2;
                    width = width2;
                }
                RectF box = boxInfo.getBox();
                box.left = f2;
                box.top = rectF.top;
                d += width;
                box.right = (float) d;
                box.bottom = rectF.bottom;
                this.containerIdIndexedList.add(boxInfo);
                if (first == last) {
                    break;
                }
                first += step2;
                currentDisplayScale = f;
                zeroOriginRoundRectF = rectF2;
                m33181p = rectF3;
            }
        }
        m33163F();
    }

    /* renamed from: z */
    public final void m33191z(RectF displayRectF) {
        if (m33165H().size() > 1) {
            RectFKt.limitAndCenterIf(getViewport().getBox(), displayRectF, displayRectF);
            m33161D();
        }
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager scrollTo(float newX, float newY) {
        getViewport().getBox().offsetTo(newX, newY);
        m33161D();
        return this;
    }
}
