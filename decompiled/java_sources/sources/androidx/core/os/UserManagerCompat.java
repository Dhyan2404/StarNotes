package androidx.core.os;

import android.content.Context;
import android.os.UserManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public class UserManagerCompat {

    @RequiresApi(24)
    /* renamed from: androidx.core.os.UserManagerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0718a {
        @DoNotInline
        /* renamed from: a */
        public static boolean m3149a(Context context) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }
    }

    public static boolean isUserUnlocked(@NonNull Context context) {
        return C0718a.m3149a(context);
    }
}
