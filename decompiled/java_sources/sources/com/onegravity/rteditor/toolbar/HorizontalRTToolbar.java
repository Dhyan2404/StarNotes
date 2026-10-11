package com.onegravity.rteditor.toolbar;

import android.content.Context;
import android.content.res.Resources;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.onegravity.colorpicker.ColorPicker;
import com.onegravity.colorpicker.ColorPickerListener;
import com.onegravity.rteditor.C7028R;
import com.onegravity.rteditor.RTToolbar;
import com.onegravity.rteditor.RTToolbarListener;
import com.onegravity.rteditor.effects.Effects;
import com.onegravity.rteditor.fonts.FontManager;
import com.onegravity.rteditor.fonts.RTTypeface;
import com.onegravity.rteditor.toolbar.spinner.BGColorSpinnerItem;
import com.onegravity.rteditor.toolbar.spinner.ColorSpinnerItem;
import com.onegravity.rteditor.toolbar.spinner.FontColorSpinnerItem;
import com.onegravity.rteditor.toolbar.spinner.FontSizeSpinnerItem;
import com.onegravity.rteditor.toolbar.spinner.FontSpinnerItem;
import com.onegravity.rteditor.toolbar.spinner.SpinnerItem;
import com.onegravity.rteditor.toolbar.spinner.SpinnerItemAdapter;
import com.onegravity.rteditor.toolbar.spinner.SpinnerItems;
import com.onegravity.rteditor.utils.Helper;
import java.util.Iterator;
import java.util.SortedSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes7.dex */
public class HorizontalRTToolbar extends LinearLayout implements RTToolbar, View.OnClickListener {

    /* renamed from: v0 */
    public static final AtomicInteger f40516v0 = new AtomicInteger(0);

    /* renamed from: J */
    public int f40517J;

    /* renamed from: O */
    public int f40518O;

    /* renamed from: Q */
    public ColorPickerListener f40519Q;

    /* renamed from: e */
    public int f40520e;

    /* renamed from: f */
    public RTToolbarListener f40521f;

    /* renamed from: g */
    public ViewGroup f40522g;

    /* renamed from: h */
    public RTToolbarImageButton f40523h;

    /* renamed from: i */
    public RTToolbarImageButton f40524i;

    /* renamed from: j */
    public RTToolbarImageButton f40525j;

    /* renamed from: k */
    public RTToolbarImageButton f40526k;

    /* renamed from: k0 */
    public final InterfaceC7077f<FontSpinnerItem> f40527k0;

    /* renamed from: l */
    public RTToolbarImageButton f40528l;

    /* renamed from: m */
    public RTToolbarImageButton f40529m;

    /* renamed from: n */
    public RTToolbarImageButton f40530n;

    /* renamed from: o */
    public RTToolbarImageButton f40531o;

    /* renamed from: p */
    public RTToolbarImageButton f40532p;

    /* renamed from: q */
    public RTToolbarImageButton f40533q;

    /* renamed from: q0 */
    public final InterfaceC7077f<FontSizeSpinnerItem> f40534q0;

    /* renamed from: r */
    public RTToolbarImageButton f40535r;

    /* renamed from: s */
    public Spinner f40536s;

    /* renamed from: t */
    public SpinnerItemAdapter<FontSpinnerItem> f40537t;

    /* renamed from: t0 */
    public final InterfaceC7077f<FontColorSpinnerItem> f40538t0;

    /* renamed from: u */
    public Spinner f40539u;

    /* renamed from: u0 */
    public final InterfaceC7077f<BGColorSpinnerItem> f40540u0;

    /* renamed from: v */
    public SpinnerItemAdapter<FontSizeSpinnerItem> f40541v;

    /* renamed from: w */
    public Spinner f40542w;

    /* renamed from: x */
    public SpinnerItemAdapter<? extends ColorSpinnerItem> f40543x;

    /* renamed from: y */
    public Spinner f40544y;

