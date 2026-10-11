package com.permissionx.guolindev;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;

/* loaded from: classes9.dex */
public class PermissionX {

    /* loaded from: classes9.dex */
    public static final class permission {
        public static final String POST_NOTIFICATIONS = "android.permission.POST_NOTIFICATIONS";
    }

    public static boolean areNotificationsEnabled(@NonNull Context context) {
        return NotificationManagerCompat.from(context).areNotificationsEnabled();
    }

    public static PermissionMediator init(@NonNull FragmentActivity fragmentActivity) {
        return new PermissionMediator(fragmentActivity);
    }

    public static boolean isGranted(@NonNull Context context, @NonNull String str) {
        return ContextCompat.checkSelfPermission(context, str) == 0;
    }

    public static PermissionMediator init(@NonNull Fragment fragment) {
        return new PermissionMediator(fragment);
    }
}
