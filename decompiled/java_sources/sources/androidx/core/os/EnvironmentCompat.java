package androidx.core.os;

import android.os.Environment;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.File;

/* loaded from: classes3.dex */
public final class EnvironmentCompat {

    @Deprecated
    public static final String MEDIA_UNKNOWN = "unknown";

    @RequiresApi(21)
    /* renamed from: androidx.core.os.EnvironmentCompat$a */
    /* loaded from: classes3.dex */
    public static class C0703a {
        @DoNotInline
        /* renamed from: a */
        public static String m3113a(File file) {
            return Environment.getExternalStorageState(file);
        }
    }

    @NonNull
    public static String getStorageState(@NonNull File file) {
        return C0703a.m3113a(file);
    }
}
