package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C5139R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.timepicker.C5445d;
import com.google.android.material.timepicker.TimePickerView;
import com.sunia.HTREnginev2.ein;
import com.sunia.HTREnginev2.zud;
import java.lang.reflect.Field;
import java.util.Locale;

/* renamed from: com.google.android.material.timepicker.d */
/* loaded from: classes6.dex */
public class C5445d implements TimePickerView.InterfaceC5441f, ein {

    /* renamed from: e */
    public final LinearLayout f32966e;

    /* renamed from: f */
    public final TimeModel f32967f;

    /* renamed from: g */
    public final TextWatcher f32968g = new a();

    /* renamed from: h */
    public final TextWatcher f32969h = new b();

    /* renamed from: i */
    public final ChipTextInputComboView f32970i;

    /* renamed from: j */
    public final ChipTextInputComboView f32971j;

    /* renamed from: k */
    public final ViewOnKeyListenerC5444c f32972k;

    /* renamed from: l */
    public final EditText f32973l;

    /* renamed from: m */
    public final EditText f32974m;

    /* renamed from: n */
    public MaterialButtonToggleGroup f32975n;

    /* renamed from: com.google.android.material.timepicker.d$a */
    /* loaded from: classes6.dex */
    public class a extends TextWatcherAdapter {
        public a() {
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    C5445d.this.f32967f.setMinute(0);
                } else {
                    C5445d.this.f32967f.setMinute(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    /* renamed from: com.google.android.material.timepicker.d$b */
    /* loaded from: classes6.dex */
    public class b extends TextWatcherAdapter {
        public b() {
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    C5445d.this.f32967f.setHour(0);
                } else {
                    C5445d.this.f32967f.setHour(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    /* renamed from: com.google.android.material.timepicker.d$c */
    /* loaded from: classes6.dex */
    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C5445d.this.mo25463b(((Integer) view.getTag(C5139R.id.selection_type)).intValue());
        }
    }

    /* renamed from: com.google.android.material.timepicker.d$d */
    /* loaded from: classes6.dex */
    public class d extends zud {

        /* renamed from: e */
        public final /* synthetic */ TimeModel f32979e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context, int i, TimeModel timeModel) {
            super(context, i);
            this.f32979e = timeModel;
        }

        @Override // com.sunia.HTREnginev2.zud, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(this.f32979e.getHourContentDescriptionResId(), String.valueOf(this.f32979e.getHourForDisplay())));
        }
    }

    /* renamed from: com.google.android.material.timepicker.d$e */
    /* loaded from: classes6.dex */
    public class e extends zud {

        /* renamed from: e */
        public final /* synthetic */ TimeModel f32981e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Context context, int i, TimeModel timeModel) {
            super(context, i);
            this.f32981e = timeModel;
        }

        @Override // com.sunia.HTREnginev2.zud, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(C5139R.string.material_minute_suffix, String.valueOf(this.f32981e.minute)));
        }
    }

