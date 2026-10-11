package androidx.core.app;

import android.app.Dialog;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public class DialogCompat {

    @RequiresApi(28)
    /* renamed from: androidx.core.app.DialogCompat$a */
    /* loaded from: classes3.dex */
    public static class C0532a {
        @DoNotInline
        /* renamed from: a */
        public static <T> T m2344a(Dialog dialog, int i) {
            return (T) dialog.requireViewById(i);
        }
    }

    @NonNull
    public static View requireViewById(@NonNull Dialog dialog, int i) {
        return (View) C0532a.m2344a(dialog, i);
    }
}
