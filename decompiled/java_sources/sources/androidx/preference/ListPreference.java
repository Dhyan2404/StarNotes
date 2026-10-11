package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import androidx.preference.Preference;

/* loaded from: classes3.dex */
public class ListPreference extends DialogPreference {

    /* renamed from: U0 */
    public static final String f8719U0 = "ListPreference";

    /* renamed from: P0 */
    public CharSequence[] f8720P0;

    /* renamed from: Q0 */
    public CharSequence[] f8721Q0;

    /* renamed from: R0 */
    public String f8722R0;

    /* renamed from: S0 */
    public String f8723S0;

    /* renamed from: T0 */
    public boolean f8724T0;

    /* loaded from: classes3.dex */
    public static final class SimpleSummaryProvider implements Preference.SummaryProvider<ListPreference> {

        /* renamed from: a */
        public static SimpleSummaryProvider f8725a;

        public static SimpleSummaryProvider getInstance() {
            if (f8725a == null) {
                f8725a = new SimpleSummaryProvider();
            }
            return f8725a;
        }

        @Override // androidx.preference.Preference.SummaryProvider
        public CharSequence provideSummary(ListPreference listPreference) {
            if (TextUtils.isEmpty(listPreference.getEntry())) {
                return listPreference.getContext().getString(C1271R.string.not_set);
            }
            return listPreference.getEntry();
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1271R.styleable.ListPreference, i, i2);
        this.f8720P0 = TypedArrayUtils.getTextArray(obtainStyledAttributes, C1271R.styleable.ListPreference_entries, C1271R.styleable.ListPreference_android_entries);
        this.f8721Q0 = TypedArrayUtils.getTextArray(obtainStyledAttributes, C1271R.styleable.ListPreference_entryValues, C1271R.styleable.ListPreference_android_entryValues);
        int i3 = C1271R.styleable.ListPreference_useSimpleSummaryProvider;
        if (TypedArrayUtils.getBoolean(obtainStyledAttributes, i3, i3, false)) {
            setSummaryProvider(SimpleSummaryProvider.getInstance());
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, C1271R.styleable.Preference, i, i2);
        this.f8723S0 = TypedArrayUtils.getString(obtainStyledAttributes2, C1271R.styleable.Preference_summary, C1271R.styleable.Preference_android_summary);
        obtainStyledAttributes2.recycle();
    }

    public int findIndexOfValue(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.f8721Q0) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (this.f8721Q0[length].equals(str)) {
                return length;
            }
        }
        return -1;
    }

    public CharSequence[] getEntries() {
        return this.f8720P0;
    }

    public CharSequence getEntry() {
        CharSequence[] charSequenceArr;
        int m5272o = m5272o();
        if (m5272o < 0 || (charSequenceArr = this.f8720P0) == null) {
            return null;
        }
        return charSequenceArr[m5272o];
    }

    public CharSequence[] getEntryValues() {
        return this.f8721Q0;
    }

    @Override // androidx.preference.Preference
    public CharSequence getSummary() {
        if (getSummaryProvider() != null) {
            return getSummaryProvider().provideSummary(this);
        }
        CharSequence entry = getEntry();
        CharSequence summary = super.getSummary();
        String str = this.f8723S0;
        if (str == null) {
            return summary;
        }
        Object[] objArr = new Object[1];
        if (entry == null) {
            entry = "";
        }
        objArr[0] = entry;
        String format = String.format(str, objArr);
        if (TextUtils.equals(format, summary)) {
            return summary;
        }
        Log.w(f8719U0, "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
        return format;
    }

    public String getValue() {
        return this.f8722R0;
    }

    /* renamed from: o */
    public final int m5272o() {
        return findIndexOfValue(this.f8722R0);
    }

    @Override // androidx.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setValue(savedState.mValue);
    }

    @Override // androidx.preference.Preference
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        SavedState savedState = new SavedState(onSaveInstanceState);
        savedState.mValue = getValue();
        return savedState;
    }

    @Override // androidx.preference.Preference
    public void onSetInitialValue(Object obj) {
        setValue(getPersistedString((String) obj));
    }

    public void setEntries(CharSequence[] charSequenceArr) {
        this.f8720P0 = charSequenceArr;
    }

    public void setEntryValues(CharSequence[] charSequenceArr) {
        this.f8721Q0 = charSequenceArr;
    }

    @Override // androidx.preference.Preference
    public void setSummary(CharSequence charSequence) {
        super.setSummary(charSequence);
        if (charSequence == null && this.f8723S0 != null) {
            this.f8723S0 = null;
        } else {
            if (charSequence == null || charSequence.equals(this.f8723S0)) {
                return;
            }
            this.f8723S0 = charSequence.toString();
        }
    }

    public void setValue(String str) {
        boolean z = !TextUtils.equals(this.f8722R0, str);
        if (z || !this.f8724T0) {
            this.f8722R0 = str;
            this.f8724T0 = true;
            persistString(str);
            if (z) {
                notifyChanged();
            }
        }
    }

    public void setValueIndex(int i) {
        CharSequence[] charSequenceArr = this.f8721Q0;
        if (charSequenceArr != null) {
            setValue(charSequenceArr[i].toString());
        }
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1244a();
        String mValue;

        /* renamed from: androidx.preference.ListPreference$SavedState$a */
        /* loaded from: classes3.dex */
        public static class C1244a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.mValue = parcel.readString();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.mValue);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public void setEntries(@ArrayRes int i) {
        setEntries(getContext().getResources().getTextArray(i));
    }

    public void setEntryValues(@ArrayRes int i) {
        setEntryValues(getContext().getResources().getTextArray(i));
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.getAttr(context, C1271R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle));
    }

    public ListPreference(Context context) {
        this(context, null);
    }
}
