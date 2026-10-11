package com.onyx.android.sdk.base.extension;

import android.view.View;
import android.view.Window;
import com.onyx.android.sdk.base.extension.WindowKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, m61528d2 = {"hideNavigationBar", "", "Landroid/view/Window;", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class WindowKt {
    /* renamed from: b */
    public static final void m31962b(Window this_hideNavigationBar, int i) {
        Intrinsics.checkNotNullParameter(this_hideNavigationBar, "$this_hideNavigationBar");
        this_hideNavigationBar.getDecorView().setSystemUiVisibility(5894);
    }

    public static final void hideNavigationBar(@NotNull final Window window) {
        Intrinsics.checkNotNullParameter(window, "<this>");
        window.getDecorView().setSystemUiVisibility(2);
        window.getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.sunia.HTREnginev2.i9o
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public final void onSystemUiVisibilityChange(int i) {
                WindowKt.m31962b(window, i);
            }
        });
    }
}
