package androidx.preference;

import android.util.SparseArray;
import android.view.View;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public class PreferenceViewHolder extends RecyclerView.ViewHolder {

    /* renamed from: H */
    public final SparseArray<View> f8935H;

    /* renamed from: I */
    public boolean f8936I;

    /* renamed from: J */
    public boolean f8937J;

    public PreferenceViewHolder(View view) {
        super(view);
        SparseArray<View> sparseArray = new SparseArray<>(4);
        this.f8935H = sparseArray;
        sparseArray.put(android.R.id.title, view.findViewById(android.R.id.title));
        sparseArray.put(android.R.id.summary, view.findViewById(android.R.id.summary));
        sparseArray.put(android.R.id.icon, view.findViewById(android.R.id.icon));
        int i = C1271R.id.icon_frame;
        sparseArray.put(i, view.findViewById(i));
        sparseArray.put(16908350, view.findViewById(16908350));
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public static PreferenceViewHolder createInstanceForTests(View view) {
        return new PreferenceViewHolder(view);
    }

    public View findViewById(@IdRes int i) {
        View view = this.f8935H.get(i);
        if (view != null) {
            return view;
        }
        View findViewById = this.itemView.findViewById(i);
        if (findViewById != null) {
            this.f8935H.put(i, findViewById);
        }
        return findViewById;
    }

    public boolean isDividerAllowedAbove() {
        return this.f8936I;
    }

    public boolean isDividerAllowedBelow() {
        return this.f8937J;
    }

    public void setDividerAllowedAbove(boolean z) {
        this.f8936I = z;
    }

    public void setDividerAllowedBelow(boolean z) {
        this.f8937J = z;
    }
}
