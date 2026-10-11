package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.C0118R;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.TintableBackgroundView;
import com.sunia.HTREnginev2.C14646xb;

/* loaded from: classes3.dex */
public class AppCompatSpinner extends Spinner implements TintableBackgroundView {

    /* renamed from: m */
    @SuppressLint({"ResourceType"})
    @StyleableRes
    public static final int[] f1600m = {R.attr.spinnerMode};

    /* renamed from: n */
    public static final int f1601n = 15;

    /* renamed from: o */
    public static final String f1602o = "AppCompatSpinner";

    /* renamed from: p */
    public static final int f1603p = 0;

    /* renamed from: q */
    public static final int f1604q = 1;

    /* renamed from: r */
    public static final int f1605r = -1;

    /* renamed from: e */
    public final C14646xb f1606e;

    /* renamed from: f */
    public final Context f1607f;

    /* renamed from: g */
    public ForwardingListener f1608g;

    /* renamed from: h */
    public SpinnerAdapter f1609h;

    /* renamed from: i */
    public final boolean f1610i;

    /* renamed from: j */
    public InterfaceC0238g f1611j;

    /* renamed from: k */
    public int f1612k;

    /* renamed from: l */
    public final Rect f1613l;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatSpinner> {

        /* renamed from: a */
        public boolean f1614a = false;

        /* renamed from: b */
        public int f1615b;

        /* renamed from: c */
        public int f1616c;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1615b = propertyMapper.mapObject("backgroundTint", C0118R.attr.backgroundTint);
            this.f1616c = propertyMapper.mapObject("backgroundTintMode", C0118R.attr.backgroundTintMode);
            this.f1614a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatSpinner appCompatSpinner, @NonNull PropertyReader propertyReader) {
            if (this.f1614a) {
                propertyReader.readObject(this.f1615b, appCompatSpinner.getBackgroundTintList());
                propertyReader.readObject(this.f1616c, appCompatSpinner.getBackgroundTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0231a();
        boolean mShowDropdown;

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$SavedState$a */
        /* loaded from: classes3.dex */
        public class C0231a implements Parcelable.Creator<SavedState> {
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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.mShowDropdown ? (byte) 1 : (byte) 0);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.mShowDropdown = parcel.readByte() != 0;
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$a */
    /* loaded from: classes3.dex */
    public class C0232a extends ForwardingListener {

        /* renamed from: n */
        public final /* synthetic */ C0237f f1617n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0232a(View view, C0237f c0237f) {
            super(view);
            this.f1617n = c0237f;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public ShowableListMenu getPopup() {
            return this.f1617n;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public boolean onForwardingStarted() {
            if (AppCompatSpinner.this.getInternalPopup().isShowing()) {
                return true;
            }
            AppCompatSpinner.this.m754b();
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$b */
    /* loaded from: classes3.dex */
    public class ViewTreeObserverOnGlobalLayoutListenerC0233b implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserverOnGlobalLayoutListenerC0233b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!AppCompatSpinner.this.getInternalPopup().isShowing()) {
                AppCompatSpinner.this.m754b();
            }
            ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$c */
    /* loaded from: classes3.dex */
    public static final class C0234c {
        @DoNotInline
        /* renamed from: a */
        public static void m757a(@NonNull android.widget.ThemedSpinnerAdapter themedSpinnerAdapter, @Nullable Resources.Theme theme) {
            if (ObjectsCompat.equals(themedSpinnerAdapter.getDropDownViewTheme(), theme)) {
                return;
            }
            themedSpinnerAdapter.setDropDownViewTheme(theme);
        }
    }

    @VisibleForTesting
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$d */
    /* loaded from: classes3.dex */
    public class DialogInterfaceOnClickListenerC0235d implements InterfaceC0238g, DialogInterface.OnClickListener {

        /* renamed from: e */
        @VisibleForTesting
        public AlertDialog f1620e;

        /* renamed from: f */
        public ListAdapter f1621f;

        /* renamed from: g */
        public CharSequence f1622g;

        public DialogInterfaceOnClickListenerC0235d() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        /* renamed from: a */
        public void mo758a(int i, int i2) {
            if (this.f1621f == null) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(AppCompatSpinner.this.getPopupContext());
            CharSequence charSequence = this.f1622g;
            if (charSequence != null) {
                builder.setTitle(charSequence);
            }
            AlertDialog create = builder.setSingleChoiceItems(this.f1621f, AppCompatSpinner.this.getSelectedItemPosition(), this).create();
            this.f1620e = create;
            ListView listView = create.getListView();
            listView.setTextDirection(i);
            listView.setTextAlignment(i2);
            this.f1620e.show();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        /* renamed from: b */
        public void mo759b(int i) {
            Log.e(AppCompatSpinner.f1602o, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        /* renamed from: c */
        public CharSequence mo760c() {
            return this.f1622g;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        /* renamed from: d */
        public void mo761d(CharSequence charSequence) {
            this.f1622g = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        public void dismiss() {
            AlertDialog alertDialog = this.f1620e;
            if (alertDialog != null) {
                alertDialog.dismiss();
                this.f1620e = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        /* renamed from: e */
        public int mo762e() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        public Drawable getBackground() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        public int getHorizontalOffset() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        public int getVerticalOffset() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        public boolean isShowing() {
            AlertDialog alertDialog = this.f1620e;
            if (alertDialog != null) {
                return alertDialog.isShowing();
            }
            return false;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i, this.f1621f.getItemId(i));
            }
            dismiss();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        public void setAdapter(ListAdapter listAdapter) {
            this.f1621f = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        public void setBackgroundDrawable(Drawable drawable) {
            Log.e(AppCompatSpinner.f1602o, "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        public void setHorizontalOffset(int i) {
            Log.e(AppCompatSpinner.f1602o, "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        public void setVerticalOffset(int i) {
            Log.e(AppCompatSpinner.f1602o, "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$e */
    /* loaded from: classes3.dex */
    public static class C0236e implements ListAdapter, SpinnerAdapter {

        /* renamed from: e */
        public SpinnerAdapter f1624e;

        /* renamed from: f */
        public ListAdapter f1625f;

        public C0236e(@Nullable SpinnerAdapter spinnerAdapter, @Nullable Resources.Theme theme) {
            this.f1624e = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1625f = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (spinnerAdapter instanceof android.widget.ThemedSpinnerAdapter) {
                    C0234c.m757a((android.widget.ThemedSpinnerAdapter) spinnerAdapter, theme);
                } else if (spinnerAdapter instanceof ThemedSpinnerAdapter) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() == null) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1625f;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1624e;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1624e;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f1624e;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f1624e;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f1624e;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f1625f;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1624e;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1624e;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$f */
    /* loaded from: classes3.dex */
    public class C0237f extends ListPopupWindow implements InterfaceC0238g {

        /* renamed from: D0 */
        public CharSequence f1626D0;

        /* renamed from: E0 */
        public ListAdapter f1627E0;

        /* renamed from: F0 */
        public final Rect f1628F0;

        /* renamed from: G0 */
        public int f1629G0;

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$f$a */
        /* loaded from: classes3.dex */
        public class a implements AdapterView.OnItemClickListener {

            /* renamed from: e */
            public final /* synthetic */ AppCompatSpinner f1631e;

            public a(AppCompatSpinner appCompatSpinner) {
                this.f1631e = appCompatSpinner;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AppCompatSpinner.this.setSelection(i);
                if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                    C0237f c0237f = C0237f.this;
                    AppCompatSpinner.this.performItemClick(view, i, c0237f.f1627E0.getItemId(i));
                }
                C0237f.this.dismiss();
            }
        }

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$f$b */
        /* loaded from: classes3.dex */
        public class b implements ViewTreeObserver.OnGlobalLayoutListener {
            public b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                C0237f c0237f = C0237f.this;
                if (!c0237f.m765o(AppCompatSpinner.this)) {
                    C0237f.this.dismiss();
                } else {
                    C0237f.this.m764n();
                    C0237f.super.show();
                }
            }
        }

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$f$c */
        /* loaded from: classes3.dex */
        public class c implements PopupWindow.OnDismissListener {

            /* renamed from: e */
            public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f1634e;

            public c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f1634e = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f1634e);
                }
            }
        }

        public C0237f(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f1628F0 = new Rect();
            setAnchorView(AppCompatSpinner.this);
            setModal(true);
            setPromptPosition(0);
            setOnItemClickListener(new a(AppCompatSpinner.this));
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        /* renamed from: a */
        public void mo758a(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean isShowing = isShowing();
            m764n();
            setInputMethodMode(2);
            super.show();
            ListView listView = getListView();
            listView.setChoiceMode(1);
            listView.setTextDirection(i);
            listView.setTextAlignment(i2);
            setSelection(AppCompatSpinner.this.getSelectedItemPosition());
            if (isShowing || (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) == null) {
                return;
            }
            b bVar = new b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            setOnDismissListener(new c(bVar));
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        /* renamed from: b */
        public void mo759b(int i) {
            this.f1629G0 = i;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        /* renamed from: c */
        public CharSequence mo760c() {
            return this.f1626D0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        /* renamed from: d */
        public void mo761d(CharSequence charSequence) {
            this.f1626D0 = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        /* renamed from: e */
        public int mo762e() {
            return this.f1629G0;
        }

        /* renamed from: n */
        public void m764n() {
            int i;
            Drawable background = getBackground();
            if (background != null) {
                background.getPadding(AppCompatSpinner.this.f1613l);
                i = ViewUtils.isLayoutRtl(AppCompatSpinner.this) ? AppCompatSpinner.this.f1613l.right : -AppCompatSpinner.this.f1613l.left;
            } else {
                Rect rect = AppCompatSpinner.this.f1613l;
                rect.right = 0;
                rect.left = 0;
                i = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int i2 = appCompatSpinner.f1612k;
            if (i2 == -2) {
                int m753a = appCompatSpinner.m753a((SpinnerAdapter) this.f1627E0, getBackground());
                int i3 = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = AppCompatSpinner.this.f1613l;
                int i4 = (i3 - rect2.left) - rect2.right;
                if (m753a > i4) {
                    m753a = i4;
                }
                setContentWidth(Math.max(m753a, (width - paddingLeft) - paddingRight));
            } else if (i2 == -1) {
                setContentWidth((width - paddingLeft) - paddingRight);
            } else {
                setContentWidth(i2);
            }
            setHorizontalOffset(ViewUtils.isLayoutRtl(AppCompatSpinner.this) ? i + (((width - paddingRight) - getWidth()) - mo762e()) : i + paddingLeft + mo762e());
        }

        /* renamed from: o */
        public boolean m765o(View view) {
            return view.isAttachedToWindow() && view.getGlobalVisibleRect(this.f1628F0);
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.InterfaceC0238g
        public void setAdapter(ListAdapter listAdapter) {
            super.setAdapter(listAdapter);
            this.f1627E0 = listAdapter;
        }
    }

    @VisibleForTesting
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$g */
    /* loaded from: classes3.dex */
    public interface InterfaceC0238g {
        /* renamed from: a */
        void mo758a(int i, int i2);

        /* renamed from: b */
        void mo759b(int i);

        /* renamed from: c */
        CharSequence mo760c();

        /* renamed from: d */
        void mo761d(CharSequence charSequence);

        void dismiss();

        /* renamed from: e */
        int mo762e();

        Drawable getBackground();

        int getHorizontalOffset();

        int getVerticalOffset();

        boolean isShowing();

        void setAdapter(ListAdapter listAdapter);

        void setBackgroundDrawable(Drawable drawable);

        void setHorizontalOffset(int i);

        void setVerticalOffset(int i);
    }

    public AppCompatSpinner(@NonNull Context context) {
        this(context, (AttributeSet) null);
    }

    /* renamed from: a */
    public int m753a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i2 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i2;
        }
        drawable.getPadding(this.f1613l);
        Rect rect = this.f1613l;
        return i2 + rect.left + rect.right;
    }

    /* renamed from: b */
    public void m754b() {
        this.f1611j.mo758a(getTextDirection(), getTextAlignment());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C14646xb c14646xb = this.f1606e;
        if (c14646xb != null) {
            c14646xb.m58172b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        InterfaceC0238g interfaceC0238g = this.f1611j;
        return interfaceC0238g != null ? interfaceC0238g.getHorizontalOffset() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        InterfaceC0238g interfaceC0238g = this.f1611j;
        return interfaceC0238g != null ? interfaceC0238g.getVerticalOffset() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f1611j != null ? this.f1612k : super.getDropDownWidth();
    }

    @VisibleForTesting
    public final InterfaceC0238g getInternalPopup() {
        return this.f1611j;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        InterfaceC0238g interfaceC0238g = this.f1611j;
        return interfaceC0238g != null ? interfaceC0238g.getBackground() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f1607f;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        InterfaceC0238g interfaceC0238g = this.f1611j;
        return interfaceC0238g != null ? interfaceC0238g.mo760c() : super.getPrompt();
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        C14646xb c14646xb = this.f1606e;
        if (c14646xb != null) {
            return c14646xb.m58173c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C14646xb c14646xb = this.f1606e;
        if (c14646xb != null) {
            return c14646xb.m58174d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        InterfaceC0238g interfaceC0238g = this.f1611j;
        if (interfaceC0238g == null || !interfaceC0238g.isShowing()) {
            return;
        }
        this.f1611j.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f1611j == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m753a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.mShowDropdown || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC0233b());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        InterfaceC0238g interfaceC0238g = this.f1611j;
        savedState.mShowDropdown = interfaceC0238g != null && interfaceC0238g.isShowing();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener forwardingListener = this.f1608g;
        if (forwardingListener == null || !forwardingListener.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        InterfaceC0238g interfaceC0238g = this.f1611j;
        if (interfaceC0238g == null) {
            return super.performClick();
        }
        if (interfaceC0238g.isShowing()) {
            return true;
        }
        m754b();
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C14646xb c14646xb = this.f1606e;
        if (c14646xb != null) {
            c14646xb.m58176f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        C14646xb c14646xb = this.f1606e;
        if (c14646xb != null) {
            c14646xb.m58177g(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        InterfaceC0238g interfaceC0238g = this.f1611j;
        if (interfaceC0238g == null) {
            super.setDropDownHorizontalOffset(i);
        } else {
            interfaceC0238g.mo759b(i);
            this.f1611j.setHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        InterfaceC0238g interfaceC0238g = this.f1611j;
        if (interfaceC0238g != null) {
            interfaceC0238g.setVerticalOffset(i);
        } else {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f1611j != null) {
            this.f1612k = i;
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        InterfaceC0238g interfaceC0238g = this.f1611j;
        if (interfaceC0238g != null) {
            interfaceC0238g.setBackgroundDrawable(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(@DrawableRes int i) {
        setPopupBackgroundDrawable(AppCompatResources.getDrawable(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        InterfaceC0238g interfaceC0238g = this.f1611j;
        if (interfaceC0238g != null) {
            interfaceC0238g.mo761d(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        C14646xb c14646xb = this.f1606e;
        if (c14646xb != null) {
            c14646xb.m58179i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        C14646xb c14646xb = this.f1606e;
        if (c14646xb != null) {
            c14646xb.m58180j(mode);
        }
    }

    public AppCompatSpinner(@NonNull Context context, int i) {
        this(context, null, C0118R.attr.spinnerStyle, i);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1610i) {
            this.f1609h = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1611j != null) {
            Context context = this.f1607f;
            if (context == null) {
                context = getContext();
            }
            this.f1611j.setAdapter(new C0236e(spinnerAdapter, context.getTheme()));
        }
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0118R.attr.spinnerStyle);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0060, code lost:
    
        if (r11 == null) goto L30;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.appcompat.widget.AppCompatSpinner, android.view.View] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatSpinner(@androidx.annotation.NonNull android.content.Context r7, @androidx.annotation.Nullable android.util.AttributeSet r8, int r9, int r10, android.content.res.Resources.Theme r11) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }
}
