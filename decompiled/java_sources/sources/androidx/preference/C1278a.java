package androidx.preference;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* renamed from: androidx.preference.a */
/* loaded from: classes3.dex */
public final class C1278a extends Preference {

    /* renamed from: J0 */
    public long f8967J0;

    public C1278a(Context context, List<Preference> list, long j) {
        super(context);
        m5345o();
        m5346p(list);
        this.f8967J0 = j + 1000000;
    }

    @Override // androidx.preference.Preference
    /* renamed from: e */
    public long mo5285e() {
        return this.f8967J0;
    }

    /* renamed from: o */
    public final void m5345o() {
        setLayoutResource(C1271R.layout.expand_button);
        setIcon(C1271R.drawable.ic_arrow_down_24dp);
        setTitle(C1271R.string.expand_button_title);
        setOrder(999);
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        preferenceViewHolder.setDividerAllowedAbove(false);
    }

    /* renamed from: p */
    public final void m5346p(List<Preference> list) {
        ArrayList arrayList = new ArrayList();
        CharSequence charSequence = null;
        for (Preference preference : list) {
            CharSequence title = preference.getTitle();
            boolean z = preference instanceof PreferenceGroup;
            if (z && !TextUtils.isEmpty(title)) {
                arrayList.add((PreferenceGroup) preference);
            }
            if (arrayList.contains(preference.getParent())) {
                if (z) {
                    arrayList.add((PreferenceGroup) preference);
                }
            } else if (!TextUtils.isEmpty(title)) {
                charSequence = charSequence == null ? title : getContext().getString(C1271R.string.summary_collapsed_preference_list, charSequence, title);
            }
        }
        setSummary(charSequence);
    }
}
