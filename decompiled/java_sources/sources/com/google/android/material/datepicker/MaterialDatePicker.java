package com.google.android.material.datepicker;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.util.Pair;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.C5139R;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.MaterialDatePicker;
import com.google.android.material.dialog.InsetDialogOnTouchListener;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.EdgeToEdgeUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.yyn;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes6.dex */
public final class MaterialDatePicker<S> extends DialogFragment {
    public static final int INPUT_MODE_CALENDAR = 0;
    public static final int INPUT_MODE_TEXT = 1;

    /* renamed from: d2 */
    public static final String f31098d2 = "OVERRIDE_THEME_RES_ID";

    /* renamed from: e2 */
    public static final String f31099e2 = "DATE_SELECTOR_KEY";

    /* renamed from: f2 */
    public static final String f31100f2 = "CALENDAR_CONSTRAINTS_KEY";

    /* renamed from: g2 */
    public static final String f31101g2 = "DAY_VIEW_DECORATOR_KEY";

    /* renamed from: h2 */
    public static final String f31102h2 = "TITLE_TEXT_RES_ID_KEY";

    /* renamed from: i2 */
    public static final String f31103i2 = "TITLE_TEXT_KEY";

    /* renamed from: j2 */
    public static final String f31104j2 = "POSITIVE_BUTTON_TEXT_RES_ID_KEY";

    /* renamed from: k2 */
    public static final String f31105k2 = "POSITIVE_BUTTON_TEXT_KEY";

    /* renamed from: l2 */
    public static final String f31106l2 = "POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY";

    /* renamed from: m2 */
    public static final String f31107m2 = "POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY";

    /* renamed from: n2 */
    public static final String f31108n2 = "NEGATIVE_BUTTON_TEXT_RES_ID_KEY";

    /* renamed from: o2 */
    public static final String f31109o2 = "NEGATIVE_BUTTON_TEXT_KEY";

    /* renamed from: p2 */
    public static final String f31110p2 = "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY";

    /* renamed from: q2 */
    public static final String f31111q2 = "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY";

    /* renamed from: r2 */
    public static final String f31112r2 = "INPUT_MODE_KEY";

    /* renamed from: s2 */
    public static final Object f31113s2 = "CONFIRM_BUTTON_TAG";

    /* renamed from: t2 */
    public static final Object f31114t2 = "CANCEL_BUTTON_TAG";

    /* renamed from: u2 */
    public static final Object f31115u2 = "TOGGLE_BUTTON_TAG";

    /* renamed from: D1 */
    @StyleRes
    public int f31119D1;

    /* renamed from: E1 */
    @Nullable
    public DateSelector<S> f31120E1;

    /* renamed from: F1 */
    public AbstractC5264c<S> f31121F1;

    /* renamed from: G1 */
    @Nullable
    public CalendarConstraints f31122G1;

    /* renamed from: H1 */
    @Nullable
    public DayViewDecorator f31123H1;

    /* renamed from: I1 */
    public MaterialCalendar<S> f31124I1;

    /* renamed from: J1 */
    @StringRes
    public int f31125J1;

    /* renamed from: K1 */
    public CharSequence f31126K1;

    /* renamed from: L1 */
    public boolean f31127L1;

    /* renamed from: M1 */
    public int f31128M1;

    /* renamed from: N1 */
    @StringRes
    public int f31129N1;

    /* renamed from: O1 */
    public CharSequence f31130O1;

    /* renamed from: P1 */
    @StringRes
    public int f31131P1;

    /* renamed from: Q1 */
    public CharSequence f31132Q1;

    /* renamed from: R1 */
    @StringRes
    public int f31133R1;

    /* renamed from: S1 */
    public CharSequence f31134S1;

    /* renamed from: T1 */
    @StringRes
    public int f31135T1;

    /* renamed from: U1 */
    public CharSequence f31136U1;

    /* renamed from: V1 */
    public TextView f31137V1;

    /* renamed from: W1 */
    public TextView f31138W1;

    /* renamed from: X1 */
    public CheckableImageButton f31139X1;

    /* renamed from: Y1 */
    @Nullable
    public MaterialShapeDrawable f31140Y1;

    /* renamed from: Z1 */
    public Button f31141Z1;

    /* renamed from: a2 */
    public boolean f31142a2;

    /* renamed from: b2 */
    @Nullable
    public CharSequence f31143b2;

