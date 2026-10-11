package androidx.preference;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public class MultiSelectListPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {

    /* renamed from: R1 */
    public static final String f8752R1 = "MultiSelectListPreferenceDialogFragmentCompat.values";

    /* renamed from: S1 */
    public static final String f8753S1 = "MultiSelectListPreferenceDialogFragmentCompat.changed";

    /* renamed from: T1 */
    public static final String f8754T1 = "MultiSelectListPreferenceDialogFragmentCompat.entries";

    /* renamed from: U1 */
    public static final String f8755U1 = "MultiSelectListPreferenceDialogFragmentCompat.entryValues";

    /* renamed from: N1 */
    public Set<String> f8756N1 = new HashSet();

    /* renamed from: O1 */
    public boolean f8757O1;

    /* renamed from: P1 */
    public CharSequence[] f8758P1;

    /* renamed from: Q1 */
    public CharSequence[] f8759Q1;

    /* renamed from: androidx.preference.MultiSelectListPreferenceDialogFragmentCompat$a */
    /* loaded from: classes3.dex */
    public class DialogInterfaceOnMultiChoiceClickListenerC1249a implements DialogInterface.OnMultiChoiceClickListener {
        public DialogInterfaceOnMultiChoiceClickListenerC1249a() {
        }

        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
        public void onClick(DialogInterface dialogInterface, int i, boolean z) {
            if (z) {
                MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat = MultiSelectListPreferenceDialogFragmentCompat.this;
                multiSelectListPreferenceDialogFragmentCompat.f8757O1 |= multiSelectListPreferenceDialogFragmentCompat.f8756N1.add(multiSelectListPreferenceDialogFragmentCompat.f8759Q1[i].toString());
            } else {
                MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat2 = MultiSelectListPreferenceDialogFragmentCompat.this;
                multiSelectListPreferenceDialogFragmentCompat2.f8757O1 |= multiSelectListPreferenceDialogFragmentCompat2.f8756N1.remove(multiSelectListPreferenceDialogFragmentCompat2.f8759Q1[i].toString());
            }
        }
    }

    public static MultiSelectListPreferenceDialogFragmentCompat newInstance(String str) {
        MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat = new MultiSelectListPreferenceDialogFragmentCompat();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle);
        return multiSelectListPreferenceDialogFragmentCompat;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f8756N1.clear();
            this.f8756N1.addAll(bundle.getStringArrayList(f8752R1));
            this.f8757O1 = bundle.getBoolean(f8753S1, false);
            this.f8758P1 = bundle.getCharSequenceArray(f8754T1);
            this.f8759Q1 = bundle.getCharSequenceArray(f8755U1);
            return;
        }
        MultiSelectListPreference m5280s0 = m5280s0();
        if (m5280s0.getEntries() == null || m5280s0.getEntryValues() == null) {
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        this.f8756N1.clear();
        this.f8756N1.addAll(m5280s0.getValues());
        this.f8757O1 = false;
        this.f8758P1 = m5280s0.getEntries();
        this.f8759Q1 = m5280s0.getEntryValues();
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public void onDialogClosed(boolean z) {
        if (z && this.f8757O1) {
            MultiSelectListPreference m5280s0 = m5280s0();
            if (m5280s0.callChangeListener(this.f8756N1)) {
                m5280s0.setValues(this.f8756N1);
            }
        }
        this.f8757O1 = false;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        int length = this.f8759Q1.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = this.f8756N1.contains(this.f8759Q1[i].toString());
        }
        builder.setMultiChoiceItems(this.f8758P1, zArr, new DialogInterfaceOnMultiChoiceClickListenerC1249a());
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList(f8752R1, new ArrayList<>(this.f8756N1));
        bundle.putBoolean(f8753S1, this.f8757O1);
        bundle.putCharSequenceArray(f8754T1, this.f8758P1);
        bundle.putCharSequenceArray(f8755U1, this.f8759Q1);
    }

    /* renamed from: s0 */
    public final MultiSelectListPreference m5280s0() {
        return (MultiSelectListPreference) getPreference();
    }
}
