package com.onyx.galaxy.note.editor.view.window;

import android.app.Activity;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import com.hjq.window.EasyWindow;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.theme.utils.SystemThemeChangedEvent;
import com.onyx.android.sdk.theme.utils.ThemeBundle;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.common.events.ConfigurationChangedEvent;
import com.onyx.android.sdk.universal.common.events.ThemeChangedEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.EasyWindowKt;
import com.onyx.galaxy.note.databinding.LayoutCounterTipsViewBinding;
import com.onyx.galaxy.note.editor.event.ContainerRectChangedEvent;
import com.onyx.galaxy.note.editor.event.DismissCounterTipsEvent;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.onyx.galaxy.note.editor.view.window.CountTipsWindow;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010%\u001a\u00020\"¢\u0006\u0004\b0\u00101J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0011H\u0007J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J\b\u0010\u0018\u001a\u00020\u0002H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u001b\u0010)\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010'\u001a\u0004\b\u001f\u0010(R\u0014\u0010,\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u001f\u0010/\u001a\u0006\u0012\u0002\b\u00030-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010'\u001a\u0004\b#\u0010.¨\u00062"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;", "", "", "dismiss", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "taskModel", "showCountDownEnd", "", "name", "showCountDownEndOne", "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;", NotificationCompat.CATEGORY_EVENT, "onConfigurationChangedEvent", "Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;", "onContainerRectChangedEvent", "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;", "onThemeChangedEvent", "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;", "onSystemThemeChangedEvent", C6998g.f39679a, "", "xOffset", "yOffset", C6997f.f39671c, "d", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "a", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "counterBundle", "Landroid/app/Activity;", "b", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "Landroid/graphics/Rect;", "c", "Landroid/graphics/Rect;", "editorRect", "Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;", "binding", "e", "I", "windowDuration", "Lcom/hjq/window/EasyWindow;", "()Lcom/hjq/window/EasyWindow;", "window", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Landroid/app/Activity;Landroid/graphics/Rect;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CountTipsWindow {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CounterBundle counterBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Activity activity;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Rect editorRect;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e, reason: from kotlin metadata */
    public final int windowDuration;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy window;

    public CountTipsWindow(@NotNull CounterBundle counterBundle, @NotNull Activity activity, @NotNull Rect editorRect) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(counterBundle, "counterBundle");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(editorRect, "editorRect");
        this.counterBundle = counterBundle;
        this.activity = activity;
        this.editorRect = editorRect;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutCounterTipsViewBinding>() { // from class: com.onyx.galaxy.note.editor.view.window.CountTipsWindow$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutCounterTipsViewBinding invoke() {
                Activity activity2;
                activity2 = CountTipsWindow.this.activity;
                return LayoutCounterTipsViewBinding.inflate(LayoutInflater.from(activity2));
            }
        });
        this.binding = lazy;
        this.windowDuration = ResManager.INSTANCE.getInteger(C10651R.integer.counter_tip_show_interval);
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<EasyWindow<?>>() { // from class: com.onyx.galaxy.note.editor.view.window.CountTipsWindow$window$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EasyWindow<?> invoke() {
                Activity activity2;
                LayoutCounterTipsViewBinding m50303b;
                int i;
                activity2 = CountTipsWindow.this.activity;
                m50303b = CountTipsWindow.this.m50303b();
                View root = m50303b.getRoot();
                Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
                i = CountTipsWindow.this.windowDuration;
                return EasyWindowKt.createIndicatorWindow(activity2, root, i);
            }
        });
        this.window = lazy2;
        m50305d();
    }

    /* renamed from: e */
    public static final void m50302e(CountTipsWindow this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.counterBundle.postEvent(new DismissCounterTipsEvent());
        this$0.dismiss();
    }

    /* renamed from: b */
    public final LayoutCounterTipsViewBinding m50303b() {
        return (LayoutCounterTipsViewBinding) this.binding.getValue();
    }

    /* renamed from: c */
    public final EasyWindow<?> m50304c() {
        return (EasyWindow) this.window.getValue();
    }

    /* renamed from: d */
    public final void m50305d() {
        m50303b().ivAction.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tde
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CountTipsWindow.m50302e(CountTipsWindow.this, view);
            }
        });
    }

    public final void dismiss() {
        if (m50304c().isShowing()) {
            m50304c().cancel();
        }
        GlobalBundle.INSTANCE.unregister(this);
        ThemeBundle.INSTANCE.unRegister(this);
    }

    /* renamed from: f */
    public final void m50306f(int xOffset, int yOffset) {
        EasyWindow<?> m50304c = m50304c();
        View root = m50303b().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        EasyWindowKt.setXYOffset(m50304c, root, 0, xOffset, yOffset);
    }

    /* renamed from: g */
    public final void m50307g() {
        m50308h();
        m50304c().setDuration(this.windowDuration);
        m50304c().update();
        if (m50304c().isShowing()) {
            return;
        }
        GlobalBundle.INSTANCE.register(this);
        ThemeBundle.INSTANCE.register(this);
        m50304c().show();
    }

    /* renamed from: h */
    public final void m50308h() {
        int dimens = ResManager.INSTANCE.getDimens(C10651R.dimen.counter_operation_tip_popup_offset_y);
        View decorView = this.activity.getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        m50306f(ViewKt.globalVisibleRect(decorView).centerX(), this.editorRect.top + dimens);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onConfigurationChangedEvent(@NotNull ConfigurationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m50304c().isShowing()) {
            m50308h();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onContainerRectChangedEvent(@NotNull ContainerRectChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorRect.set(event.getContainerRect());
        m50308h();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSystemThemeChangedEvent(@NotNull SystemThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        View safeDecorView = EasyWindowKt.getSafeDecorView(m50304c());
        if (safeDecorView != null) {
            ThemeUtils.refreshView(safeDecorView);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onThemeChangedEvent(@NotNull ThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        View safeDecorView = EasyWindowKt.getSafeDecorView(m50304c());
        if (safeDecorView != null) {
            ThemeUtils.refreshView(safeDecorView);
        }
    }

    public final void showCountDownEnd(@Nullable CounterTaskModel taskModel) {
        if (taskModel == null) {
            return;
        }
        m50303b().tvTimeName.setText(CounterUtils.INSTANCE.getFormatedTaskName(taskModel));
        m50303b().tvTip.setText(C10651R.string.counter_count_down_end);
        m50307g();
    }

    public final void showCountDownEndOne(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        m50303b().tvTimeName.setText(name);
        m50303b().tvTip.setText(C10651R.string.counter_count_down_end_one);
        m50307g();
    }
}
