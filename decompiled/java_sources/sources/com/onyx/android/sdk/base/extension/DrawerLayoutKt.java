package com.onyx.android.sdk.base.extension;

import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0004¨\u0006\u0006"}, m61528d2 = {"openOrClose", "", "Landroidx/drawerlayout/widget/DrawerLayout;", "isOpen", "", "needAnimate", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DrawerLayoutKt {
    public static final void openOrClose(@NotNull DrawerLayout drawerLayout, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(drawerLayout, "<this>");
        if (z) {
            drawerLayout.openDrawer(GravityCompat.START, z2);
        } else {
            drawerLayout.closeDrawer(GravityCompat.START, z2);
        }
    }

    public static /* synthetic */ void openOrClose$default(DrawerLayout drawerLayout, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        openOrClose(drawerLayout, z, z2);
    }
}
