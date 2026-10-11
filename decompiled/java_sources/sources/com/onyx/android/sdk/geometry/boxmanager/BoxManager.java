package com.onyx.android.sdk.geometry.boxmanager;

import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.collections.StringIndexedArrayList;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RangeKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.p018rx.RxScrollerArgs;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxExtraInfo;
import com.onyx.android.sdk.geometry.data.BoxFlingArgs;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.BoxManagerViewArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b8\b&\u0018\u0000 \u008d\u00012\u00020\u0001:\u0002\u008d\u0001B\t¢\u0006\u0006\b\u008b\u0001\u0010\u008c\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&J\u0016\u0010\u0007\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH&J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\fH&J\u001a\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u0011H&J$\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\b2\b\b\u0002\u0010\u0016\u001a\u00020\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u0015H&J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0015H&J\u0018\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u0015H&J\u000e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010 \u001a\u00020\u001fH&J\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&J\u0010\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0003H&J\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010&\u001a\u00020\fH&J\u000e\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&J\u000e\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&J\b\u0010*\u001a\u00020\nH&J\b\u0010+\u001a\u00020\u0005H&J\u0010\u0010.\u001a\u00020,2\u0006\u0010-\u001a\u00020,H&J\u001e\u00102\u001a\u00020\u001f2\u0006\u0010/\u001a\u00020,2\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u001500H&J\u0010\u00104\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u0015H&J\u0010\u00105\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u0015H&J\u001e\u00106\u001a\u00020\u00052\u0006\u0010/\u001a\u00020,2\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u001500H&J\u001c\u00108\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u00152\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u001500J\u000e\u00109\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fJ\u0012\u0010;\u001a\u00020\u00052\b\b\u0002\u0010:\u001a\u00020\bH&J\b\u0010<\u001a\u00020\u0015H&J\u0006\u0010=\u001a\u00020\bJ\u0006\u0010>\u001a\u00020\u0011J\u0010\u0010@\u001a\u0004\u0018\u00010\u00032\u0006\u0010?\u001a\u00020\nJ\u0010\u0010A\u001a\u0004\u0018\u00010\u00032\u0006\u0010:\u001a\u00020\bJ \u0010D\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0012\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00110BJ\u0016\u0010F\u001a\u00020\u00052\u0006\u0010:\u001a\u00020\b2\u0006\u0010E\u001a\u00020\bJ\u000e\u0010G\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&J\u0010\u0010K\u001a\u00020J2\u0006\u0010I\u001a\u00020HH&J\b\u0010L\u001a\u00020\u0011H&J \u0010O\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\f2\u0006\u0010M\u001a\u00020\u00152\u0006\u0010N\u001a\u00020\u0015H&J\u0011\u0010R\u001a\u0004\u0018\u00010\u0003H\u0000¢\u0006\u0004\bP\u0010QJ\b\u0010S\u001a\u0004\u0018\u00010\u0003J\u000e\u0010U\u001a\u00020\u00052\u0006\u0010T\u001a\u00020\bR \u0010[\u001a\b\u0012\u0004\u0012\u00020\u00030V8\u0004X\u0084\u0004¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u0010ZR\"\u0010\r\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010Q\"\u0004\b\u000e\u0010_R\"\u0010f\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b`\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\"\u0010j\u001a\u00020\f8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bg\u0010a\u001a\u0004\bh\u0010c\"\u0004\bi\u0010eR\"\u0010q\u001a\u00020\u00118\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bk\u0010l\u001a\u0004\bm\u0010n\"\u0004\bo\u0010pR\"\u0010x\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\br\u0010s\u001a\u0004\bt\u0010u\"\u0004\bv\u0010wR\"\u0010\u007f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\by\u0010z\u001a\u0004\b{\u0010|\"\u0004\b}\u0010~R)\u0010\u0086\u0001\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0080\u0001\u0010\u0081\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001\"\u0006\b\u0084\u0001\u0010\u0085\u0001R)\u0010\u008a\u0001\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0087\u0001\u0010\u0081\u0001\u001a\u0006\b\u0088\u0001\u0010\u0083\u0001\"\u0006\b\u0089\u0001\u0010\u0085\u0001¨\u0006\u008e\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxList", "", "setData", "updateDataAndApplyScale", "", "id", "", "indexOf", "Landroid/graphics/RectF;", "viewport", "setViewport", "Lcom/onyx/android/sdk/base/data/Size;", "size", "", "calculate", "updateViewportSize", "boxId", "", "offsetX", "offsetY", "scrollTo", "newX", "newY", "dx", "dy", "scrollBy", "visibleBoxes", "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;", "viewArgs", "collectVisibleBoxList", "list", "convertToVisibleBoxList", "box", "updateToVisibleBox", "documentRectF", "collectIntersectsVisibleBoxList", "collectNextViewportVisibleBoxList", "collectPrevViewportVisibleBoxList", "pageCount", "alignCenter", "Landroid/graphics/Matrix;", "matrix", "loadReboundMatrix", "gestureDeltaMatrix", "Lorg/apache/commons/lang3/Range;", "displayScaleRange", "toBoxManagerViewArgs", "scale", "setScale", "initScale", "applyMatrix", "actualScale", "initScaleWithinRange", "scaleToViewportWithAspectScaleCheck", CouchFieldKey.KEY_TOC_PAGE_ID, "updateCurrentMinScale", "currentDisplayScale", "getDebugString", "isNaN", FirebaseAnalytics.Param.INDEX, "getBoxInfoByIndex", "findBoxInfoByPageId", "Lkotlin/Function1;", "predicate", "findBoxInfoList", "contentPath", "updateBoxInfoContentPath", "copyBoxList", "Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;", "args", "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;", "createRxScrollerArgs", "isEnabledContinuousScroll", "widthTolerance", "shrinkScale", "calculateScaleRatioForViewport", "getCurrentOrFirstBoxInfo$sdk_geometry_release", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getCurrentOrFirstBoxInfo", "copyCurrentOrFirstVisibleBoxInfo", NotificationCompat.CATEGORY_MESSAGE, "log", "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;", "a", "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;", "getBoxIdIndexedList", "()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;", "boxIdIndexedList", "b", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getViewport", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "c", "Landroid/graphics/RectF;", "getBoundingRect", "()Landroid/graphics/RectF;", "setBoundingRect", "(Landroid/graphics/RectF;)V", "boundingRect", "d", "getViewportLimitRect", "setViewportLimitRect", "viewportLimitRect", "e", Constants.HASIDCALL_INDEX_SIG, "getEnableFreeMovePaper", Constants.BOOLEAN_VALUE_SIG, "setEnableFreeMovePaper", "(Z)V", "enableFreeMovePaper", C6997f.f39671c, "I", "getFirstVisibleIndex", "()I", "setFirstVisibleIndex", "(I)V", "firstVisibleIndex", C6998g.f39679a, Constants.STRING_SIG, "getCurrentBoxId", "()Ljava/lang/String;", "setCurrentBoxId", "(Ljava/lang/String;)V", "currentBoxId", C6999h.f39688c, "F", "getCurrentMinScale", "()F", "setCurrentMinScale", "(F)V", "currentMinScale", "i", "getGap", "setGap", "gap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/BoxManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,229:1\n1864#2,3:230\n766#2:233\n857#2,2:234\n1549#2:236\n1620#2,3:237\n*S KotlinDebug\n*F\n+ 1 BoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/BoxManager\n*L\n138#1:230,3\n161#1:233\n161#1:234,2\n162#1:236\n162#1:237,3\n*E\n"})
/* loaded from: classes7.dex */
public abstract class BoxManager {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final float EXPANSION_OFFSET = 300.0f;
    public static final boolean FORCE_ENABLED_CONTINUOUS_SCROLL = false;
    public static final float MIN_AUTO_SCROLL_VELOCITY = 2000.0f;
    public static final float MIN_FLING_PAGE_VELOCITY = 400.0f;
    public static final float VELOCITY_FACTOR = 3.0f;

