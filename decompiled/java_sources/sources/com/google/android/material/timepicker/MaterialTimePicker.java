package com.google.android.material.timepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.C5139R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.timepicker.MaterialTimePicker;
import com.google.android.material.timepicker.TimePickerView;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.ein;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes6.dex */
public final class MaterialTimePicker extends DialogFragment implements TimePickerView.InterfaceC5439d {
    public static final int INPUT_MODE_CLOCK = 0;
    public static final int INPUT_MODE_KEYBOARD = 1;

    /* renamed from: V1 */
    public static final String f32892V1 = "TIME_PICKER_TIME_MODEL";

    /* renamed from: W1 */
    public static final String f32893W1 = "TIME_PICKER_INPUT_MODE";

    /* renamed from: X1 */
    public static final String f32894X1 = "TIME_PICKER_TITLE_RES";

    /* renamed from: Y1 */
    public static final String f32895Y1 = "TIME_PICKER_TITLE_TEXT";

    /* renamed from: Z1 */
    public static final String f32896Z1 = "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES";

    /* renamed from: a2 */
    public static final String f32897a2 = "TIME_PICKER_POSITIVE_BUTTON_TEXT";

    /* renamed from: b2 */
    public static final String f32898b2 = "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES";

    /* renamed from: c2 */
    public static final String f32899c2 = "TIME_PICKER_NEGATIVE_BUTTON_TEXT";

    /* renamed from: d2 */
    public static final String f32900d2 = "TIME_PICKER_OVERRIDE_THEME_RES_ID";

    /* renamed from: D1 */
    public TimePickerView f32904D1;

    /* renamed from: E1 */
    public ViewStub f32905E1;

    /* renamed from: F1 */
    @Nullable
    public C5443b f32906F1;

    /* renamed from: G1 */
    @Nullable
    public C5445d f32907G1;

    /* renamed from: H1 */
    @Nullable
    public ein f32908H1;

    /* renamed from: I1 */
    @DrawableRes
    public int f32909I1;

    /* renamed from: J1 */
    @DrawableRes
    public int f32910J1;

    /* renamed from: L1 */
    public CharSequence f32912L1;

    /* renamed from: N1 */
    public CharSequence f32914N1;

    /* renamed from: P1 */
    public CharSequence f32916P1;

    /* renamed from: Q1 */
    public MaterialButton f32917Q1;

    /* renamed from: R1 */
    public Button f32918R1;

    /* renamed from: T1 */
    public TimeModel f32920T1;

    /* renamed from: z1 */
    public final Set<View.OnClickListener> f32922z1 = new LinkedHashSet();

    /* renamed from: A1 */
    public final Set<View.OnClickListener> f32901A1 = new LinkedHashSet();

    /* renamed from: B1 */
    public final Set<DialogInterface.OnCancelListener> f32902B1 = new LinkedHashSet();

    /* renamed from: C1 */
    public final Set<DialogInterface.OnDismissListener> f32903C1 = new LinkedHashSet();

    /* renamed from: K1 */
    @StringRes
    public int f32911K1 = 0;

    /* renamed from: M1 */
    @StringRes
    public int f32913M1 = 0;

    /* renamed from: O1 */
    @StringRes
    public int f32915O1 = 0;

    /* renamed from: S1 */
    public int f32919S1 = 0;

    /* renamed from: U1 */
    public int f32921U1 = 0;

    /* loaded from: classes6.dex */
    public static final class Builder {

        /* renamed from: b */
        @Nullable
        public Integer f32924b;

        /* renamed from: d */
        public CharSequence f32926d;

        /* renamed from: f */
        public CharSequence f32928f;

        /* renamed from: h */
        public CharSequence f32930h;

        /* renamed from: a */
        public TimeModel f32923a = new TimeModel();

        /* renamed from: c */
        @StringRes
        public int f32925c = 0;

        /* renamed from: e */
        @StringRes
        public int f32927e = 0;

        /* renamed from: g */
        @StringRes
        public int f32929g = 0;

        /* renamed from: i */
        public int f32931i = 0;

