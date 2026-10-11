package androidx.core.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public final class AppOpsManagerCompat {
    public static final int MODE_ALLOWED = 0;
    public static final int MODE_DEFAULT = 3;
    public static final int MODE_ERRORED = 2;
    public static final int MODE_IGNORED = 1;

    @RequiresApi(23)
    /* renamed from: androidx.core.app.AppOpsManagerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0530a {
        @DoNotInline
        /* renamed from: a */
        public static <T> T m2333a(Context context, Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        @DoNotInline
        /* renamed from: b */
        public static int m2334b(AppOpsManager appOpsManager, String str, String str2) {
            return appOpsManager.noteProxyOp(str, str2);
        }

        @DoNotInline
        /* renamed from: c */
        public static int m2335c(AppOpsManager appOpsManager, String str, String str2) {
            return appOpsManager.noteProxyOpNoThrow(str, str2);
        }

        @DoNotInline
        /* renamed from: d */
        public static String m2336d(String str) {
            return AppOpsManager.permissionToOp(str);
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.app.AppOpsManagerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0531b {
        @DoNotInline
        /* renamed from: a */
        public static int m2337a(@Nullable AppOpsManager appOpsManager, @NonNull String str, int i, @NonNull String str2) {
            if (appOpsManager == null) {
                return 1;
            }
            return appOpsManager.checkOpNoThrow(str, i, str2);
        }

        @NonNull
        @DoNotInline
        /* renamed from: b */
        public static String m2338b(@NonNull Context context) {
            return context.getOpPackageName();
        }

        @Nullable
        @DoNotInline
        /* renamed from: c */
        public static AppOpsManager m2339c(@NonNull Context context) {
            return (AppOpsManager) context.getSystemService(AppOpsManager.class);
        }
    }

    public static int checkOrNoteProxyOp(@NonNull Context context, int i, @NonNull String str, @NonNull String str2) {
        AppOpsManager m2339c = C0531b.m2339c(context);
        int m2337a = C0531b.m2337a(m2339c, str, Binder.getCallingUid(), str2);
        return m2337a != 0 ? m2337a : C0531b.m2337a(m2339c, str, i, C0531b.m2338b(context));
    }

    public static int noteOp(@NonNull Context context, @NonNull String str, int i, @NonNull String str2) {
        return ((AppOpsManager) context.getSystemService("appops")).noteOp(str, i, str2);
    }

    public static int noteOpNoThrow(@NonNull Context context, @NonNull String str, int i, @NonNull String str2) {
        return ((AppOpsManager) context.getSystemService("appops")).noteOpNoThrow(str, i, str2);
    }

    public static int noteProxyOp(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        return C0530a.m2334b((AppOpsManager) C0530a.m2333a(context, AppOpsManager.class), str, str2);
    }

    public static int noteProxyOpNoThrow(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        return C0530a.m2335c((AppOpsManager) C0530a.m2333a(context, AppOpsManager.class), str, str2);
    }

    @Nullable
    public static String permissionToOp(@NonNull String str) {
        return C0530a.m2336d(str);
    }
}
