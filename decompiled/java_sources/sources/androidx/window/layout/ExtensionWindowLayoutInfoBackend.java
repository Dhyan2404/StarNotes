package androidx.window.layout;

import android.annotation.SuppressLint;
import android.app.Activity;
import androidx.annotation.GuardedBy;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.util.Consumer;
import androidx.window.extensions.layout.WindowLayoutComponent;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001:\u0001\rB\u000f\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u001b\u0010\u001cJ&\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J\u0016\u0010\u000b\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R \u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00150\u00148\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R&\u0010\u001a\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\u00020\u00148\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;", "Landroidx/window/layout/WindowBackend;", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "Ljava/util/concurrent/Executor;", "executor", "Landroidx/core/util/Consumer;", "Landroidx/window/layout/WindowLayoutInfo;", "callback", "", "registerLayoutChangeCallback", "unregisterLayoutChangeCallback", "Landroidx/window/extensions/layout/WindowLayoutComponent;", "a", "Landroidx/window/extensions/layout/WindowLayoutComponent;", Constants.ELEMNAME_COMPONENT_STRING, "Ljava/util/concurrent/locks/ReentrantLock;", "b", "Ljava/util/concurrent/locks/ReentrantLock;", "extensionWindowBackendLock", "", "Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$a;", "c", "Ljava/util/Map;", "activityToListeners", "d", "listenerToActivity", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/window/extensions/layout/WindowLayoutComponent;)V", "window_release"}, m61529k = 1, m61530mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class ExtensionWindowLayoutInfoBackend implements WindowBackend {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WindowLayoutComponent component;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final ReentrantLock extensionWindowBackendLock;

    /* renamed from: c, reason: from kotlin metadata */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    @NotNull
    public final Map<Activity, C1579a> activityToListeners;

    /* renamed from: d, reason: from kotlin metadata */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    @NotNull
    public final Map<Consumer<WindowLayoutInfo>, Activity> listenerToActivity;

    @SuppressLint({"NewApi"})
    /* renamed from: androidx.window.layout.ExtensionWindowLayoutInfoBackend$a */
    /* loaded from: classes3.dex */
    public static final class C1579a implements java.util.function.Consumer<androidx.window.extensions.layout.WindowLayoutInfo> {

        /* renamed from: e */
        @NotNull
        public final Activity f11275e;

        /* renamed from: f */
        @NotNull
        public final ReentrantLock f11276f;

        /* renamed from: g */
        @GuardedBy(DevicePushAction.LOCK_DEVICE)
        @Nullable
        public WindowLayoutInfo f11277g;

        /* renamed from: h */
        @GuardedBy(DevicePushAction.LOCK_DEVICE)
        @NotNull
        public final Set<Consumer<WindowLayoutInfo>> f11278h;

        public C1579a(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.f11275e = activity;
            this.f11276f = new ReentrantLock();
            this.f11278h = new LinkedHashSet();
        }

        @Override // java.util.function.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(@NotNull androidx.window.extensions.layout.WindowLayoutInfo value) {
            Intrinsics.checkNotNullParameter(value, "value");
            ReentrantLock reentrantLock = this.f11276f;
            reentrantLock.lock();
            try {
                this.f11277g = ExtensionsWindowLayoutInfoAdapter.INSTANCE.translate$window_release(this.f11275e, value);
                Iterator<T> it2 = this.f11278h.iterator();
                while (it2.hasNext()) {
                    ((Consumer) it2.next()).accept(this.f11277g);
                }
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }

        /* renamed from: b */
        public final void m6921b(@NotNull Consumer<WindowLayoutInfo> listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            ReentrantLock reentrantLock = this.f11276f;
            reentrantLock.lock();
            try {
                WindowLayoutInfo windowLayoutInfo = this.f11277g;
                if (windowLayoutInfo != null) {
                    listener.accept(windowLayoutInfo);
                }
                this.f11278h.add(listener);
            } finally {
                reentrantLock.unlock();
            }
        }

        /* renamed from: c */
        public final boolean m6922c() {
            return this.f11278h.isEmpty();
        }

        /* renamed from: d */
        public final void m6923d(@NotNull Consumer<WindowLayoutInfo> listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            ReentrantLock reentrantLock = this.f11276f;
            reentrantLock.lock();
            try {
                this.f11278h.remove(listener);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public ExtensionWindowLayoutInfoBackend(@NotNull WindowLayoutComponent component) {
        Intrinsics.checkNotNullParameter(component, "component");
        this.component = component;
        this.extensionWindowBackendLock = new ReentrantLock();
        this.activityToListeners = new LinkedHashMap();
        this.listenerToActivity = new LinkedHashMap();
    }

    @Override // androidx.window.layout.WindowBackend
    public void registerLayoutChangeCallback(@NotNull Activity activity, @NotNull Executor executor, @NotNull Consumer<WindowLayoutInfo> callback) {
        Unit unit;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        ReentrantLock reentrantLock = this.extensionWindowBackendLock;
        reentrantLock.lock();
        try {
            C1579a c1579a = this.activityToListeners.get(activity);
            if (c1579a == null) {
                unit = null;
            } else {
                c1579a.m6921b(callback);
                this.listenerToActivity.put(callback, activity);
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                C1579a c1579a2 = new C1579a(activity);
                this.activityToListeners.put(activity, c1579a2);
                this.listenerToActivity.put(callback, activity);
                c1579a2.m6921b(callback);
                this.component.addWindowLayoutInfoListener(activity, c1579a2);
            }
            Unit unit2 = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.layout.WindowBackend
    public void unregisterLayoutChangeCallback(@NotNull Consumer<WindowLayoutInfo> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        ReentrantLock reentrantLock = this.extensionWindowBackendLock;
        reentrantLock.lock();
        try {
            Activity activity = this.listenerToActivity.get(callback);
            if (activity == null) {
                return;
            }
            C1579a c1579a = this.activityToListeners.get(activity);
            if (c1579a == null) {
                return;
            }
            c1579a.m6923d(callback);
            if (c1579a.m6922c()) {
                this.component.removeWindowLayoutInfoListener(c1579a);
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }
}
