package androidx.preference;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;

/* loaded from: classes3.dex */
public class ListPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {

    /* renamed from: Q1 */
    public static final String f8733Q1 = "ListPreferenceDialogFragment.index";

    /* renamed from: R1 */
    public static final String f8734R1 = "ListPreferenceDialogFragment.entries";

    /* renamed from: S1 */
    public static final String f8735S1 = "ListPreferenceDialogFragment.entryValues";

    /* renamed from: N1 */
    public int f8736N1;

    /* renamed from: O1 */
    public CharSequence[] f8737O1;

    /* renamed from: P1 */
    public CharSequence[] f8738P1;

    /* renamed from: androidx.preference.ListPreferenceDialogFragmentCompat$a */
    /* loaded from: classes3.dex */
    public class DialogInterfaceOnClickListenerC1246a implements DialogInterface.OnClickListener {
        public DialogInterfaceOnClickListenerC1246a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ListPreferenceDialogFragmentCompat listPreferenceDialogFragmentCompat = ListPreferenceDialogFragmentCompat.this;
            listPreferenceDialogFragmentCompat.f8736N1 = i;
            listPreferenceDialogFragmentCompat.onClick(dialogInterface, -1);
            dialogInterface.dismiss();
        }
    }

    public static ListPreferenceDialogFragmentCompat newInstance(String str) {
        ListPreferenceDialogFragmentCompat listPreferenceDialogFragmentCompat = new ListPreferenceDialogFragmentCompat();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        listPreferenceDialogFragmentCompat.setArguments(bundle);
        return listPreferenceDialogFragmentCompat;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f8736N1 = bundle.getInt("ListPreferenceDialogFragment.index", 0);
            this.f8737O1 = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
            this.f8738P1 = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
            return;
        }
        ListPreference m5276s0 = m5276s0();
        if (m5276s0.getEntries() == null || m5276s0.getEntryValues() == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.f8736N1 = m5276s0.findIndexOfValue(m5276s0.getValue());
        this.f8737O1 = m5276s0.getEntries();
        this.f8738P1 = m5276s0.getEntryValues();
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public void onDialogClosed(boolean z) {
        int i;
        if (!z || (i = this.f8736N1) < 0) {
            return;
        }
        String charSequence = this.f8738P1[i].toString();
        ListPreference m5276s0 = m5276s0();
        if (m5276s0.callChangeListener(charSequence)) {
            m5276s0.setValue(charSequence);
        }
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        builder.setSingleChoiceItems(this.f8737O1, this.f8736N1, new DialogInterfaceOnClickListenerC1246a());
        builder.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.f8736N1);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.f8737O1);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.f8738P1);
    }

    /* renamed from: s0 */
    public final ListPreference m5276s0() {
        return (ListPreference) getPreference();
    }
}
