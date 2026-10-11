package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C5139R;
import com.google.android.material.button.MaterialButton;
import com.sunia.HTREnginev2.ove;
import com.sunia.HTREnginev2.tmd;
import com.sunia.HTREnginev2.tum;
import com.sunia.HTREnginev2.yyn;
import java.util.Calendar;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class MaterialCalendar<S> extends AbstractC5264c<S> {

    /* renamed from: p1 */
    public static final String f31053p1 = "THEME_RES_ID_KEY";

    /* renamed from: q1 */
    public static final String f31054q1 = "GRID_SELECTOR_KEY";

    /* renamed from: r1 */
    public static final String f31055r1 = "CALENDAR_CONSTRAINTS_KEY";

    /* renamed from: s1 */
    public static final String f31056s1 = "DAY_VIEW_DECORATOR_KEY";

    /* renamed from: t1 */
    public static final String f31057t1 = "CURRENT_MONTH_KEY";

    /* renamed from: u1 */
    public static final int f31058u1 = 3;

    /* renamed from: v1 */
    @VisibleForTesting
    public static final Object f31059v1 = "MONTHS_VIEW_GROUP_TAG";

    /* renamed from: w1 */
    @VisibleForTesting
    public static final Object f31060w1 = "NAVIGATION_PREV_TAG";

    /* renamed from: x1 */
    @VisibleForTesting
    public static final Object f31061x1 = "NAVIGATION_NEXT_TAG";

    /* renamed from: y1 */
    @VisibleForTesting
    public static final Object f31062y1 = "SELECTOR_TOGGLE_TAG";

    /* renamed from: c1 */
    @StyleRes
    public int f31063c1;

    /* renamed from: d1 */
    @Nullable
    public DateSelector<S> f31064d1;

    /* renamed from: e1 */
    @Nullable
    public CalendarConstraints f31065e1;

    /* renamed from: f1 */
    @Nullable
    public DayViewDecorator f31066f1;

    /* renamed from: g1 */
    @Nullable
    public Month f31067g1;

    /* renamed from: h1 */
    public CalendarSelector f31068h1;

    /* renamed from: i1 */
    public tmd f31069i1;

    /* renamed from: j1 */
    public RecyclerView f31070j1;

    /* renamed from: k1 */
    public RecyclerView f31071k1;

    /* renamed from: l1 */
    public View f31072l1;

    /* renamed from: m1 */
    public View f31073m1;

    /* renamed from: n1 */
    public View f31074n1;

    /* renamed from: o1 */
    public View f31075o1;

    /* loaded from: classes6.dex */
    public enum CalendarSelector {
        DAY,
        YEAR
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$a */
    /* loaded from: classes6.dex */
    public class ViewOnClickListenerC5236a implements View.OnClickListener {

        /* renamed from: e */
        public final /* synthetic */ MonthsPagerAdapter f31076e;

        public ViewOnClickListenerC5236a(MonthsPagerAdapter monthsPagerAdapter) {
            this.f31076e = monthsPagerAdapter;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int findLastVisibleItemPosition = MaterialCalendar.this.m23940A0().findLastVisibleItemPosition() - 1;
            if (findLastVisibleItemPosition >= 0) {
                MaterialCalendar.this.m23942C0(this.f31076e.m23985c(findLastVisibleItemPosition));
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$b */
    /* loaded from: classes6.dex */
    public class RunnableC5237b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ int f31078e;

        public RunnableC5237b(int i) {
            this.f31078e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            MaterialCalendar.this.f31071k1.smoothScrollToPosition(this.f31078e);
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$c */
    /* loaded from: classes6.dex */
    public class C5238c extends AccessibilityDelegateCompat {
        public C5238c() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$d */
    /* loaded from: classes6.dex */
    public class C5239d extends tum {

        /* renamed from: D0 */
        public final /* synthetic */ int f31081D0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5239d(Context context, int i, boolean z, int i2) {
            super(context, i, z);
            this.f31081D0 = i2;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
            if (this.f31081D0 == 0) {
                iArr[0] = MaterialCalendar.this.f31071k1.getWidth();
                iArr[1] = MaterialCalendar.this.f31071k1.getWidth();
            } else {
                iArr[0] = MaterialCalendar.this.f31071k1.getHeight();
                iArr[1] = MaterialCalendar.this.f31071k1.getHeight();
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$e */
    /* loaded from: classes6.dex */
    public class C5240e implements InterfaceC5247l {
        public C5240e() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.datepicker.MaterialCalendar.InterfaceC5247l
        /* renamed from: a */
        public void mo23951a(long j) {
            if (MaterialCalendar.this.f31065e1.getDateValidator().isValid(j)) {
                MaterialCalendar.this.f31064d1.select(j);
                Iterator<OnSelectionChangedListener<S>> it2 = MaterialCalendar.this.onSelectionChangedListeners.iterator();
                while (it2.hasNext()) {
                    it2.next().onSelectionChanged(MaterialCalendar.this.f31064d1.getSelection());
                }
                MaterialCalendar.this.f31071k1.getAdapter().notifyDataSetChanged();
                if (MaterialCalendar.this.f31070j1 != null) {
                    MaterialCalendar.this.f31070j1.getAdapter().notifyDataSetChanged();
                }
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$f */
    /* loaded from: classes6.dex */
    public class C5241f extends AccessibilityDelegateCompat {
        public C5241f() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setScrollable(false);
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$g */
    /* loaded from: classes6.dex */
    public class C5242g extends RecyclerView.ItemDecoration {

        /* renamed from: a */
        public final Calendar f31085a = yyn.m58538x();

        /* renamed from: b */
        public final Calendar f31086b = yyn.m58538x();

        public C5242g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            if ((recyclerView.getAdapter() instanceof YearGridAdapter) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                YearGridAdapter yearGridAdapter = (YearGridAdapter) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (Pair<Long, Long> pair : MaterialCalendar.this.f31064d1.getSelectedRanges()) {
                    Long l = pair.first;
                    if (l != null && pair.second != null) {
                        this.f31085a.setTimeInMillis(l.longValue());
                        this.f31086b.setTimeInMillis(pair.second.longValue());
                        int m23998d = yearGridAdapter.m23998d(this.f31085a.get(1));
                        int m23998d2 = yearGridAdapter.m23998d(this.f31086b.get(1));
                        View findViewByPosition = gridLayoutManager.findViewByPosition(m23998d);
                        View findViewByPosition2 = gridLayoutManager.findViewByPosition(m23998d2);
                        int spanCount = m23998d / gridLayoutManager.getSpanCount();
                        int spanCount2 = m23998d2 / gridLayoutManager.getSpanCount();
                        int i = spanCount;
                        while (i <= spanCount2) {
                            if (gridLayoutManager.findViewByPosition(gridLayoutManager.getSpanCount() * i) != null) {
                                canvas.drawRect((i != spanCount || findViewByPosition == null) ? 0 : findViewByPosition.getLeft() + (findViewByPosition.getWidth() / 2), r9.getTop() + MaterialCalendar.this.f31069i1.f85484d.m57176e(), (i != spanCount2 || findViewByPosition2 == null) ? recyclerView.getWidth() : findViewByPosition2.getLeft() + (findViewByPosition2.getWidth() / 2), r9.getBottom() - MaterialCalendar.this.f31069i1.f85484d.m57173b(), MaterialCalendar.this.f31069i1.f85488h);
                            }
                            i++;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$h */
    /* loaded from: classes6.dex */
    public class C5243h extends AccessibilityDelegateCompat {
        public C5243h() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setHintText(MaterialCalendar.this.f31075o1.getVisibility() == 0 ? MaterialCalendar.this.getString(C5139R.string.mtrl_picker_toggle_to_year_selection) : MaterialCalendar.this.getString(C5139R.string.mtrl_picker_toggle_to_day_selection));
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$i */
    /* loaded from: classes6.dex */
    public class C5244i extends RecyclerView.OnScrollListener {

        /* renamed from: a */
        public final /* synthetic */ MonthsPagerAdapter f31089a;

        /* renamed from: b */
        public final /* synthetic */ MaterialButton f31090b;

        public C5244i(MonthsPagerAdapter monthsPagerAdapter, MaterialButton materialButton) {
            this.f31089a = monthsPagerAdapter;
            this.f31090b = materialButton;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            if (i == 0) {
                recyclerView.announceForAccessibility(this.f31090b.getText());
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            int findFirstVisibleItemPosition = i < 0 ? MaterialCalendar.this.m23940A0().findFirstVisibleItemPosition() : MaterialCalendar.this.m23940A0().findLastVisibleItemPosition();
            MaterialCalendar.this.f31067g1 = this.f31089a.m23985c(findFirstVisibleItemPosition);
            this.f31090b.setText(this.f31089a.m23986d(findFirstVisibleItemPosition));
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$j */
    /* loaded from: classes6.dex */
    public class ViewOnClickListenerC5245j implements View.OnClickListener {
        public ViewOnClickListenerC5245j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialCalendar.this.m23945F0();
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$k */
    /* loaded from: classes6.dex */
    public class ViewOnClickListenerC5246k implements View.OnClickListener {

        /* renamed from: e */
        public final /* synthetic */ MonthsPagerAdapter f31093e;

        public ViewOnClickListenerC5246k(MonthsPagerAdapter monthsPagerAdapter) {
            this.f31093e = monthsPagerAdapter;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int findFirstVisibleItemPosition = MaterialCalendar.this.m23940A0().findFirstVisibleItemPosition() + 1;
            if (findFirstVisibleItemPosition < MaterialCalendar.this.f31071k1.getAdapter().getItemCount()) {
                MaterialCalendar.this.m23942C0(this.f31093e.m23985c(findFirstVisibleItemPosition));
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$l */
    /* loaded from: classes6.dex */
    public interface InterfaceC5247l {
        /* renamed from: a */
        void mo23951a(long j);
    }

    @NonNull
    public static <T> MaterialCalendar<T> newInstance(@NonNull DateSelector<T> dateSelector, @StyleRes int i, @NonNull CalendarConstraints calendarConstraints) {
        return newInstance(dateSelector, i, calendarConstraints, null);
    }

    @Px
    /* renamed from: y0 */
    public static int m23938y0(@NonNull Context context) {
        return context.getResources().getDimensionPixelSize(C5139R.dimen.mtrl_calendar_day_height);
    }

    /* renamed from: z0 */
    public static int m23939z0(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(C5139R.dimen.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(C5139R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(C5139R.dimen.mtrl_calendar_navigation_bottom_padding);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(C5139R.dimen.mtrl_calendar_days_of_week_height);
        int i = C5263b.f31212k;
        return dimensionPixelSize + dimensionPixelSize2 + (resources.getDimensionPixelSize(C5139R.dimen.mtrl_calendar_day_height) * i) + ((i - 1) * resources.getDimensionPixelOffset(C5139R.dimen.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(C5139R.dimen.mtrl_calendar_bottom_padding);
    }

    @NonNull
    /* renamed from: A0 */
    public LinearLayoutManager m23940A0() {
        return (LinearLayoutManager) this.f31071k1.getLayoutManager();
    }

    /* renamed from: B0 */
    public final void m23941B0(int i) {
        this.f31071k1.post(new RunnableC5237b(i));
    }

    /* renamed from: C0 */
    public void m23942C0(Month month) {
        MonthsPagerAdapter monthsPagerAdapter = (MonthsPagerAdapter) this.f31071k1.getAdapter();
        int m23987e = monthsPagerAdapter.m23987e(month);
        int m23987e2 = m23987e - monthsPagerAdapter.m23987e(this.f31067g1);
        boolean z = Math.abs(m23987e2) > 3;
        boolean z2 = m23987e2 > 0;
        this.f31067g1 = month;
        if (z && z2) {
            this.f31071k1.scrollToPosition(m23987e - 3);
            m23941B0(m23987e);
        } else if (!z) {
            m23941B0(m23987e);
        } else {
            this.f31071k1.scrollToPosition(m23987e + 3);
            m23941B0(m23987e);
        }
    }

    /* renamed from: D0 */
    public void m23943D0(CalendarSelector calendarSelector) {
        this.f31068h1 = calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            this.f31070j1.getLayoutManager().scrollToPosition(((YearGridAdapter) this.f31070j1.getAdapter()).m23998d(this.f31067g1.year));
            this.f31074n1.setVisibility(0);
            this.f31075o1.setVisibility(8);
            this.f31072l1.setVisibility(8);
            this.f31073m1.setVisibility(8);
            return;
        }
        if (calendarSelector == CalendarSelector.DAY) {
            this.f31074n1.setVisibility(8);
            this.f31075o1.setVisibility(0);
            this.f31072l1.setVisibility(0);
            this.f31073m1.setVisibility(0);
            m23942C0(this.f31067g1);
        }
    }

    /* renamed from: E0 */
    public final void m23944E0() {
        ViewCompat.setAccessibilityDelegate(this.f31071k1, new C5241f());
    }

    /* renamed from: F0 */
    public void m23945F0() {
        CalendarSelector calendarSelector = this.f31068h1;
        CalendarSelector calendarSelector2 = CalendarSelector.YEAR;
        if (calendarSelector == calendarSelector2) {
            m23943D0(CalendarSelector.DAY);
        } else if (calendarSelector == CalendarSelector.DAY) {
            m23943D0(calendarSelector2);
        }
    }

    @Override // com.google.android.material.datepicker.AbstractC5264c
    public boolean addOnSelectionChangedListener(@NonNull OnSelectionChangedListener<S> onSelectionChangedListener) {
        return super.addOnSelectionChangedListener(onSelectionChangedListener);
    }

    @Override // com.google.android.material.datepicker.AbstractC5264c
    @Nullable
    public DateSelector<S> getDateSelector() {
        return this.f31064d1;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f31063c1 = bundle.getInt("THEME_RES_ID_KEY");
        this.f31064d1 = (DateSelector) bundle.getParcelable(f31054q1);
        this.f31065e1 = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f31066f1 = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.f31067g1 = (Month) bundle.getParcelable(f31057t1);
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        int i;
        int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f31063c1);
        this.f31069i1 = new tmd(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month start = this.f31065e1.getStart();
        if (MaterialDatePicker.m23958D0(contextThemeWrapper)) {
            i = C5139R.layout.mtrl_calendar_vertical;
            i2 = 1;
        } else {
            i = C5139R.layout.mtrl_calendar_horizontal;
            i2 = 0;
        }
        View inflate = cloneInContext.inflate(i, viewGroup, false);
        inflate.setMinimumHeight(m23939z0(requireContext()));
        GridView gridView = (GridView) inflate.findViewById(C5139R.id.mtrl_calendar_days_of_week);
        ViewCompat.setAccessibilityDelegate(gridView, new C5238c());
        int firstDayOfWeek = this.f31065e1.getFirstDayOfWeek();
        gridView.setAdapter((ListAdapter) (firstDayOfWeek > 0 ? new ove(firstDayOfWeek) : new ove()));
        gridView.setNumColumns(start.daysInWeek);
        gridView.setEnabled(false);
        this.f31071k1 = (RecyclerView) inflate.findViewById(C5139R.id.mtrl_calendar_months);
        this.f31071k1.setLayoutManager(new C5239d(getContext(), i2, false, i2));
        this.f31071k1.setTag(f31059v1);
        MonthsPagerAdapter monthsPagerAdapter = new MonthsPagerAdapter(contextThemeWrapper, this.f31064d1, this.f31065e1, this.f31066f1, new C5240e());
        this.f31071k1.setAdapter(monthsPagerAdapter);
        int integer = contextThemeWrapper.getResources().getInteger(C5139R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(C5139R.id.mtrl_calendar_year_selector_frame);
        this.f31070j1 = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f31070j1.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f31070j1.setAdapter(new YearGridAdapter(this));
            this.f31070j1.addItemDecoration(m23947u0());
        }
        if (inflate.findViewById(C5139R.id.month_navigation_fragment_toggle) != null) {
            m23946t0(inflate, monthsPagerAdapter);
        }
        if (!MaterialDatePicker.m23958D0(contextThemeWrapper)) {
            new PagerSnapHelper().attachToRecyclerView(this.f31071k1);
        }
        this.f31071k1.scrollToPosition(monthsPagerAdapter.m23987e(this.f31067g1));
        m23944E0();
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f31063c1);
        bundle.putParcelable(f31054q1, this.f31064d1);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f31065e1);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.f31066f1);
        bundle.putParcelable(f31057t1, this.f31067g1);
    }

    /* renamed from: t0 */
    public final void m23946t0(@NonNull View view, @NonNull MonthsPagerAdapter monthsPagerAdapter) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(C5139R.id.month_navigation_fragment_toggle);
        materialButton.setTag(f31062y1);
        ViewCompat.setAccessibilityDelegate(materialButton, new C5243h());
        View findViewById = view.findViewById(C5139R.id.month_navigation_previous);
        this.f31072l1 = findViewById;
        findViewById.setTag(f31060w1);
        View findViewById2 = view.findViewById(C5139R.id.month_navigation_next);
        this.f31073m1 = findViewById2;
        findViewById2.setTag(f31061x1);
        this.f31074n1 = view.findViewById(C5139R.id.mtrl_calendar_year_selector_frame);
        this.f31075o1 = view.findViewById(C5139R.id.mtrl_calendar_day_selector_frame);
        m23943D0(CalendarSelector.DAY);
        materialButton.setText(this.f31067g1.getLongName());
        this.f31071k1.addOnScrollListener(new C5244i(monthsPagerAdapter, materialButton));
        materialButton.setOnClickListener(new ViewOnClickListenerC5245j());
        this.f31073m1.setOnClickListener(new ViewOnClickListenerC5246k(monthsPagerAdapter));
        this.f31072l1.setOnClickListener(new ViewOnClickListenerC5236a(monthsPagerAdapter));
    }

    @NonNull
    /* renamed from: u0 */
    public final RecyclerView.ItemDecoration m23947u0() {
        return new C5242g();
    }

    @Nullable
    /* renamed from: v0 */
    public CalendarConstraints m23948v0() {
        return this.f31065e1;
    }

    /* renamed from: w0 */
    public tmd m23949w0() {
        return this.f31069i1;
    }

    @Nullable
    /* renamed from: x0 */
    public Month m23950x0() {
        return this.f31067g1;
    }

    @NonNull
    public static <T> MaterialCalendar<T> newInstance(@NonNull DateSelector<T> dateSelector, @StyleRes int i, @NonNull CalendarConstraints calendarConstraints, @Nullable DayViewDecorator dayViewDecorator) {
        MaterialCalendar<T> materialCalendar = new MaterialCalendar<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable(f31054q1, dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", dayViewDecorator);
        bundle.putParcelable(f31057t1, calendarConstraints.getOpenAt());
        materialCalendar.setArguments(bundle);
        return materialCalendar;
    }
}
