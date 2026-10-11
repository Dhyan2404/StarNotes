package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.ContextCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C5139R;
import com.google.android.material.timepicker.ClockHandView;
import com.google.android.material.timepicker.TimePickerView;
import com.sunia.HTREnginev2.ein;
import com.sunia.HTREnginev2.zud;

/* renamed from: com.google.android.material.timepicker.b */
/* loaded from: classes6.dex */
public class C5443b implements ClockHandView.OnRotateListener, TimePickerView.InterfaceC5441f, TimePickerView.InterfaceC5440e, ClockHandView.OnActionUpListener, ein {

    /* renamed from: j */
    public static final String[] f32950j = {"12", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"};

    /* renamed from: k */
    public static final String[] f32951k = {"00", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"};

    /* renamed from: l */
    public static final String[] f32952l = {"00", "5", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55"};

    /* renamed from: m */
    public static final int f32953m = 30;

    /* renamed from: n */
    public static final int f32954n = 6;

    /* renamed from: e */
    public final TimePickerView f32955e;

    /* renamed from: f */
    public final TimeModel f32956f;

    /* renamed from: g */
    public float f32957g;

    /* renamed from: h */
    public float f32958h;

    /* renamed from: i */
    public boolean f32959i = false;

    /* renamed from: com.google.android.material.timepicker.b$a */
    /* loaded from: classes6.dex */
    public class a extends zud {
        public a(Context context, int i) {
            super(context, i);
        }

        @Override // com.sunia.HTREnginev2.zud, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(C5443b.this.f32956f.getHourContentDescriptionResId(), String.valueOf(C5443b.this.f32956f.getHourForDisplay())));
        }
    }

    /* renamed from: com.google.android.material.timepicker.b$b */
    /* loaded from: classes6.dex */
    public class b extends zud {
        public b(Context context, int i) {
            super(context, i);
        }

        @Override // com.sunia.HTREnginev2.zud, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(C5139R.string.material_minute_suffix, String.valueOf(C5443b.this.f32956f.minute)));
        }
    }

    public C5443b(TimePickerView timePickerView, TimeModel timeModel) {
        this.f32955e = timePickerView;
        this.f32956f = timeModel;
        initialize();
    }

    @Override // com.google.android.material.timepicker.TimePickerView.InterfaceC5440e
    /* renamed from: a */
    public void mo25462a(int i) {
        this.f32956f.setPeriod(i);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.InterfaceC5441f
    /* renamed from: b */
    public void mo25463b(int i) {
        m25469h(i, true);
    }

    @Override // com.sunia.HTREnginev2.ein
    /* renamed from: c */
    public void mo25465c() {
        this.f32955e.setVisibility(8);
    }

    /* renamed from: e */
    public final String[] m25466e() {
        return this.f32956f.format == 1 ? f32951k : f32950j;
    }

    /* renamed from: f */
    public final int m25467f() {
        return (this.f32956f.getHourForDisplay() * 30) % 360;
    }

    /* renamed from: g */
    public final void m25468g(int i, int i2) {
        TimeModel timeModel = this.f32956f;
        if (timeModel.minute == i2 && timeModel.hour == i) {
            return;
        }
        this.f32955e.performHapticFeedback(4);
    }

    /* renamed from: h */
    public void m25469h(int i, boolean z) {
        boolean z2 = i == 12;
        this.f32955e.m25454s(z2);
        this.f32956f.selection = i;
        this.f32955e.mo25441c(z2 ? f32952l : m25466e(), z2 ? C5139R.string.material_minute_suffix : this.f32956f.getHourContentDescriptionResId());
        m25470i();
        this.f32955e.m25456u(z2 ? this.f32957g : this.f32958h, z);
        this.f32955e.mo25439a(i);
        this.f32955e.m25458w(new a(this.f32955e.getContext(), C5139R.string.material_hour_selection));
        this.f32955e.m25457v(new b(this.f32955e.getContext(), C5139R.string.material_minute_selection));
    }

    /* renamed from: i */
    public final void m25470i() {
        TimeModel timeModel = this.f32956f;
        int i = 1;
        if (timeModel.selection == 10 && timeModel.format == 1 && timeModel.hour >= 12) {
            i = 2;
        }
        this.f32955e.m25455t(i);
    }

    @Override // com.sunia.HTREnginev2.ein
    public void initialize() {
        if (this.f32956f.format == 0) {
            this.f32955e.m25450D();
        }
        this.f32955e.m25452p(this);
        this.f32955e.m25447A(this);
        this.f32955e.m25461z(this);
        this.f32955e.m25459x(this);
        m25472k();
        invalidate();
    }

    @Override // com.sunia.HTREnginev2.ein
    public void invalidate() {
        this.f32958h = m25467f();
        TimeModel timeModel = this.f32956f;
        this.f32957g = timeModel.minute * 6;
        m25469h(timeModel.selection, false);
        m25471j();
    }

    /* renamed from: j */
    public final void m25471j() {
        TimePickerView timePickerView = this.f32955e;
        TimeModel timeModel = this.f32956f;
        timePickerView.mo25440b(timeModel.period, timeModel.getHourForDisplay(), this.f32956f.minute);
    }

    /* renamed from: k */
    public final void m25472k() {
        m25473l(f32950j, TimeModel.NUMBER_FORMAT);
        m25473l(f32952l, TimeModel.ZERO_LEADING_NUMBER_FORMAT);
    }

    /* renamed from: l */
    public final void m25473l(String[] strArr, String str) {
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = TimeModel.formatText(this.f32955e.getResources(), strArr[i], str);
        }
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnActionUpListener
    public void onActionUp(float f, boolean z) {
        this.f32959i = true;
        TimeModel timeModel = this.f32956f;
        int i = timeModel.minute;
        int i2 = timeModel.hour;
        if (timeModel.selection == 10) {
            this.f32955e.m25456u(this.f32958h, false);
            AccessibilityManager accessibilityManager = (AccessibilityManager) ContextCompat.getSystemService(this.f32955e.getContext(), AccessibilityManager.class);
            if (!(accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled())) {
                m25469h(12, true);
            }
        } else {
            int round = Math.round(f);
            if (!z) {
                this.f32956f.setMinute(((round + 15) / 30) * 5);
                this.f32957g = this.f32956f.minute * 6;
            }
            this.f32955e.m25456u(this.f32957g, z);
        }
        this.f32959i = false;
        m25471j();
        m25468g(i2, i);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnRotateListener
    public void onRotate(float f, boolean z) {
        if (this.f32959i) {
            return;
        }
        TimeModel timeModel = this.f32956f;
        int i = timeModel.hour;
        int i2 = timeModel.minute;
        int round = Math.round(f);
        TimeModel timeModel2 = this.f32956f;
        if (timeModel2.selection == 12) {
            timeModel2.setMinute((round + 3) / 6);
            this.f32957g = (float) Math.floor(this.f32956f.minute * 6);
        } else {
            int i3 = (round + 15) / 30;
            if (timeModel2.format == 1) {
                i3 %= 12;
                if (this.f32955e.m25453q() == 2) {
                    i3 += 12;
                }
            }
            this.f32956f.setHour(i3);
            this.f32958h = m25467f();
        }
        if (z) {
            return;
        }
        m25471j();
        m25468g(i, i2);
    }

    @Override // com.sunia.HTREnginev2.ein
    public void show() {
        this.f32955e.setVisibility(0);
    }
}
