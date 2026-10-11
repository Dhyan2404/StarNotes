package kotlin.collections;

import java.util.List;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"kotlin/collections/ArraysKt__ArraysJVMKt", "kotlin/collections/ArraysKt__ArraysKt", "kotlin/collections/ArraysKt___ArraysJvmKt", "kotlin/collections/ArraysKt___ArraysKt"}, m61529k = 4, m61530mv = {1, 9, 0}, m61532xi = 49)
/* loaded from: classes7.dex */
public final class ArraysKt extends ArraysKt___ArraysKt {
    private ArraysKt() {
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static /* bridge */ /* synthetic */ byte[] copyInto(@NotNull byte[] bArr, @NotNull byte[] bArr2, int i, int i2, int i3) {
        return ArraysKt___ArraysJvmKt.copyInto(bArr, bArr2, i, i2, i3);
    }

    @SinceKotlin(version = "1.3")
    @JvmName(name = "copyOfRange")
    @NotNull
    @PublishedApi
    public static /* bridge */ /* synthetic */ byte[] copyOfRange(@NotNull byte[] bArr, int i, int i2) {
        return ArraysKt___ArraysJvmKt.copyOfRange(bArr, i, i2);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List map(@NotNull Object[] objArr, @NotNull Function1 function1) {
        return ArraysKt___ArraysKt.map(objArr, function1);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List toList(@NotNull Object[] objArr) {
        return ArraysKt___ArraysKt.toList(objArr);
    }
}
