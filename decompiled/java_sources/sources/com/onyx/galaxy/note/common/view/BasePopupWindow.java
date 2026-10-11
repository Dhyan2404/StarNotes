package com.onyx.galaxy.note.common.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.IBinder;
import android.util.Size;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.ScreenUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.utils.SystemThemeChangedEvent;
import com.onyx.android.sdk.theme.utils.ThemeBundle;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.ThemeChangedEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.PopupWindowKt;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupLoadingBinding;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.ref.WeakReference;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b'\u0018\u0000 z2\u00020\u00012\u00020\u0002:\u0001zB\u001b\b\u0016\u0012\u0006\u0010M\u001a\u00020I\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\bx\u0010yJ \u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J(\u0010\r\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\tH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0012\u001a\u00020\u0010H\u0002J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013J\b\u0010\u0016\u001a\u00020\u0010H\u0016J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0003H\u0016J6\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u00192\b\b\u0002\u0010\u001b\u001a\u00020\u00192\b\b\u0002\u0010\u001c\u001a\u00020\u00192\b\b\u0002\u0010\u001d\u001a\u00020\u0019J\u000e\u0010!\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u001fJ.\u0010%\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\"\u001a\u00020\u00192\b\b\u0002\u0010#\u001a\u00020\u00192\b\b\u0002\u0010$\u001a\u00020\u0003H\u0016J\u0010\u0010&\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J,\u0010&\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010(\u001a\u00020'2\b\b\u0002\u0010)\u001a\u00020\u00192\b\b\u0002\u0010*\u001a\u00020\u0019H\u0016J\"\u0010+\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\tH\u0016J\"\u0010-\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u00032\b\b\u0002\u0010)\u001a\u00020\u00192\b\b\u0002\u0010*\u001a\u00020\u0019J(\u00101\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u00192\u0006\u0010/\u001a\u00020\u00192\u0006\u00100\u001a\u00020\u0019H\u0016J(\u00104\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u00192\u0006\u00103\u001a\u00020\u00192\u0006\u0010.\u001a\u00020\u0019H\u0016J,\u00107\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u00105\u001a\u00020\u00192\b\b\u0002\u00106\u001a\u00020\u00192\b\b\u0002\u0010.\u001a\u00020\u0019J\u0006\u00108\u001a\u00020\u0019J\b\u00109\u001a\u00020\u0010H\u0016J \u0010=\u001a\u00020\u00102\u0006\u0010:\u001a\u00020\u001f2\u0010\b\u0002\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010;J\u000e\u0010?\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0019J\b\u0010@\u001a\u00020\u0010H\u0014J\b\u0010A\u001a\u00020\u0010H\u0014J\u0010\u0010D\u001a\u00020\u00102\u0006\u0010C\u001a\u00020BH\u0007J\u0010\u0010F\u001a\u00020\u00102\u0006\u0010C\u001a\u00020EH\u0007J\u000e\u0010H\u001a\u00020\u00102\u0006\u0010G\u001a\u00020\u0003R\u001a\u0010M\u001a\u00020I8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0011\u0010J\u001a\u0004\bK\u0010LR\"\u0010\u0006\u001a\u00020\u00058\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bN\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR\u0016\u0010V\u001a\u00020T8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010UR\u001b\u0010[\u001a\u00020W8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010X\u001a\u0004\bY\u0010ZR\u0016\u0010]\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\\R\u0016\u0010`\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0018\u0010c\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR\u0018\u0010g\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010fR\u001e\u0010j\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR*\u0010r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010k8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bl\u0010m\u001a\u0004\bn\u0010o\"\u0004\bp\u0010qR\u0016\u0010v\u001a\u00020s8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bt\u0010uR\u0016\u0010 \u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010\\¨\u0006{"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Landroid/widget/PopupWindow;", "Landroidx/lifecycle/LifecycleOwner;", "Landroid/view/View;", Constants.ELEMNAME_ANCHOR_STRING, "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", "Landroid/graphics/Rect;", "frameOffset", "Landroid/graphics/Point;", C6998g.f39679a, "rootView", "offsetPoint", C6999h.f39688c, "Landroid/os/IBinder;", "token", "", "e", "i", "Landroid/widget/PopupWindow$OnDismissListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnDismissListener", "initContentView", "view", "setContentView", "", "loadingViewWidth", "loadingViewHeight", "contentViewWidth", "contentViewHeight", "setContentViewWithLoading", "", "loading", "setLoading", "dx", "dy", "parent", "showByDockType", "show", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "offsetX", "offsetY", "showToRoot", "windowRootView", "showRightBottomOrTopInActivity", NotificationCompat.WearableExtender.f5060z, "x", "y", "showAtLocation", "xoff", "yoff", "showAsDropDown", "offX", "offY", "showAsDropCenter", "getShadowOffset", "dismiss", "showMask", "Lkotlin/Function0;", "callback", "setMask", "color", "setMaskColor", "onShow", "onDismiss", "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;", NotificationCompat.CATEGORY_EVENT, "onThemeChangedEvent", "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;", "onSystemThemeChangedEvent", "anchorView", "safeShowAsDropDown", "Landroid/content/Context;", "Landroid/content/Context;", "getContext$note_overseasRelease", "()Landroid/content/Context;", "context", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "getDockType$note_overseasRelease", "()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "setDockType$note_overseasRelease", "(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "", "F", "shadowOffset", "Landroidx/lifecycle/LifecycleRegistry;", "Lkotlin/Lazy;", "getLifecycle", "()Landroidx/lifecycle/LifecycleRegistry;", RequestParameters.SUBRESOURCE_LIFECYCLE, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "isShowMask", "j", "I", "maskColor", C4921e.f26537n, "Landroid/view/View;", "maskView", "Landroid/view/WindowManager;", "l", "Landroid/view/WindowManager;", "windowManager", "m", "Lkotlin/jvm/functions/Function0;", "keycodeBackCallback", "Ljava/lang/ref/WeakReference;", GoogleApiAvailabilityLight.f29016b, "Ljava/lang/ref/WeakReference;", "getParentViewRef", "()Ljava/lang/ref/WeakReference;", "setParentViewRef", "(Ljava/lang/ref/WeakReference;)V", "parentViewRef", "Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;", C4921e.f26528e, "Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;", "loadBinding", "p", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SuppressLint({"UseCompatLoadingForDrawables"})
@SourceDebugExtension({"SMAP\nBasePopupWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePopupWindow.kt\ncom/onyx/galaxy/note/common/view/BasePopupWindow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,379:1\n1#2:380\n*E\n"})
/* loaded from: classes9.dex */
public abstract class BasePopupWindow extends PopupWindow implements LifecycleOwner {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final long VISIBLE_DELAY_MS = 100;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public DockType dockType;

