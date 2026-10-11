package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.preference.Preference;

/* loaded from: classes3.dex */
public class SeekBarPreference extends Preference {

    /* renamed from: V0 */
    public static final String f8940V0 = "SeekBarPreference";

    /* renamed from: J0 */
    public int f8941J0;

    /* renamed from: K0 */
    public int f8942K0;

    /* renamed from: L0 */
    public int f8943L0;

    /* renamed from: M0 */
    public int f8944M0;

    /* renamed from: N0 */
    public boolean f8945N0;

    /* renamed from: O0 */
    public SeekBar f8946O0;

    /* renamed from: P0 */
    public TextView f8947P0;

    /* renamed from: Q0 */
    public boolean f8948Q0;

    /* renamed from: R0 */
    public boolean f8949R0;

    /* renamed from: S0 */
    public boolean f8950S0;

    /* renamed from: T0 */
    public SeekBar.OnSeekBarChangeListener f8951T0;

    /* renamed from: U0 */
    public View.OnKeyListener f8952U0;

    /* renamed from: androidx.preference.SeekBarPreference$a */
    /* loaded from: classes3.dex */
    public class C1273a implements SeekBar.OnSeekBarChangeListener {
        public C1273a() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                SeekBarPreference seekBarPreference = SeekBarPreference.this;
                if (seekBarPreference.f8950S0 || !seekBarPreference.f8945N0) {
                    seekBarPreference.m5335p(seekBar);
                    return;
                }
            }
            SeekBarPreference seekBarPreference2 = SeekBarPreference.this;
            seekBarPreference2.m5336q(i + seekBarPreference2.f8942K0);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            SeekBarPreference.this.f8945N0 = true;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            SeekBarPreference.this.f8945N0 = false;
            int progress = seekBar.getProgress();
            SeekBarPreference seekBarPreference = SeekBarPreference.this;
            if (progress + seekBarPreference.f8942K0 != seekBarPreference.f8941J0) {
                seekBarPreference.m5335p(seekBar);
            }
        }
    }

    /* renamed from: androidx.preference.SeekBarPreference$b */
    /* loaded from: classes3.dex */
    public class ViewOnKeyListenerC1274b implements View.OnKeyListener {
        public ViewOnKeyListenerC1274b() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (keyEvent.getAction() != 0) {
                return false;
            }
            SeekBarPreference seekBarPreference = SeekBarPreference.this;
            if ((!seekBarPreference.f8948Q0 && (i == 21 || i == 22)) || i == 23 || i == 66) {
                return false;
            }
            SeekBar seekBar = seekBarPreference.f8946O0;
            if (seekBar != null) {
                return seekBar.onKeyDown(i, keyEvent);
            }
            Log.e(SeekBarPreference.f8940V0, "SeekBar view is null and hence cannot be adjusted.");
            return false;
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f8951T0 = new C1273a();
        this.f8952U0 = new ViewOnKeyListenerC1274b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1271R.styleable.SeekBarPreference, i, i2);
        this.f8942K0 = obtainStyledAttributes.getInt(C1271R.styleable.SeekBarPreference_min, 0);
        setMax(obtainStyledAttributes.getInt(C1271R.styleable.SeekBarPreference_android_max, 100));
        setSeekBarIncrement(obtainStyledAttributes.getInt(C1271R.styleable.SeekBarPreference_seekBarIncrement, 0));
        this.f8948Q0 = obtainStyledAttributes.getBoolean(C1271R.styleable.SeekBarPreference_adjustable, true);
        this.f8949R0 = obtainStyledAttributes.getBoolean(C1271R.styleable.SeekBarPreference_showSeekBarValue, false);
        this.f8950S0 = obtainStyledAttributes.getBoolean(C1271R.styleable.SeekBarPreference_updatesContinuously, false);
        obtainStyledAttributes.recycle();
    }

    public int getMax() {
        return this.f8943L0;
    }

    public int getMin() {
        return this.f8942K0;
    }

    public final int getSeekBarIncrement() {
        return this.f8944M0;
    }

    public boolean getShowSeekBarValue() {
        return this.f8949R0;
    }

    public boolean getUpdatesContinuously() {
        return this.f8950S0;
    }

    public int getValue() {
        return this.f8941J0;
    }

    public boolean isAdjustable() {
        return this.f8948Q0;
    }

    /* renamed from: o */
    public final void m5334o(int i, boolean z) {
        int i2 = this.f8942K0;
        if (i < i2) {
            i = i2;
        }
        int i3 = this.f8943L0;
        if (i > i3) {
            i = i3;
        }
        if (i != this.f8941J0) {
            this.f8941J0 = i;
            m5336q(i);
            persistInt(i);
            if (z) {
                notifyChanged();
            }
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        preferenceViewHolder.itemView.setOnKeyListener(this.f8952U0);
        this.f8946O0 = (SeekBar) preferenceViewHolder.findViewById(C1271R.id.seekbar);
        TextView textView = (TextView) preferenceViewHolder.findViewById(C1271R.id.seekbar_value);
        this.f8947P0 = textView;
        if (this.f8949R0) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
            this.f8947P0 = null;
        }
        SeekBar seekBar = this.f8946O0;
        if (seekBar == null) {
            Log.e(f8940V0, "SeekBar view is null in onBindViewHolder.");
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.f8951T0);
        this.f8946O0.setMax(this.f8943L0 - this.f8942K0);
        int i = this.f8944M0;
        if (i != 0) {
            this.f8946O0.setKeyProgressIncrement(i);
        } else {
            this.f8944M0 = this.f8946O0.getKeyProgressIncrement();
        }
        this.f8946O0.setProgress(this.f8941J0 - this.f8942K0);
        m5336q(this.f8941J0);
        this.f8946O0.setEnabled(isEnabled());
    }

    @Override // androidx.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    @Override // androidx.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f8941J0 = savedState.mSeekBarValue;
        this.f8942K0 = savedState.mMin;
        this.f8943L0 = savedState.mMax;
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        SavedState savedState = new SavedState(onSaveInstanceState);
        savedState.mSeekBarValue = this.f8941J0;
        savedState.mMin = this.f8942K0;
        savedState.mMax = this.f8943L0;
        return savedState;
    }

    @Override // androidx.preference.Preference
    public void onSetInitialValue(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        setValue(getPersistedInt(((Integer) obj).intValue()));
    }

    /* renamed from: p */
    public void m5335p(SeekBar seekBar) {
        int progress = this.f8942K0 + seekBar.getProgress();
        if (progress != this.f8941J0) {
            if (callChangeListener(Integer.valueOf(progress))) {
                m5334o(progress, false);
            } else {
                seekBar.setProgress(this.f8941J0 - this.f8942K0);
                m5336q(this.f8941J0);
            }
        }
    }

    /* renamed from: q */
    public void m5336q(int i) {
        TextView textView = this.f8947P0;
        if (textView != null) {
            textView.setText(String.valueOf(i));
        }
    }

    public void setAdjustable(boolean z) {
        this.f8948Q0 = z;
    }

    public final void setMax(int i) {
        int i2 = this.f8942K0;
        if (i < i2) {
            i = i2;
        }
        if (i != this.f8943L0) {
            this.f8943L0 = i;
            notifyChanged();
        }
    }

    public void setMin(int i) {
        int i2 = this.f8943L0;
        if (i > i2) {
            i = i2;
        }
        if (i != this.f8942K0) {
            this.f8942K0 = i;
            notifyChanged();
        }
    }

    public final void setSeekBarIncrement(int i) {
        if (i != this.f8944M0) {
            this.f8944M0 = Math.min(this.f8943L0 - this.f8942K0, Math.abs(i));
            notifyChanged();
        }
    }

    public void setShowSeekBarValue(boolean z) {
        this.f8949R0 = z;
        notifyChanged();
    }

    public void setUpdatesContinuously(boolean z) {
        this.f8950S0 = z;
    }

    public void setValue(int i) {
        m5334o(i, true);
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1272a();
        int mMax;
        int mMin;
        int mSeekBarValue;

        /* renamed from: androidx.preference.SeekBarPreference$SavedState$a */
        /* loaded from: classes3.dex */
        public static class C1272a implements Parcelable.Creator<SavedState> {
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
            this.mSeekBarValue = parcel.readInt();
            this.mMin = parcel.readInt();
            this.mMax = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mSeekBarValue);
            parcel.writeInt(this.mMin);
            parcel.writeInt(this.mMax);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1271R.attr.seekBarPreferenceStyle);
    }

    public SeekBarPreference(Context context) {
        this(context, null);
    }
}
