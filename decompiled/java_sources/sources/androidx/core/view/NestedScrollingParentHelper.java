package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public class NestedScrollingParentHelper {

    /* renamed from: a */
    public int f5854a;

    /* renamed from: b */
    public int f5855b;

    public NestedScrollingParentHelper(@NonNull ViewGroup viewGroup) {
    }

    public int getNestedScrollAxes() {
        return this.f5855b | this.f5854a;
    }

    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i) {
        onNestedScrollAccepted(view, view2, i, 0);
    }

    public void onStopNestedScroll(@NonNull View view) {
        onStopNestedScroll(view, 0);
    }

    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i, int i2) {
        if (i2 == 1) {
            this.f5855b = i;
        } else {
            this.f5854a = i;
        }
    }

    public void onStopNestedScroll(@NonNull View view, int i) {
        if (i == 1) {
            this.f5855b = 0;
        } else {
            this.f5854a = 0;
        }
    }
}