    /* renamed from: z */
    public SpinnerItemAdapter<? extends ColorSpinnerItem> f40545z;

    /* renamed from: com.onegravity.rteditor.toolbar.HorizontalRTToolbar$a */
    /* loaded from: classes7.dex */
    public class C7072a implements AdapterView.OnItemSelectedListener {

        /* renamed from: e */
        public final AtomicBoolean f40546e = new AtomicBoolean(true);

        /* renamed from: f */
        public final /* synthetic */ SpinnerItemAdapter f40547f;

        /* renamed from: g */
        public final /* synthetic */ InterfaceC7077f f40548g;

        public C7072a(SpinnerItemAdapter spinnerItemAdapter, InterfaceC7077f interfaceC7077f) {
            this.f40547f = spinnerItemAdapter;
            this.f40548g = interfaceC7077f;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (!this.f40546e.getAndSet(false) && this.f40547f.getSelectedItem() != i) {
                this.f40548g.mo31782a(this.f40547f.getItem(i), i);
            }
            this.f40547f.setSelectedItem(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: com.onegravity.rteditor.toolbar.HorizontalRTToolbar$b */
    /* loaded from: classes7.dex */
    public class C7073b implements InterfaceC7077f<FontSpinnerItem> {
        public C7073b() {
        }

        @Override // com.onegravity.rteditor.toolbar.HorizontalRTToolbar.InterfaceC7077f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo31782a(FontSpinnerItem fontSpinnerItem, int i) {
            HorizontalRTToolbar.this.f40521f.onEffectSelected(Effects.TYPEFACE, fontSpinnerItem.getTypeface());
        }
    }

    /* renamed from: com.onegravity.rteditor.toolbar.HorizontalRTToolbar$c */
    /* loaded from: classes7.dex */
    public class C7074c implements InterfaceC7077f<FontSizeSpinnerItem> {
        public C7074c() {
        }

        @Override // com.onegravity.rteditor.toolbar.HorizontalRTToolbar.InterfaceC7077f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo31782a(FontSizeSpinnerItem fontSizeSpinnerItem, int i) {
            int fontSize = fontSizeSpinnerItem.getFontSize();
            HorizontalRTToolbar.this.f40541v.updateSpinnerTitle(fontSizeSpinnerItem.isEmpty() ? "" : Integer.toString(fontSize));
            HorizontalRTToolbar.this.f40521f.onEffectSelected(Effects.FONTSIZE, Integer.valueOf(Helper.convertPxToSp(fontSize)));
        }
    }

    /* renamed from: com.onegravity.rteditor.toolbar.HorizontalRTToolbar$d */
    /* loaded from: classes7.dex */
    public class C7075d implements InterfaceC7077f<FontColorSpinnerItem> {

        /* renamed from: com.onegravity.rteditor.toolbar.HorizontalRTToolbar$d$a */
        /* loaded from: classes7.dex */
        public class a implements ColorPickerListener {

            /* renamed from: e */
            public final /* synthetic */ FontColorSpinnerItem f40553e;

            public a(FontColorSpinnerItem fontColorSpinnerItem) {
                this.f40553e = fontColorSpinnerItem;
            }

            @Override // com.onegravity.colorpicker.OnColorChangedListener
            public void onColorChanged(int i) {
                HorizontalRTToolbar.this.f40517J = i;
                this.f40553e.setColor(i);
                HorizontalRTToolbar.this.f40543x.notifyDataSetChanged();
                if (HorizontalRTToolbar.this.f40521f != null) {
                    HorizontalRTToolbar.this.f40521f.onEffectSelected(Effects.FONTCOLOR, Integer.valueOf(i));
                }
            }

            @Override // com.onegravity.colorpicker.ColorPickerListener
            public void onDialogClosing() {
            }
        }

        public C7075d() {
        }

