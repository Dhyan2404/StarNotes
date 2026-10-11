package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.core.view.ViewCompat;
import androidx.cursoradapter.widget.CursorAdapter;
import androidx.customview.view.AbsSavedState;
import com.google.android.gms.actions.SearchIntents;
import com.sunia.HTREnginev2.r5n;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class SearchView extends LinearLayoutCompat implements CollapsibleActionView {

    /* renamed from: l1 */
    public static final boolean f1833l1 = false;

    /* renamed from: m1 */
    public static final String f1834m1 = "SearchView";

    /* renamed from: n1 */
    public static final String f1835n1 = "nm";

    /* renamed from: o1 */
    public static final C0288l f1836o1 = null;

    /* renamed from: A0 */
    public int[] f1837A0;

    /* renamed from: B0 */
    public final ImageView f1838B0;

    /* renamed from: C0 */
    public final Drawable f1839C0;

    /* renamed from: D0 */
    public final int f1840D0;

    /* renamed from: E0 */
    public final int f1841E0;

    /* renamed from: F0 */
    public final Intent f1842F0;

    /* renamed from: G0 */
    public final Intent f1843G0;

    /* renamed from: H0 */
    public final CharSequence f1844H0;

    /* renamed from: I0 */
    public OnQueryTextListener f1845I0;

    /* renamed from: J */
    public final View f1846J;

    /* renamed from: J0 */
    public OnCloseListener f1847J0;

    /* renamed from: K0 */
    public View.OnFocusChangeListener f1848K0;

    /* renamed from: L0 */
    public OnSuggestionListener f1849L0;

    /* renamed from: M0 */
    public View.OnClickListener f1850M0;

    /* renamed from: N0 */
    public boolean f1851N0;

    /* renamed from: O */
    public final View f1852O;

    /* renamed from: O0 */
    public boolean f1853O0;

    /* renamed from: P0 */
    public CursorAdapter f1854P0;

    /* renamed from: Q */
    public final View f1855Q;

    /* renamed from: Q0 */
    public boolean f1856Q0;

    /* renamed from: R0 */
    public CharSequence f1857R0;

    /* renamed from: S0 */
    public boolean f1858S0;

    /* renamed from: T0 */
    public boolean f1859T0;

    /* renamed from: U0 */
    public int f1860U0;

    /* renamed from: V0 */
    public boolean f1861V0;

    /* renamed from: W0 */
    public CharSequence f1862W0;

    /* renamed from: X0 */
    public CharSequence f1863X0;

    /* renamed from: Y0 */
    public boolean f1864Y0;

    /* renamed from: Z0 */
    public int f1865Z0;

    /* renamed from: a1 */
    public SearchableInfo f1866a1;

    /* renamed from: b1 */
    public Bundle f1867b1;

    /* renamed from: c1 */
    public final Runnable f1868c1;

    /* renamed from: d1 */
    public Runnable f1869d1;

    /* renamed from: e1 */
    public final WeakHashMap<String, Drawable.ConstantState> f1870e1;

    /* renamed from: f1 */
    public final View.OnClickListener f1871f1;

    /* renamed from: g1 */
    public View.OnKeyListener f1872g1;

    /* renamed from: h1 */
    public final TextView.OnEditorActionListener f1873h1;

    /* renamed from: i1 */
    public final AdapterView.OnItemClickListener f1874i1;

    /* renamed from: j1 */
    public final AdapterView.OnItemSelectedListener f1875j1;

    /* renamed from: k0 */
    public final ImageView f1876k0;

    /* renamed from: k1 */
    public TextWatcher f1877k1;

    /* renamed from: q0 */
    public final ImageView f1878q0;

    /* renamed from: t0 */
    public final ImageView f1879t0;

    /* renamed from: u0 */
    public final ImageView f1880u0;

    /* renamed from: v0 */
    public final View f1881v0;

    /* renamed from: w0 */
    public C0289m f1882w0;

    /* renamed from: x0 */
    public Rect f1883x0;

    /* renamed from: y0 */
    public Rect f1884y0;

    /* renamed from: z */
    public final SearchAutoComplete f1885z;

    /* renamed from: z0 */
    public int[] f1886z0;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<SearchView> {

        /* renamed from: a */
        public boolean f1887a = false;

        /* renamed from: b */
        public int f1888b;

        /* renamed from: c */
        public int f1889c;

        /* renamed from: d */
        public int f1890d;

        /* renamed from: e */
        public int f1891e;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1888b = propertyMapper.mapInt("imeOptions", R.attr.imeOptions);
            this.f1889c = propertyMapper.mapInt("maxWidth", R.attr.maxWidth);
            this.f1890d = propertyMapper.mapBoolean("iconifiedByDefault", C0118R.attr.iconifiedByDefault);
            this.f1891e = propertyMapper.mapObject("queryHint", C0118R.attr.queryHint);
            this.f1887a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull SearchView searchView, @NonNull PropertyReader propertyReader) {
            if (this.f1887a) {
                propertyReader.readInt(this.f1888b, searchView.getImeOptions());
                propertyReader.readInt(this.f1889c, searchView.getMaxWidth());
                propertyReader.readBoolean(this.f1890d, searchView.isIconfiedByDefault());
                propertyReader.readObject(this.f1891e, searchView.getQueryHint());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    /* loaded from: classes3.dex */
    public interface OnCloseListener {
        boolean onClose();
    }

    /* loaded from: classes3.dex */
    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    /* loaded from: classes3.dex */
    public interface OnSuggestionListener {
        boolean onSuggestionClick(int i);

        boolean onSuggestionSelect(int i);
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0275a();
        boolean isIconified;

        /* renamed from: androidx.appcompat.widget.SearchView$SavedState$a */
        /* loaded from: classes3.dex */
        public class C0275a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.isIconified + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.isIconified));
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isIconified = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* renamed from: i */
        public int f1892i;

        /* renamed from: j */
        public SearchView f1893j;

        /* renamed from: k */
        public boolean f1894k;

        /* renamed from: l */
        public final Runnable f1895l;

        /* renamed from: androidx.appcompat.widget.SearchView$SearchAutoComplete$a */
        /* loaded from: classes3.dex */
        public class RunnableC0276a implements Runnable {
            public RunnableC0276a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete.this.m904d();
            }
        }

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i < 600) {
                return (i < 640 || i2 < 480) ? 160 : 192;
            }
            return 192;
        }

        /* renamed from: b */
        public void m902b() {
            C0287k.m906b(this, 1);
            if (enoughToFilter()) {
                showDropDown();
            }
        }

        /* renamed from: c */
        public boolean m903c() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        /* renamed from: d */
        public void m904d() {
            if (this.f1894k) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f1894k = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f1892i <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1894k) {
                removeCallbacks(this.f1895l);
                post(this.f1895l);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        public void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.f1893j.m878N();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f1893j.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.f1893j.hasFocus() && getVisibility() == 0) {
                this.f1894k = true;
                if (SearchView.m865B(getContext())) {
                    m902b();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f1894k = false;
                removeCallbacks(this.f1895l);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f1894k = true;
                    return;
                }
                this.f1894k = false;
                removeCallbacks(this.f1895l);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f1893j = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f1892i = i;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, C0118R.attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f1895l = new RunnableC0276a();
            this.f1892i = getThreshold();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$a */
    /* loaded from: classes3.dex */
    public class C0277a implements TextWatcher {
        public C0277a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchView.this.m877M(charSequence);
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$b */
    /* loaded from: classes3.dex */
    public class RunnableC0278b implements Runnable {
        public RunnableC0278b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.m883S();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$c */
    /* loaded from: classes3.dex */
    public class RunnableC0279c implements Runnable {
        public RunnableC0279c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CursorAdapter cursorAdapter = SearchView.this.f1854P0;
            if (cursorAdapter instanceof r5n) {
                cursorAdapter.changeCursor(null);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$d */
    /* loaded from: classes3.dex */
    public class ViewOnFocusChangeListenerC0280d implements View.OnFocusChangeListener {
        public ViewOnFocusChangeListenerC0280d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.f1848K0;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$e */
    /* loaded from: classes3.dex */
    public class ViewOnLayoutChangeListenerC0281e implements View.OnLayoutChangeListener {
        public ViewOnLayoutChangeListenerC0281e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            SearchView.this.m890r();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$f */
    /* loaded from: classes3.dex */
    public class ViewOnClickListenerC0282f implements View.OnClickListener {
        public ViewOnClickListenerC0282f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.f1876k0) {
                searchView.m874J();
                return;
            }
            if (view == searchView.f1879t0) {
                searchView.m871G();
                return;
            }
            if (view == searchView.f1878q0) {
                searchView.m875K();
            } else if (view == searchView.f1880u0) {
                searchView.m879O();
            } else if (view == searchView.f1885z) {
                searchView.m896x();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$g */
    /* loaded from: classes3.dex */
    public class ViewOnKeyListenerC0283g implements View.OnKeyListener {
        public ViewOnKeyListenerC0283g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.f1866a1 == null) {
                return false;
            }
            if (searchView.f1885z.isPopupShowing() && SearchView.this.f1885z.getListSelection() != -1) {
                return SearchView.this.m876L(view, i, keyEvent);
            }
            if (SearchView.this.f1885z.m903c() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.m869E(0, null, searchView2.f1885z.getText().toString());
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$h */
    /* loaded from: classes3.dex */
    public class C0284h implements TextView.OnEditorActionListener {
        public C0284h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchView.this.m875K();
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$i */
    /* loaded from: classes3.dex */
    public class C0285i implements AdapterView.OnItemClickListener {
        public C0285i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m872H(i, 0, null);
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$j */
    /* loaded from: classes3.dex */
    public class C0286j implements AdapterView.OnItemSelectedListener {
        public C0286j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m873I(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.appcompat.widget.SearchView$k */
    /* loaded from: classes3.dex */
    public static class C0287k {
        @DoNotInline
        /* renamed from: a */
        public static void m905a(AutoCompleteTextView autoCompleteTextView) {
            autoCompleteTextView.refreshAutoCompleteResults();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m906b(SearchAutoComplete searchAutoComplete, int i) {
            searchAutoComplete.setInputMethodMode(i);
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$l */
    /* loaded from: classes3.dex */
    public static class C0288l {

        /* renamed from: a */
        public Method f1907a;

        /* renamed from: b */
        public Method f1908b;

        /* renamed from: c */
        public Method f1909c;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        public C0288l() {
            this.f1907a = null;
            this.f1908b = null;
            this.f1909c = null;
            m907d();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1907a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1908b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1909c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        /* renamed from: d */
        public static void m907d() {
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }

        /* renamed from: a */
        public void m908a(AutoCompleteTextView autoCompleteTextView) {
            m907d();
            Method method = this.f1908b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        /* renamed from: b */
        public void m909b(AutoCompleteTextView autoCompleteTextView) {
            m907d();
            Method method = this.f1907a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        /* renamed from: c */
        public void m910c(AutoCompleteTextView autoCompleteTextView) {
            m907d();
            Method method = this.f1909c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$m */
    /* loaded from: classes3.dex */
    public static class C0289m extends TouchDelegate {

        /* renamed from: a */
        public final View f1910a;

        /* renamed from: b */
        public final Rect f1911b;

        /* renamed from: c */
        public final Rect f1912c;

        /* renamed from: d */
        public final Rect f1913d;

        /* renamed from: e */
        public final int f1914e;

        /* renamed from: f */
        public boolean f1915f;

        public C0289m(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f1914e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f1911b = new Rect();
            this.f1913d = new Rect();
            this.f1912c = new Rect();
            m911a(rect, rect2);
            this.f1910a = view;
        }

        /* renamed from: a */
        public void m911a(Rect rect, Rect rect2) {
            this.f1911b.set(rect);
            this.f1913d.set(rect);
            Rect rect3 = this.f1913d;
            int i = this.f1914e;
            rect3.inset(-i, -i);
            this.f1912c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z3 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z2 = this.f1915f;
                    if (z2 && !this.f1913d.contains(x, y)) {
                        z3 = z2;
                        z = false;
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f1915f;
                        this.f1915f = false;
                    }
                    z = true;
                    z3 = false;
                }
                z3 = z2;
                z = true;
            } else {
                if (this.f1911b.contains(x, y)) {
                    this.f1915f = true;
                    z = true;
                }
                z = true;
                z3 = false;
            }
            if (!z3) {
                return false;
            }
            if (!z || this.f1912c.contains(x, y)) {
                Rect rect = this.f1912c;
                motionEvent.setLocation(x - rect.left, y - rect.top);
            } else {
                motionEvent.setLocation(this.f1910a.getWidth() / 2, this.f1910a.getHeight() / 2);
            }
            return this.f1910a.dispatchTouchEvent(motionEvent);
        }
    }

    public SearchView(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: B */
    public static boolean m865B(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(C0118R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(C0118R.dimen.abc_search_view_preferred_width);
    }

    /* renamed from: A */
    public final boolean m866A() {
        SearchableInfo searchableInfo = this.f1866a1;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = this.f1866a1.getVoiceSearchLaunchWebSearch() ? this.f1842F0 : this.f1866a1.getVoiceSearchLaunchRecognizer() ? this.f1843G0 : null;
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    /* renamed from: C */
    public final boolean m867C() {
        return (this.f1856Q0 || this.f1861V0) && !isIconified();
    }

    /* renamed from: D */
    public final void m868D(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e) {
            Log.e(f1834m1, "Failed launch activity: " + intent, e);
        }
    }

    /* renamed from: E */
    public void m869E(int i, String str, String str2) {
        getContext().startActivity(m891s("android.intent.action.SEARCH", null, null, str2, i, str));
    }

    /* renamed from: F */
    public final boolean m870F(int i, int i2, String str) {
        Cursor cursor = this.f1854P0.getCursor();
        if (cursor == null || !cursor.moveToPosition(i)) {
            return false;
        }
        m868D(m892t(cursor, i2, str));
        return true;
    }

    /* renamed from: G */
    public void m871G() {
        if (!TextUtils.isEmpty(this.f1885z.getText())) {
            this.f1885z.setText("");
            this.f1885z.requestFocus();
            this.f1885z.setImeVisibility(true);
        } else if (this.f1851N0) {
            OnCloseListener onCloseListener = this.f1847J0;
            if (onCloseListener == null || !onCloseListener.onClose()) {
                clearFocus();
                m888X(true);
            }
        }
    }

    /* renamed from: H */
    public boolean m872H(int i, int i2, String str) {
        OnSuggestionListener onSuggestionListener = this.f1849L0;
        if (onSuggestionListener != null && onSuggestionListener.onSuggestionClick(i)) {
            return false;
        }
        m870F(i, 0, null);
        this.f1885z.setImeVisibility(false);
        m895w();
        return true;
    }

    /* renamed from: I */
    public boolean m873I(int i) {
        OnSuggestionListener onSuggestionListener = this.f1849L0;
        if (onSuggestionListener != null && onSuggestionListener.onSuggestionSelect(i)) {
            return false;
        }
        m881Q(i);
        return true;
    }

    /* renamed from: J */
    public void m874J() {
        m888X(false);
        this.f1885z.requestFocus();
        this.f1885z.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f1850M0;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    /* renamed from: K */
    public void m875K() {
        Editable text = this.f1885z.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        OnQueryTextListener onQueryTextListener = this.f1845I0;
        if (onQueryTextListener == null || !onQueryTextListener.onQueryTextSubmit(text.toString())) {
            if (this.f1866a1 != null) {
                m869E(0, null, text.toString());
            }
            this.f1885z.setImeVisibility(false);
            m895w();
        }
    }

    /* renamed from: L */
    public boolean m876L(View view, int i, KeyEvent keyEvent) {
        if (this.f1866a1 != null && this.f1854P0 != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i == 66 || i == 84 || i == 61) {
                return m872H(this.f1885z.getListSelection(), 0, null);
            }
            if (i == 21 || i == 22) {
                this.f1885z.setSelection(i == 21 ? 0 : this.f1885z.length());
                this.f1885z.setListSelection(0);
                this.f1885z.clearListSelection();
                this.f1885z.m902b();
                return true;
            }
            if (i == 19) {
                this.f1885z.getListSelection();
                return false;
            }
        }
        return false;
    }

    /* renamed from: M */
    public void m877M(CharSequence charSequence) {
        Editable text = this.f1885z.getText();
        this.f1863X0 = text;
        boolean z = !TextUtils.isEmpty(text);
        m887W(z);
        m889Y(!z);
        m882R();
        m886V();
        if (this.f1845I0 != null && !TextUtils.equals(charSequence, this.f1862W0)) {
            this.f1845I0.onQueryTextChange(charSequence.toString());
        }
        this.f1862W0 = charSequence.toString();
    }

    /* renamed from: N */
    public void m878N() {
        m888X(isIconified());
        m880P();
        if (this.f1885z.hasFocus()) {
            m896x();
        }
    }

    /* renamed from: O */
    public void m879O() {
        SearchableInfo searchableInfo = this.f1866a1;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(m894v(this.f1842F0, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(m893u(this.f1843G0, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
            Log.w(f1834m1, "Could not find voice search activity");
        }
    }

    /* renamed from: P */
    public final void m880P() {
        post(this.f1868c1);
    }

    /* renamed from: Q */
    public final void m881Q(int i) {
        Editable text = this.f1885z.getText();
        Cursor cursor = this.f1854P0.getCursor();
        if (cursor == null) {
            return;
        }
        if (!cursor.moveToPosition(i)) {
            setQuery(text);
            return;
        }
        CharSequence convertToString = this.f1854P0.convertToString(cursor);
        if (convertToString != null) {
            setQuery(convertToString);
        } else {
            setQuery(text);
        }
    }

    /* renamed from: R */
    public final void m882R() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f1885z.getText());
        if (!z2 && (!this.f1851N0 || this.f1864Y0)) {
            z = false;
        }
        this.f1879t0.setVisibility(z ? 0 : 8);
        Drawable drawable = this.f1879t0.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    /* renamed from: S */
    public void m883S() {
        int[] iArr = this.f1885z.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f1852O.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f1855Q.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    /* renamed from: T */
    public final void m884T() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f1885z;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(m898z(queryHint));
    }

    /* renamed from: U */
    public final void m885U() {
        this.f1885z.setThreshold(this.f1866a1.getSuggestThreshold());
        this.f1885z.setImeOptions(this.f1866a1.getImeOptions());
        int inputType = this.f1866a1.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.f1866a1.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | 524288;
            }
        }
        this.f1885z.setInputType(inputType);
        CursorAdapter cursorAdapter = this.f1854P0;
        if (cursorAdapter != null) {
            cursorAdapter.changeCursor(null);
        }
        if (this.f1866a1.getSuggestAuthority() != null) {
            r5n r5nVar = new r5n(getContext(), this, this.f1866a1, this.f1870e1);
            this.f1854P0 = r5nVar;
            this.f1885z.setAdapter(r5nVar);
            ((r5n) this.f1854P0).m56905q(this.f1858S0 ? 2 : 1);
        }
    }

    /* renamed from: V */
    public final void m886V() {
        this.f1855Q.setVisibility((m867C() && (this.f1878q0.getVisibility() == 0 || this.f1880u0.getVisibility() == 0)) ? 0 : 8);
    }

    /* renamed from: W */
    public final void m887W(boolean z) {
        this.f1878q0.setVisibility((this.f1856Q0 && m867C() && hasFocus() && (z || !this.f1861V0)) ? 0 : 8);
    }

    /* renamed from: X */
    public final void m888X(boolean z) {
        this.f1853O0 = z;
        int i = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.f1885z.getText());
        this.f1876k0.setVisibility(i);
        m887W(z2);
        this.f1846J.setVisibility(z ? 8 : 0);
        this.f1838B0.setVisibility((this.f1838B0.getDrawable() == null || this.f1851N0) ? 8 : 0);
        m882R();
        m889Y(!z2);
        m886V();
    }

    /* renamed from: Y */
    public final void m889Y(boolean z) {
        int i = 8;
        if (this.f1861V0 && !isIconified() && z) {
            this.f1878q0.setVisibility(8);
            i = 0;
        }
        this.f1880u0.setVisibility(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f1859T0 = true;
        super.clearFocus();
        this.f1885z.clearFocus();
        this.f1885z.setImeVisibility(false);
        this.f1859T0 = false;
    }

    public int getImeOptions() {
        return this.f1885z.getImeOptions();
    }

    public int getInputType() {
        return this.f1885z.getInputType();
    }

    public int getMaxWidth() {
        return this.f1860U0;
    }

    public CharSequence getQuery() {
        return this.f1885z.getText();
    }

    @Nullable
    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f1857R0;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.f1866a1;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f1844H0 : getContext().getText(this.f1866a1.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.f1841E0;
    }

    public int getSuggestionRowLayout() {
        return this.f1840D0;
    }

    public CursorAdapter getSuggestionsAdapter() {
        return this.f1854P0;
    }

    public boolean isIconfiedByDefault() {
        return this.f1851N0;
    }

    public boolean isIconified() {
        return this.f1853O0;
    }

    public boolean isQueryRefinementEnabled() {
        return this.f1858S0;
    }

    public boolean isSubmitButtonEnabled() {
        return this.f1856Q0;
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public void onActionViewCollapsed() {
        setQuery("", false);
        clearFocus();
        m888X(true);
        this.f1885z.setImeOptions(this.f1865Z0);
        this.f1864Y0 = false;
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public void onActionViewExpanded() {
        if (this.f1864Y0) {
            return;
        }
        this.f1864Y0 = true;
        int imeOptions = this.f1885z.getImeOptions();
        this.f1865Z0 = imeOptions;
        this.f1885z.setImeOptions(imeOptions | 33554432);
        this.f1885z.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f1868c1);
        post(this.f1869d1);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m897y(this.f1885z, this.f1883x0);
            Rect rect = this.f1884y0;
            Rect rect2 = this.f1883x0;
            rect.set(rect2.left, 0, rect2.right, i4 - i2);
            C0289m c0289m = this.f1882w0;
            if (c0289m != null) {
                c0289m.m911a(this.f1884y0, this.f1883x0);
                return;
            }
            C0289m c0289m2 = new C0289m(this.f1884y0, this.f1883x0, this.f1885z);
            this.f1882w0 = c0289m2;
            setTouchDelegate(c0289m2);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (isIconified()) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.f1860U0;
            size = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.f1860U0;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i3 = this.f1860U0) > 0) {
            size = Math.min(i3, size);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    public void onQueryRefine(@Nullable CharSequence charSequence) {
        setQuery(charSequence);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        m888X(savedState.isIconified);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.isIconified = isIconified();
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m880P();
    }

    /* renamed from: r */
    public void m890r() {
        if (this.f1881v0.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f1852O.getPaddingLeft();
            Rect rect = new Rect();
            boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
            int dimensionPixelSize = this.f1851N0 ? resources.getDimensionPixelSize(C0118R.dimen.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(C0118R.dimen.abc_dropdownitem_text_padding_left) : 0;
            this.f1885z.getDropDownBackground().getPadding(rect);
            this.f1885z.setDropDownHorizontalOffset(isLayoutRtl ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.f1885z.setDropDownWidth((((this.f1881v0.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (this.f1859T0 || !isFocusable()) {
            return false;
        }
        if (isIconified()) {
            return super.requestFocus(i, rect);
        }
        boolean requestFocus = this.f1885z.requestFocus(i, rect);
        if (requestFocus) {
            m888X(false);
        }
        return requestFocus;
    }

    /* renamed from: s */
    public final Intent m891s(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f1863X0);
        if (str3 != null) {
            intent.putExtra(SearchIntents.EXTRA_QUERY, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f1867b1;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f1866a1.getSearchActivity());
        return intent;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAppSearchData(Bundle bundle) {
        this.f1867b1 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            m871G();
        } else {
            m874J();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f1851N0 == z) {
            return;
        }
        this.f1851N0 = z;
        m888X(z);
        m884T();
    }

    public void setImeOptions(int i) {
        this.f1885z.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.f1885z.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.f1860U0 = i;
        requestLayout();
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.f1847J0 = onCloseListener;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f1848K0 = onFocusChangeListener;
    }

    public void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.f1845I0 = onQueryTextListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f1850M0 = onClickListener;
    }

    public void setOnSuggestionListener(OnSuggestionListener onSuggestionListener) {
        this.f1849L0 = onSuggestionListener;
    }

    public void setQuery(CharSequence charSequence, boolean z) {
        this.f1885z.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f1885z;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.f1863X0 = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        m875K();
    }

    public void setQueryHint(@Nullable CharSequence charSequence) {
        this.f1857R0 = charSequence;
        m884T();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.f1858S0 = z;
        CursorAdapter cursorAdapter = this.f1854P0;
        if (cursorAdapter instanceof r5n) {
            ((r5n) cursorAdapter).m56905q(z ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f1866a1 = searchableInfo;
        if (searchableInfo != null) {
            m885U();
            m884T();
        }
        boolean m866A = m866A();
        this.f1861V0 = m866A;
        if (m866A) {
            this.f1885z.setPrivateImeOptions(f1835n1);
        }
        m888X(isIconified());
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.f1856Q0 = z;
        m888X(isIconified());
    }

    public void setSuggestionsAdapter(CursorAdapter cursorAdapter) {
        this.f1854P0 = cursorAdapter;
        this.f1885z.setAdapter(cursorAdapter);
    }

    /* renamed from: t */
    public final Intent m892t(Cursor cursor, int i, String str) {
        int i2;
        String m56890g;
        try {
            String m56890g2 = r5n.m56890g(cursor, "suggest_intent_action");
            if (m56890g2 == null) {
                m56890g2 = this.f1866a1.getSuggestIntentAction();
            }
            if (m56890g2 == null) {
                m56890g2 = "android.intent.action.SEARCH";
            }
            String str2 = m56890g2;
            String m56890g3 = r5n.m56890g(cursor, "suggest_intent_data");
            if (m56890g3 == null) {
                m56890g3 = this.f1866a1.getSuggestIntentData();
            }
            if (m56890g3 != null && (m56890g = r5n.m56890g(cursor, "suggest_intent_data_id")) != null) {
                m56890g3 = m56890g3 + "/" + Uri.encode(m56890g);
            }
            return m891s(str2, m56890g3 == null ? null : Uri.parse(m56890g3), r5n.m56890g(cursor, "suggest_intent_extra_data"), r5n.m56890g(cursor, "suggest_intent_query"), i, str);
        } catch (RuntimeException e) {
            try {
                i2 = cursor.getPosition();
            } catch (RuntimeException unused) {
                i2 = -1;
            }
            Log.w(f1834m1, "Search suggestions cursor at row " + i2 + " returned exception.", e);
            return null;
        }
    }

    /* renamed from: u */
    public final Intent m893u(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f1867b1;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    /* renamed from: v */
    public final Intent m894v(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    /* renamed from: w */
    public final void m895w() {
        this.f1885z.dismissDropDown();
    }

    /* renamed from: x */
    public void m896x() {
        C0287k.m905a(this.f1885z);
    }

    /* renamed from: y */
    public final void m897y(View view, Rect rect) {
        view.getLocationInWindow(this.f1886z0);
        getLocationInWindow(this.f1837A0);
        int[] iArr = this.f1886z0;
        int i = iArr[1];
        int[] iArr2 = this.f1837A0;
        int i2 = i - iArr2[1];
        int i3 = iArr[0] - iArr2[0];
        rect.set(i3, i2, view.getWidth() + i3, view.getHeight() + i2);
    }

    /* renamed from: z */
    public final CharSequence m898z(CharSequence charSequence) {
        if (!this.f1851N0 || this.f1839C0 == null) {
            return charSequence;
        }
        int textSize = (int) (this.f1885z.getTextSize() * 1.25d);
        this.f1839C0.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.f1839C0), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0118R.attr.searchViewStyle);
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1883x0 = new Rect();
        this.f1884y0 = new Rect();
        this.f1886z0 = new int[2];
        this.f1837A0 = new int[2];
        this.f1868c1 = new RunnableC0278b();
        this.f1869d1 = new RunnableC0279c();
        this.f1870e1 = new WeakHashMap<>();
        ViewOnClickListenerC0282f viewOnClickListenerC0282f = new ViewOnClickListenerC0282f();
        this.f1871f1 = viewOnClickListenerC0282f;
        this.f1872g1 = new ViewOnKeyListenerC0283g();
        C0284h c0284h = new C0284h();
        this.f1873h1 = c0284h;
        C0285i c0285i = new C0285i();
        this.f1874i1 = c0285i;
        C0286j c0286j = new C0286j();
        this.f1875j1 = c0286j;
        this.f1877k1 = new C0277a();
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0118R.styleable.SearchView, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, C0118R.styleable.SearchView, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i, 0);
        LayoutInflater.from(context).inflate(obtainStyledAttributes.getResourceId(C0118R.styleable.SearchView_layout, C0118R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(C0118R.id.search_src_text);
        this.f1885z = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f1846J = findViewById(C0118R.id.search_edit_frame);
        View findViewById = findViewById(C0118R.id.search_plate);
        this.f1852O = findViewById;
        View findViewById2 = findViewById(C0118R.id.submit_area);
        this.f1855Q = findViewById2;
        ImageView imageView = (ImageView) findViewById(C0118R.id.search_button);
        this.f1876k0 = imageView;
        ImageView imageView2 = (ImageView) findViewById(C0118R.id.search_go_btn);
        this.f1878q0 = imageView2;
        ImageView imageView3 = (ImageView) findViewById(C0118R.id.search_close_btn);
        this.f1879t0 = imageView3;
        ImageView imageView4 = (ImageView) findViewById(C0118R.id.search_voice_btn);
        this.f1880u0 = imageView4;
        ImageView imageView5 = (ImageView) findViewById(C0118R.id.search_mag_icon);
        this.f1838B0 = imageView5;
        ViewCompat.setBackground(findViewById, obtainStyledAttributes.getDrawable(C0118R.styleable.SearchView_queryBackground));
        ViewCompat.setBackground(findViewById2, obtainStyledAttributes.getDrawable(C0118R.styleable.SearchView_submitBackground));
        imageView.setImageDrawable(obtainStyledAttributes.getDrawable(C0118R.styleable.SearchView_searchIcon));
        imageView2.setImageDrawable(obtainStyledAttributes.getDrawable(C0118R.styleable.SearchView_goIcon));
        imageView3.setImageDrawable(obtainStyledAttributes.getDrawable(C0118R.styleable.SearchView_closeIcon));
        imageView4.setImageDrawable(obtainStyledAttributes.getDrawable(C0118R.styleable.SearchView_voiceIcon));
        imageView5.setImageDrawable(obtainStyledAttributes.getDrawable(C0118R.styleable.SearchView_searchIcon));
        this.f1839C0 = obtainStyledAttributes.getDrawable(C0118R.styleable.SearchView_searchHintIcon);
        TooltipCompat.setTooltipText(imageView, getResources().getString(C0118R.string.abc_searchview_description_search));
        this.f1840D0 = obtainStyledAttributes.getResourceId(C0118R.styleable.SearchView_suggestionRowLayout, C0118R.layout.abc_search_dropdown_item_icons_2line);
        this.f1841E0 = obtainStyledAttributes.getResourceId(C0118R.styleable.SearchView_commitIcon, 0);
        imageView.setOnClickListener(viewOnClickListenerC0282f);
        imageView3.setOnClickListener(viewOnClickListenerC0282f);
        imageView2.setOnClickListener(viewOnClickListenerC0282f);
        imageView4.setOnClickListener(viewOnClickListenerC0282f);
        searchAutoComplete.setOnClickListener(viewOnClickListenerC0282f);
        searchAutoComplete.addTextChangedListener(this.f1877k1);
        searchAutoComplete.setOnEditorActionListener(c0284h);
        searchAutoComplete.setOnItemClickListener(c0285i);
        searchAutoComplete.setOnItemSelectedListener(c0286j);
        searchAutoComplete.setOnKeyListener(this.f1872g1);
        searchAutoComplete.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0280d());
        setIconifiedByDefault(obtainStyledAttributes.getBoolean(C0118R.styleable.SearchView_iconifiedByDefault, true));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.SearchView_android_maxWidth, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.f1844H0 = obtainStyledAttributes.getText(C0118R.styleable.SearchView_defaultQueryHint);
        this.f1857R0 = obtainStyledAttributes.getText(C0118R.styleable.SearchView_queryHint);
        int i2 = obtainStyledAttributes.getInt(C0118R.styleable.SearchView_android_imeOptions, -1);
        if (i2 != -1) {
            setImeOptions(i2);
        }
        int i3 = obtainStyledAttributes.getInt(C0118R.styleable.SearchView_android_inputType, -1);
        if (i3 != -1) {
            setInputType(i3);
        }
        setFocusable(obtainStyledAttributes.getBoolean(C0118R.styleable.SearchView_android_focusable, true));
        obtainStyledAttributes.recycle();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f1842F0 = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f1843G0 = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f1881v0 = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC0281e());
        }
        m888X(this.f1851N0);
        m884T();
    }

    private void setQuery(CharSequence charSequence) {
        this.f1885z.setText(charSequence);
        this.f1885z.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }
}
