package com.aitsuki.swipe;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.widget.ViewDragHelper;
import com.couchbase.lite.internal.core.C4Constants;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__ReversedViewsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 ~2\u00020\u0001:\r\u007f~\u0080\u0001\u0081\u0001\u0082\u0001\u0083\u0001\u0084\u0001\u0013B'\b\u0007\u0012\u0006\u0010z\u001a\u00020y\u0012\n\b\u0002\u0010B\u001a\u0004\u0018\u00010A\u0012\b\b\u0002\u0010{\u001a\u00020\u0007¢\u0006\u0004\b|\u0010}J\u0012\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0002J\u0018\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\b\u0010\u001b\u001a\u00020\u0004H\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0002J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010 \u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010!\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\"\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010#\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0006\u0010$\u001a\u00020\u0002J\u0006\u0010%\u001a\u00020\u0002J\u0006\u0010&\u001a\u00020\u0002J\u0006\u0010'\u001a\u00020\u0002J\u0010\u0010(\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010)\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010*\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010+\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u000e\u0010.\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,J\u000e\u0010/\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,J\u0010\u00100\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0017J\u0010\u00101\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u00102\u001a\u00020\u0004H\u0016J\b\u00103\u001a\u00020\u0004H\u0014J\u0018\u00106\u001a\u00020\u00042\u0006\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u0007H\u0014J0\u0010<\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u00072\u0006\u0010:\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u0007H\u0014J\b\u0010>\u001a\u00020=H\u0014J\u0010\u0010?\u001a\u00020=2\u0006\u0010\u0016\u001a\u00020=H\u0014J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020=H\u0014J\u0012\u0010?\u001a\u00020=2\b\u0010B\u001a\u0004\u0018\u00010AH\u0016R$\u0010F\u001a\u0012\u0012\u0004\u0012\u00020\n0Cj\b\u0012\u0004\u0012\u00020\n`D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010ER\u0016\u0010H\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010GR\"\u0010N\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u0014\u0010O\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010GR\u0014\u0010P\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010GR\u0016\u0010Q\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010IR\u0016\u0010R\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010GR\u0016\u0010S\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010GR\u0016\u0010U\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010IR\u001c\u0010Y\u001a\n W*\u0004\u0018\u00010V0V8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010XR\u0016\u0010Z\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010GR\u0018\u0010\\\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010[R\"\u0010b\u001a\u00020\u000e8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\t\u0010]\u001a\u0004\b^\u0010_\"\u0004\b`\u0010aR$\u0010d\u001a\u0012\u0012\u0004\u0012\u00020,0Cj\b\u0012\u0004\u0012\u00020,`D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bc\u0010ER\u0018\u0010f\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010[R\u0018\u0010h\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010[R\u0018\u0010j\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010[R\u0014\u0010n\u001a\u00020k8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010mR\u0016\u0010p\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010IR*\u0010v\u001a\u00020\u00072\u0006\u0010q\u001a\u00020\u00078\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010G\u001a\u0004\br\u0010s\"\u0004\bt\u0010uR\u0014\u0010x\u001a\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bw\u0010K¨\u0006\u0085\u0001"}, m61528d2 = {"Lcom/aitsuki/swipe/SwipeLayout;", "Landroid/view/ViewGroup;", "", "animate", "", "b", "l", "", "activeState", "q", "Landroid/view/View;", "menuView", "e", C6997f.f39671c, "", TypedValues.CycleType.S_WAVE_OFFSET, C6998g.f39679a, "Landroid/view/MotionEvent;", "ev", "a", C4921e.f26528e, "d", "p", "x", "y", "j", C4921e.f26537n, GoogleApiAvailabilityLight.f29016b, "i", "direction", C6999h.f39688c, "closeMenu", "closeLeftMenu", "closeRightMenu", "closeStartMenu", "closeEndMenu", "isLeftMenuOpened", "isRightMenuOpened", "isStartMenuOpened", "isEndMenuOpened", "openLeftMenu", "openRightMenu", "openStartMenu", "openEndMenu", "Lcom/aitsuki/swipe/SwipeLayout$Listener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addListener", "removeListener", "onTouchEvent", "onInterceptTouchEvent", "computeScroll", "onDetachedFromWindow", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "changed", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "onLayout", "Landroid/view/ViewGroup$LayoutParams;", "generateDefaultLayoutParams", "generateLayoutParams", "checkLayoutParams", "Landroid/util/AttributeSet;", "attrs", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "matchParentChildren", "I", "preview", Constants.HASIDCALL_INDEX_SIG, "getAutoClose", Constants.BOOLEAN_VALUE_SIG, "setAutoClose", "(Z)V", "autoClose", "touchSlop", "velocity", "isDragging", "downX", "downY", "m", "autoClosePending", "Landroidx/customview/widget/ViewDragHelper;", "kotlin.jvm.PlatformType", "Landroidx/customview/widget/ViewDragHelper;", "dragger", "openState", "Landroid/view/View;", "activeMenu", "F", "getOnScreen$library_release", "()F", "setOnScreen$library_release", "(F)V", "onScreen", "r", "listeners", "s", "contentView", "t", "leftMenu", "u", "rightMenu", "Lcom/aitsuki/swipe/SwipeLayout$Designer;", "v", "Lcom/aitsuki/swipe/SwipeLayout$Designer;", "designer", "w", "initDesigner", "value", "getSwipeFlags", "()I", "setSwipeFlags", "(I)V", "swipeFlags", "getSwipeEnable$library_release", "swipeEnable", "Landroid/content/Context;", "context", "defStyleAttr", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "ClassicDesigner", "Designer", "LayoutParams", C4Constants.LogDomain.LISTENER, "OverlayDesigner", "ParallaxDesigner", "library_release"}, m61529k = 1, m61530mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class SwipeLayout extends ViewGroup {
    public static final int END = 4098;

    /* renamed from: J */
    public static final int f12145J = 2;
    public static final int LEFT = 1;

    /* renamed from: O */
    public static final int f12146O = 3;

    /* renamed from: Q */
    public static final int f12147Q = 4;
    public static final int RELATIVE_LAYOUT_DIRECTION = 4096;
    public static final int RIGHT = 2;
    public static final int START = 4097;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;

    /* renamed from: k0 */
    public static final int f12148k0 = 1;

    /* renamed from: q0 */
    public static final int f12149q0 = 2;

    /* renamed from: t0 */
    public static final int f12150t0 = 4;

    /* renamed from: y */
    public static final int f12152y = 0;

    /* renamed from: z */
    public static final int f12153z = 1;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<View> matchParentChildren;

    /* renamed from: f, reason: from kotlin metadata */
    public int preview;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean autoClose;

    /* renamed from: h, reason: from kotlin metadata */
    public final int touchSlop;

    /* renamed from: i, reason: from kotlin metadata */
    public final int velocity;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isDragging;

    /* renamed from: k, reason: from kotlin metadata */
    public int downX;

    /* renamed from: l, reason: from kotlin metadata */
    public int downY;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean autoClosePending;

    /* renamed from: n, reason: from kotlin metadata */
    public final ViewDragHelper dragger;

    /* renamed from: o, reason: from kotlin metadata */
    public int openState;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public View activeMenu;

    /* renamed from: q, reason: from kotlin metadata */
    public float onScreen;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<Listener> listeners;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public View contentView;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public View leftMenu;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public View rightMenu;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Designer designer;

    /* renamed from: w, reason: from kotlin metadata */
    public boolean initDesigner;

    /* renamed from: x, reason: from kotlin metadata */
    public int swipeFlags;

    /* renamed from: u0 */
    @NotNull
    public static final ThreadLocal<Map<String, Constructor<Designer>>> f12151u0 = new ThreadLocal<>();

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J$\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016J0\u0010\u000f\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0016R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, m61528d2 = {"Lcom/aitsuki/swipe/SwipeLayout$ClassicDesigner;", "Lcom/aitsuki/swipe/SwipeLayout$Designer;", "Lcom/aitsuki/swipe/SwipeLayout;", "parent", "Landroid/view/View;", "leftMenu", "rightMenu", "", "onInit", "menuView", "", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "onLayout", "a", "Landroid/view/View;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "library_release"}, m61529k = 1, m61530mv = {1, 6, 0})
    /* loaded from: classes3.dex */
    public static final class ClassicDesigner implements Designer {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public View leftMenu;

        @Override // com.aitsuki.swipe.SwipeLayout.Designer
        public void onInit(@NotNull SwipeLayout parent, @Nullable View leftMenu, @Nullable View rightMenu) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            this.leftMenu = leftMenu;
            if (leftMenu != null) {
                leftMenu.setVisibility(4);
            }
            if (rightMenu == null) {
                return;
            }
            rightMenu.setVisibility(4);
        }

        @Override // com.aitsuki.swipe.SwipeLayout.Designer
        public void onLayout(@NotNull View menuView, int left, int top, int right, int bottom) {
            Intrinsics.checkNotNullParameter(menuView, "menuView");
            menuView.setVisibility(right - left > 0 ? 0 : 4);
            if (Intrinsics.areEqual(menuView, this.leftMenu)) {
                menuView.layout(right - menuView.getWidth(), menuView.getTop(), right, menuView.getBottom());
            } else {
                menuView.layout(left, menuView.getTop(), menuView.getWidth() + left, menuView.getBottom());
            }
        }
    }

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\bf\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010J$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0007H&J0\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH&¨\u0006\u0011"}, m61528d2 = {"Lcom/aitsuki/swipe/SwipeLayout$Designer;", "", "onInit", "", "parent", "Lcom/aitsuki/swipe/SwipeLayout;", "leftMenu", "Landroid/view/View;", "rightMenu", "onLayout", "menuView", "left", "", OneDriverConstants.TOP, gon.f71288n0, "bottom", "Companion", "library_release"}, m61529k = 1, m61530mv = {1, 6, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public interface Designer {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = Companion.f12175a;

        @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b¨\u0006\t"}, m61528d2 = {"Lcom/aitsuki/swipe/SwipeLayout$Designer$Companion;", "", "()V", "parseDesigner", "Lcom/aitsuki/swipe/SwipeLayout$Designer;", "context", "Landroid/content/Context;", "name", "", "library_release"}, m61529k = 1, m61530mv = {1, 6, 0}, m61532xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {

            /* renamed from: a */
            public static final /* synthetic */ Companion f12175a = new Companion();

            @Nullable
            public final Designer parseDesigner(@NotNull Context context, @Nullable String name) {
                boolean startsWith$default;
                Intrinsics.checkNotNullParameter(context, "context");
                if (name == null || name.length() == 0) {
                    return null;
                }
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, ".", false, 2, null);
                if (startsWith$default) {
                    name = Intrinsics.stringPlus(context.getPackageName(), name);
                }
                try {
                    Map map = (Map) SwipeLayout.f12151u0.get();
                    if (map == null) {
                        map = new LinkedHashMap();
                    }
                    if (((Constructor) map.get(name)) != null) {
                        return null;
                    }
                    Class<?> cls = Class.forName(name, false, context.getClassLoader());
                    if (cls == null) {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.Class<com.aitsuki.swipe.SwipeLayout.Designer>");
                    }
                    Constructor<?> constructor = cls.getConstructor(new Class[0]);
                    constructor.setAccessible(true);
                    map.put(name, constructor);
                    return (Designer) constructor.newInstance(new Object[0]);
                } catch (Exception e) {
                    throw new RuntimeException(Intrinsics.stringPlus("Could not inflate Designer subclass ", name), e);
                }
            }
        }

        void onInit(@NotNull SwipeLayout parent, @Nullable View leftMenu, @Nullable View rightMenu);

        void onLayout(@NotNull View menuView, int left, int top, int right, int bottom);
    }

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, m61528d2 = {"Lcom/aitsuki/swipe/SwipeLayout$Listener;", "", "onMenuClosed", "", "menuView", "Landroid/view/View;", "onMenuOpened", "onSwipe", "swipeOffset", "", "onSwipeStateChanged", "newState", "", "library_release"}, m61529k = 1, m61530mv = {1, 6, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public interface Listener {

        @Metadata(m61529k = 3, m61530mv = {1, 6, 0}, m61532xi = 48)
        /* loaded from: classes3.dex */
        public static final class DefaultImpls {
            public static void onMenuClosed(@NotNull Listener listener, @NotNull View menuView) {
                Intrinsics.checkNotNullParameter(listener, "this");
                Intrinsics.checkNotNullParameter(menuView, "menuView");
            }

            public static void onMenuOpened(@NotNull Listener listener, @NotNull View menuView) {
                Intrinsics.checkNotNullParameter(listener, "this");
                Intrinsics.checkNotNullParameter(menuView, "menuView");
            }

            public static void onSwipe(@NotNull Listener listener, @NotNull View menuView, float f) {
                Intrinsics.checkNotNullParameter(listener, "this");
                Intrinsics.checkNotNullParameter(menuView, "menuView");
            }

            public static void onSwipeStateChanged(@NotNull Listener listener, @NotNull View menuView, int i) {
                Intrinsics.checkNotNullParameter(listener, "this");
                Intrinsics.checkNotNullParameter(menuView, "menuView");
            }
        }

        void onMenuClosed(@NotNull View menuView);

        void onMenuOpened(@NotNull View menuView);

        void onSwipe(@NotNull View menuView, float swipeOffset);

        void onSwipeStateChanged(@NotNull View menuView, int newState);
    }

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J$\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016J0\u0010\u000f\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0016R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, m61528d2 = {"Lcom/aitsuki/swipe/SwipeLayout$OverlayDesigner;", "Lcom/aitsuki/swipe/SwipeLayout$Designer;", "Lcom/aitsuki/swipe/SwipeLayout;", "parent", "Landroid/view/View;", "leftMenu", "rightMenu", "", "onInit", "menuView", "", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "onLayout", "a", "Landroid/view/View;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "library_release"}, m61529k = 1, m61530mv = {1, 6, 0})
    /* loaded from: classes3.dex */
    public static final class OverlayDesigner implements Designer {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public View leftMenu;

        @Override // com.aitsuki.swipe.SwipeLayout.Designer
        public void onInit(@NotNull SwipeLayout parent, @Nullable View leftMenu, @Nullable View rightMenu) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            this.leftMenu = leftMenu;
            if (leftMenu != null) {
                leftMenu.setVisibility(4);
            }
            if (rightMenu == null) {
                return;
            }
            rightMenu.setVisibility(4);
        }

        @Override // com.aitsuki.swipe.SwipeLayout.Designer
        public void onLayout(@NotNull View menuView, int left, int top, int right, int bottom) {
            Intrinsics.checkNotNullParameter(menuView, "menuView");
            int i = right - left;
            menuView.setVisibility(i > 0 ? 0 : 4);
            if (Intrinsics.areEqual(menuView, this.leftMenu)) {
                if (i == 0) {
                    menuView.layout(left - menuView.getWidth(), menuView.getTop(), left, menuView.getBottom());
                    return;
                } else {
                    menuView.layout(left, menuView.getTop(), menuView.getWidth() + left, menuView.getBottom());
                    return;
                }
            }
            if (i == 0) {
                menuView.layout(right, menuView.getTop(), menuView.getWidth() + right, menuView.getBottom());
            } else {
                menuView.layout(right - menuView.getWidth(), menuView.getTop(), right, menuView.getBottom());
            }
        }
    }

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J$\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016J0\u0010\u000f\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0016J \u0010\u0011\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002J \u0010\u0012\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0013¨\u0006\u0016"}, m61528d2 = {"Lcom/aitsuki/swipe/SwipeLayout$ParallaxDesigner;", "Lcom/aitsuki/swipe/SwipeLayout$Designer;", "Lcom/aitsuki/swipe/SwipeLayout;", "parent", "Landroid/view/View;", "leftMenu", "rightMenu", "", "onInit", "menuView", "", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "onLayout", "Landroid/view/ViewGroup;", "a", "b", "Landroid/view/View;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "library_release"}, m61529k = 1, m61530mv = {1, 6, 0})
    /* loaded from: classes3.dex */
    public static final class ParallaxDesigner implements Designer {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public View leftMenu;

        /* renamed from: a */
        public final void m7250a(ViewGroup menuView, int left, int right) {
            float width = (right - left) / menuView.getWidth();
            View childAt = menuView.getChildAt(0);
            int width2 = menuView.getWidth();
            childAt.layout(width2 - childAt.getWidth(), childAt.getTop(), width2, childAt.getBottom());
            int childCount = menuView.getChildCount();
            int i = 1;
            while (i < childCount) {
                int i2 = i + 1;
                View childAt2 = menuView.getChildAt(i);
                int right2 = (int) (childAt.getRight() - (childAt.getWidth() * width));
                childAt2.layout(right2 - childAt2.getWidth(), childAt2.getTop(), right2, childAt2.getBottom());
                childAt = childAt2;
                i = i2;
            }
        }

        /* renamed from: b */
        public final void m7251b(ViewGroup menuView, int left, int right) {
            float width = (right - left) / menuView.getWidth();
            View childAt = menuView.getChildAt(menuView.getChildCount() - 1);
            int width2 = menuView.getWidth() - ((int) (childAt.getWidth() * width));
            childAt.layout(width2, childAt.getTop(), childAt.getWidth() + width2, childAt.getBottom());
            int childCount = menuView.getChildCount() - 2;
            if (childCount < 0) {
                return;
            }
            while (true) {
                int i = childCount - 1;
                View childAt2 = menuView.getChildAt(childCount);
                int left2 = (int) (childAt.getLeft() - (childAt2.getWidth() * width));
                childAt2.layout(left2, childAt2.getTop(), childAt2.getWidth() + left2, childAt2.getBottom());
                if (i < 0) {
                    return;
                }
                childAt = childAt2;
                childCount = i;
            }
        }

        @Override // com.aitsuki.swipe.SwipeLayout.Designer
        public void onInit(@NotNull SwipeLayout parent, @Nullable View leftMenu, @Nullable View rightMenu) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            this.leftMenu = leftMenu;
            if (leftMenu != null) {
                leftMenu.setVisibility(4);
            }
            if (rightMenu == null) {
                return;
            }
            rightMenu.setVisibility(4);
        }

        @Override // com.aitsuki.swipe.SwipeLayout.Designer
        public void onLayout(@NotNull View menuView, int left, int top, int right, int bottom) {
            Intrinsics.checkNotNullParameter(menuView, "menuView");
            int i = right - left;
            menuView.setVisibility(i > 0 ? 0 : 4);
            if (Intrinsics.areEqual(menuView, this.leftMenu)) {
                if (i == 0) {
                    menuView.layout(left - menuView.getWidth(), menuView.getTop(), left, menuView.getBottom());
                    return;
                }
                menuView.layout(right - menuView.getWidth(), menuView.getTop(), right, menuView.getBottom());
                if (menuView instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) menuView;
                    if (viewGroup.getChildCount() > 1) {
                        m7250a(viewGroup, left, right);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i == 0) {
                menuView.layout(right, menuView.getTop(), menuView.getWidth() + right, menuView.getBottom());
                return;
            }
            menuView.layout(right - menuView.getWidth(), menuView.getTop(), right, menuView.getBottom());
            if (menuView instanceof ViewGroup) {
                ViewGroup viewGroup2 = (ViewGroup) menuView;
                if (viewGroup2.getChildCount() > 0) {
                    m7251b(viewGroup2, left, right);
                }
            }
        }
    }

    /* renamed from: com.aitsuki.swipe.SwipeLayout$a */
    /* loaded from: classes3.dex */
    public final class C1712a extends ViewDragHelper.Callback {

        /* renamed from: a */
        public final /* synthetic */ SwipeLayout f12179a;

        public C1712a(SwipeLayout this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.f12179a = this$0;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NotNull View child, int i, int i2) {
            View view;
            int coerceIn;
            int coerceIn2;
            int coerceIn3;
            int coerceIn4;
            Intrinsics.checkNotNullParameter(child, "child");
            View view2 = this.f12179a.contentView;
            if (view2 != null && (view = this.f12179a.activeMenu) != null) {
                if (Intrinsics.areEqual(child, view2)) {
                    if (Intrinsics.areEqual(view, this.f12179a.leftMenu)) {
                        coerceIn4 = RangesKt___RangesKt.coerceIn(i, this.f12179a.getPaddingLeft(), view.getWidth() + this.f12179a.getPaddingLeft());
                        return coerceIn4;
                    }
                    coerceIn3 = RangesKt___RangesKt.coerceIn(i, this.f12179a.getPaddingLeft() - view.getWidth(), this.f12179a.getPaddingLeft());
                    return coerceIn3;
                }
                if (Intrinsics.areEqual(child, this.f12179a.leftMenu)) {
                    coerceIn2 = RangesKt___RangesKt.coerceIn(view2.getLeft() + i2, this.f12179a.getPaddingLeft(), child.getWidth() + this.f12179a.getPaddingLeft());
                    ViewCompat.offsetLeftAndRight(view2, coerceIn2 - view2.getLeft());
                } else if (Intrinsics.areEqual(child, this.f12179a.rightMenu)) {
                    coerceIn = RangesKt___RangesKt.coerceIn(view2.getLeft() + i2, this.f12179a.getPaddingLeft() - child.getWidth(), this.f12179a.getPaddingLeft());
                    ViewCompat.offsetLeftAndRight(view2, coerceIn - view2.getLeft());
                }
                return child.getLeft();
            }
            return child.getLeft();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NotNull View child, int i, int i2) {
            Intrinsics.checkNotNullParameter(child, "child");
            return child.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            this.f12179a.m7249q(i);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NotNull View child, int i, int i2, int i3, int i4) {
            Intrinsics.checkNotNullParameter(child, "child");
            this.f12179a.m7248p();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(@NotNull View releasedChild, float f, float f2) {
            Intrinsics.checkNotNullParameter(releasedChild, "releasedChild");
            View view = this.f12179a.activeMenu;
            if (view == null) {
                return;
            }
            if (Intrinsics.areEqual(view, this.f12179a.leftMenu)) {
                if (f > this.f12179a.velocity) {
                    SwipeLayout.m7234m(this.f12179a, false, 1, null);
                    return;
                }
                if (f < (-this.f12179a.velocity)) {
                    SwipeLayout.m7233c(this.f12179a, false, 1, null);
                    return;
                } else if (this.f12179a.getOnScreen() > 0.5f) {
                    SwipeLayout.m7234m(this.f12179a, false, 1, null);
                    return;
                } else {
                    SwipeLayout.m7233c(this.f12179a, false, 1, null);
                    return;
                }
            }
            if (f < (-this.f12179a.velocity)) {
                SwipeLayout.m7234m(this.f12179a, false, 1, null);
                return;
            }
            if (f > this.f12179a.velocity) {
                SwipeLayout.m7233c(this.f12179a, false, 1, null);
            } else if (this.f12179a.getOnScreen() > 0.5f) {
                SwipeLayout.m7234m(this.f12179a, false, 1, null);
            } else {
                SwipeLayout.m7233c(this.f12179a, false, 1, null);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NotNull View child, int i) {
            Intrinsics.checkNotNullParameter(child, "child");
            return this.f12179a.getSwipeEnable$library_release() && (Intrinsics.areEqual(child, this.f12179a.contentView) || Intrinsics.areEqual(child, this.f12179a.leftMenu) || Intrinsics.areEqual(child, this.f12179a.rightMenu));
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwipeLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: c */
    public static /* synthetic */ void m7233c(SwipeLayout swipeLayout, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        swipeLayout.m7236b(z);
    }

    public static /* synthetic */ void closeEndMenu$default(SwipeLayout swipeLayout, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        swipeLayout.closeEndMenu(z);
    }

    public static /* synthetic */ void closeLeftMenu$default(SwipeLayout swipeLayout, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        swipeLayout.closeLeftMenu(z);
    }

    public static /* synthetic */ void closeMenu$default(SwipeLayout swipeLayout, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        swipeLayout.closeMenu(z);
    }

    public static /* synthetic */ void closeRightMenu$default(SwipeLayout swipeLayout, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        swipeLayout.closeRightMenu(z);
    }

    public static /* synthetic */ void closeStartMenu$default(SwipeLayout swipeLayout, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        swipeLayout.closeStartMenu(z);
    }

    /* renamed from: m */
    public static /* synthetic */ void m7234m(SwipeLayout swipeLayout, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        swipeLayout.m7245l(z);
    }

    public static /* synthetic */ void openEndMenu$default(SwipeLayout swipeLayout, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        swipeLayout.openEndMenu(z);
    }

    public static /* synthetic */ void openLeftMenu$default(SwipeLayout swipeLayout, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        swipeLayout.openLeftMenu(z);
    }

    public static /* synthetic */ void openRightMenu$default(SwipeLayout swipeLayout, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        swipeLayout.openRightMenu(z);
    }

    public static /* synthetic */ void openStartMenu$default(SwipeLayout swipeLayout, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        swipeLayout.openStartMenu(z);
    }

    /* renamed from: a */
    public final void m7235a(MotionEvent ev) {
        if (this.isDragging) {
            return;
        }
        int x = ((int) ev.getX()) - this.downX;
        int y = ((int) ev.getY()) - this.downY;
        boolean z = x < (-this.touchSlop) && Math.abs(x) > Math.abs(y);
        boolean z2 = x > this.touchSlop && x > Math.abs(y);
        int m7241h = m7241h(this.swipeFlags);
        boolean z3 = (m7241h & 1) != 0;
        boolean z4 = (m7241h & 2) != 0;
        int i = this.openState;
        if ((i & 1) == 1 || (i & 2) == 2) {
            if (m7243j(this.downX, this.downY)) {
                this.isDragging = true;
            } else if (m7244k(this.downX, this.downY)) {
                if (!z && !z2) {
                    r4 = false;
                }
                this.isDragging = r4;
            }
        } else if (z2 && z4) {
            View view = this.leftMenu;
            this.activeMenu = view;
            this.isDragging = view != null;
        } else if (z && z3) {
            View view2 = this.rightMenu;
            this.activeMenu = view2;
            this.isDragging = view2 != null;
        }
        if (this.isDragging) {
            MotionEvent obtain = MotionEvent.obtain(ev);
            obtain.setAction(0);
            this.dragger.processTouchEvent(obtain);
        }
    }

    public final void addListener(@NotNull Listener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.add(listener);
    }

    /* renamed from: b */
    public final void m7236b(boolean animate) {
        View view = this.activeMenu;
        if (view == null) {
            this.openState = 0;
            return;
        }
        View view2 = this.contentView;
        if (view2 == null || view == null) {
            return;
        }
        if (animate) {
            this.openState |= 4;
            this.dragger.smoothSlideViewTo(view2, getPaddingLeft(), view2.getTop());
        } else {
            ViewCompat.offsetLeftAndRight(view2, (-view2.getLeft()) + getPaddingLeft());
            m7240g(view, 0.0f);
            m7249q(0);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(@NotNull ViewGroup.LayoutParams p) {
        Intrinsics.checkNotNullParameter(p, "p");
        return (p instanceof LayoutParams) && super.checkLayoutParams(p);
    }

    public final void closeEndMenu(boolean animate) {
        if (m7242i()) {
            closeLeftMenu(animate);
        } else {
            closeRightMenu(animate);
        }
    }

    public final void closeLeftMenu(boolean animate) {
        View view = this.activeMenu;
        if (view != null && Intrinsics.areEqual(view, this.leftMenu)) {
            m7236b(animate);
        }
    }

    public final void closeMenu(boolean animate) {
        m7236b(animate);
    }

    public final void closeRightMenu(boolean animate) {
        View view = this.activeMenu;
        if (view != null && Intrinsics.areEqual(view, this.rightMenu)) {
            m7236b(animate);
        }
    }

    public final void closeStartMenu(boolean animate) {
        if (m7242i()) {
            closeRightMenu(animate);
        } else {
            closeLeftMenu(animate);
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.dragger.continueSettling(true)) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* renamed from: d */
    public final void m7237d(MotionEvent ev) {
        int x = (int) (ev.getX() - this.downX);
        int y = (int) (ev.getY() - this.downY);
        int i = (x * x) + (y * y);
        int i2 = this.touchSlop;
        if (i > i2 * i2) {
            this.autoClosePending = false;
        }
    }

    /* renamed from: e */
    public final void m7238e(View menuView) {
        List asReversedMutable;
        if ((this.openState & 1) == 1) {
            asReversedMutable = CollectionsKt__ReversedViewsKt.asReversedMutable(this.listeners);
            Iterator it2 = asReversedMutable.iterator();
            while (it2.hasNext()) {
                ((Listener) it2.next()).onMenuClosed(menuView);
            }
        }
        this.openState = 0;
    }

    /* renamed from: f */
    public final void m7239f(View menuView) {
        List asReversedMutable;
        if ((this.openState & 1) == 0) {
            asReversedMutable = CollectionsKt__ReversedViewsKt.asReversedMutable(this.listeners);
            Iterator it2 = asReversedMutable.iterator();
            while (it2.hasNext()) {
                ((Listener) it2.next()).onMenuOpened(menuView);
            }
        }
        this.openState = 1;
    }

    /* renamed from: g */
    public final void m7240g(View menuView, float offset) {
        List asReversedMutable;
        this.onScreen = offset;
        asReversedMutable = CollectionsKt__ReversedViewsKt.asReversedMutable(this.listeners);
        Iterator it2 = asReversedMutable.iterator();
        while (it2.hasNext()) {
            ((Listener) it2.next()).onSwipe(menuView, offset);
        }
    }

    @Override // android.view.ViewGroup
    @NotNull
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    @NotNull
    public ViewGroup.LayoutParams generateLayoutParams(@NotNull ViewGroup.LayoutParams p) {
        Intrinsics.checkNotNullParameter(p, "p");
        if (p instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) p);
        }
        return new LayoutParams(p);
    }

    public final boolean getAutoClose() {
        return this.autoClose;
    }

    /* renamed from: getOnScreen$library_release, reason: from getter */
    public final float getOnScreen() {
        return this.onScreen;
    }

    public final boolean getSwipeEnable$library_release() {
        return (this.swipeFlags & 3) != 0;
    }

    public final int getSwipeFlags() {
        return this.swipeFlags;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0015, code lost:
    
        r2 = r3 | 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0025, code lost:
    
        if (m7242i() != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0010, code lost:
    
        if (m7242i() != false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0012, code lost:
    
        r2 = r3 | 2;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m7241h(int r3) {
        /*
            r2 = this;
            r0 = r3 & 4096(0x1000, float:5.74E-42)
            if (r0 <= 0) goto L2a
            r0 = r3 & 4097(0x1001, float:5.741E-42)
            r1 = 4097(0x1001, float:5.741E-42)
            if (r0 != r1) goto L19
            r3 = r3 & (-4098(0xffffffffffffeffe, float:NaN))
            boolean r2 = r2.m7242i()
            if (r2 == 0) goto L15
        L12:
            r2 = r3 | 2
            goto L17
        L15:
            r2 = r3 | 1
        L17:
            r3 = r2
            goto L28
        L19:
            r0 = r3 & 4098(0x1002, float:5.743E-42)
            r1 = 4098(0x1002, float:5.743E-42)
            if (r0 != r1) goto L28
            r3 = r3 & (-4099(0xffffffffffffeffd, float:NaN))
            boolean r2 = r2.m7242i()
            if (r2 == 0) goto L12
            goto L15
        L28:
            r3 = r3 & (-4097(0xffffffffffffefff, float:NaN))
        L2a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aitsuki.swipe.SwipeLayout.m7241h(int):int");
    }

    /* renamed from: i */
    public final boolean m7242i() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public final boolean isEndMenuOpened() {
        return m7242i() ? isLeftMenuOpened() : isRightMenuOpened();
    }

    public final boolean isLeftMenuOpened() {
        View view = this.activeMenu;
        return view != null && Intrinsics.areEqual(view, this.leftMenu) && (this.openState & 1) == 1;
    }

    public final boolean isRightMenuOpened() {
        View view = this.activeMenu;
        return view != null && Intrinsics.areEqual(view, this.rightMenu) && (this.openState & 1) == 1;
    }

    public final boolean isStartMenuOpened() {
        return m7242i() ? isRightMenuOpened() : isLeftMenuOpened();
    }

    /* renamed from: j */
    public final boolean m7243j(int x, int y) {
        View view = this.contentView;
        if (view == null) {
            return false;
        }
        return Intrinsics.areEqual(view, this.dragger.findTopChildUnder(x, y));
    }

    /* renamed from: k */
    public final boolean m7244k(int x, int y) {
        View view = this.activeMenu;
        if (view == null) {
            return false;
        }
        return Intrinsics.areEqual(view, this.dragger.findTopChildUnder(x, y));
    }

    /* renamed from: l */
    public final void m7245l(boolean animate) {
        int i;
        int paddingLeft;
        View view = this.activeMenu;
        if (view == null) {
            this.openState = 0;
            return;
        }
        View view2 = this.contentView;
        if (view2 == null || view == null) {
            return;
        }
        if (Intrinsics.areEqual(view, this.leftMenu)) {
            i = view.getWidth();
            paddingLeft = getPaddingLeft();
        } else {
            i = -view.getWidth();
            paddingLeft = getPaddingLeft();
        }
        int i2 = i + paddingLeft;
        if (animate) {
            this.openState |= 2;
            this.dragger.smoothSlideViewTo(view2, i2, view2.getTop());
            invalidate();
        } else {
            ViewCompat.offsetLeftAndRight(view2, i2 - view2.getLeft());
            m7240g(view, 1.0f);
            m7249q(0);
            requestLayout();
        }
    }

    /* renamed from: n */
    public final void m7246n() {
        int i = this.preview;
        this.activeMenu = i != 1 ? i != 2 ? i != 3 ? i != 4 ? null : m7242i() ? this.leftMenu : this.rightMenu : m7242i() ? this.rightMenu : this.leftMenu : this.rightMenu : this.leftMenu;
        m7245l(false);
    }

    /* renamed from: o */
    public final void m7247o(MotionEvent ev) {
        int actionMasked = ev.getActionMasked();
        if (actionMasked == 0) {
            this.downX = (int) ev.getX();
            int y = (int) ev.getY();
            this.downY = y;
            if (this.autoClose || m7243j(this.downX, y)) {
                this.autoClosePending = true;
                return;
            }
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                boolean z = this.isDragging;
                m7235a(ev);
                if (this.isDragging) {
                    this.dragger.processTouchEvent(ev);
                }
                if (!z && this.isDragging) {
                    requestDisallowInterceptTouchEvent(true);
                    MotionEvent obtain = MotionEvent.obtain(ev);
                    obtain.setAction(3);
                    super.onTouchEvent(obtain);
                }
                m7237d(ev);
                return;
            }
            if (actionMasked != 3) {
                if (this.isDragging) {
                    this.dragger.processTouchEvent(ev);
                    return;
                }
                return;
            }
        }
        if (this.isDragging) {
            this.dragger.processTouchEvent(ev);
            this.isDragging = false;
            requestDisallowInterceptTouchEvent(false);
        }
        if (this.autoClosePending) {
            m7233c(this, false, 1, null);
        }
        this.autoClosePending = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        if ((this.openState & 4) == 4) {
            this.dragger.abort();
            View view = this.contentView;
            if (view != null) {
                setOnScreen$library_release(0.0f);
                ViewCompat.offsetLeftAndRight(view, getPaddingLeft() - view.getLeft());
            }
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NotNull MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        m7247o(ev);
        return this.isDragging;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        if (isInEditMode()) {
            m7246n();
        }
        int paddingLeft = getPaddingLeft();
        int paddingRight = (right - left) - getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = (bottom - top) - getPaddingBottom();
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            int i2 = i + 1;
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams == null) {
                    throw new NullPointerException("null cannot be cast to non-null type com.aitsuki.swipe.SwipeLayout.LayoutParams");
                }
                LayoutParams layoutParams2 = (LayoutParams) layoutParams;
                int absoluteGravity = GravityCompat.getAbsoluteGravity(layoutParams2.getGravity(), ViewCompat.getLayoutDirection(this));
                int gravity = layoutParams2.getGravity() & 112;
                int i3 = absoluteGravity & 7;
                int i4 = i3 != 3 ? i3 != 5 ? paddingLeft : paddingRight + measuredWidth : paddingLeft - measuredWidth;
                int i5 = gravity != 16 ? gravity != 80 ? paddingTop : paddingBottom - measuredHeight : (((paddingBottom - paddingTop) - measuredHeight) / 2) + paddingTop;
                childAt.layout(i4, i5, measuredWidth + i4, measuredHeight + i5);
            }
            i = i2;
        }
        View view = this.contentView;
        if (view != null) {
            View view2 = this.activeMenu;
            if (view2 != null) {
                int width = (int) (view2.getWidth() * this.onScreen);
                if (!Intrinsics.areEqual(view2, this.leftMenu)) {
                    width = -width;
                }
                ViewCompat.offsetLeftAndRight(view, width);
            }
            View view3 = this.leftMenu;
            if (view3 != null) {
                this.designer.onLayout(view3, paddingLeft, paddingTop, view.getLeft(), paddingBottom);
            }
            View view4 = this.rightMenu;
            if (view4 == null) {
                return;
            }
            this.designer.onLayout(view4, view.getRight(), paddingTop, paddingRight, paddingBottom);
        }
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int childMeasureSpec;
        int childMeasureSpec2;
        int coerceAtLeast;
        int coerceAtLeast2;
        int childCount = getChildCount();
        boolean z = (View.MeasureSpec.getMode(widthMeasureSpec) == 1073741824 && View.MeasureSpec.getMode(heightMeasureSpec) == 1073741824) ? false : true;
        this.matchParentChildren.clear();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i < childCount) {
            int i5 = i + 1;
            View childAt = getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.aitsuki.swipe.SwipeLayout.LayoutParams");
            }
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (layoutParams2.getGravity() == 0) {
                this.contentView = childAt;
            }
            int absoluteGravity = GravityCompat.getAbsoluteGravity(layoutParams2.getGravity(), ViewCompat.getLayoutDirection(childAt)) & 7;
            if (absoluteGravity == 3) {
                this.leftMenu = childAt;
            } else if (absoluteGravity == 5) {
                this.rightMenu = childAt;
            }
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, widthMeasureSpec, heightMeasureSpec);
                i2 = RangesKt___RangesKt.coerceAtLeast(i2, childAt.getMeasuredWidth());
                i3 = RangesKt___RangesKt.coerceAtLeast(i3, childAt.getMeasuredHeight());
                i4 = View.combineMeasuredStates(i4, childAt.getMeasuredState());
                if (z && (((ViewGroup.LayoutParams) layoutParams2).width == -1 || ((ViewGroup.LayoutParams) layoutParams2).height == -1)) {
                    this.matchParentChildren.add(childAt);
                }
            }
            i = i5;
        }
        if (!this.initDesigner) {
            this.designer.onInit(this, this.leftMenu, this.rightMenu);
            this.initDesigner = true;
        }
        setMeasuredDimension(View.resolveSizeAndState(i2 + getPaddingLeft() + getPaddingRight(), widthMeasureSpec, i4), View.resolveSizeAndState(i3 + getPaddingTop() + getPaddingBottom(), heightMeasureSpec, i4 << 16));
        int size = this.matchParentChildren.size();
        if (size > 1) {
            int i6 = 0;
            while (i6 < size) {
                int i7 = i6 + 1;
                View view = this.matchParentChildren.get(i6);
                Intrinsics.checkNotNullExpressionValue(view, "matchParentChildren[i]");
                View view2 = view;
                ViewGroup.LayoutParams layoutParams3 = view2.getLayoutParams();
                if (layoutParams3.width == -1) {
                    coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(0, (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(coerceAtLeast2, 1073741824);
                } else {
                    childMeasureSpec = ViewGroup.getChildMeasureSpec(widthMeasureSpec, getPaddingLeft() + getPaddingRight(), layoutParams3.width);
                }
                if (layoutParams3.height == -1) {
                    coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(0, (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
                    childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(coerceAtLeast, 1073741824);
                } else {
                    childMeasureSpec2 = ViewGroup.getChildMeasureSpec(heightMeasureSpec, getPaddingTop() + getPaddingBottom(), layoutParams3.height);
                }
                view2.measure(childMeasureSpec, childMeasureSpec2);
                i6 = i7;
            }
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        m7247o(ev);
        return true;
    }

    public final void openEndMenu(boolean animate) {
        if (m7242i()) {
            openLeftMenu(animate);
        } else {
            openRightMenu(animate);
        }
    }

    public final void openLeftMenu(boolean animate) {
        this.autoClosePending = false;
        this.activeMenu = this.leftMenu;
        m7245l(animate);
    }

    public final void openRightMenu(boolean animate) {
        this.autoClosePending = false;
        this.activeMenu = this.rightMenu;
        m7245l(animate);
    }

    public final void openStartMenu(boolean animate) {
        if (m7242i()) {
            openRightMenu(animate);
        } else {
            openLeftMenu(animate);
        }
    }

    /* renamed from: p */
    public final void m7248p() {
        View view;
        float right;
        View view2 = this.contentView;
        if (view2 == null || (view = this.activeMenu) == null) {
            return;
        }
        if (Intrinsics.areEqual(view, this.leftMenu)) {
            right = (view2.getLeft() - getPaddingLeft()) / view.getWidth();
            this.designer.onLayout(view, getPaddingLeft(), getPaddingTop(), view2.getLeft(), getBottom() - getPaddingBottom());
        } else {
            right = (((getRight() - getLeft()) - getPaddingRight()) - view2.getRight()) / view.getWidth();
            this.designer.onLayout(view, view2.getRight(), getPaddingTop(), (getRight() - getLeft()) - getPaddingRight(), getBottom() - getPaddingBottom());
        }
        if (this.onScreen == right) {
            return;
        }
        m7240g(view, right);
    }

    /* renamed from: q */
    public final void m7249q(int activeState) {
        List asReversedMutable;
        View view = this.activeMenu;
        if (view == null) {
            return;
        }
        asReversedMutable = CollectionsKt__ReversedViewsKt.asReversedMutable(this.listeners);
        Iterator it2 = asReversedMutable.iterator();
        while (it2.hasNext()) {
            ((Listener) it2.next()).onSwipeStateChanged(view, activeState);
        }
        if (activeState == 0) {
            if (this.onScreen == 1.0f) {
                m7239f(view);
            } else {
                m7238e(view);
            }
        }
    }

    public final void removeListener(@NotNull Listener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.remove(listener);
    }

    public final void setAutoClose(boolean z) {
        this.autoClose = z;
    }

    public final void setOnScreen$library_release(float f) {
        this.onScreen = f;
    }

    public final void setSwipeFlags(int i) {
        int m7241h = m7241h(i);
        if ((m7241h & 3) == 0) {
            m7233c(this, false, 1, null);
        } else if ((m7241h & 1) == 0) {
            closeRightMenu$default(this, false, 1, null);
        } else if ((m7241h & 2) == 0) {
            closeLeftMenu$default(this, false, 1, null);
        }
        this.swipeFlags = i;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwipeLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ SwipeLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fB\u0019\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u0012B!\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u0013B\u0011\b\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0000¢\u0006\u0004\b\u000e\u0010\u0015B\u0011\b\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0001¢\u0006\u0004\b\u000e\u0010\u0016R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0017"}, m61528d2 = {"Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;", "Landroid/view/ViewGroup$LayoutParams;", "", "a", "I", "getGravity", "()I", "setGravity", "(I)V", NotificationCompat.WearableExtender.f5060z, "Landroid/content/Context;", "c", "Landroid/util/AttributeSet;", "attrs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "width", "height", "(II)V", "(III)V", "source", "(Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;)V", "(Landroid/view/ViewGroup$LayoutParams;)V", "library_release"}, m61529k = 1, m61530mv = {1, 6, 0})
    /* loaded from: classes3.dex */
    public static final class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a, reason: from kotlin metadata */
        public int gravity;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LayoutParams(@NotNull Context c, @Nullable AttributeSet attributeSet) {
            super(c, attributeSet);
            Intrinsics.checkNotNullParameter(c, "c");
            TypedArray obtainStyledAttributes = c.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.layout_gravity});
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "c.obtainStyledAttributes…d.R.attr.layout_gravity))");
            this.gravity = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public final int getGravity() {
            return this.gravity;
        }

        public final void setGravity(int i) {
            this.gravity = i;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(int i, int i2, int i3) {
            this(i, i2);
            this.gravity = i3;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LayoutParams(@NotNull LayoutParams source) {
            super(source);
            Intrinsics.checkNotNullParameter(source, "source");
            this.gravity = source.gravity;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LayoutParams(@NotNull ViewGroup.LayoutParams source) {
            super(source);
            Intrinsics.checkNotNullParameter(source, "source");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwipeLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Designer designer;
        Intrinsics.checkNotNullParameter(context, "context");
        this.matchParentChildren = new ArrayList<>(1);
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.velocity = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
        this.dragger = ViewDragHelper.create(this, new C1712a(this));
        this.listeners = new ArrayList<>();
        this.swipeFlags = 3;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1711R.styleable.SwipeLayout);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr… R.styleable.SwipeLayout)");
            this.preview = obtainStyledAttributes.getInt(C1711R.styleable.SwipeLayout_preview, this.preview);
            this.autoClose = obtainStyledAttributes.getBoolean(C1711R.styleable.SwipeLayout_autoClose, this.autoClose);
            designer = Designer.INSTANCE.parseDesigner(context, obtainStyledAttributes.getString(C1711R.styleable.SwipeLayout_designer));
            obtainStyledAttributes.recycle();
        } else {
            designer = null;
        }
        this.designer = designer == null ? new ClassicDesigner() : designer;
    }

    @Override // android.view.ViewGroup
    @NotNull
    public ViewGroup.LayoutParams generateLayoutParams(@Nullable AttributeSet attrs) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        return new LayoutParams(context, attrs);
    }
}
