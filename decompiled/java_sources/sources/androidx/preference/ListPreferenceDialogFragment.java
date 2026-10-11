package androidx.preference;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;

@Deprecated
/* loaded from: classes3.dex */
public class ListPreferenceDialogFragment extends PreferenceDialogFragment {

    /* renamed from: v */
    public static final String f8726v = "ListPreferenceDialogFragment.index";

    /* renamed from: w */
    public static final String f8727w = "ListPreferenceDialogFragment.entries";

    /* renamed from: x */
    public static final String f8728x = "ListPreferenceDialogFragment.entryValues";

    /* renamed from: s */
    public int f8729s;

    /* renamed from: t */
    public CharSequence[] f8730t;

    /* renamed from: u */
    public CharSequence[] f8731u;

    /* renamed from: androidx.preference.ListPreferenceDialogFragment$a */
    /* loaded from: classes3.dex */
    public class DialogInterfaceOnClickListenerC1245a implements DialogInterface.OnClickListener {
        public DialogInterfaceOnClickListenerC1245a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ListPreferenceDialogFragment listPreferenceDialogFragment = ListPreferenceDialogFragment.this;
            listPreferenceDialogFragment.f8729s = i;
            listPreferenceDialogFragment.onClick(dialogInterface, -1);
            dialogInterface.dismiss();
        }
    }

    @Deprecated
    public ListPreferenceDialogFragment() {
    }

    @Deprecated
    public static ListPreferenceDialogFragment newInstance(String str) {
        ListPreferenceDialogFragment listPreferenceDialogFragment = new ListPreferenceDialogFragment();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        listPreferenceDialogFragment.setArguments(bundle);
        return listPreferenceDialogFragment;
    }

    /* renamed from: b */
    public final ListPreference m5275b() {
        return (ListPreference) getPreference();
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f8729s = bundle.getInt("ListPreferenceDialogFragment.index", 0);
            this.f8730t = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
            this.f8731u = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
            return;
        }
        ListPreference m5275b = m5275b();
        if (m5275b.getEntries() == null || m5275b.getEntryValues() == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.f8729s = m5275b.findIndexOfValue(m5275b.getValue());
        this.f8730t = m5275b.getEntries();
        this.f8731u = m5275b.getEntryValues();
    }

    @Override // androidx.preference.PreferenceDialogFragment
    @Deprecated
    public void onDialogClosed(boolean z) {
        int i;
        ListPreference m5275b = m5275b();
        if (!z || (i = this.f8729s) < 0) {
            return;
        }
        String charSequence = this.f8731u[i].toString();
        if (m5275b.callChangeListener(charSequence)) {
            m5275b.setValue(charSequence);
        }
    }

    @Override // androidx.preference.PreferenceDialogFragment
    public void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        builder.setSingleChoiceItems(this.f8730t, this.f8729s, new DialogInterfaceOnClickListenerC1245a());
        builder.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.f8729s);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.f8730t);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.f8731u);
    }
}
