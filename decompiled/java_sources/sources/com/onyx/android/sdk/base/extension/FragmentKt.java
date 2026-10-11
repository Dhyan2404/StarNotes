package com.onyx.android.sdk.base.extension;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.onyx.android.sdk.base.utils.Debug;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0013\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0002¢\u0006\u0002\u0010\u0003\u001a$\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b\u001a*\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\f0\u0005*\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b\u001a \u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u00022\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\b\u001a*\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\f0\u0005*\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b\u001a'\u0010\u000f\u001a\u0002H\u0010\"\b\b\u0000\u0010\u0010*\u00020\u0011*\u00020\u00022\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00100\u0013¢\u0006\u0002\u0010\u0014\u001a(\u0010\u0015\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0016\u001a\u00020\u00172\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00010\u0019\u001a\u001e\u0010\u001b\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00010\u0019\u001a.\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u0005*\u00020\u00022\u0006\u0010 \u001a\u00020\u001d2\u0014\u0010\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\"0!0\b\u001a\u001e\u0010#\u001a\b\u0012\u0004\u0012\u00020\n0\u0005*\u00020\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\"0\b¨\u0006$"}, m61528d2 = {"finishActivity", "", "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;", "getMultipleContents", "Landroidx/activity/result/ActivityResultLauncher;", "", "callback", "Landroidx/activity/result/ActivityResultCallback;", "", "Landroid/net/Uri;", "getMultipleDocuments", "", "getSingleContents", "getSingleDocuments", "getViewModel", "T", "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "requireActivitySafety", "minState", "Landroidx/lifecycle/Lifecycle$State;", "task", "Lkotlin/Function1;", "Landroid/app/Activity;", "requireContextSafety", "action", "Landroid/content/Context;", "screenCapture", "Landroid/os/Bundle;", "context", "Ljava/util/concurrent/atomic/AtomicReference;", "Landroid/content/Intent;", "takePicture", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FragmentKt {
    @Nullable
    public static final Unit finishActivity(@Nullable Fragment fragment) {
        FragmentActivity activity;
        if (fragment == null || (activity = fragment.getActivity()) == null) {
            return null;
        }
        activity.finish();
        return Unit.INSTANCE;
    }

    @NotNull
    public static final ActivityResultLauncher<String> getMultipleContents(@NotNull Fragment fragment, @NotNull ActivityResultCallback<List<Uri>> callback) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        ActivityResultLauncher<String> registerForActivityResult = fragment.registerForActivityResult(new ActivityResultContracts.GetMultipleContents(), callback);
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResult(...)");
        return registerForActivityResult;
    }

    @NotNull
    public static final ActivityResultLauncher<String[]> getMultipleDocuments(@NotNull Fragment fragment, @NotNull ActivityResultCallback<List<Uri>> callback) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        ActivityResultLauncher<String[]> registerForActivityResult = fragment.registerForActivityResult(new GetMultipleDocuments(false, 1, null), callback);
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResult(...)");
        return registerForActivityResult;
    }

    @NotNull
    public static final ActivityResultLauncher<String> getSingleContents(@NotNull Fragment fragment, @NotNull ActivityResultCallback<Uri> callback) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        ActivityResultLauncher<String> registerForActivityResult = fragment.registerForActivityResult(new ActivityResultContracts.GetContent(), callback);
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResult(...)");
        return registerForActivityResult;
    }

    @NotNull
    public static final ActivityResultLauncher<String[]> getSingleDocuments(@NotNull Fragment fragment, @NotNull ActivityResultCallback<List<Uri>> callback) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        ActivityResultLauncher<String[]> registerForActivityResult = fragment.registerForActivityResult(new GetMultipleDocuments(false), callback);
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResult(...)");
        return registerForActivityResult;
    }

    @NotNull
    public static final <T extends ViewModel> T getViewModel(@NotNull Fragment fragment, @NotNull Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return (T) new ViewModelProvider(fragment).get(modelClass);
    }

    public static final void requireActivitySafety(@NotNull final Fragment fragment, @NotNull final Lifecycle.State minState, @NotNull final Function1<? super android.app.Activity, Unit> task) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(minState, "minState");
        Intrinsics.checkNotNullParameter(task, "task");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        fragment.getLifecycle().addObserver(new LifecycleObserver() { // from class: com.onyx.android.sdk.base.extension.FragmentKt$requireActivitySafety$lifecycleObserver$1

            /* renamed from: e, reason: from kotlin metadata */
            @Nullable
            public ComponentActivity activity;

            /* renamed from: a */
            public final void m31921a() {
                Lifecycle lifecycle;
                Fragment.this.getLifecycle().removeObserver(this);
                ComponentActivity componentActivity = this.activity;
                if (componentActivity != null && (lifecycle = componentActivity.getLifecycle()) != null) {
                    lifecycle.removeObserver(this);
                }
                this.activity = null;
            }

            @OnLifecycleEvent(Lifecycle.Event.ON_ANY)
            public final void onActivityLifecycleChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
                ComponentActivity componentActivity;
                Intrinsics.checkNotNullParameter(source, "source");
                Intrinsics.checkNotNullParameter(event, "event");
                if (booleanRef.element) {
                    return;
                }
                Lifecycle.State state = source.getLifecycle().getState();
                Intrinsics.checkNotNullExpressionValue(state, "getCurrentState(...)");
                if (state.isAtLeast(minState) && Fragment.this.isAdded() && (componentActivity = this.activity) != null) {
                    Function1<android.app.Activity, Unit> function1 = task;
                    Ref.BooleanRef booleanRef2 = booleanRef;
                    try {
                        function1.invoke(componentActivity);
                    } finally {
                        booleanRef2.element = true;
                        m31921a();
                    }
                }
            }

            @OnLifecycleEvent(Lifecycle.Event.ON_ANY)
            public final void onFragmentLifecycleChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
                Lifecycle lifecycle;
                Intrinsics.checkNotNullParameter(source, "source");
                Intrinsics.checkNotNullParameter(event, "event");
                if (Fragment.this.isAdded() && this.activity == null) {
                    FragmentActivity activity = Fragment.this.getActivity();
                    this.activity = activity;
                    if (activity != null && (lifecycle = activity.getLifecycle()) != null) {
                        lifecycle.addObserver(this);
                    }
                }
                if (event == Lifecycle.Event.ON_DESTROY) {
                    m31921a();
                }
            }
        });
    }

    public static /* synthetic */ void requireActivitySafety$default(Fragment fragment, Lifecycle.State state, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            state = Lifecycle.State.STARTED;
        }
        requireActivitySafety(fragment, state, function1);
    }

    public static final void requireContextSafety(@NotNull Fragment fragment, @NotNull Function1<? super Context, Unit> action) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        try {
            if (fragment.isAdded() && !fragment.isDetached()) {
                Context requireContext = fragment.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                action.invoke(requireContext);
            }
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
        }
    }

    @NotNull
    public static final ActivityResultLauncher<Bundle> screenCapture(@NotNull Fragment fragment, @NotNull Context context, @NotNull ActivityResultCallback<AtomicReference<Intent>> callback) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        ActivityResultLauncher<Bundle> registerForActivityResult = fragment.registerForActivityResult(new ScreenCapture(context), callback);
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResult(...)");
        return registerForActivityResult;
    }

    @NotNull
    public static final ActivityResultLauncher<Uri> takePicture(@NotNull Fragment fragment, @NotNull ActivityResultCallback<Intent> callback) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        ActivityResultLauncher<Uri> registerForActivityResult = fragment.registerForActivityResult(new TakePicture(), callback);
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResult(...)");
        return registerForActivityResult;
    }
}
