package com.sunia.HTREnginev2;

import android.os.PersistableBundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@RequiresApi(22)
/* loaded from: classes3.dex */
public final class p3l {

    /* renamed from: a */
    @NotNull
    public static final p3l f80423a = new p3l();

    @JvmStatic
    @DoNotInline
    /* renamed from: a */
    public static final void m56210a(@NotNull PersistableBundle persistableBundle, @Nullable String str, boolean z) {
        persistableBundle.putBoolean(str, z);
    }

    @JvmStatic
    @DoNotInline
    /* renamed from: b */
    public static final void m56211b(@NotNull PersistableBundle persistableBundle, @Nullable String str, @NotNull boolean[] zArr) {
        persistableBundle.putBooleanArray(str, zArr);
    }
}
