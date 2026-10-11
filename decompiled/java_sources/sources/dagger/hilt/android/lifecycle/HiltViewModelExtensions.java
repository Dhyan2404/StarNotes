package dagger.hilt.android.lifecycle;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a$\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u001a$\u0010\u0007\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\b"}, m61528d2 = {"addCreationCallback", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VMF", "Landroidx/lifecycle/viewmodel/MutableCreationExtras;", "callback", "Lkotlin/Function1;", "Landroidx/lifecycle/ViewModel;", "withCreationCallback", "java_dagger_hilt_android_lifecycle-hilt_view_model_extensions_internal_kt"}, m61529k = 2, m61530mv = {1, 8, 0}, m61532xi = 48)
@JvmName(name = "HiltViewModelExtensions")
/* loaded from: classes10.dex */
public final class HiltViewModelExtensions {
    @NotNull
    public static final <VMF> CreationExtras addCreationCallback(@NotNull MutableCreationExtras mutableCreationExtras, @NotNull final Function1<? super VMF, ? extends ViewModel> callback) {
        Intrinsics.checkNotNullParameter(mutableCreationExtras, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        CreationExtras.Key<Function1<Object, ViewModel>> CREATION_CALLBACK_KEY = HiltViewModelFactory.CREATION_CALLBACK_KEY;
        Intrinsics.checkNotNullExpressionValue(CREATION_CALLBACK_KEY, "CREATION_CALLBACK_KEY");
        mutableCreationExtras.set(CREATION_CALLBACK_KEY, new Function1<Object, ViewModel>() { // from class: dagger.hilt.android.lifecycle.HiltViewModelExtensions$addCreationCallback$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ViewModel invoke(Object obj) {
                return callback.invoke(obj);
            }
        });
        return mutableCreationExtras;
    }

    @NotNull
    public static final <VMF> CreationExtras withCreationCallback(@NotNull CreationExtras creationExtras, @NotNull Function1<? super VMF, ? extends ViewModel> callback) {
        Intrinsics.checkNotNullParameter(creationExtras, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return addCreationCallback(new MutableCreationExtras(creationExtras), callback);
    }
}
