package com.onyx.android.sdk.extension;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.AnimBuilder;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.NavOptionsBuilderKt;
import com.onyx.android.sdk.uicommon.C8044R;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a$\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u001a\u001e\u0010\u0007\u001a\u00020\b*\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u001a\u001e\u0010\u0007\u001a\u00020\b*\u00020\r2\u0006\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u001a-\u0010\u000e\u001a\u0004\u0018\u00010\b\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0010¨\u0006\u0011"}, m61528d2 = {"getNavigationResult", "Landroidx/lifecycle/MutableLiveData;", "T", "", "Landroidx/fragment/app/Fragment;", "key", "", "navigateWithAnimation", "", "dest", "", "args", "Landroid/os/Bundle;", "Landroidx/navigation/NavController;", "setNavigationResult", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Object;)Lkotlin/Unit;", "sdk-uicommon_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FragmentKt {
    @NotNull
    public static final <T> MutableLiveData<T> getNavigationResult(@NotNull Fragment fragment, @NotNull String key) {
        SavedStateHandle savedStateHandle;
        MutableLiveData<T> liveData;
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        NavBackStackEntry currentBackStackEntry = androidx.navigation.fragment.FragmentKt.findNavController(fragment).getCurrentBackStackEntry();
        return (currentBackStackEntry == null || (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) == null || (liveData = savedStateHandle.getLiveData(key)) == null) ? new MutableLiveData<>() : liveData;
    }

    public static /* synthetic */ MutableLiveData getNavigationResult$default(Fragment fragment, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "onNavigateBackResult";
        }
        return getNavigationResult(fragment, str);
    }

    public static final void navigateWithAnimation(@NotNull Fragment fragment, int i, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        navigateWithAnimation(androidx.navigation.fragment.FragmentKt.findNavController(fragment), i, bundle);
    }

    public static /* synthetic */ void navigateWithAnimation$default(Fragment fragment, int i, Bundle bundle, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bundle = null;
        }
        navigateWithAnimation(fragment, i, bundle);
    }

    @Nullable
    public static final <T> Unit setNavigationResult(@NotNull Fragment fragment, @NotNull String key, @NotNull T result) {
        SavedStateHandle savedStateHandle;
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(result, "result");
        NavBackStackEntry previousBackStackEntry = androidx.navigation.fragment.FragmentKt.findNavController(fragment).getPreviousBackStackEntry();
        if (previousBackStackEntry == null || (savedStateHandle = previousBackStackEntry.getSavedStateHandle()) == null) {
            return null;
        }
        savedStateHandle.set(key, result);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ Unit setNavigationResult$default(Fragment fragment, String str, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            str = "onNavigateBackResult";
        }
        return setNavigationResult(fragment, str, obj);
    }

    public static final void navigateWithAnimation(@NotNull NavController navController, int i, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(navController, "<this>");
        navController.navigate(i, bundle, NavOptionsBuilderKt.navOptions(new Function1<NavOptionsBuilder, Unit>() { // from class: com.onyx.android.sdk.extension.FragmentKt$navigateWithAnimation$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NavOptionsBuilder navOptionsBuilder) {
                invoke2(navOptionsBuilder);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NavOptionsBuilder navOptions) {
                Intrinsics.checkNotNullParameter(navOptions, "$this$navOptions");
                navOptions.anim(new Function1<AnimBuilder, Unit>() { // from class: com.onyx.android.sdk.extension.FragmentKt$navigateWithAnimation$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(AnimBuilder animBuilder) {
                        invoke2(animBuilder);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull AnimBuilder anim) {
                        Intrinsics.checkNotNullParameter(anim, "$this$anim");
                        anim.setEnter(C8044R.anim.slide_in_right_short);
                        anim.setExit(C8044R.anim.slide_out_left_short);
                        anim.setPopEnter(C8044R.anim.slide_in_left_short);
                        anim.setPopExit(C8044R.anim.slide_out_right_short);
                    }
                });
            }
        }));
    }

    public static /* synthetic */ void navigateWithAnimation$default(NavController navController, int i, Bundle bundle, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bundle = null;
        }
        navigateWithAnimation(navController, i, bundle);
    }
}
