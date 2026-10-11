package com.onyx.galaxy.note.editor.view.window;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Size;
import android.view.MotionEvent;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import com.hjq.window.EasyWindow;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.EasyWindowKt;
import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.onyx.galaxy.note.editor.data.CounterWindowLocationModel;
import com.onyx.galaxy.note.editor.event.CounterStateChangeEvent;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.onyx.galaxy.note.editor.view.CounterView;
import com.onyx.galaxy.note.editor.view.window.CounterWindow;
import com.onyx.galaxy.note.editor.view.window.IMovingDelegate;
import com.onyx.galaxy.note.settings.data.CounterPreference;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010 \u001a\u00020\u001d\u0012\u0006\u0010$\u001a\u00020!¢\u0006\u0004\b4\u00105J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\t\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\u0007H\u0016J\b\u0010\u000b\u001a\u00020\u0007H\u0016J\b\u0010\f\u001a\u00020\u0007H\u0016J(\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0005J\u0006\u0010\u0015\u001a\u00020\u0007J\u0006\u0010\u0016\u001a\u00020\u0005J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0017H\u0007J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0005H\u0016J\b\u0010\u001a\u001a\u00020\u0007H\u0002J\b\u0010\u001b\u001a\u00020\u0007H\u0002J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0005H\u0002R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u001b\u00103\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u00101\u001a\u0004\b-\u00102¨\u00066"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;", "Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;", "Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onInterceptTouchEvent", "", "afterDrag", "onWindowDismiss", "onWindowLocationChanged", "onOrientationChanged", "onConfigurationChanged", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "Landroid/graphics/Point;", "location", "Landroid/graphics/Rect;", "limitRect", "isExpand", "show", "dismiss", "isShowing", "Lcom/onyx/galaxy/note/editor/event/CounterStateChangeEvent;", "onCounterStateChangeEvent", "onExpandStateChanged", C6997f.f39671c, C6999h.f39688c, "c", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "a", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "counterBundle", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "b", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", "Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;", "Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;", "window", "Lcom/onyx/galaxy/note/editor/view/CounterView;", "d", "Lcom/onyx/galaxy/note/editor/view/CounterView;", "counterView", "Landroid/animation/ValueAnimator;", "e", "Landroid/animation/ValueAnimator;", "expandAnimator", "Landroid/os/Handler;", "Lkotlin/Lazy;", "()Landroid/os/Handler;", Constants.TRANSLET_OUTPUT_PNAME, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCounterWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CounterWindow.kt\ncom/onyx/galaxy/note/editor/view/window/CounterWindow\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,199:1\n91#2,14:200\n*S KotlinDebug\n*F\n+ 1 CounterWindow.kt\ncom/onyx/galaxy/note/editor/view/window/CounterWindow\n*L\n191#1:200,14\n*E\n"})
/* loaded from: classes9.dex */
public final class CounterWindow implements IMovingDelegate, CounterView.Callback {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CounterBundle counterBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CounterEntry counterEntry;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public DraggableWindow window;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public CounterView counterView;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public ValueAnimator expandAnimator;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy handler;

