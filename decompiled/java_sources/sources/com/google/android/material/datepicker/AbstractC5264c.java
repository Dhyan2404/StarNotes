package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;

/* renamed from: com.google.android.material.datepicker.c */
/* loaded from: classes6.dex */
public abstract class AbstractC5264c<S> extends Fragment {
    protected final LinkedHashSet<OnSelectionChangedListener<S>> onSelectionChangedListeners = new LinkedHashSet<>();

    public boolean addOnSelectionChangedListener(OnSelectionChangedListener<S> onSelectionChangedListener) {
        return this.onSelectionChangedListeners.add(onSelectionChangedListener);
    }

    public abstract DateSelector<S> getDateSelector();

    /* renamed from: k0 */
    public void m24027k0() {
        this.onSelectionChangedListeners.clear();
    }

    /* renamed from: l0 */
    public boolean m24028l0(OnSelectionChangedListener<S> onSelectionChangedListener) {
        return this.onSelectionChangedListeners.remove(onSelectionChangedListener);
    }
}