    public C5445d(LinearLayout linearLayout, TimeModel timeModel) {
        this.f32966e = linearLayout;
        this.f32967f = timeModel;
        Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(C5139R.id.material_minute_text_input);
        this.f32970i = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(C5139R.id.material_hour_text_input);
        this.f32971j = chipTextInputComboView2;
        TextView textView = (TextView) chipTextInputComboView.findViewById(C5139R.id.material_label);
        TextView textView2 = (TextView) chipTextInputComboView2.findViewById(C5139R.id.material_label);
        textView.setText(resources.getString(C5139R.string.material_timepicker_minute));
        textView2.setText(resources.getString(C5139R.string.material_timepicker_hour));
        chipTextInputComboView.setTag(C5139R.id.selection_type, 12);
        chipTextInputComboView2.setTag(C5139R.id.selection_type, 10);
        if (timeModel.format == 0) {
            m25488l();
        }
        c cVar = new c();
        chipTextInputComboView2.setOnClickListener(cVar);
        chipTextInputComboView.setOnClickListener(cVar);
        chipTextInputComboView2.m25365c(timeModel.getHourInputValidator());
        chipTextInputComboView.m25365c(timeModel.getMinuteInputValidator());
        this.f32973l = chipTextInputComboView2.m25368f().getEditText();
        this.f32974m = chipTextInputComboView.m25368f().getEditText();
        this.f32972k = new ViewOnKeyListenerC5444c(chipTextInputComboView2, chipTextInputComboView, timeModel);
        chipTextInputComboView2.m25369g(new d(linearLayout.getContext(), C5139R.string.material_hour_selection, timeModel));
        chipTextInputComboView.m25369g(new e(linearLayout.getContext(), C5139R.string.material_minute_selection, timeModel));
        initialize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m25481g(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
        if (z) {
            this.f32967f.setPeriod(i == C5139R.id.material_clock_period_pm_button ? 1 : 0);
        }
    }

    /* renamed from: j */
    public static void m25482j(EditText editText, @ColorInt int i) {
        try {
            Context context = editText.getContext();
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            int i2 = declaredField.getInt(editText);
            Field declaredField2 = TextView.class.getDeclaredField("mEditor");
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(editText);
            Field declaredField3 = obj.getClass().getDeclaredField("mCursorDrawable");
            declaredField3.setAccessible(true);
            Drawable drawable = AppCompatResources.getDrawable(context, i2);
            drawable.setColorFilter(i, PorterDuff.Mode.SRC_IN);
            declaredField3.set(obj, new Drawable[]{drawable, drawable});
        } catch (Throwable unused) {
        }
    }

    @Override // com.google.android.material.timepicker.TimePickerView.InterfaceC5441f
    /* renamed from: b */
    public void mo25463b(int i) {
        this.f32967f.selection = i;
        this.f32970i.setChecked(i == 12);
        this.f32971j.setChecked(i == 10);
        m25489m();
    }

    @Override // com.sunia.HTREnginev2.ein
    /* renamed from: c */
    public void mo25465c() {
        View focusedChild = this.f32966e.getFocusedChild();
        if (focusedChild != null) {
            ViewUtils.hideKeyboard(focusedChild, false);
        }
        this.f32966e.setVisibility(8);
    }

    /* renamed from: e */
    public final void m25483e() {
        this.f32973l.addTextChangedListener(this.f32969h);
        this.f32974m.addTextChangedListener(this.f32968g);
    }

    /* renamed from: f */
    public void m25484f() {
        this.f32970i.setChecked(false);
        this.f32971j.setChecked(false);
    }

    /* renamed from: h */
    public final void m25485h() {
        this.f32973l.removeTextChangedListener(this.f32969h);
        this.f32974m.removeTextChangedListener(this.f32968g);
    }

    /* renamed from: i */
    public void m25486i() {
        this.f32970i.setChecked(this.f32967f.selection == 12);
        this.f32971j.setChecked(this.f32967f.selection == 10);
    }

    @Override // com.sunia.HTREnginev2.ein
    public void initialize() {
        m25483e();
        m25487k(this.f32967f);
        this.f32972k.m25474a();
    }

    @Override // com.sunia.HTREnginev2.ein
    public void invalidate() {
        m25487k(this.f32967f);
    }

    /* renamed from: k */
    public final void m25487k(TimeModel timeModel) {
        m25485h();
        Locale locale = this.f32966e.getResources().getConfiguration().locale;
        String format = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.minute));
        String format2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.getHourForDisplay()));
        this.f32970i.m25372j(format);
        this.f32971j.m25372j(format2);
        m25483e();
        m25489m();
    }

    /* renamed from: l */
    public final void m25488l() {
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.f32966e.findViewById(C5139R.id.material_clock_period_toggle);
        this.f32975n = materialButtonToggleGroup;
        materialButtonToggleGroup.addOnButtonCheckedListener(new MaterialButtonToggleGroup.OnButtonCheckedListener() { // from class: com.sunia.HTREnginev2.fin
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
            public final void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup2, int i, boolean z) {
                C5445d.this.m25481g(materialButtonToggleGroup2, i, z);
            }
        });
        this.f32975n.setVisibility(0);
        m25489m();
    }

    /* renamed from: m */
    public final void m25489m() {
        MaterialButtonToggleGroup materialButtonToggleGroup = this.f32975n;
        if (materialButtonToggleGroup == null) {
            return;
        }
        materialButtonToggleGroup.check(this.f32967f.period == 0 ? C5139R.id.material_clock_period_am_button : C5139R.id.material_clock_period_pm_button);
    }

    @Override // com.sunia.HTREnginev2.ein
    public void show() {
        this.f32966e.setVisibility(0);
        mo25463b(this.f32967f.selection);
    }
}