    public CounterWindow(@NotNull CounterBundle counterBundle, @NotNull CounterEntry counterEntry) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(counterBundle, "counterBundle");
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        this.counterBundle = counterBundle;
        this.counterEntry = counterEntry;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Handler>() { // from class: com.onyx.galaxy.note.editor.view.window.CounterWindow$handler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Handler invoke() {
                return new Handler(Looper.getMainLooper());
            }
        });
        this.handler = lazy;
    }

    /* renamed from: d */
    public static final void m50326d(WindowManager.LayoutParams layoutParams, CounterWindow this$0, ValueAnimator it2) {
        EasyWindow<?> window;
        Intrinsics.checkNotNullParameter(layoutParams, "$layoutParams");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        layoutParams.x = ((Integer) animatedValue).intValue();
        DraggableWindow draggableWindow = this$0.window;
        if (draggableWindow == null || (window = draggableWindow.getWindow()) == null) {
            return;
        }
        window.setWindowParams(layoutParams);
    }

    /* renamed from: g */
    public static final void m50327g(CounterWindow this$0, Point location, Rect limitRect, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(location, "$location");
        Intrinsics.checkNotNullParameter(limitRect, "$limitRect");
        this$0.show(Activity.INSTANCE.getFrontActivity(), location, limitRect, z);
    }

    public static /* synthetic */ void show$default(CounterWindow counterWindow, android.app.Activity activity, Point point, Rect rect, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            rect = new Rect();
        }
        counterWindow.show(activity, point, rect, z);
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void afterDrag() {
        IMovingDelegate.DefaultImpls.afterDrag(this);
        m50331h();
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void beforeDrag() {
        IMovingDelegate.DefaultImpls.beforeDrag(this);
    }

    /* renamed from: c */
    public final void m50328c(boolean isExpand) {
        EasyWindow<?> window;
        final WindowManager.LayoutParams safeWindowParams;
        CounterView counterView;
        int coerceAtLeast;
        EasyWindow<?> window2;
        EasyWindow<?> window3;
        Rect limitRect;
        DraggableWindow draggableWindow = this.window;
        if (draggableWindow == null || (window = draggableWindow.getWindow()) == null || (safeWindowParams = EasyWindowKt.getSafeWindowParams(window)) == null || (counterView = this.counterView) == null) {
            return;
        }
        safeWindowParams.flags |= 512;
        int i = 0;
        int abs = Math.abs(new Size(counterView.getMeasuredWidth(), counterView.getMeasuredHeight()).getWidth() - ViewKt.getMeasureSize$default(counterView, 0, 0, 3, null).getWidth());
        int i2 = isExpand ? safeWindowParams.x - abs : safeWindowParams.x + abs;
        int[] iArr = new int[2];
        iArr[0] = safeWindowParams.x;
        DraggableWindow draggableWindow2 = this.window;
        if (draggableWindow2 != null && (limitRect = draggableWindow2.getLimitRect()) != null) {
            i = limitRect.left;
        }
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i2, i);
        iArr[1] = coerceAtLeast;
        ValueAnimator ofInt = ValueAnimator.ofInt(iArr);
        ofInt.setDuration(ResManager.INSTANCE.getLong(C10651R.integer.counter_window_collapse_expand_animation_duration));
        DraggableWindow draggableWindow3 = this.window;
        if (draggableWindow3 != null && (window3 = draggableWindow3.getWindow()) != null) {
            window3.setWindowParams(safeWindowParams);
        }
        DraggableWindow draggableWindow4 = this.window;
        if (draggableWindow4 != null) {
            draggableWindow4.updateWindowCoordinate(safeWindowParams.x, safeWindowParams.y);
        }
        DraggableWindow draggableWindow5 = this.window;
        if (draggableWindow5 != null && (window2 = draggableWindow5.getWindow()) != null) {
            window2.update();
        }
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.mfe
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CounterWindow.m50326d(safeWindowParams, this, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(ofInt);
        ofInt.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.view.window.CounterWindow$animateToRight$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                DraggableWindow draggableWindow6;
                CounterWindow.this.m50331h();
                draggableWindow6 = CounterWindow.this.window;
                if (draggableWindow6 != null) {
                    WindowManager.LayoutParams layoutParams = safeWindowParams;
                    draggableWindow6.updateWindowCoordinate(layoutParams.x, layoutParams.y);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
        this.expandAnimator = ofInt;
        ofInt.start();
    }

    public final void dismiss() {
        GlobalBundle.INSTANCE.unregister(this);
        DraggableWindow draggableWindow = this.window;
        if (draggableWindow != null) {
            draggableWindow.dismiss();
        }
        m50329e().removeCallbacksAndMessages(null);
    }

    /* renamed from: e */
    public final Handler m50329e() {
        return (Handler) this.handler.getValue();
    }

    /* renamed from: f */
    public final void m50330f() {
        WindowManager.LayoutParams safeWindowParams;
        DraggableWindow draggableWindow = this.window;
        if (draggableWindow == null) {
            return;
        }
        final Rect limitRect = draggableWindow.getLimitRect();
        EasyWindow<?> window = draggableWindow.getWindow();
        if (window == null || (safeWindowParams = EasyWindowKt.getSafeWindowParams(window)) == null) {
            return;
        }
        final Point point = new Point(safeWindowParams.x, safeWindowParams.y);
        CounterView counterView = this.counterView;
        final boolean isExpanded = counterView != null ? counterView.isExpanded() : false;
        draggableWindow.dismiss();
        m50329e().post(new Runnable() { // from class: com.sunia.HTREnginev2.lfe
            @Override // java.lang.Runnable
            public final void run() {
                CounterWindow.m50327g(CounterWindow.this, point, limitRect, isExpanded);
            }
        });
    }

    /* renamed from: h */
    public final void m50331h() {
        EasyWindow<?> window;
        final WindowManager.LayoutParams windowParams;
        DraggableWindow draggableWindow = this.window;
        if (draggableWindow == null || (window = draggableWindow.getWindow()) == null || (windowParams = window.getWindowParams()) == null) {
            return;
        }
        CounterPreference.getCounterWindowLocationOption$default(CounterPreference.INSTANCE, null, 1, null).getAndPut(new Function1<CounterWindowLocationModel, Unit>() { // from class: com.onyx.galaxy.note.editor.view.window.CounterWindow$saveWindowLocation$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CounterWindowLocationModel counterWindowLocationModel) {
                invoke2(counterWindowLocationModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable CounterWindowLocationModel counterWindowLocationModel) {
                CounterView counterView;
                if (counterWindowLocationModel != null) {
                    counterWindowLocationModel.setX(windowParams.x);
                }
                if (counterWindowLocationModel != null) {
                    counterWindowLocationModel.setY(windowParams.y);
                }
                if (counterWindowLocationModel == null) {
                    return;
                }
                counterView = this.counterView;
                counterWindowLocationModel.setExpand(counterView != null ? counterView.isExpanded() : false);
            }
        });
    }

    public final boolean isShowing() {
        DraggableWindow draggableWindow = this.window;
        return draggableWindow != null && draggableWindow.isShowing();
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void onConfigurationChanged() {
        IMovingDelegate.DefaultImpls.onConfigurationChanged(this);
        m50330f();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCounterStateChangeEvent(@NotNull CounterStateChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        CounterView counterView = this.counterView;
        if (counterView != null) {
            counterView.refreshUI();
        }
    }

    @Override // com.onyx.galaxy.note.editor.view.CounterView.Callback
    public void onExpandStateChanged(boolean isExpand) {
        DraggableWindow draggableWindow;
        ValueAnimator valueAnimator = this.expandAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        CounterView counterView = this.counterView;
        if (counterView == null || (draggableWindow = this.window) == null) {
            return;
        }
        int windowWidthSafely = draggableWindow.getWindowWidthSafely();
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        if (viewLocator.locationInActivity(counterView).getX() + (windowWidthSafely / 2) > viewLocator.getActivityDecorView(Activity.INSTANCE.getFrontActivity()).getMeasuredWidth() / 2) {
            m50328c(isExpand);
        }
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public boolean onInterceptTouchEvent(@NotNull MotionEvent event) {
        EasyWindow<?> window;
        EasyWindow<?> window2;
        Intrinsics.checkNotNullParameter(event, "event");
        if (MotionEventKt.isDownAction(event)) {
            DraggableWindow draggableWindow = this.window;
            if (draggableWindow != null && (window2 = draggableWindow.getWindow()) != null) {
                window2.removeWindowFlags(512);
            }
            DraggableWindow draggableWindow2 = this.window;
            if (draggableWindow2 != null && (window = draggableWindow2.getWindow()) != null) {
                window.update();
            }
        }
        CounterView counterView = this.counterView;
        boolean z = false;
        if (counterView != null && counterView.interceptTouchEventIf(event)) {
            z = true;
        }
        if (z) {
            return true;
        }
        return IMovingDelegate.DefaultImpls.onInterceptTouchEvent(this, event);
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void onOrientationChanged() {
        CounterView counterView;
        IMovingDelegate.DefaultImpls.onOrientationChanged(this);
        DraggableWindow draggableWindow = this.window;
        if (draggableWindow == null || (counterView = this.counterView) == null) {
            return;
        }
        counterView.updateVisibleRect(draggableWindow.getLimitRect());
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void onWindowDismiss() {
        ValueAnimator valueAnimator = this.expandAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        IMovingDelegate.DefaultImpls.onWindowDismiss(this);
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void onWindowLocationChanged() {
        CounterView counterView;
        IMovingDelegate.DefaultImpls.onWindowLocationChanged(this);
        DraggableWindow draggableWindow = this.window;
        if (draggableWindow == null || (counterView = this.counterView) == null) {
            return;
        }
        counterView.updateVisibleRect(draggableWindow.getLimitRect());
    }

    @Override // com.onyx.galaxy.note.editor.view.window.IMovingDelegate
    public void onWindowShow() {
        IMovingDelegate.DefaultImpls.onWindowShow(this);
    }

    public final void show(@NotNull android.app.Activity activity, @NotNull final Point location, @NotNull Rect limitRect, boolean isExpand) {
        int coerceIn;
        int coerceIn2;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(location, "location");
        Intrinsics.checkNotNullParameter(limitRect, "limitRect");
        if (!limitRect.isEmpty()) {
            coerceIn = RangesKt___RangesKt.coerceIn(location.x, limitRect.left, limitRect.right);
            location.x = coerceIn;
            coerceIn2 = RangesKt___RangesKt.coerceIn(location.y, limitRect.top, limitRect.bottom);
            location.y = coerceIn2;
        }
        GlobalBundle.INSTANCE.register(this);
        this.counterView = new CounterView(this.counterBundle, this.counterEntry, activity);
        this.window = new DraggableWindow(activity, this).setupWindow(new Function1<EasyWindow<?>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.window.CounterWindow$show$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                CounterView counterView;
                Intrinsics.checkNotNullParameter(setupWindow, "$this$setupWindow");
                counterView = CounterWindow.this.counterView;
                setupWindow.setContentView(counterView);
                setupWindow.setXOffset(location.x);
                setupWindow.setYOffset(location.y);
                WindowManager.LayoutParams safeWindowParams = EasyWindowKt.getSafeWindowParams(setupWindow);
                safeWindowParams.width = -2;
                safeWindowParams.height = -2;
                if (Build.VERSION.SDK_INT >= 34) {
                    safeWindowParams.setCanPlayMoveAnimation(false);
                }
                setupWindow.setWindowParams(safeWindowParams);
            }
        });
        CounterView counterView = this.counterView;
        if (counterView != null) {
            counterView.setInitState(isExpand);
        }
        CounterView counterView2 = this.counterView;
        if (counterView2 != null) {
            counterView2.setCallback(this);
        }
        DraggableWindow draggableWindow = this.window;
        if (draggableWindow != null) {
            draggableWindow.updateLimitRect(limitRect);
        }
        DraggableWindow draggableWindow2 = this.window;
        if (draggableWindow2 != null) {
            draggableWindow2.show();
        }
        m50331h();
    }
}
