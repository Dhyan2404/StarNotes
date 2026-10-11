package com.onyx.android.sdk.extension;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import androidx.core.app.ActivityCompat;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.extension.ActivityKt;
import com.onyx.android.sdk.uicommon.C8044R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a#\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"shouldShowGuideToPermissionSettings", "", "Landroid/app/Activity;", "permission", "", "", "(Landroid/app/Activity;[Ljava/lang/String;)V", "sdk-uicommon_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ActivityKt {
    /* renamed from: c */
    public static final void m33029c(Activity this_shouldShowGuideToPermissionSettings, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this_shouldShowGuideToPermissionSettings, "$this_shouldShowGuideToPermissionSettings");
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse("package:" + this_shouldShowGuideToPermissionSettings.getPackageName()));
        ContextKt.startActivitySafely(this_shouldShowGuideToPermissionSettings, intent);
    }

    /* renamed from: d */
    public static final void m33030d(DialogInterface dialogInterface, int i) {
    }

    public static final void shouldShowGuideToPermissionSettings(@NotNull final Activity activity, @NotNull String... permission) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(permission, "permission");
        int length = permission.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = true;
                break;
            } else if (!ActivityCompat.shouldShowRequestPermissionRationale(activity, permission[i])) {
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        new AlertDialog.Builder(activity).setTitle(C8044R.string.permission_deny_title).setMessage(C8044R.string.permission_deny_and_guide_desc).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.sunia.HTREnginev2.n6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                ActivityKt.m33029c(activity, dialogInterface, i2);
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.sunia.HTREnginev2.o6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                ActivityKt.m33030d(dialogInterface, i2);
            }
        }).show();
    }
}
