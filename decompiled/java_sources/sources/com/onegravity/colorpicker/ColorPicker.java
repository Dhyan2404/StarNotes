package com.onegravity.colorpicker;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TabHost;
import androidx.appcompat.app.AlertDialog;

/* loaded from: classes7.dex */
public class ColorPicker implements OnColorChangedListener, TabHost.OnTabChangeListener {

    /* renamed from: o */
    public static final String f39839o = "wheel";

    /* renamed from: p */
    public static final String f39840p = "exact";

    /* renamed from: q */
    public static int f39841q;

    /* renamed from: e */
    public final int f39842e;

    /* renamed from: f */
    public final Context f39843f;

    /* renamed from: g */
    public final int f39844g;

    /* renamed from: h */
    public int f39845h;

    /* renamed from: i */
    public final boolean f39846i;

    /* renamed from: j */
    public Dialog f39847j;

    /* renamed from: k */
    public final ColorPickerListener f39848k;

    /* renamed from: l */
    public ColorWheelComponent f39849l;

    /* renamed from: m */
    public ExactComponent f39850m;

    /* renamed from: n */
    public String f39851n;

    /* renamed from: com.onegravity.colorpicker.ColorPicker$a */
    /* loaded from: classes7.dex */
    public class DialogInterfaceOnCancelListenerC7015a implements DialogInterface.OnCancelListener {
        public DialogInterfaceOnCancelListenerC7015a() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            ColorPicker colorPicker = ColorPicker.this;
            colorPicker.m31461j(colorPicker.f39844g);
        }
    }

    /* renamed from: com.onegravity.colorpicker.ColorPicker$b */
    /* loaded from: classes7.dex */
    public class DialogInterfaceOnClickListenerC7016b implements DialogInterface.OnClickListener {
        public DialogInterfaceOnClickListenerC7016b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ColorPicker colorPicker = ColorPicker.this;
            colorPicker.m31461j(colorPicker.f39844g);
        }
    }

    /* renamed from: com.onegravity.colorpicker.ColorPicker$c */
    /* loaded from: classes7.dex */
    public class DialogInterfaceOnClickListenerC7017c implements DialogInterface.OnClickListener {
        public DialogInterfaceOnClickListenerC7017c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ColorPicker colorPicker = ColorPicker.this;
            colorPicker.m31461j(colorPicker.f39845h);
        }
    }

    /* renamed from: com.onegravity.colorpicker.ColorPicker$d */
    /* loaded from: classes7.dex */
    public class C7018d implements TabHost.TabContentFactory {
        public C7018d() {
        }

        @Override // android.widget.TabHost.TabContentFactory
        public View createTabContent(String str) {
            if (str.equals(ColorPicker.f39839o)) {
                ColorPicker colorPicker = ColorPicker.this;
                colorPicker.f39849l = new ColorWheelComponent(colorPicker.f39844g, ColorPicker.this.f39845h, ColorPicker.this.f39846i, ColorPicker.this);
                return ColorPicker.this.f39849l.m31464b(ColorPicker.this.f39843f);
            }
            if (!str.equals(ColorPicker.f39840p)) {
                return null;
            }
            ColorPicker colorPicker2 = ColorPicker.this;
            colorPicker2.f39850m = new ExactComponent(colorPicker2.f39844g, ColorPicker.this.f39845h, ColorPicker.this.f39846i, ColorPicker.this);
            return ColorPicker.this.f39850m.m31482j(ColorPicker.this.f39843f);
        }
    }

    public ColorPicker(Context context, int i, boolean z, ColorPickerListener colorPickerListener) {
        int i2 = f39841q;
        f39841q = i2 + 1;
        this.f39842e = i2;
        this.f39843f = context;
        this.f39844g = i;
        this.f39845h = i;
        this.f39846i = z;
        this.f39848k = colorPickerListener;
    }

    public void dismiss() {
        try {
            this.f39847j.dismiss();
        } catch (Exception unused) {
        }
    }

    public int getColor() {
        return this.f39849l.m31466d();
    }

    /* renamed from: j */
    public final void m31461j(int i) {
        ColorPickerListener colorPickerListener = this.f39848k;
        if (colorPickerListener != null) {
            colorPickerListener.onColorChanged(i);
            this.f39848k.onDialogClosing();
        }
    }

    /* renamed from: k */
    public final void m31462k(View view) {
        TabHost tabHost = (TabHost) view.findViewById(android.R.id.tabhost);
        tabHost.setup();
        tabHost.clearAllTabs();
        tabHost.setOnTabChangedListener(null);
        C7018d c7018d = new C7018d();
        String str = f39839o;
        tabHost.addTab(tabHost.newTabSpec(f39839o).setIndicator(this.f39843f.getString(C7020R.string.color_picker_wheel)).setContent(c7018d));
        tabHost.addTab(tabHost.newTabSpec(f39840p).setIndicator(this.f39843f.getString(C7020R.string.color_picker_exact)).setContent(c7018d));
        tabHost.setOnTabChangedListener(this);
        String str2 = this.f39851n;
        if (str2 != null) {
            str = str2;
        }
        tabHost.setCurrentTabByTag(str);
    }

    @Override // com.onegravity.colorpicker.OnColorChangedListener
    public void onColorChanged(int i) {
        this.f39845h = i;
        ColorPickerListener colorPickerListener = this.f39848k;
        if (colorPickerListener != null) {
            colorPickerListener.onColorChanged(i);
        }
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) {
        this.f39851n = str;
        if (str.equals(f39839o) && this.f39849l != null) {
            this.f39850m.m31483k(this.f39843f);
            this.f39849l.m31463a(this.f39845h);
        } else {
            if (!str.equals(f39840p) || this.f39850m == null) {
                return;
            }
            this.f39849l.m31465c();
            this.f39850m.m31481i(this.f39843f, this.f39845h);
        }
    }

    @SuppressLint({"InflateParams"})
    public int show() {
        View inflate = LayoutInflater.from(this.f39843f).inflate(C7020R.layout.dialog_color_picker, (ViewGroup) null);
        m31462k(inflate);
        AlertDialog create = new AlertDialog.Builder(this.f39843f).setView(inflate).setCancelable(true).setPositiveButton(android.R.string.ok, new DialogInterfaceOnClickListenerC7017c()).setNegativeButton(android.R.string.cancel, new DialogInterfaceOnClickListenerC7016b()).setOnCancelListener(new DialogInterfaceOnCancelListenerC7015a()).create();
        this.f39847j = create;
        create.setCanceledOnTouchOutside(false);
        this.f39847j.show();
        this.f39847j.getWindow().clearFlags(131080);
        return this.f39842e;
    }
}
