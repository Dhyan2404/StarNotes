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
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
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

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b|\u0010}J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\b\u0010\f\u001a\u00020\u0006H\u0002J\u001e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u000eH\u0002J\n\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0018\u001a\u00020\u0006H\u0002J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\n\u0010 \u001a\u0004\u0018\u00010\u001bH\u0002J\n\u0010!\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0004H\u0002J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020\u0004H\u0002J\u0010\u0010&\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020\u0004H\u0002J\b\u0010'\u001a\u00020\u0006H\u0002J\u001e\u0010*\u001a\u00020\u00062\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\n0\u000e2\u0006\u0010)\u001a\u00020\u0004H\u0002J\u001a\u0010-\u001a\u00020\n2\u0006\u0010+\u001a\u00020\n2\b\u0010,\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u00100\u001a\u0004\u0018\u00010\n2\u0006\u0010/\u001a\u00020.H\u0002J\b\u00101\u001a\u00020\u0004H\u0002J\b\u00102\u001a\u00020\u0004H\u0002J\b\u00103\u001a\u00020\u0006H\u0002J\b\u00104\u001a\u00020\u0006H\u0002J\b\u00105\u001a\u00020\u0006H\u0002J\u0010\u00106\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0004H\u0002J\u001a\u00109\u001a\u00020\u00042\u0006\u00107\u001a\u00020\n2\b\u00108\u001a\u0004\u0018\u00010\nH\u0002J\u001a\u0010:\u001a\u00020\u00042\u0006\u00107\u001a\u00020\n2\b\u00108\u001a\u0004\u0018\u00010\nH\u0002J&\u0010=\u001a\u00020<2\u0006\u0010;\u001a\u00020\u00042\u0006\u00107\u001a\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u000eH\u0002J\u0016\u0010>\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\r\u001a\u00020\nH\u0002J\u0006\u0010?\u001a\u00020\u0002J\u0016\u0010A\u001a\u00020\u00062\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0016\u0010B\u001a\u00020\u00062\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0010\u0010E\u001a\u00020\u00132\u0006\u0010D\u001a\u00020CH\u0016J\u0010\u0010G\u001a\u00020\u00012\u0006\u0010F\u001a\u00020\u0004H\u0016J\u0018\u0010K\u001a\u00020\u00062\u0006\u0010I\u001a\u00020H2\u0006\u0010J\u001a\u00020<H\u0016J \u0010O\u001a\u00020<2\u0006\u0010L\u001a\u00020C2\u0006\u0010M\u001a\u00020\u00022\u0006\u0010N\u001a\u00020\u0002H\u0016J\u0018\u0010O\u001a\u00020\u00012\u0006\u0010P\u001a\u00020\u00022\u0006\u0010Q\u001a\u00020\u0002H\u0016J\u0018\u0010T\u001a\u00020\u00012\u0006\u0010R\u001a\u00020\u00022\u0006\u0010S\u001a\u00020\u0002H\u0016J\u000e\u0010U\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0016\u0010X\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010W\u001a\u00020VH\u0016J\u001c\u0010Y\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0010\u0010[\u001a\u00020\u00062\u0006\u0010Z\u001a\u00020\nH\u0016J\u0016\u0010\\\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010;\u001a\u00020\u0004H\u0016J\u000e\u0010]\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u000e\u0010^\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\b\u0010_\u001a\u00020\u0013H\u0016J\u0010\u0010`\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010a\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010b\u001a\u00020\u0002H\u0016J\u0010\u0010c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0010\u0010e\u001a\u00020.2\u0006\u0010d\u001a\u00020.H\u0016J\u001e\u0010h\u001a\u00020V2\u0006\u0010/\u001a\u00020.2\f\u0010g\u001a\b\u0012\u0004\u0012\u00020\u00020fH\u0016J\b\u0010i\u001a\u00020<H\u0016J\b\u0010j\u001a\u00020\u0006H\u0016J\u000e\u0010k\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u001e\u0010l\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.2\f\u0010g\u001a\b\u0012\u0004\u0012\u00020\u00020fH\u0016J\u0010\u0010n\u001a\u00020\u00062\u0006\u0010m\u001a\u00020CH\u0016J \u0010q\u001a\u00020\u00022\u0006\u0010F\u001a\u00020\u00042\u0006\u0010o\u001a\u00020\u00022\u0006\u0010p\u001a\u00020\u0002H\u0016R\u0014\u0010r\u001a\u00020\u00138\u0002X\u0082D¢\u0006\u0006\n\u0004\b&\u0010\u000bR\u0016\u0010b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010'R\u001a\u0010u\u001a\b\u0012\u0004\u0012\u00020\n0s8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010tR$\u0010{\u001a\u00020<2\u0006\u0010v\u001a\u00020<8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bw\u0010x\"\u0004\by\u0010z¨\u0006~"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxManager;", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "", "l", "Landroid/graphics/RectF;", "w", "", "E", "B", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "I", "H", "boxInfo", "", "list", "b", "m", C4921e.f26528e, "", "containerIndex", "s", "scale", "z", "G", "Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;", "args", "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;", "e", C6997f.f39671c, C6998g.f39679a, C6999h.f39688c, "j", GoogleApiAvailabilityLight.f29016b, "displayRectF", "v", "targetRectF", "i", C4921e.f26537n, "F", "resultList", "lastVisibleRegion", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "first", TypeAdapters.C6590r.f36278f, "d", "Landroid/graphics/Matrix;", "gestureDeltaMatrix", "p", "r", "q", "y", "x", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "A", "firstBox", "secondBox", "t", "u", "documentRectF", "", "a", "c", "minDisplayScale", "boxList", "setData", "updateDataAndApplyScale", "", "id", "indexOf", "viewport", "setViewport", "Lcom/onyx/android/sdk/base/data/Size;", "size", "calculate", "updateViewportSize", "boxId", "offsetX", "offsetY", "scrollTo", "newX", "newY", "dx", "dy", "scrollBy", "visibleBoxes", "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;", "viewArgs", "collectVisibleBoxList", "convertToVisibleBoxList", "box", "updateToVisibleBox", "collectIntersectsVisibleBoxList", "collectNextViewportVisibleBoxList", "collectPrevViewportVisibleBoxList", "pageCount", "setScale", "initScale", "currentDisplayScale", "createRxScrollerArgs", "matrix", "loadReboundMatrix", "Lorg/apache/commons/lang3/Range;", "displayScaleRange", "toBoxManagerViewArgs", "isEnabledContinuousScroll", "alignCenter", "copyBoxList", "applyMatrix", CouchFieldKey.KEY_TOC_PAGE_ID, "updateCurrentMinScale", "widthTolerance", "shrinkScale", "calculateScaleRatioForViewport", "columnCount", "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;", "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;", "containerIdIndexedList", "value", "getEnableFreeMovePaper", Constants.BOOLEAN_VALUE_SIG, "setEnableFreeMovePaper", "(Z)V", "enableFreeMovePaper", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nVDualBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VDualBoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/VDualBoxManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,961:1\n1855#2,2:962\n350#2,7:964\n1864#2,3:971\n1549#2:975\n1620#2,3:976\n1#3:974\n703#4,5:979\n703#4,5:984\n*S KotlinDebug\n*F\n+ 1 VDualBoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/VDualBoxManager\n*L\n271#1:962,2\n281#1:964,7\n459#1:971,3\n789#1:975\n789#1:976,3\n952#1:979,5\n957#1:984,5\n*E\n"})
/* loaded from: classes7.dex */
public final class VDualBoxManager extends BoxManager {