    /* renamed from: c2 */
    @Nullable
    public CharSequence f31144c2;

    /* renamed from: z1 */
    public final LinkedHashSet<MaterialPickerOnPositiveButtonClickListener<? super S>> f31145z1 = new LinkedHashSet<>();

    /* renamed from: A1 */
    public final LinkedHashSet<View.OnClickListener> f31116A1 = new LinkedHashSet<>();

    /* renamed from: B1 */
    public final LinkedHashSet<DialogInterface.OnCancelListener> f31117B1 = new LinkedHashSet<>();

    /* renamed from: C1 */
    public final LinkedHashSet<DialogInterface.OnDismissListener> f31118C1 = new LinkedHashSet<>();

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface InputMode {
    }

    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$a */
    /* loaded from: classes6.dex */
    public class ViewOnClickListenerC5249a implements View.OnClickListener {
        public ViewOnClickListenerC5249a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it2 = MaterialDatePicker.this.f31145z1.iterator();
            while (it2.hasNext()) {
                ((MaterialPickerOnPositiveButtonClickListener) it2.next()).onPositiveButtonClick(MaterialDatePicker.this.getSelection());
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$b */
    /* loaded from: classes6.dex */
    public class ViewOnClickListenerC5250b implements View.OnClickListener {
        public ViewOnClickListenerC5250b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it2 = MaterialDatePicker.this.f31116A1.iterator();
            while (it2.hasNext()) {
                ((View.OnClickListener) it2.next()).onClick(view);
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$c */
    /* loaded from: classes6.dex */
    public class C5251c implements OnApplyWindowInsetsListener {

        /* renamed from: a */
        public final /* synthetic */ int f31164a;

        /* renamed from: b */
        public final /* synthetic */ View f31165b;

        /* renamed from: c */
        public final /* synthetic */ int f31166c;

        public C5251c(int i, View view, int i2) {
            this.f31164a = i;
            this.f31165b = view;
            this.f31166c = i2;
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int i = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).top;
            if (this.f31164a >= 0) {
                this.f31165b.getLayoutParams().height = this.f31164a + i;
                View view2 = this.f31165b;
                view2.setLayoutParams(view2.getLayoutParams());
            }
            View view3 = this.f31165b;
            view3.setPadding(view3.getPaddingLeft(), this.f31166c + i, this.f31165b.getPaddingRight(), this.f31165b.getPaddingBottom());
            return windowInsetsCompat;
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$d */
    /* loaded from: classes6.dex */
    public class C5252d extends OnSelectionChangedListener<S> {
        public C5252d() {
        }

        @Override // com.google.android.material.datepicker.OnSelectionChangedListener
        public void onIncompleteSelectionChanged() {
            MaterialDatePicker.this.f31141Z1.setEnabled(false);
        }

        @Override // com.google.android.material.datepicker.OnSelectionChangedListener
        public void onSelectionChanged(S s) {
            MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
            materialDatePicker.m23974K0(materialDatePicker.getHeaderText());
            MaterialDatePicker.this.f31141Z1.setEnabled(MaterialDatePicker.this.getDateSelector().isSelectionComplete());
        }
    }

    /* renamed from: A0 */
    public static int m23957A0(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C5139R.dimen.mtrl_calendar_content_padding);
        int i = Month.current().daysInWeek;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(C5139R.dimen.mtrl_calendar_day_width) * i) + ((i - 1) * resources.getDimensionPixelOffset(C5139R.dimen.mtrl_calendar_month_horizontal_padding));
    }

    /* renamed from: D0 */
    public static boolean m23958D0(@NonNull Context context) {
        return m23962I0(context, R.attr.windowFullscreen);
    }

    /* renamed from: F0 */
    public static boolean m23959F0(@NonNull Context context) {
        return m23962I0(context, C5139R.attr.nestedScrollable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G0 */
    public /* synthetic */ void m23960G0(View view) {
        this.f31141Z1.setEnabled(getDateSelector().isSelectionComplete());
        this.f31139X1.toggle();
        this.f31128M1 = this.f31128M1 == 1 ? 0 : 1;
        m23976M0(this.f31139X1);
        m23973J0();
    }

    @NonNull
    /* renamed from: H0 */
    public static <S> MaterialDatePicker<S> m23961H0(@NonNull Builder<S> builder) {
        MaterialDatePicker<S> materialDatePicker = new MaterialDatePicker<>();
        Bundle bundle = new Bundle();
        bundle.putInt(f31098d2, builder.f31147b);
        bundle.putParcelable("DATE_SELECTOR_KEY", builder.f31146a);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", builder.f31148c);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", builder.f31149d);
        bundle.putInt(f31102h2, builder.f31150e);
        bundle.putCharSequence(f31103i2, builder.f31151f);
        bundle.putInt(f31112r2, builder.f31161p);
        bundle.putInt(f31104j2, builder.f31152g);
        bundle.putCharSequence(f31105k2, builder.f31153h);
        bundle.putInt(f31106l2, builder.f31154i);
        bundle.putCharSequence(f31107m2, builder.f31155j);
        bundle.putInt(f31108n2, builder.f31156k);
        bundle.putCharSequence(f31109o2, builder.f31157l);
        bundle.putInt(f31110p2, builder.f31158m);
        bundle.putCharSequence(f31111q2, builder.f31159n);
        materialDatePicker.setArguments(bundle);
        return materialDatePicker;
    }

    /* renamed from: I0 */
    public static boolean m23962I0(@NonNull Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(MaterialAttributes.resolveOrThrow(context, C5139R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), new int[]{i});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    public static long thisMonthInUtcMilliseconds() {
        return Month.current().timeInMillis;
    }

    public static long todayInUtcMilliseconds() {
        return yyn.m58536v().getTimeInMillis();
    }

    @NonNull
    /* renamed from: w0 */
    public static Drawable m23968w0(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, AppCompatResources.getDrawable(context, C5139R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], AppCompatResources.getDrawable(context, C5139R.drawable.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    @Nullable
    /* renamed from: y0 */
    public static CharSequence m23969y0(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        String[] split = TextUtils.split(String.valueOf(charSequence), "\n");
        return split.length > 1 ? split[0] : charSequence;
    }

    /* renamed from: B0 */
    public final int m23970B0(Context context) {
        int i = this.f31119D1;
        return i != 0 ? i : getDateSelector().getDefaultThemeResId(context);
    }

    /* renamed from: C0 */
    public final void m23971C0(Context context) {
        this.f31139X1.setTag(f31115u2);
        this.f31139X1.setImageDrawable(m23968w0(context));
        this.f31139X1.setChecked(this.f31128M1 != 0);
        ViewCompat.setAccessibilityDelegate(this.f31139X1, null);
        m23976M0(this.f31139X1);
        this.f31139X1.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.y9j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaterialDatePicker.this.m23960G0(view);
            }
        });
    }

    /* renamed from: E0 */
    public final boolean m23972E0() {
        return getResources().getConfiguration().orientation == 2;
    }

    /* renamed from: J0 */
    public final void m23973J0() {
        int m23970B0 = m23970B0(requireContext());
        MaterialTextInputPicker newInstance = MaterialCalendar.newInstance(getDateSelector(), m23970B0, this.f31122G1, this.f31123H1);
        this.f31124I1 = newInstance;
        if (this.f31128M1 == 1) {
            newInstance = MaterialTextInputPicker.m23981m0(getDateSelector(), m23970B0, this.f31122G1);
        }
        this.f31121F1 = newInstance;
        m23975L0();
        m23974K0(getHeaderText());
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        beginTransaction.replace(C5139R.id.mtrl_calendar_frame, this.f31121F1);
        beginTransaction.commitNow();
        this.f31121F1.addOnSelectionChangedListener(new C5252d());
    }

    @VisibleForTesting
    /* renamed from: K0 */
    public void m23974K0(String str) {
        this.f31138W1.setContentDescription(m23978z0());
        this.f31138W1.setText(str);
    }

    /* renamed from: L0 */
    public final void m23975L0() {
        this.f31137V1.setText((this.f31128M1 == 1 && m23972E0()) ? this.f31144c2 : this.f31143b2);
    }

    /* renamed from: M0 */
    public final void m23976M0(@NonNull CheckableImageButton checkableImageButton) {
        this.f31139X1.setContentDescription(this.f31128M1 == 1 ? checkableImageButton.getContext().getString(C5139R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(C5139R.string.mtrl_picker_toggle_to_text_input_mode));
    }

    public boolean addOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        return this.f31117B1.add(onCancelListener);
    }

    public boolean addOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        return this.f31118C1.add(onDismissListener);
    }

    public boolean addOnNegativeButtonClickListener(View.OnClickListener onClickListener) {
        return this.f31116A1.add(onClickListener);
    }

    public boolean addOnPositiveButtonClickListener(MaterialPickerOnPositiveButtonClickListener<? super S> materialPickerOnPositiveButtonClickListener) {
        return this.f31145z1.add(materialPickerOnPositiveButtonClickListener);
    }

    public void clearOnCancelListeners() {
        this.f31117B1.clear();
    }

    public void clearOnDismissListeners() {
        this.f31118C1.clear();
    }

    public void clearOnNegativeButtonClickListeners() {
        this.f31116A1.clear();
    }

    public void clearOnPositiveButtonClickListeners() {
        this.f31145z1.clear();
    }

    public final DateSelector<S> getDateSelector() {
        if (this.f31120E1 == null) {
            this.f31120E1 = (DateSelector) getArguments().getParcelable("DATE_SELECTOR_KEY");
        }
        return this.f31120E1;
    }

    public String getHeaderText() {
        return getDateSelector().getSelectionDisplayString(getContext());
    }

    public int getInputMode() {
        return this.f31128M1;
    }

    @Nullable
    public final S getSelection() {
        return getDateSelector().getSelection();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it2 = this.f31117B1.iterator();
        while (it2.hasNext()) {
            it2.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f31119D1 = bundle.getInt(f31098d2);
        this.f31120E1 = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f31122G1 = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f31123H1 = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.f31125J1 = bundle.getInt(f31102h2);
        this.f31126K1 = bundle.getCharSequence(f31103i2);
        this.f31128M1 = bundle.getInt(f31112r2);
        this.f31129N1 = bundle.getInt(f31104j2);
        this.f31130O1 = bundle.getCharSequence(f31105k2);
        this.f31131P1 = bundle.getInt(f31106l2);
        this.f31132Q1 = bundle.getCharSequence(f31107m2);
        this.f31133R1 = bundle.getInt(f31108n2);
        this.f31134S1 = bundle.getCharSequence(f31109o2);
        this.f31135T1 = bundle.getInt(f31110p2);
        this.f31136U1 = bundle.getCharSequence(f31111q2);
        CharSequence charSequence = this.f31126K1;
        if (charSequence == null) {
            charSequence = requireContext().getResources().getText(this.f31125J1);
        }
        this.f31143b2 = charSequence;
        this.f31144c2 = m23969y0(charSequence);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), m23970B0(requireContext()));
        Context context = dialog.getContext();
        this.f31127L1 = m23958D0(context);
        this.f31140Y1 = new MaterialShapeDrawable(context, null, C5139R.attr.materialCalendarStyle, C5139R.style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C5139R.styleable.MaterialCalendar, C5139R.attr.materialCalendarStyle, C5139R.style.Widget_MaterialComponents_MaterialCalendar);
        int color = obtainStyledAttributes.getColor(C5139R.styleable.MaterialCalendar_backgroundTint, 0);
        obtainStyledAttributes.recycle();
        this.f31140Y1.initializeElevationOverlay(context);
        this.f31140Y1.setFillColor(ColorStateList.valueOf(color));
        this.f31140Y1.setElevation(ViewCompat.getElevation(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(this.f31127L1 ? C5139R.layout.mtrl_picker_fullscreen : C5139R.layout.mtrl_picker_dialog, viewGroup);
        Context context = inflate.getContext();
        DayViewDecorator dayViewDecorator = this.f31123H1;
        if (dayViewDecorator != null) {
            dayViewDecorator.initialize(context);
        }
        if (this.f31127L1) {
            inflate.findViewById(C5139R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(m23957A0(context), -2));
        } else {
            inflate.findViewById(C5139R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(m23957A0(context), -1));
        }
        TextView textView = (TextView) inflate.findViewById(C5139R.id.mtrl_picker_header_selection_text);
        this.f31138W1 = textView;
        ViewCompat.setAccessibilityLiveRegion(textView, 1);
        this.f31139X1 = (CheckableImageButton) inflate.findViewById(C5139R.id.mtrl_picker_header_toggle);
        this.f31137V1 = (TextView) inflate.findViewById(C5139R.id.mtrl_picker_title_text);
        m23971C0(context);
        this.f31141Z1 = (Button) inflate.findViewById(C5139R.id.confirm_button);
        if (getDateSelector().isSelectionComplete()) {
            this.f31141Z1.setEnabled(true);
        } else {
            this.f31141Z1.setEnabled(false);
        }
        this.f31141Z1.setTag(f31113s2);
        CharSequence charSequence = this.f31130O1;
        if (charSequence != null) {
            this.f31141Z1.setText(charSequence);
        } else {
            int i = this.f31129N1;
            if (i != 0) {
                this.f31141Z1.setText(i);
            }
        }
        CharSequence charSequence2 = this.f31132Q1;
        if (charSequence2 != null) {
            this.f31141Z1.setContentDescription(charSequence2);
        } else if (this.f31131P1 != 0) {
            this.f31141Z1.setContentDescription(getContext().getResources().getText(this.f31131P1));
        }
        this.f31141Z1.setOnClickListener(new ViewOnClickListenerC5249a());
        Button button = (Button) inflate.findViewById(C5139R.id.cancel_button);
        button.setTag(f31114t2);
        CharSequence charSequence3 = this.f31134S1;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i2 = this.f31133R1;
            if (i2 != 0) {
                button.setText(i2);
            }
        }
        CharSequence charSequence4 = this.f31136U1;
        if (charSequence4 != null) {
            button.setContentDescription(charSequence4);
        } else if (this.f31135T1 != 0) {
            button.setContentDescription(getContext().getResources().getText(this.f31135T1));
        }
        button.setOnClickListener(new ViewOnClickListenerC5250b());
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it2 = this.f31118C1.iterator();
        while (it2.hasNext()) {
            it2.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(f31098d2, this.f31119D1);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f31120E1);
        CalendarConstraints.Builder builder = new CalendarConstraints.Builder(this.f31122G1);
        MaterialCalendar<S> materialCalendar = this.f31124I1;
        Month m23950x0 = materialCalendar == null ? null : materialCalendar.m23950x0();
        if (m23950x0 != null) {
            builder.setOpenAt(m23950x0.timeInMillis);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", builder.build());
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.f31123H1);
        bundle.putInt(f31102h2, this.f31125J1);
        bundle.putCharSequence(f31103i2, this.f31126K1);
        bundle.putInt(f31112r2, this.f31128M1);
        bundle.putInt(f31104j2, this.f31129N1);
        bundle.putCharSequence(f31105k2, this.f31130O1);
        bundle.putInt(f31106l2, this.f31131P1);
        bundle.putCharSequence(f31107m2, this.f31132Q1);
        bundle.putInt(f31108n2, this.f31133R1);
        bundle.putCharSequence(f31109o2, this.f31134S1);
        bundle.putInt(f31110p2, this.f31135T1);
        bundle.putCharSequence(f31111q2, this.f31136U1);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f31127L1) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f31140Y1);
            m23977x0(window);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(C5139R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f31140Y1, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new InsetDialogOnTouchListener(requireDialog(), rect));
        }
        m23973J0();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        this.f31121F1.m24027k0();
        super.onStop();
    }

