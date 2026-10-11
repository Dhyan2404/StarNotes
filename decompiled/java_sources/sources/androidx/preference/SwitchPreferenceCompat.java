package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.content.res.TypedArrayUtils;

/* loaded from: classes3.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {

    /* renamed from: N0 */
    public final C1276a f8959N0;

    /* renamed from: O0 */
    public CharSequence f8960O0;

    /* renamed from: P0 */
    public CharSequence f8961P0;

    /* renamed from: androidx.preference.SwitchPreferenceCompat$a */
    /* loaded from: classes3.dex */
    public class C1276a implements CompoundButton.OnCheckedChangeListener {
        public C1276a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (SwitchPreferenceCompat.this.callChangeListener(Boolean.valueOf(z))) {
                SwitchPreferenceCompat.this.setChecked(z);
            } else {
                compoundButton.setChecked(!z);
            }
        }
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f8959N0 = new C1276a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1271R.styleable.SwitchPreferenceCompat, i, i2);
        setSummaryOn(TypedArrayUtils.getString(obtainStyledAttributes, C1271R.styleable.SwitchPreferenceCompat_summaryOn, C1271R.styleable.SwitchPreferenceCompat_android_summaryOn));
        setSummaryOff(TypedArrayUtils.getString(obtainStyledAttributes, C1271R.styleable.SwitchPreferenceCompat_summaryOff, C1271R.styleable.SwitchPreferenceCompat_android_summaryOff));
        setSwitchTextOn(TypedArrayUtils.getString(obtainStyledAttributes, C1271R.styleable.SwitchPreferenceCompat_switchTextOn, C1271R.styleable.SwitchPreferenceCompat_android_switchTextOn));
        setSwitchTextOff(TypedArrayUtils.getString(obtainStyledAttributes, C1271R.styleable.SwitchPreferenceCompat_switchTextOff, C1271R.styleable.SwitchPreferenceCompat_android_switchTextOff));
        setDisableDependentsState(TypedArrayUtils.getBoolean(obtainStyledAttributes, C1271R.styleable.SwitchPreferenceCompat_disableDependentsState, C1271R.styleable.SwitchPreferenceCompat_android_disableDependentsState, false));
        obtainStyledAttributes.recycle();
    }

    public CharSequence getSwitchTextOff() {
        return this.f8961P0;
    }

    public CharSequence getSwitchTextOn() {
        return this.f8960O0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: o */
    public final void m5341o(View view) {
        boolean z = view instanceof SwitchCompat;
        if (z) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.setTextOn(this.f8960O0);
            switchCompat.setTextOff(this.f8961P0);
            switchCompat.setOnCheckedChangeListener(this.f8959N0);
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        m5341o(preferenceViewHolder.findViewById(C1271R.id.switchWidget));
        syncSummaryView(preferenceViewHolder);
    }

    /* renamed from: p */
    public final void m5342p(View view) {
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            m5341o(view.findViewById(C1271R.id.switchWidget));
            syncSummaryView(view.findViewById(android.R.id.summary));
        }
    }

    @Override // androidx.preference.Preference
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void performClick(View view) {
        super.performClick(view);
        m5342p(view);
    }

    public void setSwitchTextOff(CharSequence charSequence) {
        this.f8961P0 = charSequence;
        notifyChanged();
    }

    public void setSwitchTextOn(CharSequence charSequence) {
        this.f8960O0 = charSequence;
        notifyChanged();
    }

    public void setSwitchTextOff(int i) {
        setSwitchTextOff(getContext().getString(i));
    }

    public void setSwitchTextOn(int i) {
        setSwitchTextOn(getContext().getString(i));
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1271R.attr.switchPreferenceCompatStyle);
    }

    public SwitchPreferenceCompat(Context context) {
        this(context, null);
    }
}
