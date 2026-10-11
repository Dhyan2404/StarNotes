package kotlin.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt", "kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt"}, m61529k = 4, m61530mv = {1, 9, 0}, m61532xi = 49)
/* loaded from: classes7.dex */
public final class IntrinsicsKt extends IntrinsicsKt__IntrinsicsKt {
    private IntrinsicsKt() {
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Object getCOROUTINE_SUSPENDED() {
        return IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static /* bridge */ /* synthetic */ Continuation intercepted(@NotNull Continuation continuation) {
        return IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
    }
}
