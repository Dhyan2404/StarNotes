package androidx.browser.trusted;

import android.app.NotificationManager;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class NotificationApiHelperForM {
    @NonNull
    @RequiresApi(23)
    /* renamed from: a */
    public static Parcelable[] m1266a(NotificationManager notificationManager) {
        return notificationManager.getActiveNotifications();
    }
}
