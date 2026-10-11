package androidx.core.view;

import android.view.ViewStructure;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public class ViewStructureCompat {

    /* renamed from: a */
    public final Object f5919a;

    @RequiresApi(23)
    /* renamed from: androidx.core.view.ViewStructureCompat$a */
    /* loaded from: classes3.dex */
    public static class C0804a {
        @DoNotInline
        /* renamed from: a */
        public static void m3541a(ViewStructure viewStructure, String str) {
            viewStructure.setClassName(str);
        }

        @DoNotInline
        /* renamed from: b */
        public static void m3542b(ViewStructure viewStructure, CharSequence charSequence) {
            viewStructure.setContentDescription(charSequence);
        }

        @DoNotInline
        /* renamed from: c */
        public static void m3543c(ViewStructure viewStructure, int i, int i2, int i3, int i4, int i5, int i6) {
            viewStructure.setDimens(i, i2, i3, i4, i5, i6);
        }

        @DoNotInline
        /* renamed from: d */
        public static void m3544d(ViewStructure viewStructure, CharSequence charSequence) {
            viewStructure.setText(charSequence);
        }
    }

    public ViewStructureCompat(@NonNull ViewStructure viewStructure) {
        this.f5919a = viewStructure;
    }

    @NonNull
    @RequiresApi(23)
    public static ViewStructureCompat toViewStructureCompat(@NonNull ViewStructure viewStructure) {
        return new ViewStructureCompat(viewStructure);
    }

    public void setClassName(@NonNull String str) {
        C0804a.m3541a((ViewStructure) this.f5919a, str);
    }

    public void setContentDescription(@NonNull CharSequence charSequence) {
        C0804a.m3542b((ViewStructure) this.f5919a, charSequence);
    }

    public void setDimens(int i, int i2, int i3, int i4, int i5, int i6) {
        C0804a.m3543c((ViewStructure) this.f5919a, i, i2, i3, i4, i5, i6);
    }

    public void setText(@NonNull CharSequence charSequence) {
        C0804a.m3544d((ViewStructure) this.f5919a, charSequence);
    }

    @NonNull
    @RequiresApi(23)
    public ViewStructure toViewStructure() {
        return (ViewStructure) this.f5919a;
    }
}
