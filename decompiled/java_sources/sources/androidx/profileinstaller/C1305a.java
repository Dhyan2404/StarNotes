package androidx.profileinstaller;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.profileinstaller.ProfileInstallReceiver;
import java.io.File;

/* renamed from: androidx.profileinstaller.a */
/* loaded from: classes3.dex */
public class C1305a {

    @RequiresApi(api = 21)
    /* renamed from: androidx.profileinstaller.a$a */
    /* loaded from: classes3.dex */
    public static class a {
        /* renamed from: a */
        public static File m5454a(Context context) {
            return context.getCodeCacheDir();
        }
    }

    @RequiresApi(api = 24)
    /* renamed from: androidx.profileinstaller.a$b */
    /* loaded from: classes3.dex */
    public static class b {
        /* renamed from: a */
        public static File m5455a(Context context) {
            return context.createDeviceProtectedStorageContext().getCodeCacheDir();
        }
    }

    /* renamed from: a */
    public static boolean m5452a(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return false;
        }
        boolean z = true;
        for (File file2 : listFiles) {
            z = m5452a(file2) && z;
        }
        return z;
    }

    /* renamed from: b */
    public static void m5453b(@NonNull Context context, @NonNull ProfileInstallReceiver.C1297a c1297a) {
        if (m5452a(b.m5455a(context))) {
            c1297a.onResultReceived(14, null);
        } else {
            c1297a.onResultReceived(15, null);
        }
    }
}
