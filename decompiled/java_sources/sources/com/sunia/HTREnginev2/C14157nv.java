package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@RequiresApi(21)
/* renamed from: com.sunia.HTREnginev2.nv */
/* loaded from: classes3.dex */
public final class C14157nv {

    /* renamed from: a */
    @NotNull
    public static final C14157nv f79054a = new C14157nv();

    @JvmStatic
    @DoNotInline
    /* renamed from: a */
    public static final void m55801a(@NotNull Bundle bundle, @NotNull String str, @Nullable Size size) {
        bundle.putSize(str, size);
    }

    @JvmStatic
    @DoNotInline
    /* renamed from: b */
    public static final void m55802b(@NotNull Bundle bundle, @NotNull String str, @Nullable SizeF sizeF) {
        bundle.putSizeF(str, sizeF);
    }
}
