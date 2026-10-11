package androidx.preference;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

@Deprecated
/* loaded from: classes3.dex */
public class MultiSelectListPreferenceDialogFragment extends PreferenceDialogFragment {

    /* renamed from: w */
    public static final String f8743w = "MultiSelectListPreferenceDialogFragment.values";

    /* renamed from: x */
    public static final String f8744x = "MultiSelectListPreferenceDialogFragment.changed";

    /* renamed from: y */
    public static final String f8745y = "MultiSelectListPreferenceDialogFragment.entries";

    /* renamed from: z */
    public static final String f8746z = "MultiSelectListPreferenceDialogFragment.entryValues";

    /* renamed from: s */
    public Set<String> f8747s = new HashSet();

    /* renamed from: t */
    public boolean f8748t;

    /* renamed from: u */
    public CharSequence[] f8749u;

    /* renamed from: v */
    public CharSequence[] f8750v;

    /* renamed from: androidx.preference.MultiSelectListPreferenceDialogFragment$a */
    /* loaded from: classes3.dex */
    public class DialogInterfaceOnMultiChoiceClickListenerC1248a implements DialogInterface.OnMultiChoiceClickListener {
        public DialogInterfaceOnMultiChoiceClickListenerC1248a() {
        }

        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
        public void onClick(DialogInterface dialogInterface, int i, boolean z) {
            if (z) {
                MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment = MultiSelectListPreferenceDialogFragment.this;
                multiSelectListPreferenceDialogFragment.f8748t |= multiSelectListPreferenceDialogFragment.f8747s.add(multiSelectListPreferenceDialogFragment.f8750v[i].toString());
            } else {
                MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment2 = MultiSelectListPreferenceDialogFragment.this;
                multiSelectListPreferenceDialogFragment2.f8748t |= multiSelectListPreferenceDialogFragment2.f8747s.remove(multiSelectListPreferenceDialogFragment2.f8750v[i].toString());
            }
        }
    }

    @Deprecated
    public MultiSelectListPreferenceDialogFragment() {
    }

    @Deprecated
    public static MultiSelectListPreferenceDialogFragment newInstance(String str) {
        MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment = new MultiSelectListPreferenceDialogFragment();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        multiSelectListPreferenceDialogFragment.setArguments(bundle);
        return multiSelectListPreferenceDialogFragment;
    }

    /* renamed from: b */
    public final MultiSelectListPreference m5279b() {
        return (MultiSelectListPreference) getPreference();
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f8747s.clear();
            this.f8747s.addAll(bundle.getStringArrayList(f8743w));
            this.f8748t = bundle.getBoolean(f8744x, false);
            this.f8749u = bundle.getCharSequenceArray(f8745y);
            this.f8750v = bundle.getCharSequenceArray(f8746z);
            return;
        }
        MultiSelectListPreference m5279b = m5279b();
        if (m5279b.getEntries() == null || m5279b.getEntryValues() == null) {
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        this.f8747s.clear();
        this.f8747s.addAll(m5279b.getValues());
        this.f8748t = false;
        this.f8749u = m5279b.getEntries();
        this.f8750v = m5279b.getEntryValues();
    }

    @Override // androidx.preference.PreferenceDialogFragment
    @Deprecated
    public void onDialogClosed(boolean z) {
        MultiSelectListPreference m5279b = m5279b();
        if (z && this.f8748t) {
            Set<String> set = this.f8747s;
            if (m5279b.callChangeListener(set)) {
                m5279b.setValues(set);
            }
        }
        this.f8748t = false;
    }

    @Override // androidx.preference.PreferenceDialogFragment
    public void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        int length = this.f8750v.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = this.f8747s.contains(this.f8750v[i].toString());
        }
        builder.setMultiChoiceItems(this.f8749u, zArr, new DialogInterfaceOnMultiChoiceClickListenerC1248a());
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList(f8743w, new ArrayList<>(this.f8747s));
        bundle.putBoolean(f8744x, this.f8748t);
        bundle.putCharSequenceArray(f8745y, this.f8749u);
        bundle.putCharSequenceArray(f8746z, this.f8750v);
    }
}