    /* renamed from: g, reason: from kotlin metadata */
    public float shadowOffset;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy lifecycle;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean isShowMask;

    /* renamed from: j, reason: from kotlin metadata */
    public int maskColor;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public View maskView;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public WindowManager windowManager;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public Function0<Unit> keycodeBackCallback;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public WeakReference<View> parentViewRef;

    /* renamed from: o, reason: from kotlin metadata */
    public PopupLoadingBinding loadBinding;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean loading;

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;", "", "()V", "VISIBLE_DELAY_MS", "", "showByDockType", "", "Landroid/widget/PopupWindow;", Constants.ELEMNAME_ANCHOR_STRING, "Landroid/view/View;", "dockType", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dx", "", "dy", "parent", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[DockType.values().length];
                try {
                    iArr[DockType.TOP.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[DockType.BOTTOM.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[DockType.LEFT.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[DockType.RIGHT.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void showByDockType(@NotNull PopupWindow popupWindow, @NotNull View anchor, @NotNull DockType dockType, int i, int i2, @NotNull View parent) {
            WindowLocation windowLocation;
            Intrinsics.checkNotNullParameter(popupWindow, "<this>");
            Intrinsics.checkNotNullParameter(anchor, "anchor");
            Intrinsics.checkNotNullParameter(dockType, "dockType");
            Intrinsics.checkNotNullParameter(parent, "parent");
            int i3 = WhenMappings.$EnumSwitchMapping$0[dockType.ordinal()];
            if (i3 == 1) {
                windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) popupWindow, anchor, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.TOP_CENTER, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.BOTTOM_CENTER, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : i2, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : parent);
            } else if (i3 == 2) {
                windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) popupWindow, anchor, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.BOTTOM_CENTER, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.TOP_CENTER, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : i2, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : parent);
            } else if (i3 == 3) {
                windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) popupWindow, anchor, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.CENTER_LEFT, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.CENTER_RIGHT, (r17 & 8) != 0 ? 0 : i, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : parent);
            } else {
                if (i3 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) popupWindow, anchor, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.CENTER_RIGHT, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.CENTER_LEFT, (r17 & 8) != 0 ? 0 : i, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : parent);
            }
            PopupLocator.INSTANCE.show(popupWindow, windowLocation, parent);
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DockType.values().length];
            try {
                iArr[DockType.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockType.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockType.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockType.LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ BasePopupWindow(Context context, DockType dockType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? DockType.BOTTOM : dockType);
    }

    /* renamed from: d */
    public static final void m45138d() {
    }

    /* renamed from: f */
    public static final boolean m45139f(BasePopupWindow this$0, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 4) {
            return false;
        }
        Function0<Unit> function0 = this$0.keycodeBackCallback;
        if (function0 == null) {
            return true;
        }
        function0.invoke();
        return true;
    }

    /* renamed from: j */
    public static final void m45140j(BasePopupWindow this$0, PopupWindow.OnDismissListener listener) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(listener, "$listener");
        this$0.onDismiss();
        listener.onDismiss();
    }

    public static /* synthetic */ void setContentViewWithLoading$default(BasePopupWindow basePopupWindow, View view, int i, int i2, int i3, int i4, int i5, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setContentViewWithLoading");
        }
        basePopupWindow.setContentViewWithLoading(view, (i5 & 2) != 0 ? -2 : i, (i5 & 4) != 0 ? -2 : i2, (i5 & 8) != 0 ? -2 : i3, (i5 & 16) != 0 ? -2 : i4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setMask$default(BasePopupWindow basePopupWindow, boolean z, Function0 function0, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setMask");
        }
        if ((i & 2) != 0) {
            function0 = null;
        }
        basePopupWindow.setMask(z, function0);
    }

    public static /* synthetic */ void show$default(BasePopupWindow basePopupWindow, View view, TouchPoint touchPoint, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: show");
        }
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        basePopupWindow.show(view, touchPoint, i, i2);
    }

    public static /* synthetic */ void showAsDropCenter$default(BasePopupWindow basePopupWindow, View view, int i, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showAsDropCenter");
        }
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = 0;
        }
        basePopupWindow.showAsDropCenter(view, i, i2, i3);
    }

    public static /* synthetic */ void showByDockType$default(BasePopupWindow basePopupWindow, View view, int i, int i2, View view2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showByDockType");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        if ((i3 & 8) != 0) {
            view2 = Activity.INSTANCE.getTopContentView();
        }
        basePopupWindow.showByDockType(view, i, i2, view2);
    }

    public static /* synthetic */ DockType showRightBottomOrTopInActivity$default(BasePopupWindow basePopupWindow, View view, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showRightBottomOrTopInActivity");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        return basePopupWindow.showRightBottomOrTopInActivity(view, i, i2);
    }

    public static /* synthetic */ void showToRoot$default(BasePopupWindow basePopupWindow, View view, View view2, Point point, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showToRoot");
        }
        if ((i & 4) != 0) {
            point = new Point();
        }
        basePopupWindow.showToRoot(view, view2, point);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        m45144i();
        super.dismiss();
    }

    /* renamed from: e */
    public final void m45141e(IBinder token) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.type = 1000;
        layoutParams.token = token;
        View view = new View(this.context);
        this.maskView = view;
        view.setBackgroundColor(this.maskColor);
        view.setFitsSystemWindows(false);
        view.setOnKeyListener(new View.OnKeyListener() { // from class: com.sunia.HTREnginev2.wn
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view2, int i, KeyEvent keyEvent) {
                boolean m45139f;
                m45139f = BasePopupWindow.m45139f(BasePopupWindow.this, view2, i, keyEvent);
                return m45139f;
            }
        });
        Object systemService = this.context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        this.windowManager = windowManager;
        if (windowManager != null) {
            windowManager.addView(this.maskView, layoutParams);
        }
    }

    /* renamed from: g */
    public final Point m45142g(View anchor, DockType dockType, Rect frameOffset) {
        Point point = new Point(0, 0);
        int[] drawingPosition = ViewKt.getDrawingPosition(anchor);
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        anchor.getDrawingRect(new Rect());
        int i = drawingPosition[0];
        Rect rect = new Rect(i, drawingPosition[1], anchor.getMeasuredWidth() + i, drawingPosition[1] + anchor.getMeasuredHeight());
        int i2 = WhenMappings.$EnumSwitchMapping$0[dockType.ordinal()];
        if (i2 == 1) {
            point.x = rect.left - ((measureSize$default.getWidth() - rect.width()) / 2);
            point.y = (int) (rect.top - ((measureSize$default.getHeight() + this.shadowOffset) + frameOffset.bottom));
        } else if (i2 == 2) {
            point.x = rect.left - ((measureSize$default.getWidth() - rect.width()) / 2);
            point.y = rect.bottom + frameOffset.top;
        } else if (i2 == 3) {
            point.x = rect.right + frameOffset.left;
            point.y = rect.top - ((measureSize$default.getHeight() - rect.height()) / 2);
        } else if (i2 == 4) {
            point.x = rect.left - ((int) ((measureSize$default.getWidth() + this.shadowOffset) + frameOffset.right));
            point.y = rect.top - ((measureSize$default.getHeight() - rect.height()) / 2);
        }
        return point;
    }

    @NotNull
    /* renamed from: getContext$note_overseasRelease, reason: from getter */
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    /* renamed from: getDockType$note_overseasRelease, reason: from getter */
    public final DockType getDockType() {
        return this.dockType;
    }

    @Nullable
    public final WeakReference<View> getParentViewRef() {
        return this.parentViewRef;
    }

    public final int getShadowOffset() {
        return ResManager.INSTANCE.getDimens(C10651R.dimen.popup_shadow_offset);
    }

    /* renamed from: h */
    public final Point m45143h(View rootView, View anchor, DockType dockType, Point offsetPoint) {
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        int[] locationOnScreen = ViewKt.getLocationOnScreen(rootView);
        Rect screenVisibleRect = ViewKt.screenVisibleRect(anchor);
        int i = screenVisibleRect.left;
        int i2 = locationOnScreen[0];
        screenVisibleRect.left = i - i2;
        screenVisibleRect.right -= i2;
        int i3 = screenVisibleRect.top;
        int i4 = locationOnScreen[1];
        screenVisibleRect.top = i3 - i4;
        screenVisibleRect.bottom -= i4;
        Point point = new Point(0, 0);
        int i5 = WhenMappings.$EnumSwitchMapping$0[dockType.ordinal()];
        if (i5 == 1) {
            point.x = screenVisibleRect.left;
            point.y = screenVisibleRect.top - ((int) (measureSize$default.getHeight() + (this.shadowOffset / 2)));
        } else if (i5 == 2) {
            point.x = screenVisibleRect.left;
            point.y = screenVisibleRect.bottom - ((int) (this.shadowOffset / 2));
        } else if (i5 == 3) {
            point.x = screenVisibleRect.right - ((int) (this.shadowOffset / 2));
            point.y = screenVisibleRect.top;
        } else if (i5 == 4) {
            point.x = screenVisibleRect.left - ((int) (measureSize$default.getWidth() + (this.shadowOffset / 2)));
            point.y = screenVisibleRect.top;
        }
        point.x += offsetPoint.x;
        point.y += offsetPoint.y;
        return point;
    }

    /* renamed from: i */
    public final void m45144i() {
        View view = this.maskView;
        if (view != null) {
            WindowManager windowManager = this.windowManager;
            if (windowManager != null) {
                windowManager.removeViewImmediate(view);
            }
            this.maskView = null;
        }
    }

    public void initContentView() {
    }

    public void onDismiss() {
        ThemeBundle.INSTANCE.unRegister(this);
        GlobalBundle.INSTANCE.unregister(this);
        Lifecycle.State state = Lifecycle.State.CREATED;
        Lifecycle.State state2 = Lifecycle.State.RESUMED;
        Lifecycle.State state3 = getLifecycle().getState();
        boolean z = false;
        if (state3.compareTo(state) >= 0 && state3.compareTo(state2) <= 0) {
            z = true;
        }
        if (z) {
            getLifecycle().setCurrentState(Lifecycle.State.DESTROYED);
        }
    }

    public void onShow() {
        getLifecycle().setCurrentState(Lifecycle.State.RESUMED);
        ThemeBundle.INSTANCE.register(this);
        GlobalBundle.INSTANCE.register(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSystemThemeChangedEvent(@NotNull SystemThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ThemeUtils.refreshView(getContentView());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onThemeChangedEvent(@NotNull ThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ThemeUtils.refreshView(getContentView());
    }

    public final void safeShowAsDropDown(@NotNull View anchorView) {
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        showAsDropDown(anchorView, 0, (ViewKt.getLocationOnScreen(anchorView)[1] + anchorView.getHeight()) + measureSize$default.getHeight() > ScreenUtils.getScreenHeight() - anchorView.getHeight() ? -(measureSize$default.getHeight() + anchorView.getHeight()) : 0);
    }

    @Override // android.widget.PopupWindow
    public void setContentView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.setContentView(view);
    }

    public final void setContentViewWithLoading(@NotNull View view, int loadingViewWidth, int loadingViewHeight, int contentViewWidth, int contentViewHeight) {
        Intrinsics.checkNotNullParameter(view, "view");
        PopupLoadingBinding inflate = PopupLoadingBinding.inflate(LayoutInflater.from(this.context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.loadBinding = inflate;
        PopupLoadingBinding popupLoadingBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadBinding");
            inflate = null;
        }
        inflate.contentViewWrapper.addView(view);
        PopupLoadingBinding popupLoadingBinding2 = this.loadBinding;
        if (popupLoadingBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadBinding");
            popupLoadingBinding2 = null;
        }
        TintTextView loadingView = popupLoadingBinding2.loadingView;
        Intrinsics.checkNotNullExpressionValue(loadingView, "loadingView");
        ViewKt.setLayoutParams(loadingView, loadingViewWidth, loadingViewHeight);
        ViewKt.setLayoutParams(view, contentViewWidth, contentViewHeight);
        PopupLoadingBinding popupLoadingBinding3 = this.loadBinding;
        if (popupLoadingBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadBinding");
        } else {
            popupLoadingBinding = popupLoadingBinding3;
        }
        super.setContentView(popupLoadingBinding.getRoot());
    }

    public final void setDockType$note_overseasRelease(@NotNull DockType dockType) {
        Intrinsics.checkNotNullParameter(dockType, "<set-?>");
        this.dockType = dockType;
    }

    public final void setLoading(boolean loading) {
        this.loading = loading;
        PopupLoadingBinding popupLoadingBinding = this.loadBinding;
        PopupLoadingBinding popupLoadingBinding2 = null;
        if (popupLoadingBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadBinding");
            popupLoadingBinding = null;
        }
        ViewKt.setViewVisibleOrGone(popupLoadingBinding.loadingView, loading);
        PopupLoadingBinding popupLoadingBinding3 = this.loadBinding;
        if (popupLoadingBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadBinding");
        } else {
            popupLoadingBinding2 = popupLoadingBinding3;
        }
        ViewKt.setViewVisibleOrGone(popupLoadingBinding2.contentViewWrapper, !loading);
    }

    public final void setMask(boolean showMask, @Nullable Function0<Unit> callback) {
        this.isShowMask = showMask;
        this.keycodeBackCallback = callback;
    }

    @NotNull
    public final BasePopupWindow setMaskColor(int color) {
        this.maskColor = color;
        return this;
    }

    @Override // android.widget.PopupWindow
    public final void setOnDismissListener(@NotNull final PopupWindow.OnDismissListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        super.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.sunia.HTREnginev2.xn
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                BasePopupWindow.m45140j(BasePopupWindow.this, listener);
            }
        });
    }

    public final void setParentViewRef(@Nullable WeakReference<View> weakReference) {
        this.parentViewRef = weakReference;
    }

    public void show(@NotNull View anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        showByDockType$default(this, anchor, 0, 0, null, 14, null);
    }

    public final void showAsDropCenter(@NotNull View anchor, int offX, int offY, int gravity) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        int width = anchor.getWidth();
        ResManager resManager = ResManager.INSTANCE;
        super.showAsDropDown(anchor, ((width / resManager.getInteger(C10651R.integer.twice)) + offX) - (measureSize$default.getWidth() / resManager.getInteger(C10651R.integer.twice)), offY, gravity);
        onShow();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(@NotNull View anchor, int xoff, int yoff, int gravity) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        super.showAsDropDown(anchor, xoff, yoff, gravity);
        onShow();
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(@NotNull View parent, int gravity, int x, int y) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.parentViewRef = new WeakReference<>(parent);
        if (this.isShowMask) {
            IBinder windowToken = parent.getWindowToken();
            Intrinsics.checkNotNullExpressionValue(windowToken, "getWindowToken(...)");
            m45141e(windowToken);
        }
        PopupExtKt.saveWindowLocation(this, gravity, Integer.valueOf(x), Integer.valueOf(y));
        super.showAtLocation(parent, gravity, x, y);
        onShow();
    }

    public void showByDockType(@NotNull View anchor, int dx, int dy, @NotNull View parent) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (!ViewExtKt.isLayoutDirectionRtl(anchor) || !this.dockType.isHorizontalDockType()) {
            INSTANCE.showByDockType(this, anchor, this.dockType, dx, dy, parent);
        } else {
            INSTANCE.showByDockType(this, anchor, this.dockType.reverse(), dx, dy, parent);
        }
    }

    @NotNull
    public final DockType showRightBottomOrTopInActivity(@NotNull View windowRootView, int offsetX, int offsetY) {
        Intrinsics.checkNotNullParameter(windowRootView, "windowRootView");
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        View activityDecorView = viewLocator.getActivityDecorView(Activity.INSTANCE.getFrontActivity());
        Rect globalVisibleRect = ViewKt.globalVisibleRect(windowRootView);
        WindowLocation locationInActivity = viewLocator.locationInActivity(windowRootView);
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        DockType dockType = ((locationInActivity.getY() + globalVisibleRect.height()) + measureSize$default.getHeight()) + offsetY > activityDecorView.getHeight() ? DockType.TOP : DockType.BOTTOM;
        int[] locationOnScreen = ViewKt.getLocationOnScreen(activityDecorView);
        Rect screenVisibleRect = ViewKt.screenVisibleRect(windowRootView);
        int i = screenVisibleRect.left;
        int i2 = locationOnScreen[0];
        screenVisibleRect.left = i - i2;
        screenVisibleRect.right -= i2;
        int i3 = screenVisibleRect.top;
        int i4 = locationOnScreen[1];
        screenVisibleRect.top = i3 - i4;
        screenVisibleRect.bottom -= i4;
        if (dockType == DockType.BOTTOM) {
            screenVisibleRect.offset(offsetX, offsetY);
        } else {
            screenVisibleRect.offset(offsetX, -offsetY);
        }
        Point point = new Point(0, 0);
        int i5 = WhenMappings.$EnumSwitchMapping$0[dockType.ordinal()];
        if (i5 == 1) {
            point.x = screenVisibleRect.right - ((int) (measureSize$default.getWidth() + this.shadowOffset));
            point.y = screenVisibleRect.top - ((int) (measureSize$default.getHeight() + (this.shadowOffset / 2)));
        } else if (i5 == 2) {
            int i6 = screenVisibleRect.right;
            float width = measureSize$default.getWidth();
            float f = this.shadowOffset;
            point.x = i6 - ((int) (width + f));
            point.y = screenVisibleRect.bottom - ((int) (f / 2));
        }
        showAtLocation(activityDecorView, 0, point.x, point.y);
        return dockType;
    }

    public void showToRoot(@NotNull View rootView, @NotNull View anchor, @NotNull Point offsetPoint) {
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(offsetPoint, "offsetPoint");
        Point m45143h = m45143h(rootView, anchor, this.dockType, offsetPoint);
        showAtLocation(rootView, 0, m45143h.x, m45143h.y);
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NotNull
    public LifecycleRegistry getLifecycle() {
        return (LifecycleRegistry) this.lifecycle.getValue();
    }

    public void show(@NotNull View anchor, @NotNull TouchPoint touchPoint, int offsetX, int offsetY) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        showAtLocation(anchor, 0, Math.max(0, ((int) touchPoint.getX()) + offsetX), Math.max(0, ((int) touchPoint.getY()) + offsetY));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasePopupWindow(@NotNull Context context, @NotNull DockType dockType) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        ResManager resManager = ResManager.INSTANCE;
        this.shadowOffset = resManager.getDimension(C7384R.dimen.dp_20);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LifecycleRegistry>() { // from class: com.onyx.galaxy.note.common.view.BasePopupWindow$lifecycle$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LifecycleRegistry invoke() {
                return new LifecycleRegistry(BasePopupWindow.this);
            }
        });
        this.lifecycle = lazy;
        this.maskColor = resManager.getColor(C10651R.color.black_10);
        this.loading = true;
        this.context = context;
        this.dockType = dockType;
        PopupWindowKt.setDefaultAttribute(this);
        initContentView();
        setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.sunia.HTREnginev2.yn
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                BasePopupWindow.m45138d();
            }
        });
    }
}
