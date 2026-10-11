package com.onyx.galaxy.note.editor.view.custom;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RangeKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutPageNumFloatBarBinding;
import com.onyx.galaxy.note.editor.view.custom.PageScroller;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 a2\u00020\u0001:\u0003abcB\u0011\b\u0016\u0012\u0006\u0010Y\u001a\u00020X¢\u0006\u0004\bZ\u0010[B\u001b\b\u0016\u0012\u0006\u0010Y\u001a\u00020X\u0012\b\u0010]\u001a\u0004\u0018\u00010\\¢\u0006\u0004\bZ\u0010^B#\b\u0016\u0012\u0006\u0010Y\u001a\u00020X\u0012\b\u0010]\u001a\u0004\u0018\u00010\\\u0012\u0006\u0010_\u001a\u00020\u001f¢\u0006\u0004\bZ\u0010`J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J(\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J,\u0010\u0015\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00130\u0013H\u0002J,\u0010\u0016\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00130\u0013H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002J,\u0010\u0019\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00130\u0013H\u0002J,\u0010\u001a\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00130\u0013H\u0002J\u0018\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\b\u0010\u001e\u001a\u00020\bH\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0016J\u000e\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\bJ\u0006\u0010$\u001a\u00020\u0002J\u0006\u0010%\u001a\u00020\u0002J\u0006\u0010&\u001a\u00020\u0002J\u000e\u0010)\u001a\u00020\u00022\u0006\u0010(\u001a\u00020'J\u0006\u0010*\u001a\u00020\u0002J\u000e\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020\u0004J\u0006\u0010-\u001a\u00020\u0002R\u001b\u00102\u001a\u00020.8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010/\u001a\u0004\b0\u00101R\"\u00109\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R$\u0010A\u001a\u0004\u0018\u00010:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0014\u0010C\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010BR\u0016\u0010E\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010DR\u0016\u0010G\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010FR\u0014\u0010H\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010BR\u0016\u0010K\u001a\u00020I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010JR\u0016\u0010M\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010LR\u0016\u0010N\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010LR\u0016\u0010Q\u001a\u00020O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010PR\"\u0010R\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010F\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\u0016\u0010V\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010LR\u0016\u0010W\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010L¨\u0006d"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;", "Landroid/widget/FrameLayout;", "", C6997f.f39671c, "", "rawX", "rawY", C4921e.f26528e, "", GoogleApiAvailabilityLight.f29016b, "touchX", "touchY", "p", "s", "Landroid/view/MotionEvent;", "e2", "t", C4921e.f26537n, "l", "Lorg/apache/commons/lang3/Range;", "kotlin.jvm.PlatformType", "q", "r", "i", "j", "d", "e", "curPageBoxLeft", "curPageBoxTop", "m", C6999h.f39688c, "", "visibility", "setVisibility", "shouldShow", "show", "showForAwhile", "notifyViewDataChange", "refreshOrientation", "Landroid/graphics/Rect;", "rect", "setMotionRegion", "onOuterScrollBegin", "scrollValue", "onOuterScrolling", "onOuterScrollEnd", "Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;", "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;", "getViewData", "()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;", "setViewData", "(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;)V", "viewData", "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;", C6998g.f39679a, "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;", "getPageNumFloatingBarListener", "()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;", "setPageNumFloatingBarListener", "(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;)V", "pageNumFloatingBarListener", "I", "dismissDelay", "Landroid/graphics/Rect;", "regionRect", Constants.HASIDCALL_INDEX_SIG, "isTouching", "touchSlop", "Landroid/view/GestureDetector;", "Landroid/view/GestureDetector;", "gestureDetector", "F", "downRawX", "downRawY", "Ljava/lang/Runnable;", "Ljava/lang/Runnable;", "dismissCountDownTask", "isEnabledBySceneFeature", Constants.BOOLEAN_VALUE_SIG, "setEnabledBySceneFeature", "(Z)V", "currentRawX", "currentRawY", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "PageNumFloatingBarListener", "PageNumViewUpdateData", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PageScroller extends FrameLayout {
    public static final float OUTER_SCROLL_DISTANCE_OFFSET = 100.0f;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public PageNumViewUpdateData viewData;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public PageNumFloatingBarListener pageNumFloatingBarListener;

    /* renamed from: h, reason: from kotlin metadata */
    public final int dismissDelay;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public Rect regionRect;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isTouching;

    /* renamed from: k, reason: from kotlin metadata */
    public final int touchSlop;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public GestureDetector gestureDetector;

    /* renamed from: m, reason: from kotlin metadata */
    public float downRawX;

    /* renamed from: n, reason: from kotlin metadata */
    public float downRawY;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public Runnable dismissCountDownTask;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean isEnabledBySceneFeature;

    /* renamed from: q, reason: from kotlin metadata */
    public float currentRawX;

    /* renamed from: r, reason: from kotlin metadata */
    public float currentRawY;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\tH&J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH&¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;", "", "onDismiss", "", "onShown", "pageScrollEnd", "pageScrollStart", "pageScrollX", "offsetX", "", "pageScrollY", "offsetY", "showPageJumperPopup", "x", "y", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface PageNumFloatingBarListener {
        void onDismiss();

        void onShown();

        void pageScrollEnd();

        void pageScrollStart();

        void pageScrollX(float offsetX);

        void pageScrollY(float offsetY);

        void showPageJumperPopup(float x, float y);
    }

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u001e\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b,\u0010-J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\t\u001a\u00020\u0002HÆ\u0003J;\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010\f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u001c\u001a\u0004\b\"\u0010\u001e\"\u0004\b#\u0010 R\"\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b\r\u0010&\"\u0004\b'\u0010(R\"\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\u0016\u001a\u0004\b*\u0010\u0018\"\u0004\b+\u0010\u001a¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;", "", "", "component1", "Landroid/graphics/RectF;", "component2", "component3", "", "component4", "component5", "pageCount", "viewPort", "viewPortLimitRect", "isVertical", "barGravity", "copy", "", "toString", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "equals", "a", "I", "getPageCount", "()I", "setPageCount", "(I)V", "b", "Landroid/graphics/RectF;", "getViewPort", "()Landroid/graphics/RectF;", "setViewPort", "(Landroid/graphics/RectF;)V", "c", "getViewPortLimitRect", "setViewPortLimitRect", "d", Constants.HASIDCALL_INDEX_SIG, Constants.BOOLEAN_VALUE_SIG, "setVertical", "(Z)V", "e", "getBarGravity", "setBarGravity", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILandroid/graphics/RectF;Landroid/graphics/RectF;ZI)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final /* data */ class PageNumViewUpdateData {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        public int pageCount;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        @NotNull
        public RectF viewPort;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        @NotNull
        public RectF viewPortLimitRect;

        /* renamed from: d, reason: from kotlin metadata and from toString */
        public boolean isVertical;

        /* renamed from: e, reason: from kotlin metadata and from toString */
        public int barGravity;

        public PageNumViewUpdateData() {
            this(0, null, null, false, 0, 31, null);
        }

        public static /* synthetic */ PageNumViewUpdateData copy$default(PageNumViewUpdateData pageNumViewUpdateData, int i, RectF rectF, RectF rectF2, boolean z, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = pageNumViewUpdateData.pageCount;
            }
            if ((i3 & 2) != 0) {
                rectF = pageNumViewUpdateData.viewPort;
            }
            RectF rectF3 = rectF;
            if ((i3 & 4) != 0) {
                rectF2 = pageNumViewUpdateData.viewPortLimitRect;
            }
            RectF rectF4 = rectF2;
            if ((i3 & 8) != 0) {
                z = pageNumViewUpdateData.isVertical;
            }
            boolean z2 = z;
            if ((i3 & 16) != 0) {
                i2 = pageNumViewUpdateData.barGravity;
            }
            return pageNumViewUpdateData.copy(i, rectF3, rectF4, z2, i2);
        }

        /* renamed from: component1, reason: from getter */
        public final int getPageCount() {
            return this.pageCount;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final RectF getViewPort() {
            return this.viewPort;
        }

        @NotNull
        /* renamed from: component3, reason: from getter */
        public final RectF getViewPortLimitRect() {
            return this.viewPortLimitRect;
        }

        /* renamed from: component4, reason: from getter */
        public final boolean getIsVertical() {
            return this.isVertical;
        }

        /* renamed from: component5, reason: from getter */
        public final int getBarGravity() {
            return this.barGravity;
        }

        @NotNull
        public final PageNumViewUpdateData copy(int pageCount, @NotNull RectF viewPort, @NotNull RectF viewPortLimitRect, boolean isVertical, int barGravity) {
            Intrinsics.checkNotNullParameter(viewPort, "viewPort");
            Intrinsics.checkNotNullParameter(viewPortLimitRect, "viewPortLimitRect");
            return new PageNumViewUpdateData(pageCount, viewPort, viewPortLimitRect, isVertical, barGravity);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PageNumViewUpdateData)) {
                return false;
            }
            PageNumViewUpdateData pageNumViewUpdateData = (PageNumViewUpdateData) other;
            return this.pageCount == pageNumViewUpdateData.pageCount && Intrinsics.areEqual(this.viewPort, pageNumViewUpdateData.viewPort) && Intrinsics.areEqual(this.viewPortLimitRect, pageNumViewUpdateData.viewPortLimitRect) && this.isVertical == pageNumViewUpdateData.isVertical && this.barGravity == pageNumViewUpdateData.barGravity;
        }

        public final int getBarGravity() {
            return this.barGravity;
        }

        public final int getPageCount() {
            return this.pageCount;
        }

        @NotNull
        public final RectF getViewPort() {
            return this.viewPort;
        }

        @NotNull
        public final RectF getViewPortLimitRect() {
            return this.viewPortLimitRect;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((((Integer.hashCode(this.pageCount) * 31) + this.viewPort.hashCode()) * 31) + this.viewPortLimitRect.hashCode()) * 31;
            boolean z = this.isVertical;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return ((hashCode + i) * 31) + Integer.hashCode(this.barGravity);
        }

        public final boolean isVertical() {
            return this.isVertical;
        }

        public final void setBarGravity(int i) {
            this.barGravity = i;
        }

        public final void setPageCount(int i) {
            this.pageCount = i;
        }

        public final void setVertical(boolean z) {
            this.isVertical = z;
        }

        public final void setViewPort(@NotNull RectF rectF) {
            Intrinsics.checkNotNullParameter(rectF, "<set-?>");
            this.viewPort = rectF;
        }

        public final void setViewPortLimitRect(@NotNull RectF rectF) {
            Intrinsics.checkNotNullParameter(rectF, "<set-?>");
            this.viewPortLimitRect = rectF;
        }

        @NotNull
        public String toString() {
            return "PageNumViewUpdateData(pageCount=" + this.pageCount + ", viewPort=" + this.viewPort + ", viewPortLimitRect=" + this.viewPortLimitRect + ", isVertical=" + this.isVertical + ", barGravity=" + this.barGravity + ')';
        }

        public PageNumViewUpdateData(int i, @NotNull RectF viewPort, @NotNull RectF viewPortLimitRect, boolean z, int i2) {
            Intrinsics.checkNotNullParameter(viewPort, "viewPort");
            Intrinsics.checkNotNullParameter(viewPortLimitRect, "viewPortLimitRect");
            this.pageCount = i;
            this.viewPort = viewPort;
            this.viewPortLimitRect = viewPortLimitRect;
            this.isVertical = z;
            this.barGravity = i2;
        }

        public /* synthetic */ PageNumViewUpdateData(int i, RectF rectF, RectF rectF2, boolean z, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? 1 : i, (i3 & 2) != 0 ? new RectF() : rectF, (i3 & 4) != 0 ? new RectF() : rectF2, (i3 & 8) != 0 ? true : z, (i3 & 16) != 0 ? 8388613 : i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageScroller(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: c */
    public static final void m47736c(PageScroller this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setVisibility(4);
    }

    /* renamed from: g */
    public static final void m47737g(PageScroller this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47752s();
    }

    /* renamed from: d */
    public final Range<Float> m47738d() {
        return Range.between(Float.valueOf(this.viewData.getViewPortLimitRect().left), Float.valueOf(this.viewData.getViewPortLimitRect().left + m47742i()));
    }

    /* renamed from: e */
    public final Range<Float> m47739e() {
        return Range.between(Float.valueOf(this.viewData.getViewPortLimitRect().top), Float.valueOf(this.viewData.getViewPortLimitRect().top + m47743j()));
    }

    /* renamed from: f */
    public final void m47740f() {
        getBinding().pageScrollerContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vtk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PageScroller.m47737g(PageScroller.this, view);
            }
        });
        getBinding().pageScrollerContainer.setOnTouchListener(new View.OnTouchListener() { // from class: com.onyx.galaxy.note.editor.view.custom.PageScroller$initViews$2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(@NotNull View v, @NotNull MotionEvent event) {
                GestureDetector gestureDetector;
                boolean m47747n;
                Intrinsics.checkNotNullParameter(v, "v");
                Intrinsics.checkNotNullParameter(event, "event");
                gestureDetector = PageScroller.this.gestureDetector;
                gestureDetector.onTouchEvent(event);
                int action = event.getAction();
                if (action == 0) {
                    PageScroller.this.show(true);
                    PageScroller.this.isTouching = true;
                    PageScroller.this.m47748o(event.getRawX(), event.getRawY());
                } else if (action == 1 || action == 3) {
                    PageScroller.this.isTouching = false;
                    m47747n = PageScroller.this.m47747n(event.getRawX(), event.getRawY());
                    if (m47747n) {
                        return true;
                    }
                }
                return false;
            }
        });
        setVisibility(4);
        refreshOrientation();
    }

    @NotNull
    public final LayoutPageNumFloatBarBinding getBinding() {
        return (LayoutPageNumFloatBarBinding) this.binding.getValue();
    }

    @Nullable
    public final PageNumFloatingBarListener getPageNumFloatingBarListener() {
        return this.pageNumFloatingBarListener;
    }

    @NotNull
    public final PageNumViewUpdateData getViewData() {
        return this.viewData;
    }

    /* renamed from: h */
    public final boolean m47741h() {
        if (this.isEnabledBySceneFeature) {
            return false;
        }
        setVisibility(8);
        return true;
    }

    /* renamed from: i */
    public final float m47742i() {
        return this.viewData.getViewPortLimitRect().width() - this.viewData.getViewPort().width();
    }

    /* renamed from: isEnabledBySceneFeature, reason: from getter */
    public final boolean getIsEnabledBySceneFeature() {
        return this.isEnabledBySceneFeature;
    }

    /* renamed from: j */
    public final float m47743j() {
        return this.viewData.getViewPortLimitRect().height() - this.viewData.getViewPort().height();
    }

    /* renamed from: k */
    public final float m47744k() {
        return this.regionRect.width() - getWidth();
    }

    /* renamed from: l */
    public final float m47745l() {
        return this.regionRect.height() - getHeight();
    }

    /* renamed from: m */
    public final void m47746m(float curPageBoxLeft, float curPageBoxTop) {
        float floatValue;
        if (this.isTouching) {
            return;
        }
        Range<Float> m47739e = m47739e();
        Range<Float> m47738d = m47738d();
        Range<Float> m47751r = m47751r();
        Range<Float> m47750q = m47750q();
        if (!this.viewData.isVertical()) {
            if (this.viewData.getViewPortLimitRect().right <= 0.0f) {
                return;
            }
            float f = curPageBoxLeft - this.viewData.getViewPortLimitRect().left;
            Intrinsics.checkNotNull(m47738d);
            float length = f / RangeKt.length(m47738d);
            Intrinsics.checkNotNull(m47750q);
            Float f2 = (Float) RangeKt.clamp(m47750q, Float.valueOf(length * RangeKt.length(m47750q)));
            Intrinsics.checkNotNull(f2);
            setX(f2.floatValue());
            Float minimum = m47751r.getMinimum();
            Intrinsics.checkNotNullExpressionValue(minimum, "getMinimum(...)");
            setY(minimum.floatValue());
            return;
        }
        if (this.viewData.getViewPortLimitRect().bottom <= 0.0f) {
            return;
        }
        float f3 = curPageBoxTop - this.viewData.getViewPortLimitRect().top;
        Intrinsics.checkNotNull(m47739e);
        float length2 = f3 / RangeKt.length(m47739e);
        Intrinsics.checkNotNull(m47751r);
        Float f4 = (Float) RangeKt.clamp(m47751r, Float.valueOf(length2 * RangeKt.length(m47751r)));
        Intrinsics.checkNotNull(f4);
        setY(f4.floatValue());
        if (this.viewData.getBarGravity() == 8388611) {
            Float minimum2 = m47750q.getMinimum();
            Intrinsics.checkNotNull(minimum2);
            floatValue = minimum2.floatValue();
        } else {
            Float maximum = m47750q.getMaximum();
            Intrinsics.checkNotNull(maximum);
            floatValue = maximum.floatValue();
        }
        setX(floatValue);
    }

    /* renamed from: n */
    public final boolean m47747n(float rawX, float rawY) {
        show(false);
        double distance = MathUtils.INSTANCE.distance(this.downRawX, this.downRawY, rawX, rawY);
        PageNumFloatingBarListener pageNumFloatingBarListener = this.pageNumFloatingBarListener;
        if (pageNumFloatingBarListener != null) {
            pageNumFloatingBarListener.pageScrollEnd();
        }
        return distance > ((double) this.touchSlop);
    }

    public final void notifyViewDataChange() {
        m47746m(this.viewData.getViewPort().left, this.viewData.getViewPort().top);
    }

    /* renamed from: o */
    public final void m47748o(float rawX, float rawY) {
        this.downRawX = rawX;
        this.downRawY = rawY;
        PageNumFloatingBarListener pageNumFloatingBarListener = this.pageNumFloatingBarListener;
        if (pageNumFloatingBarListener != null) {
            pageNumFloatingBarListener.pageScrollStart();
        }
    }

    public final void onOuterScrollBegin() {
        show(true);
        int[] locationOnScreen = ViewKt.getLocationOnScreen(this);
        m47748o(locationOnScreen[0] + (getWidth() / 2.0f), locationOnScreen[1] + (getHeight() / 2.0f));
        this.currentRawX = this.downRawX;
        this.currentRawY = this.downRawY;
    }

    public final void onOuterScrollEnd() {
        int[] locationOnScreen = ViewKt.getLocationOnScreen(this);
        m47747n(locationOnScreen[0] + (getWidth() / 2.0f), locationOnScreen[1] + (getHeight() / 2.0f));
    }

    public final void onOuterScrolling(float scrollValue) {
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        float signum = Math.signum(scrollValue) * 100.0f;
        if (this.viewData.isVertical()) {
            this.currentRawY += (m47745l() * signum) / m47743j();
        } else {
            this.currentRawX += (m47744k() * signum) / m47742i();
        }
        m47749p(this.currentRawX, this.currentRawY, width, height);
    }

    /* renamed from: p */
    public final void m47749p(float rawX, float rawY, float touchX, float touchY) {
        if (this.regionRect.width() == 0 || this.regionRect.height() == 0) {
            return;
        }
        if (this.viewData.isVertical()) {
            Range<Float> m47751r = m47751r();
            Intrinsics.checkNotNull(m47751r);
            float length = RangeKt.length(m47751r);
            Float f = (Float) RangeKt.clamp(m47751r, Float.valueOf((getY() + touchY) - (getHeight() / 2)));
            Intrinsics.checkNotNull(f);
            setY(f.floatValue());
            float m47743j = ((rawY - this.downRawY) / length) * m47743j();
            PageNumFloatingBarListener pageNumFloatingBarListener = this.pageNumFloatingBarListener;
            if (pageNumFloatingBarListener != null) {
                pageNumFloatingBarListener.pageScrollY(m47743j);
                return;
            }
            return;
        }
        Range<Float> m47750q = m47750q();
        Intrinsics.checkNotNull(m47750q);
        float length2 = RangeKt.length(m47750q);
        Float f2 = (Float) RangeKt.clamp(m47750q, Float.valueOf((getX() + touchX) - (getWidth() / 2)));
        Intrinsics.checkNotNull(f2);
        setX(f2.floatValue());
        float m47742i = ((rawX - this.downRawX) / length2) * m47742i();
        PageNumFloatingBarListener pageNumFloatingBarListener2 = this.pageNumFloatingBarListener;
        if (pageNumFloatingBarListener2 != null) {
            pageNumFloatingBarListener2.pageScrollX(m47742i);
        }
    }

    /* renamed from: q */
    public final Range<Float> m47750q() {
        return Range.between(Float.valueOf(this.regionRect.left), Float.valueOf(this.regionRect.left + m47744k()));
    }

    /* renamed from: r */
    public final Range<Float> m47751r() {
        return Range.between(Float.valueOf(this.regionRect.top), Float.valueOf(this.regionRect.top + m47745l()));
    }

    public final void refreshOrientation() {
        if (m47741h()) {
            return;
        }
        if (!this.viewData.isVertical()) {
            getBinding().pageScrollerHorizon.setVisibility(0);
            getBinding().pageScrollerVertical.setVisibility(8);
            return;
        }
        int barGravity = this.viewData.getBarGravity();
        if (barGravity == 8388611 || barGravity == 8388613) {
            getBinding().pageScrollerHorizon.setVisibility(8);
            getBinding().pageScrollerVertical.setVisibility(0);
        }
    }

    /* renamed from: s */
    public final void m47752s() {
        RectF globalVisibleRectF = ViewKt.globalVisibleRectF(this);
        PageNumFloatingBarListener pageNumFloatingBarListener = this.pageNumFloatingBarListener;
        if (pageNumFloatingBarListener != null) {
            pageNumFloatingBarListener.showPageJumperPopup(globalVisibleRectF.left, globalVisibleRectF.top);
        }
        setVisibility(4);
    }

    public final void setEnabledBySceneFeature(boolean z) {
        this.isEnabledBySceneFeature = z;
    }

    public final void setMotionRegion(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.regionRect = rect;
    }

    public final void setPageNumFloatingBarListener(@Nullable PageNumFloatingBarListener pageNumFloatingBarListener) {
        this.pageNumFloatingBarListener = pageNumFloatingBarListener;
    }

    public final void setViewData(@NotNull PageNumViewUpdateData pageNumViewUpdateData) {
        Intrinsics.checkNotNullParameter(pageNumViewUpdateData, "<set-?>");
        this.viewData = pageNumViewUpdateData;
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        PageNumFloatingBarListener pageNumFloatingBarListener;
        if (visibility == 0) {
            notifyViewDataChange();
            PageNumFloatingBarListener pageNumFloatingBarListener2 = this.pageNumFloatingBarListener;
            if (pageNumFloatingBarListener2 != null) {
                pageNumFloatingBarListener2.onShown();
            }
        } else if ((visibility == 4 || visibility == 8) && (pageNumFloatingBarListener = this.pageNumFloatingBarListener) != null) {
            pageNumFloatingBarListener.onDismiss();
        }
        super.setVisibility(visibility);
    }

    public final void show(boolean shouldShow) {
        if (m47741h()) {
            return;
        }
        removeCallbacks(this.dismissCountDownTask);
        if (!shouldShow) {
            postDelayed(this.dismissCountDownTask, this.dismissDelay);
        } else if (isAttachedToWindow()) {
            refreshOrientation();
            setVisibility(0);
        }
    }

    public final void showForAwhile() {
        if (m47741h()) {
            return;
        }
        removeCallbacks(this.dismissCountDownTask);
        if (isAttachedToWindow()) {
            refreshOrientation();
            notifyViewDataChange();
            setVisibility(0);
            postDelayed(this.dismissCountDownTask, this.dismissDelay);
        }
    }

    /* renamed from: t */
    public final void m47753t(MotionEvent e2) {
        m47749p(e2.getRawX(), e2.getRawY(), e2.getX(), e2.getY());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageScroller(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageScroller(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutPageNumFloatBarBinding>() { // from class: com.onyx.galaxy.note.editor.view.custom.PageScroller$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutPageNumFloatBarBinding invoke() {
                return LayoutPageNumFloatBarBinding.inflate(LayoutInflater.from(PageScroller.this.getContext()), PageScroller.this, true);
            }
        });
        this.binding = lazy;
        this.viewData = new PageNumViewUpdateData(0, null, null, false, 0, 31, null);
        ResManager resManager = ResManager.INSTANCE;
        this.dismissDelay = resManager.getInteger(C10651R.integer.page_indicator_duration);
        this.regionRect = new Rect();
        this.touchSlop = resManager.getDimens(C10651R.dimen.page_indicator_touch_distance_throttle);
        this.gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.onyx.galaxy.note.editor.view.custom.PageScroller$gestureDetector$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(@Nullable MotionEvent e1, @NotNull MotionEvent e2, float distanceX, float distanceY) {
                Intrinsics.checkNotNullParameter(e2, "e2");
                PageScroller.this.m47753t(e2);
                return true;
            }
        });
        this.dismissCountDownTask = new Runnable() { // from class: com.sunia.HTREnginev2.wtk
            @Override // java.lang.Runnable
            public final void run() {
                PageScroller.m47736c(PageScroller.this);
            }
        };
        this.isEnabledBySceneFeature = true;
        m47740f();
    }
}
