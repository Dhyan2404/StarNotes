package androidx.core.database;

import android.database.CursorWindow;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public final class CursorWindowCompat {

    @RequiresApi(28)
    /* renamed from: androidx.core.database.CursorWindowCompat$a */
    /* loaded from: classes3.dex */
    public static class C0654a {
        @DoNotInline
        /* renamed from: a */
        public static CursorWindow m2891a(String str, long j) {
            return new CursorWindow(str, j);
        }
    }

    @NonNull
    public static CursorWindow create(@Nullable String str, long j) {
        return C0654a.m2891a(str, j);
    }
}
