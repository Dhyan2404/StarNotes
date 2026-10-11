package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.widget.SpinnerAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.ContextThemeWrapper;

/* loaded from: classes3.dex */
public interface ThemedSpinnerAdapter extends SpinnerAdapter {

    /* loaded from: classes3.dex */
    public static final class Helper {

        /* renamed from: a */
        public final Context f2005a;

        /* renamed from: b */
        public final LayoutInflater f2006b;

        /* renamed from: c */
        public LayoutInflater f2007c;

        public Helper(@NonNull Context context) {
            this.f2005a = context;
            this.f2006b = LayoutInflater.from(context);
        }

        @NonNull
        public LayoutInflater getDropDownViewInflater() {
            LayoutInflater layoutInflater = this.f2007c;
            return layoutInflater != null ? layoutInflater : this.f2006b;
        }

        @Nullable
        public Resources.Theme getDropDownViewTheme() {
            LayoutInflater layoutInflater = this.f2007c;
            if (layoutInflater == null) {
                return null;
            }
            return layoutInflater.getContext().getTheme();
        }

        public void setDropDownViewTheme(@Nullable Resources.Theme theme) {
            if (theme == null) {
                this.f2007c = null;
            } else if (theme.equals(this.f2005a.getTheme())) {
                this.f2007c = this.f2006b;
            } else {
                this.f2007c = LayoutInflater.from(new ContextThemeWrapper(this.f2005a, theme));
            }
        }
    }

    @Nullable
    Resources.Theme getDropDownViewTheme();

    void setDropDownViewTheme(@Nullable Resources.Theme theme);
}
