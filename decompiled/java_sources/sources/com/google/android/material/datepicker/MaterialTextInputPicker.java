package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class MaterialTextInputPicker<S> extends AbstractC5264c<S> {

    /* renamed from: f1 */
    public static final String f31173f1 = "THEME_RES_ID_KEY";

    /* renamed from: g1 */
    public static final String f31174g1 = "DATE_SELECTOR_KEY";

    /* renamed from: h1 */
    public static final String f31175h1 = "CALENDAR_CONSTRAINTS_KEY";

    /* renamed from: c1 */
    @StyleRes
    public int f31176c1;

    /* renamed from: d1 */
    @Nullable
    public DateSelector<S> f31177d1;

    /* renamed from: e1 */
    @Nullable
    public CalendarConstraints f31178e1;

    /* renamed from: com.google.android.material.datepicker.MaterialTextInputPicker$a */
    /* loaded from: classes6.dex */
    public class C5253a extends OnSelectionChangedListener<S> {
        public C5253a() {
        }

        @Override // com.google.android.material.datepicker.OnSelectionChangedListener
        public void onIncompleteSelectionChanged() {
            Iterator<OnSelectionChangedListener<S>> it2 = MaterialTextInputPicker.this.onSelectionChangedListeners.iterator();
            while (it2.hasNext()) {
                it2.next().onIncompleteSelectionChanged();
            }
        }

        @Override // com.google.android.material.datepicker.OnSelectionChangedListener
        public void onSelectionChanged(S s) {
            Iterator<OnSelectionChangedListener<S>> it2 = MaterialTextInputPicker.this.onSelectionChangedListeners.iterator();
            while (it2.hasNext()) {
                it2.next().onSelectionChanged(s);
            }
        }
    }

    @NonNull
    /* renamed from: m0 */
    public static <T> MaterialTextInputPicker<T> m23981m0(DateSelector<T> dateSelector, @StyleRes int i, @NonNull CalendarConstraints calendarConstraints) {
        MaterialTextInputPicker<T> materialTextInputPicker = new MaterialTextInputPicker<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("DATE_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        materialTextInputPicker.setArguments(bundle);
        return materialTextInputPicker;
    }

    @Override // com.google.android.material.datepicker.AbstractC5264c
    @NonNull
    public DateSelector<S> getDateSelector() {
        DateSelector<S> dateSelector = this.f31177d1;
        if (dateSelector != null) {
            return dateSelector;
        }
        throw new IllegalStateException("dateSelector should not be null. Use MaterialTextInputPicker#newInstance() to create this fragment with a DateSelector, and call this method after the fragment has been created.");
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f31176c1 = bundle.getInt("THEME_RES_ID_KEY");
        this.f31177d1 = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f31178e1 = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return this.f31177d1.onCreateTextInputView(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f31176c1)), viewGroup, bundle, this.f31178e1, new C5253a());
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f31176c1);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f31177d1);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f31178e1);
    }
}