    /* renamed from: j */
    public static boolean f42180j;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean enableFreeMovePaper;

    /* renamed from: f, reason: from kotlin metadata */
    public int firstVisibleIndex;

    /* renamed from: i, reason: from kotlin metadata */
    public float gap;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final StringIndexedArrayList<BoxInfo> boxIdIndexedList = new StringIndexedArrayList<>(new Function1<BoxInfo, String>() { // from class: com.onyx.android.sdk.geometry.boxmanager.BoxManager$boxIdIndexedList$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final String invoke(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getId();
        }
    }, 0, 2, null);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public BoxInfo viewport = new BoxInfo();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public RectF boundingRect = new RectF();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public RectF viewportLimitRect = new RectF();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public String currentBoxId = "";

    /* renamed from: h, reason: from kotlin metadata */
    public float currentMinScale = 1.0f;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\nJ\u000e\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\nJ\u0006\u0010\u0012\u001a\u00020\nJ\u0006\u0010\u0013\u001a\u00020\nJ\u0006\u0010\u0014\u001a\u00020\nR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;", "", "()V", "DEBUG_LOG", "", "getDEBUG_LOG", Constants.BOOLEAN_VALUE_SIG, "setDEBUG_LOG", "(Z)V", "EXPANSION_OFFSET", "", "FORCE_ENABLED_CONTINUOUS_SCROLL", "MIN_AUTO_SCROLL_VELOCITY", "MIN_FLING_PAGE_VELOCITY", "VELOCITY_FACTOR", "getAutoScrollToNewBoxFriction", "getAutoScrollToNewBoxVelocityValue", "distance", "getMinAutoScrollVelocity", "getMinFlingVelocity", "getReboundToCurrentBoxInfoFriction", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float getAutoScrollToNewBoxFriction() {
            return 0.5f;
        }

        public final float getAutoScrollToNewBoxVelocityValue(float distance) {
            float abs = Math.abs(3.0f * distance);
            if (getDEBUG_LOG()) {
                Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "getAutoScrollToNewBoxVelocityValue = " + abs + ", distance = " + distance, new Object[0]);
            }
            return ((Number) MathUtils.INSTANCE.atLeast(Float.valueOf(abs), Float.valueOf(getMinAutoScrollVelocity()))).floatValue();
        }

        public final boolean getDEBUG_LOG() {
            return BoxManager.f42180j;
        }

        public final float getMinAutoScrollVelocity() {
            return ResManager.INSTANCE.getDensity() * 2000.0f;
        }

        public final float getMinFlingVelocity() {
            return ResManager.INSTANCE.getDensity() * 400.0f;
        }

        public final float getReboundToCurrentBoxInfoFriction() {
            return 0.7f;
        }

        public final void setDEBUG_LOG(boolean z) {
            BoxManager.f42180j = z;
        }

        public Companion() {
        }
    }

    public static /* synthetic */ boolean scrollTo$default(BoxManager boxManager, String str, float f, float f2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: scrollTo");
        }
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        if ((i & 4) != 0) {
            f2 = 0.0f;
        }
        return boxManager.scrollTo(str, f, f2);
    }

    public static /* synthetic */ void updateCurrentMinScale$default(BoxManager boxManager, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateCurrentMinScale");
        }
        if ((i & 1) != 0) {
            str = boxManager.viewport.getId();
        }
        boxManager.updateCurrentMinScale(str);
    }

    public static /* synthetic */ void updateViewportSize$default(BoxManager boxManager, Size size, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateViewportSize");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        boxManager.updateViewportSize(size, z);
    }

    public abstract void alignCenter();

    public abstract void applyMatrix(@NotNull Matrix gestureDeltaMatrix, @NotNull Range<Float> displayScaleRange);

    public abstract float calculateScaleRatioForViewport(@NotNull RectF viewport, float widthTolerance, float shrinkScale);

    @NotNull
    public abstract List<BoxInfo> collectIntersectsVisibleBoxList(@NotNull RectF documentRectF);

    @NotNull
    public abstract List<BoxInfo> collectNextViewportVisibleBoxList();

    @NotNull
    public abstract List<BoxInfo> collectPrevViewportVisibleBoxList();

    @NotNull
    public abstract List<BoxInfo> collectVisibleBoxList(@NotNull BoxManagerViewArgs viewArgs);

    @NotNull
    public abstract List<BoxInfo> convertToVisibleBoxList(@NotNull List<BoxInfo> list);

    @NotNull
    public abstract List<BoxInfo> copyBoxList();

    @Nullable
    public final BoxInfo copyCurrentOrFirstVisibleBoxInfo() {
        Object obj;
        Object firstOrNull;
        List<BoxInfo> visibleBoxes = visibleBoxes();
        Iterator<T> it2 = visibleBoxes.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((BoxInfo) obj).getId(), this.currentBoxId)) {
                break;
            }
        }
        BoxInfo boxInfo = (BoxInfo) obj;
        if (boxInfo == null) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) visibleBoxes);
            boxInfo = (BoxInfo) firstOrNull;
        }
        if (boxInfo != null) {
            return boxInfo.copy();
        }
        return null;
    }

    @NotNull
    public abstract RxScrollerArgs createRxScrollerArgs(@NotNull BoxFlingArgs args);

    /* renamed from: currentDisplayScale */
    public abstract float getCurrentDisplayScale();

    @Nullable
    public final BoxInfo findBoxInfoByPageId(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        BoxInfo withId = this.boxIdIndexedList.getWithId(pageId);
        if (withId != null) {
            return withId.copy();
        }
        return null;
    }

    @NotNull
    public final List<BoxInfo> findBoxInfoList(@NotNull Function1<? super BoxInfo, Boolean> predicate) {
        int collectionSizeOrDefault;
        List<BoxInfo> list;
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        StringIndexedArrayList<BoxInfo> stringIndexedArrayList = this.boxIdIndexedList;
        ArrayList arrayList = new ArrayList();
        for (BoxInfo boxInfo : stringIndexedArrayList) {
            if (predicate.invoke(boxInfo).booleanValue()) {
                arrayList.add(boxInfo);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((BoxInfo) it2.next()).copy());
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList2);
        return list;
    }

    @NotNull
    public final RectF getBoundingRect() {
        return this.boundingRect;
    }

    @NotNull
    public final StringIndexedArrayList<BoxInfo> getBoxIdIndexedList() {
        return this.boxIdIndexedList;
    }

    @Nullable
    public final BoxInfo getBoxInfoByIndex(int index) {
        Object orNull;
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.boxIdIndexedList, index);
        BoxInfo boxInfo = (BoxInfo) orNull;
        if (boxInfo != null) {
            return boxInfo.copy();
        }
        return null;
    }

    @NotNull
    public final String getCurrentBoxId() {
        return this.currentBoxId;
    }

    public final float getCurrentMinScale() {
        return this.currentMinScale;
    }

    @Nullable
    public final BoxInfo getCurrentOrFirstBoxInfo$sdk_geometry_release() {
        Object firstOrNull;
        BoxInfo withId = this.boxIdIndexedList.getWithId(this.currentBoxId);
        if (withId != null) {
            return withId;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.boxIdIndexedList);
        return (BoxInfo) firstOrNull;
    }

    @NotNull
    public final String getDebugString() {
        StringBuilder sb = new StringBuilder();
        sb.append(AnyKt.toSimpleNameString(this) + '\n');
        sb.append("boxList.size = " + this.boxIdIndexedList.size() + '\n');
        sb.append("viewport.id = " + this.viewport.getId() + ", rect = " + this.viewport.getBox() + '\n');
        StringBuilder sb2 = new StringBuilder();
        sb2.append("boundingRect = ");
        sb2.append(this.boundingRect);
        sb2.append('\n');
        sb.append(sb2.toString());
        sb.append("viewportLimitRect = " + getDraftLimitRectF() + '\n');
        sb.append("enableFreeMovePaper = " + getEnableFreeMovePaper() + '\n');
        sb.append("firstVisibleIndex = " + this.firstVisibleIndex + '\n');
        sb.append("currentBoxId = " + this.currentBoxId + '\n');
        sb.append("currentMinScale = " + this.currentMinScale + '\n');
        sb.append("gap = " + this.gap + '\n');
        sb.append("dump NAN boxList start:\n");
        int i = 0;
        for (BoxInfo boxInfo : this.boxIdIndexedList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            BoxInfo boxInfo2 = boxInfo;
            if (boxInfo2.isNaNBox()) {
                sb.append("index = " + i + ", " + boxInfo2.getDebugString() + '\n');
            }
            i = i2;
        }
        sb.append("dump NAN boxList finish:\n");
        String sb3 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public boolean getEnableFreeMovePaper() {
        return this.enableFreeMovePaper;
    }

    public final int getFirstVisibleIndex() {
        return this.firstVisibleIndex;
    }

    public final float getGap() {
        return this.gap;
    }

    @NotNull
    public final BoxInfo getViewport() {
        return this.viewport;
    }

    @NotNull
    /* renamed from: getViewportLimitRect, reason: from getter */
    public RectF getDraftLimitRectF() {
        return this.viewportLimitRect;
    }

    public abstract int indexOf(@NotNull String id);

    public abstract void initScale(float scale);

    public final void initScaleWithinRange(float actualScale, @NotNull Range<Float> displayScaleRange) {
        Intrinsics.checkNotNullParameter(displayScaleRange, "displayScaleRange");
        initScale(actualScale);
        float currentDisplayScale = getCurrentDisplayScale();
        if (displayScaleRange.contains(Float.valueOf(currentDisplayScale))) {
            return;
        }
        float floatValue = ((Number) RangeKt.clamp(displayScaleRange, Float.valueOf(currentDisplayScale))).floatValue();
        float f = this.currentMinScale * floatValue;
        initScale(f);
        log("initScaleWithinRange, actualScale = " + actualScale + ", displayScale = " + currentDisplayScale + ", newScale = " + f + ", newDisplayScale = " + floatValue);
    }

    public abstract boolean isEnabledContinuousScroll();

    public final boolean isNaN() {
        return this.viewport.isNaNBox() || RectKt.isNaN(this.boundingRect) || RectKt.isNaN(getDraftLimitRectF());
    }

    @NotNull
    public abstract Matrix loadReboundMatrix(@NotNull Matrix matrix);

    public final void log(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (f42180j) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), msg, new Object[0]);
        }
    }

    public abstract int pageCount();

    public final void scaleToViewportWithAspectScaleCheck(@NotNull RectF viewport) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.boxIdIndexedList);
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        if (boxInfo == null) {
            return;
        }
        BoxInfo.scaleToViewportWithAspectScaleCheck$default(boxInfo, viewport, false, 2, null);
        setScale(boxInfo.getActualScale());
    }

    @NotNull
    public abstract BoxManager scrollBy(float dx, float dy);

    @NotNull
    public abstract BoxManager scrollTo(float newX, float newY);

    public abstract boolean scrollTo(@NotNull String boxId, float offsetX, float offsetY);

    public final void setBoundingRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.boundingRect = rectF;
    }

    public final void setCurrentBoxId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.currentBoxId = str;
    }

    public final void setCurrentMinScale(float f) {
        this.currentMinScale = f;
    }

    public abstract void setData(@NotNull List<BoxInfo> boxList);

    public void setEnableFreeMovePaper(boolean z) {
        this.enableFreeMovePaper = z;
    }

    public final void setFirstVisibleIndex(int i) {
        this.firstVisibleIndex = i;
    }

    public final void setGap(float f) {
        this.gap = f;
    }

    public abstract void setScale(float scale);

    @NotNull
    public abstract BoxManager setViewport(@NotNull RectF viewport);

    public final void setViewport(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.viewport = boxInfo;
    }

    public void setViewportLimitRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.viewportLimitRect = rectF;
    }

    @NotNull
    public abstract BoxManagerViewArgs toBoxManagerViewArgs(@NotNull Matrix gestureDeltaMatrix, @NotNull Range<Float> displayScaleRange);

    public final void updateBoxInfoContentPath(@NotNull String pageId, @NotNull String contentPath) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(contentPath, "contentPath");
        BoxInfo withId = this.boxIdIndexedList.getWithId(pageId);
        BoxExtraInfo extraInfo = withId != null ? withId.getExtraInfo() : null;
        if (extraInfo == null) {
            return;
        }
        extraInfo.setContentPath(contentPath);
    }

    public abstract void updateCurrentMinScale(@NotNull String pageId);

    public abstract void updateDataAndApplyScale(@NotNull List<BoxInfo> boxList);

    public abstract void updateToVisibleBox(@NotNull BoxInfo box);

    public abstract void updateViewportSize(@NotNull Size size, boolean calculate);

    @NotNull
    public abstract List<BoxInfo> visibleBoxes();
}
