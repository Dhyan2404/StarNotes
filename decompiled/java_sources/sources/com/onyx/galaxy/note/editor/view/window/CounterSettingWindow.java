package com.onyx.galaxy.note.editor.view.window;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.C1126e;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.fragment.NavHostFragment;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.hjq.window.EasyWindow;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.extension.FragmentKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.PopupCounterSettingBinding;
import com.onyx.galaxy.note.editor.action.counter.EnsureCounterDataAction;
import com.onyx.galaxy.note.editor.event.EnableCounterSettingInputEvent;
import com.onyx.galaxy.note.editor.view.window.CounterSettingWindow;
import com.onyx.galaxy.note.editor.view.window.IMovingDelegate;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\"\u001a\u00020\u001b\u0012\u0006\u0010(\u001a\u00020#¢\u0006\u0004\b:\u0010;J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0006\u0010\b\u001a\u00020\u0006J\"\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fJ\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u000fH\u0007J\u001a\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002J\b\u0010\u0014\u001a\u00020\u0006H\u0003J\u001c\u0010\u0018\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\fH\u0002J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\b\u0010\u001a\u001a\u00020\u0006H\u0002R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0017\u0010(\u001a\u00020#8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001b\u0010.\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u001b\u00103\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010+\u001a\u0004\b1\u00102R\u0018\u00106\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u00105R\u0016\u0010\u000b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u00107R\u0011\u00108\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b8\u00109¨\u0006<"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;", "Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onInterceptTouchEvent", "", "onOrientationChanged", "dismiss", "Landroid/graphics/Rect;", "limitRect", "isLeftSide", "Landroid/os/Bundle;", "bundle", "show", "Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;", "onEnableCounterSettingInputEvent", "", "page", "m", C6999h.f39688c, "Landroidx/navigation/NavDestination;", FirebaseAnalytics.Param.DESTINATION, C1126e.f7698m, C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "Landroid/view/View;", "b", "Landroid/view/View;", "getAnchorView", "()Landroid/view/View;", "anchorView", "Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;", "c", "Lkotlin/Lazy;", C6997f.f39671c, "()Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;", "binding", "Landroidx/navigation/fragment/NavHostFragment;", "d", C6998g.f39679a, "()Landroidx/navigation/fragment/NavHostFragment;", "navHostFragment", "Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;", "Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;", "window", Constants.HASIDCALL_INDEX_SIG, "isShowing", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterSettingWindow implements IMovingDelegate {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final View anchorView;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Lazy navHostFragment;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public DraggableWindow window;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean isLeftSide;

    public CounterSettingWindow(@NotNull EditorBundle editorBundle, @NotNull View anchorView) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        this.editorBundle = editorBundle;
        this.anchorView = anchorView;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupCounterSettingBinding>() { // from class: com.onyx.galaxy.note.editor.view.window.CounterSettingWindow$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupCounterSettingBinding invoke() {
                return PopupCounterSettingBinding.inflate(LayoutInflater.from(CounterSettingWindow.this.getAnchorView().getContext()));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<NavHostFragment>() { // from class: com.onyx.galaxy.note.editor.view.window.CounterSettingWindow$navHostFragment$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NavHostFragment invoke() {
                PopupCounterSettingBinding m50318f;
                m50318f = CounterSettingWindow.this.m50318f();
                return (NavHostFragment) m50318f.navTimerHostFragmentMain.getFragment();
            }
        });
        this.navHostFragment = lazy2;
        m50320h();
    }

    /* renamed from: i */
    public static final void m50313i(CounterSettingWindow this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: j */
    public static final void m50314j(NavController navController, View view) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        navController.navigateUp();
    }

    /* renamed from: k */
    public static final void m50315k(NavController navController, View view) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        FragmentKt.navigateWithAnimation$default(navController, C10651R.id.fragment_alarm_setting, (Bundle) null, 2, (Object) null);
    }

    /* renamed from: l */
    public static final void m50316l(CounterSettingWindow this$0, NavController navController, NavDestination destination, Bundle bundle) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(navController, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        NavDestination currentDestination = this$0.m50319g().getNavController().getCurrentDestination();
        boolean z = false;
        if (currentDestination != null && currentDestination.getId() == C10651R.id.fragment_counter_setting_home) {
            z = true;
        }
        ViewKt.setViewVisibleOrGone(this$0.m50318f().back, !z);
        ViewKt.setViewVisibleOrGone(this$0.m50318f().ivAlarmSetting, z);
        this$0.m50323o(destination, bundle);
        this$0.m50322n(destination);
    }

    public static /* synthetic */ void show$default(CounterSettingWindow counterSettingWindow, Rect rect, boolean z, Bundle bundle, int i, Object obj) {
        if ((i & 4) != 0) {
            bundle = null;
        }
        counterSettingWindow.show(rect, z, bundle);
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void afterDrag() {
        IMovingDelegate.DefaultImpls.afterDrag(this);
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void beforeDrag() {
        IMovingDelegate.DefaultImpls.beforeDrag(this);
    }

    public final void dismiss() {
        m50319g().getParentFragmentManager().beginTransaction().remove(m50319g()).commitAllowingStateLoss();
        m50318f().navTimerHostFragmentMain.removeAllViews();
        m50319g().getNavController().popBackStack(C10651R.id.fragment_counter_setting_home, true);
        DraggableWindow draggableWindow = this.window;
        if (draggableWindow != null) {
            draggableWindow.dismiss();
        }
        GlobalBundle.INSTANCE.unregister(this);
    }

    /* renamed from: e */
    public final void m50317e() {
        RxBaseAction.execute$default(new EnsureCounterDataAction(), null, null, null, 7, null);
    }

    /* renamed from: f */
    public final PopupCounterSettingBinding m50318f() {
        return (PopupCounterSettingBinding) this.binding.getValue();
    }

    /* renamed from: g */
    public final NavHostFragment m50319g() {
        return (NavHostFragment) this.navHostFragment.getValue();
    }

    @NotNull
    public final View getAnchorView() {
        return this.anchorView;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: h */
    public final void m50320h() {
        m50318f().close.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yee
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterSettingWindow.m50313i(CounterSettingWindow.this, view);
            }
        });
        final NavController navController = m50319g().getNavController();
        m50318f().back.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zee
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterSettingWindow.m50314j(NavController.this, view);
            }
        });
        m50318f().ivAlarmSetting.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.afe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterSettingWindow.m50315k(NavController.this, view);
            }
        });
        navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: com.sunia.HTREnginev2.bfe
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public final void onDestinationChanged(NavController navController2, NavDestination navDestination, Bundle bundle) {
                CounterSettingWindow.m50316l(CounterSettingWindow.this, navController2, navDestination, bundle);
            }
        });
        m50317e();
    }

    public final boolean isShowing() {
        DraggableWindow draggableWindow = this.window;
        return draggableWindow != null && draggableWindow.isShowing();
    }

    /* renamed from: m */
    public final void m50321m(int page, Bundle bundle) {
        NavController navController = m50319g().getNavController();
        if (page == 1) {
            navController.setGraph(C10651R.navigation.timer_setting_graph, bundle);
        } else {
            navController.setGraph(C10651R.navigation.timer_setting_graph);
        }
    }

    /* renamed from: n */
    public final void m50322n(NavDestination destination) {
        boolean z = destination.getId() != C10651R.id.fragment_edit_counter_setting;
        ViewKt.setViewVisibleOrGone(m50318f().rlNavigationBar, z);
        ViewKt.setViewVisibleOrGone(m50318f().dividerNavigation, z);
    }

    /* renamed from: o */
    public final void m50323o(NavDestination destination, Bundle arguments) {
        int i;
        Integer valueOf = destination != null ? Integer.valueOf(destination.getId()) : null;
        int i2 = C10651R.id.fragment_count_down_history;
        if (valueOf != null && valueOf.intValue() == i2) {
            i = C10651R.string.count_down_history_record;
        } else {
            int i3 = C10651R.id.fragment_count_up_history;
            if (valueOf != null && valueOf.intValue() == i3) {
                i = C10651R.string.count_up_history_record;
            } else {
                int i4 = C10651R.id.fragment_my_count_down_task;
                if (valueOf != null && valueOf.intValue() == i4) {
                    i = C10651R.string.counter_my_count_down_task;
                } else {
                    int i5 = C10651R.id.fragment_alarm_setting;
                    if (valueOf != null && valueOf.intValue() == i5) {
                        i = C10651R.string.counter_alarm_setting;
                    } else {
                        i = (valueOf != null && valueOf.intValue() == C10651R.id.fragment_edit_counter_setting) ? (arguments == null || arguments.isEmpty()) ? C10651R.string.counter_add_task : C10651R.string.counter_edit_task : C10651R.string.shortcut_bar_timer;
                    }
                }
            }
        }
        m50318f().tvTitle.setText(i);
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void onConfigurationChanged() {
        IMovingDelegate.DefaultImpls.onConfigurationChanged(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEnableCounterSettingInputEvent(@NotNull EnableCounterSettingInputEvent event) {
        EasyWindow<?> window;
        EasyWindow<?> window2;
        EasyWindow<?> window3;
        EasyWindow<?> window4;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getIsEnable()) {
            DraggableWindow draggableWindow = this.window;
            if (draggableWindow != null && (window4 = draggableWindow.getWindow()) != null) {
                window4.setSoftInputMode(16);
            }
        } else {
            DraggableWindow draggableWindow2 = this.window;
            if (draggableWindow2 != null && (window2 = draggableWindow2.getWindow()) != null) {
                window2.setSoftInputMode(0);
            }
            DraggableWindow draggableWindow3 = this.window;
            if (draggableWindow3 != null && (window = draggableWindow3.getWindow()) != null) {
                window.setOutsideTouchable(true);
            }
        }
        DraggableWindow draggableWindow4 = this.window;
        if (draggableWindow4 == null || (window3 = draggableWindow4.getWindow()) == null) {
            return;
        }
        window3.update();
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public boolean onInterceptTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return true;
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void onOrientationChanged() {
        IMovingDelegate.DefaultImpls.onOrientationChanged(this);
        DraggableWindow draggableWindow = this.window;
        if (draggableWindow != null) {
            draggableWindow.dismiss();
            show$default(this, draggableWindow.getLimitRect(), this.isLeftSide, null, 4, null);
        }
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void onWindowDismiss() {
        IMovingDelegate.DefaultImpls.onWindowDismiss(this);
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void onWindowLocationChanged() {
        IMovingDelegate.DefaultImpls.onWindowLocationChanged(this);
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void onWindowShow() {
        IMovingDelegate.DefaultImpls.onWindowShow(this);
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    public final void show(@NotNull Rect limitRect, boolean isLeftSide, @Nullable Bundle bundle) {
        EasyWindow<?> window;
        Intrinsics.checkNotNullParameter(limitRect, "limitRect");
        GlobalBundle.INSTANCE.register(this);
        this.isLeftSide = isLeftSide;
        Activity activity = EditorBundleKt.activity(this.editorBundle);
        Intrinsics.checkNotNull(activity);
        DraggableWindow draggableWindow = new DraggableWindow(activity, this).setupWindow(new Function1<EasyWindow<?>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.window.CounterSettingWindow$show$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(EasyWindow<?> easyWindow) {
                invoke2(easyWindow);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull EasyWindow<?> setupWindow) {
                PopupCounterSettingBinding m50318f;
                Intrinsics.checkNotNullParameter(setupWindow, "$this$setupWindow");
                m50318f = CounterSettingWindow.this.m50318f();
                setupWindow.setContentView(m50318f.getRoot());
                setupWindow.setGravity(8388659);
            }
        });
        this.window = draggableWindow;
        if (draggableWindow != null) {
            draggableWindow.updateLimitRect(limitRect);
        }
        int i = isLeftSide ? GravityCompat.START : 8388613;
        int width = isLeftSide ? 0 : limitRect.width();
        DraggableWindow draggableWindow2 = this.window;
        if (draggableWindow2 != null && (window = draggableWindow2.getWindow()) != null) {
            window.showAsDropDown(this.anchorView, i, width, 0);
        }
        m50321m(CounterUtils.INSTANCE.parseTargetPage(bundle), bundle);
    }
}