        @NonNull
        public MaterialTimePicker build() {
            return MaterialTimePicker.m25411E0(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setHour(@IntRange(from = 0, m281to = 23) int i) {
            this.f32923a.setHourOfDay(i);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setInputMode(int i) {
            this.f32924b = Integer.valueOf(i);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setMinute(@IntRange(from = 0, m281to = 59) int i) {
            this.f32923a.setMinute(i);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setNegativeButtonText(@StringRes int i) {
            this.f32929g = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setPositiveButtonText(@StringRes int i) {
            this.f32927e = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTheme(@StyleRes int i) {
            this.f32931i = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTimeFormat(int i) {
            TimeModel timeModel = this.f32923a;
            int i2 = timeModel.hour;
            int i3 = timeModel.minute;
            TimeModel timeModel2 = new TimeModel(i);
            this.f32923a = timeModel2;
            timeModel2.setMinute(i3);
            this.f32923a.setHourOfDay(i2);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTitleText(@StringRes int i) {
            this.f32925c = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setNegativeButtonText(@Nullable CharSequence charSequence) {
            this.f32930h = charSequence;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setPositiveButtonText(@Nullable CharSequence charSequence) {
            this.f32928f = charSequence;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTitleText(@Nullable CharSequence charSequence) {
            this.f32926d = charSequence;
            return this;
        }
    }

    /* renamed from: com.google.android.material.timepicker.MaterialTimePicker$a */
    /* loaded from: classes6.dex */
    public class ViewOnClickListenerC5432a implements View.OnClickListener {
        public ViewOnClickListenerC5432a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it2 = MaterialTimePicker.this.f32922z1.iterator();
            while (it2.hasNext()) {
                ((View.OnClickListener) it2.next()).onClick(view);
            }
            MaterialTimePicker.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.timepicker.MaterialTimePicker$b */
    /* loaded from: classes6.dex */
    public class ViewOnClickListenerC5433b implements View.OnClickListener {
        public ViewOnClickListenerC5433b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it2 = MaterialTimePicker.this.f32901A1.iterator();
            while (it2.hasNext()) {
                ((View.OnClickListener) it2.next()).onClick(view);
            }
            MaterialTimePicker.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.timepicker.MaterialTimePicker$c */
    /* loaded from: classes6.dex */
    public class ViewOnClickListenerC5434c implements View.OnClickListener {
        public ViewOnClickListenerC5434c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialTimePicker materialTimePicker = MaterialTimePicker.this;
            materialTimePicker.f32919S1 = materialTimePicker.f32919S1 == 0 ? 1 : 0;
            MaterialTimePicker materialTimePicker2 = MaterialTimePicker.this;
            materialTimePicker2.m25426I0(materialTimePicker2.f32917Q1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D0 */
    public /* synthetic */ void m25410D0() {
        ein einVar = this.f32908H1;
        if (einVar instanceof C5445d) {
            ((C5445d) einVar).m25486i();
        }
    }

    @NonNull
    /* renamed from: E0 */
    public static MaterialTimePicker m25411E0(@NonNull Builder builder) {
        MaterialTimePicker materialTimePicker = new MaterialTimePicker();
        Bundle bundle = new Bundle();
        bundle.putParcelable(f32892V1, builder.f32923a);
        if (builder.f32924b != null) {
            bundle.putInt(f32893W1, builder.f32924b.intValue());
        }
        bundle.putInt(f32894X1, builder.f32925c);
        if (builder.f32926d != null) {
            bundle.putCharSequence(f32895Y1, builder.f32926d);
        }
        bundle.putInt(f32896Z1, builder.f32927e);
        if (builder.f32928f != null) {
            bundle.putCharSequence(f32897a2, builder.f32928f);
        }
        bundle.putInt(f32898b2, builder.f32929g);
        if (builder.f32930h != null) {
            bundle.putCharSequence(f32899c2, builder.f32930h);
        }
        bundle.putInt(f32900d2, builder.f32931i);
        materialTimePicker.setArguments(bundle);
        return materialTimePicker;
    }

    /* renamed from: A0 */
    public final int m25420A0() {
        int i = this.f32921U1;
        if (i != 0) {
            return i;
        }
        TypedValue resolve = MaterialAttributes.resolve(requireContext(), C5139R.attr.materialTimePickerTheme);
        if (resolve == null) {
            return 0;
        }
        return resolve.data;
    }

    @Nullable
    /* renamed from: B0 */
    public C5443b m25421B0() {
        return this.f32906F1;
    }

    /* renamed from: C0 */
    public final ein m25422C0(int i, @NonNull TimePickerView timePickerView, @NonNull ViewStub viewStub) {
        if (i != 0) {
            if (this.f32907G1 == null) {
                this.f32907G1 = new C5445d((LinearLayout) viewStub.inflate(), this.f32920T1);
            }
            this.f32907G1.m25484f();
            return this.f32907G1;
        }
        C5443b c5443b = this.f32906F1;
        if (c5443b == null) {
            c5443b = new C5443b(timePickerView, this.f32920T1);
        }
        this.f32906F1 = c5443b;
        return c5443b;
    }

    /* renamed from: F0 */
    public final void m25423F0(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        TimeModel timeModel = (TimeModel) bundle.getParcelable(f32892V1);
        this.f32920T1 = timeModel;
        if (timeModel == null) {
            this.f32920T1 = new TimeModel();
        }
        this.f32919S1 = bundle.getInt(f32893W1, this.f32920T1.format != 1 ? 0 : 1);
        this.f32911K1 = bundle.getInt(f32894X1, 0);
        this.f32912L1 = bundle.getCharSequence(f32895Y1);
        this.f32913M1 = bundle.getInt(f32896Z1, 0);
        this.f32914N1 = bundle.getCharSequence(f32897a2);
        this.f32915O1 = bundle.getInt(f32898b2, 0);
        this.f32916P1 = bundle.getCharSequence(f32899c2);
        this.f32921U1 = bundle.getInt(f32900d2, 0);
    }

    @VisibleForTesting
    /* renamed from: G0 */
    public void m25424G0(@Nullable ein einVar) {
        this.f32908H1 = einVar;
    }

    /* renamed from: H0 */
    public final void m25425H0() {
        Button button = this.f32918R1;
        if (button != null) {
            button.setVisibility(isCancelable() ? 0 : 8);
        }
    }

    /* renamed from: I0 */
    public final void m25426I0(MaterialButton materialButton) {
        if (materialButton == null || this.f32904D1 == null || this.f32905E1 == null) {
            return;
        }
        ein einVar = this.f32908H1;
        if (einVar != null) {
            einVar.mo25465c();
        }
        ein m25422C0 = m25422C0(this.f32919S1, this.f32904D1, this.f32905E1);
        this.f32908H1 = m25422C0;
        m25422C0.show();
        this.f32908H1.invalidate();
        Pair<Integer, Integer> m25427z0 = m25427z0(this.f32919S1);
        materialButton.setIconResource(((Integer) m25427z0.first).intValue());
        materialButton.setContentDescription(getResources().getString(((Integer) m25427z0.second).intValue()));
        materialButton.sendAccessibilityEvent(4);
    }

    public boolean addOnCancelListener(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.f32902B1.add(onCancelListener);
    }

    public boolean addOnDismissListener(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.f32903C1.add(onDismissListener);
    }

    public boolean addOnNegativeButtonClickListener(@NonNull View.OnClickListener onClickListener) {
        return this.f32901A1.add(onClickListener);
    }

    public boolean addOnPositiveButtonClickListener(@NonNull View.OnClickListener onClickListener) {
        return this.f32922z1.add(onClickListener);
    }

    public void clearOnCancelListeners() {
        this.f32902B1.clear();
    }

    public void clearOnDismissListeners() {
        this.f32903C1.clear();
    }

    public void clearOnNegativeButtonClickListeners() {
        this.f32901A1.clear();
    }

    public void clearOnPositiveButtonClickListeners() {
        this.f32922z1.clear();
    }

    @IntRange(from = 0, m281to = 23)
    public int getHour() {
        return this.f32920T1.hour % 24;
    }

    public int getInputMode() {
        return this.f32919S1;
    }

    @IntRange(from = 0, m281to = 59)
    public int getMinute() {
        return this.f32920T1.minute;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it2 = this.f32902B1.iterator();
        while (it2.hasNext()) {
            it2.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        m25423F0(bundle);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), m25420A0());
        Context context = dialog.getContext();
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, C5139R.attr.materialTimePickerStyle, C5139R.style.Widget_MaterialComponents_TimePicker);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C5139R.styleable.MaterialTimePicker, C5139R.attr.materialTimePickerStyle, C5139R.style.Widget_MaterialComponents_TimePicker);
        this.f32910J1 = obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialTimePicker_clockIcon, 0);
        this.f32909I1 = obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialTimePicker_keyboardIcon, 0);
        int color = obtainStyledAttributes.getColor(C5139R.styleable.MaterialTimePicker_backgroundTint, 0);
        obtainStyledAttributes.recycle();
        materialShapeDrawable.initializeElevationOverlay(context);
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(color));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(materialShapeDrawable);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        materialShapeDrawable.setElevation(ViewCompat.getElevation(window.getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(C5139R.layout.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(C5139R.id.material_timepicker_view);
        this.f32904D1 = timePickerView;
        timePickerView.m25460y(this);
        this.f32905E1 = (ViewStub) viewGroup2.findViewById(C5139R.id.material_textinput_timepicker);
        this.f32917Q1 = (MaterialButton) viewGroup2.findViewById(C5139R.id.material_timepicker_mode_button);
        TextView textView = (TextView) viewGroup2.findViewById(C5139R.id.header_title);
        int i = this.f32911K1;
        if (i != 0) {
            textView.setText(i);
        } else if (!TextUtils.isEmpty(this.f32912L1)) {
            textView.setText(this.f32912L1);
        }
        m25426I0(this.f32917Q1);
        Button button = (Button) viewGroup2.findViewById(C5139R.id.material_timepicker_ok_button);
        button.setOnClickListener(new ViewOnClickListenerC5432a());
        int i2 = this.f32913M1;
        if (i2 != 0) {
            button.setText(i2);
        } else if (!TextUtils.isEmpty(this.f32914N1)) {
            button.setText(this.f32914N1);
        }
        Button button2 = (Button) viewGroup2.findViewById(C5139R.id.material_timepicker_cancel_button);
        this.f32918R1 = button2;
        button2.setOnClickListener(new ViewOnClickListenerC5433b());
        int i3 = this.f32915O1;
        if (i3 != 0) {
            this.f32918R1.setText(i3);
        } else if (!TextUtils.isEmpty(this.f32916P1)) {
            this.f32918R1.setText(this.f32916P1);
        }
        m25425H0();
        this.f32917Q1.setOnClickListener(new ViewOnClickListenerC5434c());
        return viewGroup2;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f32908H1 = null;
        this.f32906F1 = null;
        this.f32907G1 = null;
        TimePickerView timePickerView = this.f32904D1;
        if (timePickerView != null) {
            timePickerView.m25460y(null);
            this.f32904D1 = null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it2 = this.f32903C1.iterator();
        while (it2.hasNext()) {
            it2.next().onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.InterfaceC5439d
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onDoubleTap() {
        this.f32919S1 = 1;
        m25426I0(this.f32917Q1);
        this.f32907G1.m25486i();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(f32892V1, this.f32920T1);
        bundle.putInt(f32893W1, this.f32919S1);
        bundle.putInt(f32894X1, this.f32911K1);
        bundle.putCharSequence(f32895Y1, this.f32912L1);
        bundle.putInt(f32896Z1, this.f32913M1);
        bundle.putCharSequence(f32897a2, this.f32914N1);
        bundle.putInt(f32898b2, this.f32915O1);
        bundle.putCharSequence(f32899c2, this.f32916P1);
        bundle.putInt(f32900d2, this.f32921U1);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.f32908H1 instanceof C5445d) {
            view.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.kgj
                @Override // java.lang.Runnable
                public final void run() {
                    MaterialTimePicker.this.m25410D0();
                }
            }, 100L);
        }
    }

    public boolean removeOnCancelListener(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.f32902B1.remove(onCancelListener);
    }

    public boolean removeOnDismissListener(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.f32903C1.remove(onDismissListener);
    }

    public boolean removeOnNegativeButtonClickListener(@NonNull View.OnClickListener onClickListener) {
        return this.f32901A1.remove(onClickListener);
    }

    public boolean removeOnPositiveButtonClickListener(@NonNull View.OnClickListener onClickListener) {
        return this.f32922z1.remove(onClickListener);
    }

    @Override // androidx.fragment.app.DialogFragment
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        m25425H0();
    }

    public void setHour(@IntRange(from = 0, m281to = 23) int i) {
        this.f32920T1.setHour(i);
        ein einVar = this.f32908H1;
        if (einVar != null) {
            einVar.invalidate();
        }
    }

    public void setMinute(@IntRange(from = 0, m281to = 59) int i) {
        this.f32920T1.setMinute(i);
        ein einVar = this.f32908H1;
        if (einVar != null) {
            einVar.invalidate();
        }
    }

    /* renamed from: z0 */
    public final Pair<Integer, Integer> m25427z0(int i) {
        if (i == 0) {
            return new Pair<>(Integer.valueOf(this.f32909I1), Integer.valueOf(C5139R.string.material_timepicker_text_input_mode_description));
        }
        if (i == 1) {
            return new Pair<>(Integer.valueOf(this.f32910J1), Integer.valueOf(C5139R.string.material_timepicker_clock_mode_description));
        }
        throw new IllegalArgumentException("no icon for mode: " + i);
    }
}