    /* renamed from: k, reason: from kotlin metadata */
    public final int columnCount = 2;

    /* renamed from: l, reason: from kotlin metadata */
    public float currentDisplayScale = 1.0f;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final StringIndexedArrayList<BoxInfo> containerIdIndexedList = new StringIndexedArrayList<>(new Function1<BoxInfo, String>() { // from class: com.onyx.android.sdk.geometry.boxmanager.VDualBoxManager$containerIdIndexedList$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final String invoke(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getId();
        }
    }, 0, 2, null);

    /* renamed from: A */
    public final void m33243A(RectF displayRectF) {
        if (m33251I().size() > 1) {
            RectFKt.limitAndCenterIf(getViewport().getBox(), displayRectF, displayRectF);
            m33247E();
        }
    }

    /* renamed from: B */
    public final void m33244B() {
        Object first;
        Object last;
        Object first2;
        setFirstVisibleIndex(-1);
        if (this.containerIdIndexedList.size() <= 0) {
            return;
        }
        float m33263l = m33263l();
        int size = this.containerIdIndexedList.size();
        for (int i = 0; i < size; i++) {
            BoxInfo boxInfo = this.containerIdIndexedList.get(i);
            Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
            if (boxInfo.verCheck(getViewport(), m33263l) == 0) {
                setFirstVisibleIndex(i * this.columnCount);
                getViewport().setId(getBoxIdIndexedList().get(getFirstVisibleIndex()).getId());
                return;
            }
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.containerIdIndexedList);
        BoxInfo boxInfo2 = (BoxInfo) first;
        if (getViewport().bottom() < boxInfo2.top()) {
            setFirstVisibleIndex(0);
            BoxInfo viewport = getViewport();
            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) getBoxIdIndexedList());
            viewport.setId(((BoxInfo) first2).getId());
            RectFKt.topAlign(getViewport().getBox(), boxInfo2.getBox());
            return;
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.containerIdIndexedList);
        BoxInfo boxInfo3 = (BoxInfo) last;
        if (getViewport().bottom() > boxInfo3.bottom()) {
            setFirstVisibleIndex((this.containerIdIndexedList.size() - 1) * this.columnCount);
            getViewport().setId(getBoxIdIndexedList().get(getFirstVisibleIndex()).getId());
            getViewport().moveToBottom(boxInfo3.bottom());
        }
    }

    /* renamed from: C */
    public final void m33245C() {
        visibleBoxes();
    }

    /* renamed from: D */
    public final void m33246D(List<BoxInfo> resultList, RectF lastVisibleRegion) {
        Object first;
        Object orNull;
        if (resultList.isEmpty()) {
            return;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) resultList);
        BoxInfo boxInfo = (BoxInfo) first;
        orNull = CollectionsKt___CollectionsKt.getOrNull(resultList, 1);
        BoxInfo boxInfo2 = (BoxInfo) orNull;
        RectF m33272u = m33272u(boxInfo, boxInfo2);
        if (m33272u.intersect(m33274w()) && m33272u.height() > lastVisibleRegion.height()) {
            setCurrentBoxId(m33255d(boxInfo, boxInfo2).getId());
            lastVisibleRegion.set(m33272u);
        }
    }

    /* renamed from: E */
    public final void m33247E() {
        m33276y();
        m33244B();
    }

    /* renamed from: F */
    public final void m33248F() {
        setViewportLimitRect(new RectF(getBoundingRect()));
    }

    /* renamed from: G */
    public final void m33249G() {
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
        m33248F();
    }

    /* renamed from: H */
    public final void m33250H() {
        BoxInfo currentOrFirstBoxInfo$sdk_geometry_release = getCurrentOrFirstBoxInfo$sdk_geometry_release();
        if (currentOrFirstBoxInfo$sdk_geometry_release != null) {
            getViewport().setActualScale(currentOrFirstBoxInfo$sdk_geometry_release.getActualScale());
        }
    }

    /* renamed from: I */
    public final List<BoxInfo> m33251I() {
        ArrayList arrayList = new ArrayList();
        if (getFirstVisibleIndex() < 0) {
            return arrayList;
        }
        float m33263l = m33263l();
        int size = this.containerIdIndexedList.size();
        for (int firstVisibleIndex = getFirstVisibleIndex() / this.columnCount; firstVisibleIndex < size; firstVisibleIndex++) {
            BoxInfo boxInfo = this.containerIdIndexedList.get(firstVisibleIndex);
            Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
            BoxInfo boxInfo2 = boxInfo;
            if (boxInfo2.verCheck(getViewport(), m33263l) != 0) {
                break;
            }
            if (boxInfo2.isVisibleIntersectHeight(getViewport())) {
                arrayList.add(boxInfo2);
            } else {
                log("not visible height");
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final boolean m33252a(RectF documentRectF, BoxInfo firstBox, List<BoxInfo> list) {
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
        m33276y();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public void applyMatrix(@NotNull Matrix gestureDeltaMatrix, @NotNull Range<Float> displayScaleRange) {
        Intrinsics.checkNotNullParameter(gestureDeltaMatrix, "gestureDeltaMatrix");
        Intrinsics.checkNotNullParameter(displayScaleRange, "displayScaleRange");
        BoxInfo m33267p = m33267p(gestureDeltaMatrix);
        BoxManagerViewArgs boxManagerViewArgs = toBoxManagerViewArgs(gestureDeltaMatrix, displayScaleRange);
        setScale(boxManagerViewArgs.getScale());
        if (m33267p == null) {
            scrollTo(boxManagerViewArgs.getViewportLeft(), boxManagerViewArgs.getViewportTop());
        } else {
            scrollTo(m33267p.getId(), -m33267p.getVisibleRect().left, -m33267p.getVisibleRect().top);
        }
        m33245C();
        m33275x();
        m33247E();
    }

    /* renamed from: b */
    public final void m33253b(BoxInfo boxInfo, List<BoxInfo> list) {
        BoxInfo copy = boxInfo.copy();
        copy.updateVisibleRect(getViewport().getBox());
        list.add(copy);
    }

    /* renamed from: c */
    public final List<BoxInfo> m33254c(BoxInfo boxInfo) {
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

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public float calculateScaleRatioForViewport(@NotNull RectF viewport, float widthTolerance, float shrinkScale) {
        BoxInfo copy;
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        RectF copy2 = RectFKt.copy(viewport);
        RectF m33266o = m33266o();
        float f = 0.0f;
        if (m33266o == null) {
            return 0.0f;
        }
        BoxInfo currentOrFirstBoxInfo$sdk_geometry_release = getCurrentOrFirstBoxInfo$sdk_geometry_release();
        if (currentOrFirstBoxInfo$sdk_geometry_release == null || (copy = currentOrFirstBoxInfo$sdk_geometry_release.copy()) == null) {
            return 1.0f;
        }
        List<BoxInfo> m33254c = m33254c(copy);
        float width = m33266o.width();
        List<BoxInfo> list = m33254c;
        Iterator<T> it2 = list.iterator();
        float f2 = 0.0f;
        while (it2.hasNext()) {
            f2 += ((BoxInfo) it2.next()).width();
        }
        float f3 = width - f2;
        if (Math.abs(copy2.width() - m33266o.width()) < widthTolerance) {
            RectFKt.scaleRect(copy2, shrinkScale, 1.0f);
        }
        float actualScale = copy.getActualScale();
        Iterator<T> it3 = list.iterator();
        while (it3.hasNext()) {
            f += ((BoxInfo) it3.next()).getOriginRectFWithMargin().width();
        }
        return (copy2.width() / (f + f3)) / actualScale;
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
                boolean m33252a = m33252a(documentRectF, boxInfo, arrayList);
                if (boxInfo2 != null && m33252a(documentRectF, boxInfo2, arrayList)) {
                    m33252a = true;
                }
                if (!m33252a || first == last) {
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
            m33247E();
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
        RxScrollerArgs m33261j;
        Intrinsics.checkNotNullParameter(args, "args");
        List<BoxInfo> m33251I = m33251I();
        RectF m33266o = m33266o();
        if (m33266o == null) {
            return m33257f(args);
        }
        if (m33251I.size() <= 1 && m33266o.height() > getViewport().height() && getViewport().bottom() <= m33266o.bottom && getViewport().top() >= m33266o.top) {
            log("continuous fling in current display rect");
            return m33257f(args);
        }
        float velocityY = args.getVelocityY();
        BoxManager.Companion companion = BoxManager.INSTANCE;
        boolean z = ((Math.abs(args.getVelocityY()) > Math.abs(args.getVelocityX()) ? 1 : (Math.abs(args.getVelocityY()) == Math.abs(args.getVelocityX()) ? 0 : -1)) > 0 && (Math.abs(getViewport().top() - args.getScrollBeginY()) > Math.abs(getViewport().left() - args.getScrollBeginX()) ? 1 : (Math.abs(getViewport().top() - args.getScrollBeginY()) == Math.abs(getViewport().left() - args.getScrollBeginX()) ? 0 : -1)) > 0) && ((Math.abs(velocityY) > companion.getMinFlingVelocity() ? 1 : (Math.abs(velocityY) == companion.getMinFlingVelocity() ? 0 : -1)) >= 0);
        if (z && velocityY > 0.0f) {
            log("next screen");
            m33261j = m33258g(args);
        } else if (!z || velocityY >= 0.0f) {
            log("rebound screen");
            m33261j = m33261j();
        } else {
            log("prev screen");
            m33261j = m33259h(args);
        }
        if (m33261j != null) {
            m33261j.setEnabledAbortFlingAnimation(false);
        }
        if (companion.getDEBUG_LOG() && m33261j != null) {
            log("userVelocity = " + velocityY + ", minFlingVelocity = " + companion.getMinFlingVelocity() + ", scrollArgs = " + m33261j.getDebugString());
        }
        return m33261j == null ? m33257f(args) : m33261j;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    /* renamed from: currentDisplayScale, reason: from getter */
    public float getCurrentDisplayScale() {
        return this.currentDisplayScale;
    }

    /* renamed from: d */
    public final BoxInfo m33255d(BoxInfo first, BoxInfo second) {
        if (second == null) {
            return first;
        }
        RectF m33274w = m33274w();
        RectF copy = RectFKt.copy(second.getVisibleRect());
        if (!copy.intersect(m33274w)) {
            return first;
        }
        RectF copy2 = RectFKt.copy(first.getVisibleRect());
        copy2.intersect(m33274w);
        return copy.width() > copy2.width() ? second : first;
    }

    /* renamed from: e */
    public final RxScrollerArgs m33256e(BoxFlingArgs args) {
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

    /* renamed from: f */
    public final RxScrollerArgs m33257f(BoxFlingArgs args) {
        log("create continuous fling in current display rect");
        RxScrollerArgs m33256e = m33256e(args);
        RectF m33266o = m33266o();
        if (m33266o != null) {
            RectF copy = RectFKt.copy(m33266o);
            copy.bottom -= getViewport().height();
            copy.right -= getViewport().width();
            m33256e.setLimitRect(copy);
            m33256e.setFlingActionType(RxScrollerArgs.FlingActionType.CONTINUOUS_SCROLL_IN_CURRENT_SCREEN);
        }
        return m33256e;
    }

    /* renamed from: g */
    public final RxScrollerArgs m33258g(BoxFlingArgs args) {
        RectF m33270s = m33270s((getBoxIdIndexedList().indexOfId(args.getScrollBeginBoxId()) / this.columnCount) + 1);
        if (m33270s == null) {
            return null;
        }
        RectF m33273v = m33273v(m33270s);
        if (m33270s.height() <= getViewport().height()) {
            RectFKt.alignCenterVertical(m33273v, m33270s);
        } else {
            RectFKt.topAlign(m33273v, m33270s);
        }
        RxScrollerArgs rxScrollerArgs = new RxScrollerArgs();
        rxScrollerArgs.setStartX(getViewport().getBox().left);
        rxScrollerArgs.setStartY(getViewport().getBox().top);
        rxScrollerArgs.setVelocityX(0.0f);
        m33273v.offset(0.0f, -getViewport().height());
        m33273v.top = Math.min(rxScrollerArgs.getStartY(), m33273v.top);
        rxScrollerArgs.setLimitRect(m33273v);
        float velocityY = args.getVelocityY();
        BoxManager.Companion companion = BoxManager.INSTANCE;
        rxScrollerArgs.setVelocityY(Math.max(velocityY, companion.getAutoScrollToNewBoxVelocityValue(rxScrollerArgs.getLimitRect().bottom - getViewport().getBox().top)));
        rxScrollerArgs.setFrictionY(companion.getAutoScrollToNewBoxFriction());
        rxScrollerArgs.setFlingActionType(RxScrollerArgs.FlingActionType.NEXT_SCREEN);
        return rxScrollerArgs;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public boolean getEnableFreeMovePaper() {
        return false;
    }

    /* renamed from: h */
    public final RxScrollerArgs m33259h(BoxFlingArgs args) {
        RectF m33270s = m33270s((getBoxIdIndexedList().indexOfId(args.getScrollBeginBoxId()) / this.columnCount) - 1);
        if (m33270s == null) {
            return null;
        }
        RectF m33273v = m33273v(m33270s);
        if (m33270s.height() <= getViewport().height()) {
            RectFKt.alignCenterVertical(m33273v, m33270s);
        } else {
            RectFKt.bottomAlign(m33273v, m33270s);
        }
        RxScrollerArgs rxScrollerArgs = new RxScrollerArgs();
        rxScrollerArgs.setStartX(getViewport().getBox().left);
        rxScrollerArgs.setStartY(getViewport().getBox().top);
        rxScrollerArgs.setVelocityX(0.0f);
        m33273v.bottom = Math.max(rxScrollerArgs.getStartY(), m33273v.bottom);
        rxScrollerArgs.setLimitRect(m33273v);
        float abs = Math.abs(args.getVelocityY());
        BoxManager.Companion companion = BoxManager.INSTANCE;
        rxScrollerArgs.setVelocityY(-Math.max(abs, companion.getAutoScrollToNewBoxVelocityValue(getViewport().getBox().top - rxScrollerArgs.getLimitRect().top)));
        rxScrollerArgs.setFrictionY(companion.getAutoScrollToNewBoxFriction());
        rxScrollerArgs.setFlingActionType(RxScrollerArgs.FlingActionType.PREV_SCREEN);
        return rxScrollerArgs;
    }

    /* renamed from: i */
    public final RxScrollerArgs m33260i(RectF targetRectF) {
        RxScrollerArgs rxScrollerArgs = new RxScrollerArgs();
        rxScrollerArgs.setStartX(getViewport().getBox().left);
        rxScrollerArgs.setStartY(getViewport().getBox().top);
        rxScrollerArgs.setVelocityX(0.0f);
        rxScrollerArgs.setLimitRect(targetRectF);
        rxScrollerArgs.getLimitRect().top = rxScrollerArgs.getLimitRect().bottom - getViewport().height();
        float startY = rxScrollerArgs.getStartY() - rxScrollerArgs.getLimitRect().top;
        BoxManager.Companion companion = BoxManager.INSTANCE;
        rxScrollerArgs.setVelocityY(-companion.getAutoScrollToNewBoxVelocityValue(startY));
        rxScrollerArgs.setFrictionY(companion.getReboundToCurrentBoxInfoFriction());
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
        m33277z(scale);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    public boolean isEnabledContinuousScroll() {
        return false;
    }

    /* renamed from: j */
    public final RxScrollerArgs m33261j() {
        RxScrollerArgs m33262k;
        RectF m33265n = m33265n();
        if (m33265n == null) {
            return null;
        }
        if (getViewport().getBox().bottom > m33265n.bottom) {
            log("rebound bottom, targetRectF = " + m33265n + ", viewportRect = " + getViewport().getBox());
            m33262k = m33260i(m33265n);
        } else if (getViewport().getBox().top < m33265n.top) {
            log("rebound top, targetRectF = " + m33265n + ", viewportRect = " + getViewport().getBox());
            m33262k = m33262k(m33265n);
        } else {
            log("else, rebound top, targetRectF = " + m33265n + ", viewportRect = " + getViewport().getBox());
            m33262k = m33262k(m33265n);
        }
        m33262k.setFlingActionType(RxScrollerArgs.FlingActionType.REBOUND_CURRENT_SCREEN);
        return m33262k;
    }

    /* renamed from: k */
    public final RxScrollerArgs m33262k(RectF targetRectF) {
        RxScrollerArgs rxScrollerArgs = new RxScrollerArgs();
        rxScrollerArgs.setStartX(getViewport().getBox().left);
        rxScrollerArgs.setStartY(getViewport().getBox().top);
        rxScrollerArgs.setVelocityX(0.0f);
        rxScrollerArgs.setLimitRect(targetRectF);
        rxScrollerArgs.getLimitRect().offset(0.0f, -rxScrollerArgs.getLimitRect().height());
        float startY = rxScrollerArgs.getStartY() - rxScrollerArgs.getLimitRect().bottom;
        BoxManager.Companion companion = BoxManager.INSTANCE;
        rxScrollerArgs.setVelocityY(companion.getAutoScrollToNewBoxVelocityValue(startY));
        rxScrollerArgs.setFrictionY(companion.getReboundToCurrentBoxInfoFriction());
        return rxScrollerArgs;
    }

    /* renamed from: l */
    public final float m33263l() {
        return 0.0f;
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public Matrix loadReboundMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        RectF m33266o = m33266o();
        if (m33266o == null) {
            return matrix;
        }
        RectF copy = RectFKt.copy(m33266o);
        RectF copy2 = RectFKt.copy(getViewport().getBox());
        RectF copy3 = RectFKt.copy(m33266o);
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
    public final BoxInfo m33264m() {
        Object orNull;
        BoxInfo currentOrFirstBoxInfo$sdk_geometry_release = getCurrentOrFirstBoxInfo$sdk_geometry_release();
        if (currentOrFirstBoxInfo$sdk_geometry_release == null) {
            return null;
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.containerIdIndexedList, getBoxIdIndexedList().indexOfId(currentOrFirstBoxInfo$sdk_geometry_release.getId()) / this.columnCount);
        return (BoxInfo) orNull;
    }

    public final float minDisplayScale() {
        return 1.0f;
    }

    /* renamed from: n */
    public final RectF m33265n() {
        RectF m33266o = m33266o();
        if (m33266o == null) {
            return null;
        }
        RectF m33273v = m33273v(m33266o);
        if (m33266o.height() <= getViewport().height()) {
            log("alignCenterVertical");
            RectFKt.alignCenterVertical(m33273v, m33266o);
        } else if (getViewport().getBox().bottom > m33266o.bottom) {
            log("bottomAlign");
            RectFKt.bottomAlign(m33273v, m33266o);
        } else if (getViewport().getBox().top < m33266o.top) {
            log("topAlign");
            RectFKt.topAlign(m33273v, m33266o);
        } else {
            log("default align, topAlign");
            RectFKt.topAlign(m33273v, m33266o);
        }
        return m33273v;
    }

    /* renamed from: o */
    public final RectF m33266o() {
        BoxInfo currentOrFirstBoxInfo$sdk_geometry_release = getCurrentOrFirstBoxInfo$sdk_geometry_release();
        if (currentOrFirstBoxInfo$sdk_geometry_release == null) {
            return null;
        }
        return m33270s(getBoxIdIndexedList().indexOfId(currentOrFirstBoxInfo$sdk_geometry_release.getId()) / this.columnCount);
    }

    /* renamed from: p */
    public final BoxInfo m33267p(Matrix gestureDeltaMatrix) {
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
    public int pageCount() {
        return getBoxIdIndexedList().size();
    }

    /* renamed from: q */
    public final RectF m33268q() {
        return new RectF(0.0f, 0.0f, (getViewport().width() / 2) - getGap(), getViewport().height());
    }

    /* renamed from: r */
    public final RectF m33269r() {
        return new RectF((getViewport().width() / 2) + getGap(), 0.0f, getViewport().width(), getViewport().height());
    }

    /* renamed from: s */
    public final RectF m33270s(int containerIndex) {
        Object orNull;
        Object orNull2;
        orNull = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), this.columnCount * containerIndex);
        BoxInfo boxInfo = (BoxInfo) orNull;
        if (boxInfo == null) {
            return null;
        }
        orNull2 = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), (containerIndex * this.columnCount) + 1);
        return m33271t(boxInfo, (BoxInfo) orNull2);
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager scrollBy(float dx, float dy) {
        getViewport().offset(dx, dy);
        m33247E();
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
        RectF m33270s = m33270s(getFirstVisibleIndex() / this.columnCount);
        if (m33270s == null) {
            return false;
        }
        RectF m33273v = m33273v(m33270s);
        if (m33270s.height() <= getViewport().height()) {
            RectFKt.alignCenterVertical(m33273v, m33270s);
            RectFKt.alignOrigin(getViewport().getBox(), m33273v);
            scrollBy(offsetX, 0.0f);
        } else {
            if (offsetX == 0.0f) {
                if (offsetY == 0.0f) {
                    RectFKt.topAlign(m33273v, m33270s);
                    RectFKt.alignOrigin(getViewport().getBox(), m33273v);
                    m33247E();
                }
            }
            RectFKt.alignOrigin(getViewport().getBox(), m33270s);
            scrollBy(offsetX, offsetY);
            m33243A(m33270s);
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
    public final RectF m33271t(BoxInfo firstBox, BoxInfo secondBox) {
        RectF copy = RectFKt.copy(firstBox.getBox());
        return secondBox != null ? RectFKt.unionOrCopy(copy, secondBox.getBox()) : copy;
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
    public final RectF m33272u(BoxInfo firstBox, BoxInfo secondBox) {
        RectF copy = RectFKt.copy(firstBox.getVisibleRect());
        return secondBox != null ? RectFKt.unionOrCopy(copy, secondBox.getVisibleRect()) : copy;
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
            RectF m33268q = m33268q();
            BoxInfo copy2 = withId.copy();
            BoxInfo.scaleToViewportWithAspectScaleCheck$default(copy2, m33268q, false, 2, null);
            setCurrentMinScale(copy2.getActualScale());
        } else {
            RectF m33269r = m33269r();
            BoxInfo copy3 = withId.copy();
            BoxInfo.scaleToViewportWithAspectScaleCheck$default(copy3, m33269r, false, 2, null);
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
        m33247E();
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
            m33248F();
            m33247E();
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
    public final RectF m33273v(RectF displayRectF) {
        return new RectF(displayRectF.left, getViewport().top(), displayRectF.right, getViewport().bottom());
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public List<BoxInfo> visibleBoxes() {
        Object orNull;
        ArrayList arrayList = new ArrayList();
        if (getFirstVisibleIndex() < 0) {
            return arrayList;
        }
        float m33263l = m33263l();
        RectF rectF = new RectF();
        int size = this.containerIdIndexedList.size();
        for (int firstVisibleIndex = getFirstVisibleIndex() / this.columnCount; firstVisibleIndex < size; firstVisibleIndex++) {
            BoxInfo boxInfo = this.containerIdIndexedList.get(firstVisibleIndex);
            Intrinsics.checkNotNullExpressionValue(boxInfo, "get(...)");
            BoxInfo boxInfo2 = boxInfo;
            if (boxInfo2.verCheck(getViewport(), m33263l) != 0) {
                break;
            }
            if (boxInfo2.isVisibleIntersectHeight(getViewport())) {
                ArrayList arrayList2 = new ArrayList();
                BoxInfo boxInfo3 = getBoxIdIndexedList().get(this.columnCount * firstVisibleIndex);
                Intrinsics.checkNotNullExpressionValue(boxInfo3, "get(...)");
                m33253b(boxInfo3, arrayList2);
                orNull = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), (this.columnCount * firstVisibleIndex) + 1);
                BoxInfo boxInfo4 = (BoxInfo) orNull;
                if (boxInfo4 != null) {
                    m33253b(boxInfo4, arrayList2);
                }
                m33246D(arrayList2, rectF);
                arrayList.addAll(arrayList2);
            } else {
                log("not visible height");
            }
        }
        updateCurrentMinScale(getCurrentBoxId());
        m33250H();
        if (BoxManager.INSTANCE.getDEBUG_LOG()) {
            log("visibleBoxInfo size = " + arrayList.size());
        }
        return arrayList;
    }

    /* renamed from: w */
    public final RectF m33274w() {
        RectF zeroOriginRoundRectF = getViewport().toZeroOriginRoundRectF();
        zeroOriginRoundRectF.inset(getGap() / 2.0f, getGap() / 2.0f);
        return zeroOriginRoundRectF;
    }

    /* renamed from: x */
    public final void m33275x() {
        RectF m33266o = m33266o();
        if (m33266o == null) {
            return;
        }
        RectFKt.limitAndCenterIf(getViewport().getBox(), m33266o, m33266o);
    }

    /* renamed from: y */
    public final void m33276y() {
        RectF m33266o = m33266o();
        if (m33266o == null) {
            RectFKt.limitAndCenterHorizontalIf(getViewport().getBox(), getViewportLimitRect(), getBoundingRect());
            return;
        }
        RectF copy = RectFKt.copy(getViewportLimitRect());
        copy.left = m33266o.left;
        copy.right = m33266o.right;
        RectF copy2 = RectFKt.copy(getBoundingRect());
        copy2.left = m33266o.left;
        copy2.right = m33266o.right;
        RectFKt.limitAndCenterHorizontalIf(getViewport().getBox(), copy, copy2);
    }

    /* renamed from: z */
    public final void m33277z(float scale) {
        IntRange until;
        IntProgression step;
        Object orNull;
        float f;
        this.containerIdIndexedList.clear();
        float currentDisplayScale = getCurrentDisplayScale();
        RectF zeroOriginRoundRectF = getViewport().toZeroOriginRoundRectF();
        RectFKt.scaleRect(zeroOriginRoundRectF, currentDisplayScale);
        RectF m33268q = m33268q();
        RectFKt.scaleRect(m33268q, currentDisplayScale);
        RectF m33269r = m33269r();
        RectFKt.scaleRect(m33269r, currentDisplayScale);
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
                double height = boxInfo.getBox().height();
                BoxInfo boxInfo2 = getBoxIdIndexedList().get(first);
                Intrinsics.checkNotNullExpressionValue(boxInfo2, "get(...)");
                BoxInfo boxInfo3 = boxInfo2;
                orNull = CollectionsKt___CollectionsKt.getOrNull(getBoxIdIndexedList(), first + 1);
                BoxInfo boxInfo4 = (BoxInfo) orNull;
                RectF rectF = new RectF();
                if (boxInfo4 != null) {
                    f = currentDisplayScale;
                    boxInfo3.scaleToViewportWithAspectScaleCheck(m33268q, false);
                    RectFKt.rightAlign(boxInfo3.getBox(), m33268q);
                } else {
                    f = currentDisplayScale;
                    boxInfo3.scaleToViewportWithAspectScaleCheck(zeroOriginRoundRectF, false);
                }
                RectF rectF2 = zeroOriginRoundRectF;
                float f2 = (float) d;
                RectF rectF3 = m33268q;
                boxInfo3.getBox().offset(0.0f, f2);
                boxInfo3.updateChildrenDisplayRectF();
                rectF.set(boxInfo3.getBox());
                if (boxInfo4 != null) {
                    boxInfo4.scaleToViewportWithAspectScaleCheck(m33269r, false);
                    RectFKt.leftAlign(boxInfo4.getBox(), m33269r);
                    boxInfo4.getBox().offset(0.0f, f2);
                    boxInfo4.updateChildrenDisplayRectF();
                    RectFKt.unionOrCopy(rectF, boxInfo4.getBox());
                }
                double height2 = rectF.height();
                if (Math.rint(height2) > Math.rint(height)) {
                    boxInfo.getBox().bottom = (float) height2;
                    height = height2;
                }
                RectF box = boxInfo.getBox();
                box.top = f2;
                box.left = rectF.left;
                box.right = rectF.right;
                d += height;
                box.bottom = (float) d;
                this.containerIdIndexedList.add(boxInfo);
                if (first == last) {
                    break;
                }
                first += step2;
                currentDisplayScale = f;
                zeroOriginRoundRectF = rectF2;
                m33268q = rectF3;
            }
        }
        m33249G();
    }

    @Override // com.onyx.android.sdk.geometry.boxmanager.BoxManager
    @NotNull
    public BoxManager scrollTo(float newX, float newY) {
        getViewport().getBox().offsetTo(newX, newY);
        m33247E();
        return this;
    }
}
