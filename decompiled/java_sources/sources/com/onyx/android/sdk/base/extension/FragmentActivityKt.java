package com.onyx.android.sdk.base.extension;

import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"getViewModel", "T", "Landroidx/lifecycle/ViewModel;", "Landroidx/fragment/app/FragmentActivity;", "modelClass", "Ljava/lang/Class;", "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FragmentActivityKt {
    @NotNull
    public static final <T extends ViewModel> T getViewModel(@NotNull FragmentActivity fragmentActivity, @NotNull Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(fragmentActivity, "<this>");
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return (T) new ViewModelProvider(fragmentActivity).get(modelClass);
    }
}
