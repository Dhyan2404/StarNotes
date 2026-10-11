package com.sunia.HTREnginev2;

import android.view.View;
import android.view.Window;
import androidx.activity.SystemBarStyle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.core.view.WindowCompat;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@RequiresApi(21)
/* loaded from: classes3.dex */
public final class nkf implements skf {
    @Override // com.sunia.HTREnginev2.skf
    @DoNotInline
    /* renamed from: a */
    public void mo55763a(@NotNull SystemBarStyle statusBarStyle, @NotNull SystemBarStyle navigationBarStyle, @NotNull Window window, @NotNull View view, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(statusBarStyle, "statusBarStyle");
        Intrinsics.checkNotNullParameter(navigationBarStyle, "navigationBarStyle");
        Intrinsics.checkNotNullParameter(window, "window");
        Intrinsics.checkNotNullParameter(view, "view");
        WindowCompat.setDecorFitsSystemWindows(window, false);
        window.addFlags(67108864);
        window.addFlags(134217728);
    }
}
