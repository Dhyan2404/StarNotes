package androidx.appcompat.widget;

import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public class TooltipCompat {

    @RequiresApi(26)
    /* renamed from: androidx.appcompat.widget.TooltipCompat$a */
    /* loaded from: classes3.dex */
    public static class C0304a {
        @DoNotInline
        /* renamed from: a */
        public static void m977a(View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    public static void setTooltipText(@NonNull View view, @Nullable CharSequence charSequence) {
        C0304a.m977a(view, charSequence);
    }
}
