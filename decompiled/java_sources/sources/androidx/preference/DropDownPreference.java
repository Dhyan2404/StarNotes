package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public class DropDownPreference extends ListPreference {

    /* renamed from: V0 */
    public final Context f8705V0;

    /* renamed from: W0 */
    public final ArrayAdapter f8706W0;

    /* renamed from: X0 */
    public Spinner f8707X0;

    /* renamed from: Y0 */
    public final AdapterView.OnItemSelectedListener f8708Y0;

    /* renamed from: androidx.preference.DropDownPreference$a */
    /* loaded from: classes3.dex */
    public class C1242a implements AdapterView.OnItemSelectedListener {
        public C1242a() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i >= 0) {
                String charSequence = DropDownPreference.this.getEntryValues()[i].toString();
                if (charSequence.equals(DropDownPreference.this.getValue()) || !DropDownPreference.this.callChangeListener(charSequence)) {
                    return;
                }
                DropDownPreference.this.setValue(charSequence);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public DropDownPreference(Context context) {
        this(context, null);
    }

    public ArrayAdapter createAdapter() {
        return new ArrayAdapter(this.f8705V0, android.R.layout.simple_spinner_dropdown_item);
    }

    @Override // androidx.preference.Preference
    public void notifyChanged() {
        super.notifyChanged();
        ArrayAdapter arrayAdapter = this.f8706W0;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        Spinner spinner = (Spinner) preferenceViewHolder.itemView.findViewById(C1271R.id.spinner);
        this.f8707X0 = spinner;
        spinner.setAdapter((SpinnerAdapter) this.f8706W0);
        this.f8707X0.setOnItemSelectedListener(this.f8708Y0);
        this.f8707X0.setSelection(m5265p(getValue()));
        super.onBindViewHolder(preferenceViewHolder);
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    public void onClick() {
        this.f8707X0.performClick();
    }

    /* renamed from: p */
    public final int m5265p(String str) {
        CharSequence[] entryValues = getEntryValues();
        if (str == null || entryValues == null) {
            return -1;
        }
        for (int length = entryValues.length - 1; length >= 0; length--) {
            if (entryValues[length].equals(str)) {
                return length;
            }
        }
        return -1;
    }

    /* renamed from: q */
    public final void m5266q() {
        this.f8706W0.clear();
        if (getEntries() != null) {
            for (CharSequence charSequence : getEntries()) {
                this.f8706W0.add(charSequence.toString());
            }
        }
    }

    @Override // androidx.preference.ListPreference
    public void setEntries(@NonNull CharSequence[] charSequenceArr) {
        super.setEntries(charSequenceArr);
        m5266q();
    }

    @Override // androidx.preference.ListPreference
    public void setValueIndex(int i) {
        setValue(getEntryValues()[i].toString());
    }

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1271R.attr.dropdownPreferenceStyle);
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f8708Y0 = new C1242a();
        this.f8705V0 = context;
        this.f8706W0 = createAdapter();
        m5266q();
    }
}
