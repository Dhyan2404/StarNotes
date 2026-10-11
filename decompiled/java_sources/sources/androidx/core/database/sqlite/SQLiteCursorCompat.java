package androidx.core.database.sqlite;

import android.database.sqlite.SQLiteCursor;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public final class SQLiteCursorCompat {

    @RequiresApi(28)
    /* renamed from: androidx.core.database.sqlite.SQLiteCursorCompat$a */
    /* loaded from: classes3.dex */
    public static class C0655a {
        @DoNotInline
        /* renamed from: a */
        public static void m2892a(SQLiteCursor sQLiteCursor, boolean z) {
            sQLiteCursor.setFillWindowForwardOnly(z);
        }
    }

    public static void setFillWindowForwardOnly(@NonNull SQLiteCursor sQLiteCursor, boolean z) {
        C0655a.m2892a(sQLiteCursor, z);
    }
}