        @Override // com.onegravity.rteditor.toolbar.HorizontalRTToolbar.InterfaceC7077f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo31782a(FontColorSpinnerItem fontColorSpinnerItem, int i) {
            if (fontColorSpinnerItem.isCustom()) {
                HorizontalRTToolbar.this.f40519Q = new a(fontColorSpinnerItem);
                new ColorPicker(HorizontalRTToolbar.this.getContext(), HorizontalRTToolbar.this.f40517J, false, HorizontalRTToolbar.this.f40519Q).show();
            } else if (HorizontalRTToolbar.this.f40521f != null) {
                HorizontalRTToolbar.this.f40521f.onEffectSelected(Effects.FONTCOLOR, fontColorSpinnerItem.isEmpty() ? null : Integer.valueOf(fontColorSpinnerItem.getColor()));
            }
        }
    }

    /* renamed from: com.onegravity.rteditor.toolbar.HorizontalRTToolbar$e */
    /* loaded from: classes7.dex */
    public class C7076e implements InterfaceC7077f<BGColorSpinnerItem> {

        /* renamed from: com.onegravity.rteditor.toolbar.HorizontalRTToolbar$e$a */
        /* loaded from: classes7.dex */
        public class a implements ColorPickerListener {

            /* renamed from: e */
            public final /* synthetic */ BGColorSpinnerItem f40556e;

            public a(BGColorSpinnerItem bGColorSpinnerItem) {
                this.f40556e = bGColorSpinnerItem;
            }

            @Override // com.onegravity.colorpicker.OnColorChangedListener
            public void onColorChanged(int i) {
                HorizontalRTToolbar.this.f40518O = i;
                this.f40556e.setColor(i);
                HorizontalRTToolbar.this.f40545z.notifyDataSetChanged();
                if (HorizontalRTToolbar.this.f40521f != null) {
                    HorizontalRTToolbar.this.f40521f.onEffectSelected(Effects.BGCOLOR, Integer.valueOf(i));
                }
            }

            @Override // com.onegravity.colorpicker.ColorPickerListener
            public void onDialogClosing() {
            }
        }

        public C7076e() {
        }

