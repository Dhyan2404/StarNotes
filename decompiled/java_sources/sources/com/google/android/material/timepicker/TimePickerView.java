package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import com.google.android.material.timepicker.ClockHandView;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class TimePickerView extends ConstraintLayout implements TimePickerControls {

    /* renamed from: E0 */
    public static final String f32935E0 = "android.view.View";

    /* renamed from: A0 */
    public final View.OnClickListener f32936A0;

    /* renamed from: B0 */
    public InterfaceC5440e f32937B0;

    /* renamed from: C0 */
    public InterfaceC5441f f32938C0;

    /* renamed from: D0 */
    public InterfaceC5439d f32939D0;

    /* renamed from: v0 */
    public final Chip f32940v0;

    /* renamed from: w0 */
    public final Chip f32941w0;

    /* renamed from: x0 */
    public final ClockHandView f32942x0;

    /* renamed from: y0 */
    public final ClockFaceView f32943y0;

    /* renamed from: z0 */
    public final MaterialButtonToggleGroup f32944z0;

    /* renamed from: com.google.android.material.timepicker.TimePickerView$a */
    /* loaded from: classes6.dex */
    public class ViewOnClickListenerC5436a implements View.OnClickListener {
        public ViewOnClickListenerC5436a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TimePickerView.this.f32938C0 != null) {
                TimePickerView.this.f32938C0.mo25463b(((Integer) view.getTag(C5139R.id.selection_type)).intValue());
            }
        }
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$b */
    /* loaded from: classes6.dex */
    public class C5437b extends GestureDetector.SimpleOnGestureListener {
        public C5437b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            InterfaceC5439d interfaceC5439d = TimePickerView.this.f32939D0;
            if (interfaceC5439d == null) {
                return false;
            }
            interfaceC5439d.onDoubleTap();
            return true;
        }
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$c */
    /* loaded from: classes6.dex */
    public class ViewOnTouchListenerC5438c implements View.OnTouchListener {

        /* renamed from: e */
        public final /* synthetic */ GestureDetector f32947e;

        public ViewOnTouchListenerC5438c(GestureDetector gestureDetector) {
            this.f32947e = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.f32947e.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$d */
    /* loaded from: classes6.dex */
    public interface InterfaceC5439d {
        void onDoubleTap();
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$e */
    /* loaded from: classes6.dex */
    public interface InterfaceC5440e {
        /* renamed from: a */
        void mo25462a(int i);
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$f */
    /* loaded from: classes6.dex */
    public interface InterfaceC5441f {
        /* renamed from: b */
        void mo25463b(int i);
    }

    public TimePickerView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ void m25446r(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
        InterfaceC5440e interfaceC5440e;
        if (z && (interfaceC5440e = this.f32937B0) != null) {
            interfaceC5440e.mo25462a(i == C5139R.id.material_clock_period_pm_button ? 1 : 0);
        }
    }

    /* renamed from: A */
    public void m25447A(InterfaceC5441f interfaceC5441f) {
        this.f32938C0 = interfaceC5441f;
    }

    /* renamed from: B */
    public final void m25448B() {
        this.f32940v0.setTag(C5139R.id.selection_type, 12);
        this.f32941w0.setTag(C5139R.id.selection_type, 10);
        this.f32940v0.setOnClickListener(this.f32936A0);
        this.f32941w0.setOnClickListener(this.f32936A0);
        this.f32940v0.setAccessibilityClassName("android.view.View");
        this.f32941w0.setAccessibilityClassName("android.view.View");
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: C */
    public final void m25449C() {
        ViewOnTouchListenerC5438c viewOnTouchListenerC5438c = new ViewOnTouchListenerC5438c(new GestureDetector(getContext(), new C5437b()));
        this.f32940v0.setOnTouchListener(viewOnTouchListenerC5438c);
        this.f32941w0.setOnTouchListener(viewOnTouchListenerC5438c);
    }

    /* renamed from: D */
    public void m25450D() {
        this.f32944z0.setVisibility(0);
    }

    /* renamed from: E */
    public final void m25451E(Chip chip, boolean z) {
        chip.setChecked(z);
        ViewCompat.setAccessibilityLiveRegion(chip, z ? 2 : 0);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    /* renamed from: a */
    public void mo25439a(int i) {
        m25451E(this.f32940v0, i == 12);
        m25451E(this.f32941w0, i == 10);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    @SuppressLint({"DefaultLocale"})
    /* renamed from: b */
    public void mo25440b(int i, int i2, int i3) {
        this.f32944z0.check(i == 1 ? C5139R.id.material_clock_period_pm_button : C5139R.id.material_clock_period_am_button);
        Locale locale = getResources().getConfiguration().locale;
        String format = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i3));
        String format2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
        if (!TextUtils.equals(this.f32940v0.getText(), format)) {
            this.f32940v0.setText(format);
        }
        if (TextUtils.equals(this.f32941w0.getText(), format2)) {
            return;
        }
        this.f32941w0.setText(format2);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    /* renamed from: c */
    public void mo25441c(String[] strArr, @StringRes int i) {
        this.f32943y0.m25383c(strArr, i);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    /* renamed from: d */
    public void mo25442d(float f) {
        this.f32942x0.m25405q(f);
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            this.f32941w0.sendAccessibilityEvent(8);
        }
    }

    /* renamed from: p */
    public void m25452p(ClockHandView.OnRotateListener onRotateListener) {
        this.f32942x0.m25391b(onRotateListener);
    }

    /* renamed from: q */
    public int m25453q() {
        return this.f32943y0.m25388z();
    }

    /* renamed from: s */
    public void m25454s(boolean z) {
        this.f32942x0.m25402n(z);
    }

    /* renamed from: t */
    public void m25455t(int i) {
        this.f32943y0.m25381D(i);
    }

    /* renamed from: u */
    public void m25456u(float f, boolean z) {
        this.f32942x0.m25406r(f, z);
    }

    /* renamed from: v */
    public void m25457v(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f32940v0, accessibilityDelegateCompat);
    }

    /* renamed from: w */
    public void m25458w(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f32941w0, accessibilityDelegateCompat);
    }

    /* renamed from: x */
    public void m25459x(ClockHandView.OnActionUpListener onActionUpListener) {
        this.f32942x0.m25409u(onActionUpListener);
    }

    /* renamed from: y */
    public void m25460y(@Nullable InterfaceC5439d interfaceC5439d) {
        this.f32939D0 = interfaceC5439d;
    }

    /* renamed from: z */
    public void m25461z(InterfaceC5440e interfaceC5440e) {
        this.f32937B0 = interfaceC5440e;
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f32936A0 = new ViewOnClickListenerC5436a();
        LayoutInflater.from(context).inflate(C5139R.layout.material_timepicker, this);
        this.f32943y0 = (ClockFaceView) findViewById(C5139R.id.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(C5139R.id.material_clock_period_toggle);
        this.f32944z0 = materialButtonToggleGroup;
        materialButtonToggleGroup.addOnButtonCheckedListener(new MaterialButtonToggleGroup.OnButtonCheckedListener() { // from class: com.google.android.material.timepicker.e
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
            public final void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup2, int i2, boolean z) {
                TimePickerView.this.m25446r(materialButtonToggleGroup2, i2, z);
            }
        });
        this.f32940v0 = (Chip) findViewById(C5139R.id.material_minute_tv);
        this.f32941w0 = (Chip) findViewById(C5139R.id.material_hour_tv);
        this.f32942x0 = (ClockHandView) findViewById(C5139R.id.material_clock_hand);
        m25449C();
        m25448B();
    }
}