    public boolean removeOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        return this.f31117B1.remove(onCancelListener);
    }

    public boolean removeOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        return this.f31118C1.remove(onDismissListener);
    }

    public boolean removeOnNegativeButtonClickListener(View.OnClickListener onClickListener) {
        return this.f31116A1.remove(onClickListener);
    }

    public boolean removeOnPositiveButtonClickListener(MaterialPickerOnPositiveButtonClickListener<? super S> materialPickerOnPositiveButtonClickListener) {
        return this.f31145z1.remove(materialPickerOnPositiveButtonClickListener);
    }

    /* renamed from: x0 */
    public final void m23977x0(Window window) {
        if (this.f31142a2) {
            return;
        }
        View findViewById = requireView().findViewById(C5139R.id.fullscreen_header);
        EdgeToEdgeUtils.applyEdgeToEdge(window, true, ViewUtils.getBackgroundColor(findViewById), null);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById, new C5251c(findViewById.getLayoutParams().height, findViewById, findViewById.getPaddingTop()));
        this.f31142a2 = true;
    }

    /* renamed from: z0 */
    public final String m23978z0() {
        return getDateSelector().getSelectionContentDescription(requireContext());
    }

    /* loaded from: classes6.dex */
    public static final class Builder<S> {

        /* renamed from: a */
        public final DateSelector<S> f31146a;

        /* renamed from: c */
        public CalendarConstraints f31148c;

        /* renamed from: d */
        @Nullable
        public DayViewDecorator f31149d;

        /* renamed from: b */
        public int f31147b = 0;

        /* renamed from: e */
        public int f31150e = 0;

        /* renamed from: f */
        public CharSequence f31151f = null;

        /* renamed from: g */
        public int f31152g = 0;

        /* renamed from: h */
        public CharSequence f31153h = null;

        /* renamed from: i */
        public int f31154i = 0;

        /* renamed from: j */
        public CharSequence f31155j = null;

        /* renamed from: k */
        public int f31156k = 0;

        /* renamed from: l */
        public CharSequence f31157l = null;

        /* renamed from: m */
        public int f31158m = 0;

        /* renamed from: n */
        public CharSequence f31159n = null;

        /* renamed from: o */
        @Nullable
        public S f31160o = null;

        /* renamed from: p */
        public int f31161p = 0;

        public Builder(DateSelector<S> dateSelector) {
            this.f31146a = dateSelector;
        }

        /* renamed from: b */
        public static boolean m23979b(Month month, CalendarConstraints calendarConstraints) {
            return month.compareTo(calendarConstraints.getStart()) >= 0 && month.compareTo(calendarConstraints.getEnd()) <= 0;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static <S> Builder<S> customDatePicker(@NonNull DateSelector<S> dateSelector) {
            return new Builder<>(dateSelector);
        }

        @NonNull
        public static Builder<Long> datePicker() {
            return new Builder<>(new SingleDateSelector());
        }

        @NonNull
        public static Builder<Pair<Long, Long>> dateRangePicker() {
            return new Builder<>(new RangeDateSelector());
        }

        /* renamed from: a */
        public final Month m23980a() {
            if (!this.f31146a.getSelectedDays().isEmpty()) {
                Month create = Month.create(this.f31146a.getSelectedDays().iterator().next().longValue());
                if (m23979b(create, this.f31148c)) {
                    return create;
                }
            }
            Month current = Month.current();
            return m23979b(current, this.f31148c) ? current : this.f31148c.getStart();
        }

        @NonNull
        public MaterialDatePicker<S> build() {
            if (this.f31148c == null) {
                this.f31148c = new CalendarConstraints.Builder().build();
            }
            if (this.f31150e == 0) {
                this.f31150e = this.f31146a.getDefaultTitleResId();
            }
            S s = this.f31160o;
            if (s != null) {
                this.f31146a.setSelection(s);
            }
            if (this.f31148c.getOpenAt() == null) {
                this.f31148c.setOpenAt(m23980a());
            }
            return MaterialDatePicker.m23961H0(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setCalendarConstraints(CalendarConstraints calendarConstraints) {
            this.f31148c = calendarConstraints;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setDayViewDecorator(@Nullable DayViewDecorator dayViewDecorator) {
            this.f31149d = dayViewDecorator;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setInputMode(int i) {
            this.f31161p = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setNegativeButtonContentDescription(@StringRes int i) {
            this.f31158m = i;
            this.f31159n = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setNegativeButtonText(@StringRes int i) {
            this.f31156k = i;
            this.f31157l = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setPositiveButtonContentDescription(@StringRes int i) {
            this.f31154i = i;
            this.f31155j = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setPositiveButtonText(@StringRes int i) {
            this.f31152g = i;
            this.f31153h = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setSelection(S s) {
            this.f31160o = s;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setTextInputFormat(@Nullable SimpleDateFormat simpleDateFormat) {
            this.f31146a.setTextInputFormat(simpleDateFormat);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setTheme(@StyleRes int i) {
            this.f31147b = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setTitleText(@StringRes int i) {
            this.f31150e = i;
            this.f31151f = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setNegativeButtonContentDescription(@Nullable CharSequence charSequence) {
            this.f31159n = charSequence;
            this.f31158m = 0;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setNegativeButtonText(@Nullable CharSequence charSequence) {
            this.f31157l = charSequence;
            this.f31156k = 0;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setPositiveButtonContentDescription(@Nullable CharSequence charSequence) {
            this.f31155j = charSequence;
            this.f31154i = 0;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setPositiveButtonText(@Nullable CharSequence charSequence) {
            this.f31153h = charSequence;
            this.f31152g = 0;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setTitleText(@Nullable CharSequence charSequence) {
            this.f31151f = charSequence;
            this.f31150e = 0;
            return this;
        }
    }
}