        @Override // com.onegravity.rteditor.toolbar.HorizontalRTToolbar.InterfaceC7077f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo31782a(BGColorSpinnerItem bGColorSpinnerItem, int i) {
            if (bGColorSpinnerItem.isCustom()) {
                HorizontalRTToolbar.this.f40519Q = new a(bGColorSpinnerItem);
                new ColorPicker(HorizontalRTToolbar.this.getContext(), HorizontalRTToolbar.this.f40518O, false, HorizontalRTToolbar.this.f40519Q).show();
            } else if (HorizontalRTToolbar.this.f40521f != null) {
                HorizontalRTToolbar.this.f40521f.onEffectSelected(Effects.BGCOLOR, bGColorSpinnerItem.isEmpty() ? null : Integer.valueOf(bGColorSpinnerItem.getColor()));
            }
        }
    }

    /* renamed from: com.onegravity.rteditor.toolbar.HorizontalRTToolbar$f */
    /* loaded from: classes7.dex */
    public interface InterfaceC7077f<T extends SpinnerItem> {
        /* renamed from: a */
        void mo31782a(T t, int i);
    }

    public HorizontalRTToolbar(Context context) {
        super(context);
        this.f40517J = -16777216;
        this.f40518O = -16777216;
        this.f40527k0 = new C7073b();
        this.f40534q0 = new C7074c();
        this.f40538t0 = new C7075d();
        this.f40540u0 = new C7076e();
        m31779l();
    }

    private SpinnerItems<BGColorSpinnerItem> getBGColorItems() {
        SpinnerItems<BGColorSpinnerItem> spinnerItems = new SpinnerItems<>();
        Context context = getContext();
        String string = context.getString(C7028R.string.rte_toolbar_color_text);
        spinnerItems.add(new BGColorSpinnerItem(this.f40517J, string, true, false));
        for (String str : getResources().getStringArray(C7028R.array.rte_toolbar_fontcolors_values)) {
            spinnerItems.add(new BGColorSpinnerItem(Integer.parseInt(str, 16), string, false, false));
        }
        spinnerItems.add(new BGColorSpinnerItem(this.f40517J, context.getString(C7028R.string.rte_toolbar_color_custom), false, true));
        return spinnerItems;
    }

    private SpinnerItems<FontColorSpinnerItem> getFontColorItems() {
        SpinnerItems<FontColorSpinnerItem> spinnerItems = new SpinnerItems<>();
        Context context = getContext();
        String string = context.getString(C7028R.string.rte_toolbar_color_text);
        spinnerItems.add(new FontColorSpinnerItem(this.f40517J, string, true, false));
        for (String str : getResources().getStringArray(C7028R.array.rte_toolbar_fontcolors_values)) {
            spinnerItems.add(new FontColorSpinnerItem(Integer.parseInt(str, 16), string, false, false));
        }
        spinnerItems.add(new FontColorSpinnerItem(this.f40517J, context.getString(C7028R.string.rte_toolbar_color_custom), false, true));
        return spinnerItems;
    }

    private SpinnerItems<FontSpinnerItem> getFontItems() {
        SortedSet<RTTypeface> fonts = FontManager.getFonts(getContext());
        SpinnerItems<FontSpinnerItem> spinnerItems = new SpinnerItems<>();
        spinnerItems.add(new FontSpinnerItem(null));
        Iterator<RTTypeface> it2 = fonts.iterator();
        while (it2.hasNext()) {
            spinnerItems.add(new FontSpinnerItem(it2.next()));
        }
        return spinnerItems;
    }

    private SpinnerItems<FontSizeSpinnerItem> getTextSizeItems() {
        SpinnerItems<FontSizeSpinnerItem> spinnerItems = new SpinnerItems<>();
        Resources resources = getResources();
        spinnerItems.add(new FontSizeSpinnerItem(-1, "", true));
        String[] stringArray = resources.getStringArray(C7028R.array.rte_toolbar_fontsizes_entries);
        int[] intArray = resources.getIntArray(C7028R.array.rte_toolbar_fontsizes_values);
        for (int i = 0; i < stringArray.length; i++) {
            spinnerItems.add(new FontSizeSpinnerItem(intArray[i], stringArray[i], false));
        }
        return spinnerItems;
    }

    @Override // android.view.View, com.onegravity.rteditor.RTToolbar
    public int getId() {
        return this.f40520e;
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public ViewGroup getToolbarContainer() {
        ViewGroup viewGroup = this.f40522g;
        return viewGroup == null ? this : viewGroup;
    }

    /* renamed from: k */
    public final <T extends SpinnerItem> SpinnerItemAdapter<T> m31778k(Spinner spinner, int i, int i2, SpinnerItems<T> spinnerItems, InterfaceC7077f<T> interfaceC7077f) {
        if (spinner == null) {
            return null;
        }
        SpinnerItemAdapter<T> spinnerItemAdapter = new SpinnerItemAdapter<>(getContext(), spinnerItems, i, i2);
        spinner.setPadding(spinner.getPaddingLeft(), 0, spinner.getPaddingRight(), 0);
        spinner.setAdapter((SpinnerAdapter) spinnerItemAdapter);
        spinner.setSelection(spinnerItems.getSelectedItem());
        spinner.setOnItemSelectedListener(new C7072a(spinnerItemAdapter, interfaceC7077f));
        return spinnerItemAdapter;
    }

    /* renamed from: l */
    public final void m31779l() {
        AtomicInteger atomicInteger = f40516v0;
        synchronized (atomicInteger) {
            this.f40520e = atomicInteger.getAndIncrement();
        }
    }

    /* renamed from: m */
    public final RTToolbarImageButton m31780m(int i) {
        RTToolbarImageButton rTToolbarImageButton = (RTToolbarImageButton) findViewById(i);
        if (rTToolbarImageButton != null) {
            rTToolbarImageButton.setOnClickListener(this);
        }
        return rTToolbarImageButton;
    }

    /* renamed from: n */
    public final void m31781n(int i, Spinner spinner, SpinnerItemAdapter<? extends ColorSpinnerItem> spinnerItemAdapter) {
        int i2 = i & 16777215;
        for (int i3 = 0; i3 < spinnerItemAdapter.getCount(); i3++) {
            ColorSpinnerItem item = spinnerItemAdapter.getItem(i3);
            if (!item.isEmpty() && i2 == (item.getColor() & 16777215)) {
                spinnerItemAdapter.setSelectedItem(i3);
                spinner.setSelection(i3);
                return;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        RTToolbarImageButton rTToolbarImageButton;
        RTToolbarImageButton rTToolbarImageButton2;
        RTToolbarImageButton rTToolbarImageButton3;
        RTToolbarImageButton rTToolbarImageButton4;
        if (this.f40521f != null) {
            int id = view.getId();
            if (id == C7028R.id.toolbar_bold) {
                this.f40523h.setChecked(!r5.isChecked());
                this.f40521f.onEffectSelected(Effects.BOLD, Boolean.valueOf(this.f40523h.isChecked()));
                return;
            }
            if (id == C7028R.id.toolbar_italic) {
                this.f40524i.setChecked(!r5.isChecked());
                this.f40521f.onEffectSelected(Effects.ITALIC, Boolean.valueOf(this.f40524i.isChecked()));
                return;
            }
            if (id == C7028R.id.toolbar_underline) {
                this.f40525j.setChecked(!r5.isChecked());
                this.f40521f.onEffectSelected(Effects.UNDERLINE, Boolean.valueOf(this.f40525j.isChecked()));
                return;
            }
            if (id == C7028R.id.toolbar_strikethrough) {
                this.f40526k.setChecked(!r5.isChecked());
                this.f40521f.onEffectSelected(Effects.STRIKETHROUGH, Boolean.valueOf(this.f40526k.isChecked()));
                return;
            }
            if (id == C7028R.id.toolbar_superscript) {
                this.f40528l.setChecked(!r5.isChecked());
                this.f40521f.onEffectSelected(Effects.SUPERSCRIPT, Boolean.valueOf(this.f40528l.isChecked()));
                if (!this.f40528l.isChecked() || (rTToolbarImageButton4 = this.f40529m) == null) {
                    return;
                }
                rTToolbarImageButton4.setChecked(false);
                this.f40521f.onEffectSelected(Effects.SUBSCRIPT, Boolean.valueOf(this.f40529m.isChecked()));
                return;
            }
            if (id == C7028R.id.toolbar_subscript) {
                this.f40529m.setChecked(!r5.isChecked());
                this.f40521f.onEffectSelected(Effects.SUBSCRIPT, Boolean.valueOf(this.f40529m.isChecked()));
                if (!this.f40529m.isChecked() || (rTToolbarImageButton3 = this.f40528l) == null) {
                    return;
                }
                rTToolbarImageButton3.setChecked(false);
                this.f40521f.onEffectSelected(Effects.SUPERSCRIPT, Boolean.valueOf(this.f40528l.isChecked()));
                return;
            }
            if (id == C7028R.id.toolbar_align_left) {
                RTToolbarImageButton rTToolbarImageButton5 = this.f40530n;
                if (rTToolbarImageButton5 != null) {
                    rTToolbarImageButton5.setChecked(true);
                }
                RTToolbarImageButton rTToolbarImageButton6 = this.f40531o;
                if (rTToolbarImageButton6 != null) {
                    rTToolbarImageButton6.setChecked(false);
                }
                RTToolbarImageButton rTToolbarImageButton7 = this.f40532p;
                if (rTToolbarImageButton7 != null) {
                    rTToolbarImageButton7.setChecked(false);
                }
                this.f40521f.onEffectSelected(Effects.ALIGNMENT, Layout.Alignment.ALIGN_NORMAL);
                return;
            }
            if (id == C7028R.id.toolbar_align_center) {
                RTToolbarImageButton rTToolbarImageButton8 = this.f40530n;
                if (rTToolbarImageButton8 != null) {
                    rTToolbarImageButton8.setChecked(false);
                }
                RTToolbarImageButton rTToolbarImageButton9 = this.f40531o;
                if (rTToolbarImageButton9 != null) {
                    rTToolbarImageButton9.setChecked(true);
                }
                RTToolbarImageButton rTToolbarImageButton10 = this.f40532p;
                if (rTToolbarImageButton10 != null) {
                    rTToolbarImageButton10.setChecked(false);
                }
                this.f40521f.onEffectSelected(Effects.ALIGNMENT, Layout.Alignment.ALIGN_CENTER);
                return;
            }
            if (id == C7028R.id.toolbar_align_right) {
                RTToolbarImageButton rTToolbarImageButton11 = this.f40530n;
                if (rTToolbarImageButton11 != null) {
                    rTToolbarImageButton11.setChecked(false);
                }
                RTToolbarImageButton rTToolbarImageButton12 = this.f40531o;
                if (rTToolbarImageButton12 != null) {
                    rTToolbarImageButton12.setChecked(false);
                }
                RTToolbarImageButton rTToolbarImageButton13 = this.f40532p;
                if (rTToolbarImageButton13 != null) {
                    rTToolbarImageButton13.setChecked(true);
                }
                this.f40521f.onEffectSelected(Effects.ALIGNMENT, Layout.Alignment.ALIGN_OPPOSITE);
                return;
            }
            if (id == C7028R.id.toolbar_bullet) {
                this.f40533q.setChecked(!r5.isChecked());
                boolean isChecked = this.f40533q.isChecked();
                this.f40521f.onEffectSelected(Effects.BULLET, Boolean.valueOf(isChecked));
                if (!isChecked || (rTToolbarImageButton2 = this.f40535r) == null) {
                    return;
                }
                rTToolbarImageButton2.setChecked(false);
                return;
            }
            if (id == C7028R.id.toolbar_number) {
                this.f40535r.setChecked(!r5.isChecked());
                boolean isChecked2 = this.f40535r.isChecked();
                this.f40521f.onEffectSelected(Effects.NUMBER, Boolean.valueOf(isChecked2));
                if (!isChecked2 || (rTToolbarImageButton = this.f40533q) == null) {
                    return;
                }
                rTToolbarImageButton.setChecked(false);
                return;
            }
            if (id == C7028R.id.toolbar_inc_indent) {
                this.f40521f.onEffectSelected(Effects.INDENTATION, Integer.valueOf(Helper.getLeadingMarging()));
                return;
            }
            if (id == C7028R.id.toolbar_dec_indent) {
                this.f40521f.onEffectSelected(Effects.INDENTATION, Integer.valueOf(-Helper.getLeadingMarging()));
                return;
            }
            if (id == C7028R.id.toolbar_link) {
                this.f40521f.onCreateLink();
                return;
            }
            if (id == C7028R.id.toolbar_image) {
                this.f40521f.onPickImage();
                return;
            }
            if (id == C7028R.id.toolbar_image_capture) {
                this.f40521f.onCaptureImage();
                return;
            }
            if (id == C7028R.id.toolbar_clear) {
                this.f40521f.onClearFormatting();
            } else if (id == C7028R.id.toolbar_undo) {
                this.f40521f.onUndo();
            } else if (id == C7028R.id.toolbar_redo) {
                this.f40521f.onRedo();
            }
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f40523h = m31780m(C7028R.id.toolbar_bold);
        this.f40524i = m31780m(C7028R.id.toolbar_italic);
        this.f40525j = m31780m(C7028R.id.toolbar_underline);
        this.f40526k = m31780m(C7028R.id.toolbar_strikethrough);
        this.f40528l = m31780m(C7028R.id.toolbar_superscript);
        this.f40529m = m31780m(C7028R.id.toolbar_subscript);
        this.f40530n = m31780m(C7028R.id.toolbar_align_left);
        this.f40531o = m31780m(C7028R.id.toolbar_align_center);
        this.f40532p = m31780m(C7028R.id.toolbar_align_right);
        this.f40533q = m31780m(C7028R.id.toolbar_bullet);
        this.f40535r = m31780m(C7028R.id.toolbar_number);
        m31780m(C7028R.id.toolbar_inc_indent);
        m31780m(C7028R.id.toolbar_dec_indent);
        m31780m(C7028R.id.toolbar_link);
        m31780m(C7028R.id.toolbar_image);
        m31780m(C7028R.id.toolbar_undo);
        m31780m(C7028R.id.toolbar_redo);
        m31780m(C7028R.id.toolbar_clear);
        if (getContext().getPackageManager().hasSystemFeature("android.hardware.camera.any")) {
            m31780m(C7028R.id.toolbar_image_capture);
        } else {
            View findViewById = findViewById(C7028R.id.toolbar_image_capture);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
        }
        Spinner spinner = (Spinner) findViewById(C7028R.id.toolbar_font);
        this.f40536s = spinner;
        this.f40537t = m31778k(spinner, C7028R.layout.rte_toolbar_font_spinner, C7028R.layout.rte_toolbar_spinner_item, getFontItems(), this.f40527k0);
        Spinner spinner2 = (Spinner) findViewById(C7028R.id.toolbar_fontsize);
        this.f40539u = spinner2;
        this.f40541v = m31778k(spinner2, C7028R.layout.rte_toolbar_fontsize_spinner, C7028R.layout.rte_toolbar_spinner_item, getTextSizeItems(), this.f40534q0);
        Spinner spinner3 = (Spinner) findViewById(C7028R.id.toolbar_fontcolor);
        this.f40542w = spinner3;
        this.f40543x = m31778k(spinner3, C7028R.layout.rte_toolbar_fontcolor_spinner, C7028R.layout.rte_toolbar_fontcolor_spinner_item, getFontColorItems(), this.f40538t0);
        Spinner spinner4 = (Spinner) findViewById(C7028R.id.toolbar_bgcolor);
        this.f40544y = spinner4;
        this.f40545z = m31778k(spinner4, C7028R.layout.rte_toolbar_bgcolor_spinner, C7028R.layout.rte_toolbar_bgcolor_spinner_item, getBGColorItems(), this.f40540u0);
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void removeBGColor() {
        if (this.f40544y != null) {
            this.f40545z.setSelectedItem(0);
            this.f40544y.setSelection(0);
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void removeFontColor() {
        if (this.f40542w != null) {
            this.f40543x.setSelectedItem(0);
            this.f40542w.setSelection(0);
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void removeToolbarListener() {
        this.f40521f = null;
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setAlignment(Layout.Alignment alignment) {
        RTToolbarImageButton rTToolbarImageButton = this.f40530n;
        if (rTToolbarImageButton != null) {
            rTToolbarImageButton.setChecked(alignment == Layout.Alignment.ALIGN_NORMAL);
        }
        RTToolbarImageButton rTToolbarImageButton2 = this.f40531o;
        if (rTToolbarImageButton2 != null) {
            rTToolbarImageButton2.setChecked(alignment == Layout.Alignment.ALIGN_CENTER);
        }
        RTToolbarImageButton rTToolbarImageButton3 = this.f40532p;
        if (rTToolbarImageButton3 != null) {
            rTToolbarImageButton3.setChecked(alignment == Layout.Alignment.ALIGN_OPPOSITE);
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setBGColor(int i) {
        Spinner spinner = this.f40544y;
        if (spinner != null) {
            m31781n(i, spinner, this.f40545z);
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setBold(boolean z) {
        RTToolbarImageButton rTToolbarImageButton = this.f40523h;
        if (rTToolbarImageButton != null) {
            rTToolbarImageButton.setChecked(z);
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setBullet(boolean z) {
        RTToolbarImageButton rTToolbarImageButton = this.f40533q;
        if (rTToolbarImageButton != null) {
            rTToolbarImageButton.setChecked(z);
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setFont(RTTypeface rTTypeface) {
        if (this.f40536s != null) {
            if (rTTypeface == null) {
                this.f40537t.setSelectedItem(0);
                this.f40536s.setSelection(0);
                return;
            }
            for (int i = 0; i < this.f40537t.getCount(); i++) {
                if (rTTypeface.equals(this.f40537t.getItem(i).getTypeface())) {
                    this.f40537t.setSelectedItem(i);
                    this.f40536s.setSelection(i);
                    return;
                }
            }
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setFontColor(int i) {
        Spinner spinner = this.f40542w;
        if (spinner != null) {
            m31781n(i, spinner, this.f40543x);
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setFontSize(int i) {
        if (this.f40539u != null) {
            if (i <= 0) {
                this.f40541v.updateSpinnerTitle("");
                this.f40541v.setSelectedItem(0);
                this.f40539u.setSelection(0);
                return;
            }
            int convertSpToPx = Helper.convertSpToPx(i);
            this.f40541v.updateSpinnerTitle(Integer.toString(convertSpToPx));
            for (int i2 = 0; i2 < this.f40541v.getCount(); i2++) {
                if (convertSpToPx == this.f40541v.getItem(i2).getFontSize()) {
                    this.f40541v.setSelectedItem(i2);
                    this.f40539u.setSelection(i2);
                    return;
                }
            }
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setItalic(boolean z) {
        RTToolbarImageButton rTToolbarImageButton = this.f40524i;
        if (rTToolbarImageButton != null) {
            rTToolbarImageButton.setChecked(z);
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setNumber(boolean z) {
        RTToolbarImageButton rTToolbarImageButton = this.f40535r;
        if (rTToolbarImageButton != null) {
            rTToolbarImageButton.setChecked(z);
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setStrikethrough(boolean z) {
        RTToolbarImageButton rTToolbarImageButton = this.f40526k;
        if (rTToolbarImageButton != null) {
            rTToolbarImageButton.setChecked(z);
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setSubscript(boolean z) {
        RTToolbarImageButton rTToolbarImageButton = this.f40529m;
        if (rTToolbarImageButton != null) {
            rTToolbarImageButton.setChecked(z);
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setSuperscript(boolean z) {
        RTToolbarImageButton rTToolbarImageButton = this.f40528l;
        if (rTToolbarImageButton != null) {
            rTToolbarImageButton.setChecked(z);
        }
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setToolbarContainer(ViewGroup viewGroup) {
        this.f40522g = viewGroup;
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setToolbarListener(RTToolbarListener rTToolbarListener) {
        this.f40521f = rTToolbarListener;
    }

    @Override // com.onegravity.rteditor.RTToolbar
    public void setUnderline(boolean z) {
        RTToolbarImageButton rTToolbarImageButton = this.f40525j;
        if (rTToolbarImageButton != null) {
            rTToolbarImageButton.setChecked(z);
        }
    }

    public HorizontalRTToolbar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40517J = -16777216;
        this.f40518O = -16777216;
        this.f40527k0 = new C7073b();
        this.f40534q0 = new C7074c();
        this.f40538t0 = new C7075d();
        this.f40540u0 = new C7076e();
        m31779l();
    }

    public HorizontalRTToolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f40517J = -16777216;
        this.f40518O = -16777216;
        this.f40527k0 = new C7073b();
        this.f40534q0 = new C7074c();
        this.f40538t0 = new C7075d();
        this.f40540u0 = new C7076e();
        m31779l();
    }
}
