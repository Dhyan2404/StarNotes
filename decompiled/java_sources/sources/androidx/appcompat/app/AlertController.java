package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.C0118R;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class AlertController {

    /* renamed from: A */
    public NestedScrollView f585A;

    /* renamed from: C */
    public Drawable f587C;

    /* renamed from: D */
    public ImageView f588D;

    /* renamed from: E */
    public TextView f589E;

    /* renamed from: F */
    public TextView f590F;

    /* renamed from: G */
    public View f591G;

    /* renamed from: H */
    public ListAdapter f592H;

    /* renamed from: J */
    public int f594J;

    /* renamed from: K */
    public int f595K;

    /* renamed from: L */
    public int f596L;

    /* renamed from: M */
    public int f597M;

    /* renamed from: N */
    public int f598N;

    /* renamed from: O */
    public int f599O;

    /* renamed from: P */
    public boolean f600P;

    /* renamed from: R */
    public Handler f602R;

    /* renamed from: a */
    public final Context f604a;

    /* renamed from: b */
    public final AppCompatDialog f605b;

    /* renamed from: c */
    public final Window f606c;

    /* renamed from: d */
    public final int f607d;

    /* renamed from: e */
    public CharSequence f608e;

    /* renamed from: f */
    public CharSequence f609f;

    /* renamed from: g */
    public ListView f610g;

    /* renamed from: h */
    public View f611h;

    /* renamed from: i */
    public int f612i;

    /* renamed from: j */
    public int f613j;

    /* renamed from: k */
    public int f614k;

    /* renamed from: l */
    public int f615l;

    /* renamed from: m */
    public int f616m;

    /* renamed from: o */
    public Button f618o;

    /* renamed from: p */
    public CharSequence f619p;

    /* renamed from: q */
    public Message f620q;

    /* renamed from: r */
    public Drawable f621r;

    /* renamed from: s */
    public Button f622s;

    /* renamed from: t */
    public CharSequence f623t;

    /* renamed from: u */
    public Message f624u;

    /* renamed from: v */
    public Drawable f625v;

    /* renamed from: w */
    public Button f626w;

    /* renamed from: x */
    public CharSequence f627x;

    /* renamed from: y */
    public Message f628y;

    /* renamed from: z */
    public Drawable f629z;

    /* renamed from: n */
    public boolean f617n = false;

    /* renamed from: B */
    public int f586B = 0;

    /* renamed from: I */
    public int f593I = -1;

    /* renamed from: Q */
    public int f601Q = 0;

    /* renamed from: S */
    public final View.OnClickListener f603S = new ViewOnClickListenerC0126a();

    /* loaded from: classes3.dex */
    public static class AlertParams {
        public ListAdapter mAdapter;
        public boolean[] mCheckedItems;
        public final Context mContext;
        public Cursor mCursor;
        public View mCustomTitleView;
        public boolean mForceInverseBackground;
        public Drawable mIcon;
        public final LayoutInflater mInflater;
        public String mIsCheckedColumn;
        public boolean mIsMultiChoice;
        public boolean mIsSingleChoice;
        public CharSequence[] mItems;
        public String mLabelColumn;
        public CharSequence mMessage;
        public Drawable mNegativeButtonIcon;
        public DialogInterface.OnClickListener mNegativeButtonListener;
        public CharSequence mNegativeButtonText;
        public Drawable mNeutralButtonIcon;
        public DialogInterface.OnClickListener mNeutralButtonListener;
        public CharSequence mNeutralButtonText;
        public DialogInterface.OnCancelListener mOnCancelListener;
        public DialogInterface.OnMultiChoiceClickListener mOnCheckboxClickListener;
        public DialogInterface.OnClickListener mOnClickListener;
        public DialogInterface.OnDismissListener mOnDismissListener;
        public AdapterView.OnItemSelectedListener mOnItemSelectedListener;
        public DialogInterface.OnKeyListener mOnKeyListener;
        public OnPrepareListViewListener mOnPrepareListViewListener;
        public Drawable mPositiveButtonIcon;
        public DialogInterface.OnClickListener mPositiveButtonListener;
        public CharSequence mPositiveButtonText;
        public CharSequence mTitle;
        public View mView;
        public int mViewLayoutResId;
        public int mViewSpacingBottom;
        public int mViewSpacingLeft;
        public int mViewSpacingRight;
        public int mViewSpacingTop;
        public int mIconId = 0;
        public int mIconAttrId = 0;
        public boolean mViewSpacingSpecified = false;
        public int mCheckedItem = -1;
        public boolean mRecycleOnMeasure = true;
        public boolean mCancelable = true;

        /* loaded from: classes3.dex */
        public interface OnPrepareListViewListener {
            void onPrepareListView(ListView listView);
        }

        /* renamed from: androidx.appcompat.app.AlertController$AlertParams$a */
        /* loaded from: classes3.dex */
        public class C0122a extends ArrayAdapter<CharSequence> {

            /* renamed from: e */
            public final /* synthetic */ RecycleListView f630e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0122a(Context context, int i, int i2, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i, i2, charSequenceArr);
                this.f630e = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                boolean[] zArr = AlertParams.this.mCheckedItems;
                if (zArr != null && zArr[i]) {
                    this.f630e.setItemChecked(i, true);
                }
                return view2;
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$AlertParams$b */
        /* loaded from: classes3.dex */
        public class C0123b extends CursorAdapter {

            /* renamed from: e */
            public final int f632e;

            /* renamed from: f */
            public final int f633f;

            /* renamed from: g */
            public final /* synthetic */ RecycleListView f634g;

            /* renamed from: h */
            public final /* synthetic */ AlertController f635h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0123b(Context context, Cursor cursor, boolean z, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z);
                this.f634g = recycleListView;
                this.f635h = alertController;
                Cursor cursor2 = getCursor();
                this.f632e = cursor2.getColumnIndexOrThrow(AlertParams.this.mLabelColumn);
                this.f633f = cursor2.getColumnIndexOrThrow(AlertParams.this.mIsCheckedColumn);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(this.f632e));
                this.f634g.setItemChecked(cursor.getPosition(), cursor.getInt(this.f633f) == 1);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return AlertParams.this.mInflater.inflate(this.f635h.f597M, viewGroup, false);
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$AlertParams$c */
        /* loaded from: classes3.dex */
        public class C0124c implements AdapterView.OnItemClickListener {

            /* renamed from: e */
            public final /* synthetic */ AlertController f637e;

            public C0124c(AlertController alertController) {
                this.f637e = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AlertParams.this.mOnClickListener.onClick(this.f637e.f605b, i);
                if (AlertParams.this.mIsSingleChoice) {
                    return;
                }
                this.f637e.f605b.dismiss();
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$AlertParams$d */
        /* loaded from: classes3.dex */
        public class C0125d implements AdapterView.OnItemClickListener {

            /* renamed from: e */
            public final /* synthetic */ RecycleListView f639e;

            /* renamed from: f */
            public final /* synthetic */ AlertController f640f;

            public C0125d(RecycleListView recycleListView, AlertController alertController) {
                this.f639e = recycleListView;
                this.f640f = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                boolean[] zArr = AlertParams.this.mCheckedItems;
                if (zArr != null) {
                    zArr[i] = this.f639e.isItemChecked(i);
                }
                AlertParams.this.mOnCheckboxClickListener.onClick(this.f640f.f605b, i, this.f639e.isItemChecked(i));
            }
        }

        public AlertParams(Context context) {
            this.mContext = context;
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* renamed from: a */
        public final void m316a(AlertController alertController) {
            ListAdapter listAdapter;
            RecycleListView recycleListView = (RecycleListView) this.mInflater.inflate(alertController.f596L, (ViewGroup) null);
            if (this.mIsMultiChoice) {
                listAdapter = this.mCursor == null ? new C0122a(this.mContext, alertController.f597M, R.id.text1, this.mItems, recycleListView) : new C0123b(this.mContext, this.mCursor, false, recycleListView, alertController);
            } else {
                int i = this.mIsSingleChoice ? alertController.f598N : alertController.f599O;
                if (this.mCursor != null) {
                    listAdapter = new SimpleCursorAdapter(this.mContext, i, this.mCursor, new String[]{this.mLabelColumn}, new int[]{R.id.text1});
                } else {
                    listAdapter = this.mAdapter;
                    if (listAdapter == null) {
                        listAdapter = new C0132g(this.mContext, i, R.id.text1, this.mItems);
                    }
                }
            }
            OnPrepareListViewListener onPrepareListViewListener = this.mOnPrepareListViewListener;
            if (onPrepareListViewListener != null) {
                onPrepareListViewListener.onPrepareListView(recycleListView);
            }
            alertController.f592H = listAdapter;
            alertController.f593I = this.mCheckedItem;
            if (this.mOnClickListener != null) {
                recycleListView.setOnItemClickListener(new C0124c(alertController));
            } else if (this.mOnCheckboxClickListener != null) {
                recycleListView.setOnItemClickListener(new C0125d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.mOnItemSelectedListener;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.mIsSingleChoice) {
                recycleListView.setChoiceMode(1);
            } else if (this.mIsMultiChoice) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f610g = recycleListView;
        }

        public void apply(AlertController alertController) {
            View view = this.mCustomTitleView;
            if (view != null) {
                alertController.m303n(view);
            } else {
                CharSequence charSequence = this.mTitle;
                if (charSequence != null) {
                    alertController.m308s(charSequence);
                }
                Drawable drawable = this.mIcon;
                if (drawable != null) {
                    alertController.m305p(drawable);
                }
                int i = this.mIconId;
                if (i != 0) {
                    alertController.m304o(i);
                }
                int i2 = this.mIconAttrId;
                if (i2 != 0) {
                    alertController.m304o(alertController.m294d(i2));
                }
            }
            CharSequence charSequence2 = this.mMessage;
            if (charSequence2 != null) {
                alertController.m306q(charSequence2);
            }
            CharSequence charSequence3 = this.mPositiveButtonText;
            if (charSequence3 != null || this.mPositiveButtonIcon != null) {
                alertController.m301l(-1, charSequence3, this.mPositiveButtonListener, null, this.mPositiveButtonIcon);
            }
            CharSequence charSequence4 = this.mNegativeButtonText;
            if (charSequence4 != null || this.mNegativeButtonIcon != null) {
                alertController.m301l(-2, charSequence4, this.mNegativeButtonListener, null, this.mNegativeButtonIcon);
            }
            CharSequence charSequence5 = this.mNeutralButtonText;
            if (charSequence5 != null || this.mNeutralButtonIcon != null) {
                alertController.m301l(-3, charSequence5, this.mNeutralButtonListener, null, this.mNeutralButtonIcon);
            }
            if (this.mItems != null || this.mCursor != null || this.mAdapter != null) {
                m316a(alertController);
            }
            View view2 = this.mView;
            if (view2 != null) {
                if (this.mViewSpacingSpecified) {
                    alertController.m311v(view2, this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
                    return;
                } else {
                    alertController.m310u(view2);
                    return;
                }
            }
            int i3 = this.mViewLayoutResId;
            if (i3 != 0) {
                alertController.m309t(i3);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class RecycleListView extends ListView {

        /* renamed from: e */
        public final int f642e;

        /* renamed from: f */
        public final int f643f;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public void setHasDecor(boolean z, boolean z2) {
            if (z2 && z) {
                return;
            }
            setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f642e, getPaddingRight(), z2 ? getPaddingBottom() : this.f643f);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0118R.styleable.RecycleListView);
            this.f643f = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f642e = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.RecycleListView_paddingTopNoTitle, -1);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes3.dex */
    public class ViewOnClickListenerC0126a implements View.OnClickListener {
        public ViewOnClickListenerC0126a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            Message obtain = (view != alertController.f618o || (message3 = alertController.f620q) == null) ? (view != alertController.f622s || (message2 = alertController.f624u) == null) ? (view != alertController.f626w || (message = alertController.f628y) == null) ? null : Message.obtain(message) : Message.obtain(message2) : Message.obtain(message3);
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.f602R.obtainMessage(1, alertController2.f605b).sendToTarget();
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$b */
    /* loaded from: classes3.dex */
    public class C0127b implements NestedScrollView.OnScrollChangeListener {

        /* renamed from: a */
        public final /* synthetic */ View f645a;

        /* renamed from: b */
        public final /* synthetic */ View f646b;

        public C0127b(View view, View view2) {
            this.f645a = view;
            this.f646b = view2;
        }

        @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
        public void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
            AlertController.m290g(nestedScrollView, this.f645a, this.f646b);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes3.dex */
    public class RunnableC0128c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ View f648e;

        /* renamed from: f */
        public final /* synthetic */ View f649f;

        public RunnableC0128c(View view, View view2) {
            this.f648e = view;
            this.f649f = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m290g(AlertController.this.f585A, this.f648e, this.f649f);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$d */
    /* loaded from: classes3.dex */
    public class C0129d implements AbsListView.OnScrollListener {

        /* renamed from: e */
        public final /* synthetic */ View f651e;

        /* renamed from: f */
        public final /* synthetic */ View f652f;

        public C0129d(View view, View view2) {
            this.f651e = view;
            this.f652f = view2;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            AlertController.m290g(absListView, this.f651e, this.f652f);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$e */
    /* loaded from: classes3.dex */
    public class RunnableC0130e implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ View f654e;

        /* renamed from: f */
        public final /* synthetic */ View f655f;

        public RunnableC0130e(View view, View view2) {
            this.f654e = view;
            this.f655f = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m290g(AlertController.this.f610g, this.f654e, this.f655f);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$f */
    /* loaded from: classes3.dex */
    public static final class HandlerC0131f extends Handler {

        /* renamed from: b */
        public static final int f657b = 1;

        /* renamed from: a */
        public WeakReference<DialogInterface> f658a;

        public HandlerC0131f(DialogInterface dialogInterface) {
            this.f658a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f658a.get(), message.what);
            } else {
                if (i != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$g */
    /* loaded from: classes3.dex */
    public static class C0132g extends ArrayAdapter<CharSequence> {
        public C0132g(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, AppCompatDialog appCompatDialog, Window window) {
        this.f604a = context;
        this.f605b = appCompatDialog;
        this.f606c = window;
        this.f602R = new HandlerC0131f(appCompatDialog);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C0118R.styleable.AlertDialog, C0118R.attr.alertDialogStyle, 0);
        this.f594J = obtainStyledAttributes.getResourceId(C0118R.styleable.AlertDialog_android_layout, 0);
        this.f595K = obtainStyledAttributes.getResourceId(C0118R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.f596L = obtainStyledAttributes.getResourceId(C0118R.styleable.AlertDialog_listLayout, 0);
        this.f597M = obtainStyledAttributes.getResourceId(C0118R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.f598N = obtainStyledAttributes.getResourceId(C0118R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.f599O = obtainStyledAttributes.getResourceId(C0118R.styleable.AlertDialog_listItemLayout, 0);
        this.f600P = obtainStyledAttributes.getBoolean(C0118R.styleable.AlertDialog_showTitle, true);
        this.f607d = obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        appCompatDialog.supportRequestWindowFeature(1);
    }

    /* renamed from: B */
    public static boolean m288B(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0118R.attr.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    /* renamed from: a */
    public static boolean m289a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (m289a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public static void m290g(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: A */
    public final void m291A() {
        View findViewById;
        ListAdapter listAdapter;
        View findViewById2;
        View findViewById3 = this.f606c.findViewById(C0118R.id.parentPanel);
        View findViewById4 = findViewById3.findViewById(C0118R.id.topPanel);
        View findViewById5 = findViewById3.findViewById(C0118R.id.contentPanel);
        View findViewById6 = findViewById3.findViewById(C0118R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(C0118R.id.customPanel);
        m314y(viewGroup);
        View findViewById7 = viewGroup.findViewById(C0118R.id.topPanel);
        View findViewById8 = viewGroup.findViewById(C0118R.id.contentPanel);
        View findViewById9 = viewGroup.findViewById(C0118R.id.buttonPanel);
        ViewGroup m299j = m299j(findViewById7, findViewById4);
        ViewGroup m299j2 = m299j(findViewById8, findViewById5);
        ViewGroup m299j3 = m299j(findViewById9, findViewById6);
        m313x(m299j2);
        m312w(m299j3);
        m315z(m299j);
        boolean z = viewGroup.getVisibility() != 8;
        boolean z2 = (m299j == null || m299j.getVisibility() == 8) ? 0 : 1;
        boolean z3 = (m299j3 == null || m299j3.getVisibility() == 8) ? false : true;
        if (!z3 && m299j2 != null && (findViewById2 = m299j2.findViewById(C0118R.id.textSpacerNoButtons)) != null) {
            findViewById2.setVisibility(0);
        }
        if (z2 != 0) {
            NestedScrollView nestedScrollView = this.f585A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View findViewById10 = (this.f609f == null && this.f610g == null) ? null : m299j.findViewById(C0118R.id.titleDividerNoCustom);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        } else if (m299j2 != null && (findViewById = m299j2.findViewById(C0118R.id.textSpacerNoTitle)) != null) {
            findViewById.setVisibility(0);
        }
        ListView listView = this.f610g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).setHasDecor(z2, z3);
        }
        if (!z) {
            View view = this.f610g;
            if (view == null) {
                view = this.f585A;
            }
            if (view != null) {
                m307r(m299j2, view, z2 | (z3 ? 2 : 0), 3);
            }
        }
        ListView listView2 = this.f610g;
        if (listView2 == null || (listAdapter = this.f592H) == null) {
            return;
        }
        listView2.setAdapter(listAdapter);
        int i = this.f593I;
        if (i > -1) {
            listView2.setItemChecked(i, true);
            listView2.setSelection(i);
        }
    }

    /* renamed from: b */
    public final void m292b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: c */
    public Button m293c(int i) {
        if (i == -3) {
            return this.f626w;
        }
        if (i == -2) {
            return this.f622s;
        }
        if (i != -1) {
            return null;
        }
        return this.f618o;
    }

    /* renamed from: d */
    public int m294d(int i) {
        TypedValue typedValue = new TypedValue();
        this.f604a.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: e */
    public ListView m295e() {
        return this.f610g;
    }

    /* renamed from: f */
    public void m296f() {
        this.f605b.setContentView(m300k());
        m291A();
    }

    /* renamed from: h */
    public boolean m297h(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f585A;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    /* renamed from: i */
    public boolean m298i(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f585A;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    @Nullable
    /* renamed from: j */
    public final ViewGroup m299j(@Nullable View view, @Nullable View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    /* renamed from: k */
    public final int m300k() {
        int i = this.f595K;
        return (i != 0 && this.f601Q == 1) ? i : this.f594J;
    }

    /* renamed from: l */
    public void m301l(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.f602R.obtainMessage(i, onClickListener);
        }
        if (i == -3) {
            this.f627x = charSequence;
            this.f628y = message;
            this.f629z = drawable;
        } else if (i == -2) {
            this.f623t = charSequence;
            this.f624u = message;
            this.f625v = drawable;
        } else {
            if (i != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f619p = charSequence;
            this.f620q = message;
            this.f621r = drawable;
        }
    }

    /* renamed from: m */
    public void m302m(int i) {
        this.f601Q = i;
    }

    /* renamed from: n */
    public void m303n(View view) {
        this.f591G = view;
    }

    /* renamed from: o */
    public void m304o(int i) {
        this.f587C = null;
        this.f586B = i;
        ImageView imageView = this.f588D;
        if (imageView != null) {
            if (i == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.f588D.setImageResource(this.f586B);
            }
        }
    }

    /* renamed from: p */
    public void m305p(Drawable drawable) {
        this.f587C = drawable;
        this.f586B = 0;
        ImageView imageView = this.f588D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.f588D.setImageDrawable(drawable);
            }
        }
    }

    /* renamed from: q */
    public void m306q(CharSequence charSequence) {
        this.f609f = charSequence;
        TextView textView = this.f590F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: r */
    public final void m307r(ViewGroup viewGroup, View view, int i, int i2) {
        View findViewById = this.f606c.findViewById(C0118R.id.scrollIndicatorUp);
        View findViewById2 = this.f606c.findViewById(C0118R.id.scrollIndicatorDown);
        ViewCompat.setScrollIndicators(view, i, i2);
        if (findViewById != null) {
            viewGroup.removeView(findViewById);
        }
        if (findViewById2 != null) {
            viewGroup.removeView(findViewById2);
        }
    }

    /* renamed from: s */
    public void m308s(CharSequence charSequence) {
        this.f608e = charSequence;
        TextView textView = this.f589E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: t */
    public void m309t(int i) {
        this.f611h = null;
        this.f612i = i;
        this.f617n = false;
    }

    /* renamed from: u */
    public void m310u(View view) {
        this.f611h = view;
        this.f612i = 0;
        this.f617n = false;
    }

    /* renamed from: v */
    public void m311v(View view, int i, int i2, int i3, int i4) {
        this.f611h = view;
        this.f612i = 0;
        this.f617n = true;
        this.f613j = i;
        this.f614k = i2;
        this.f615l = i3;
        this.f616m = i4;
    }

    /* renamed from: w */
    public final void m312w(ViewGroup viewGroup) {
        int i;
        Button button = (Button) viewGroup.findViewById(R.id.button1);
        this.f618o = button;
        button.setOnClickListener(this.f603S);
        if (TextUtils.isEmpty(this.f619p) && this.f621r == null) {
            this.f618o.setVisibility(8);
            i = 0;
        } else {
            this.f618o.setText(this.f619p);
            Drawable drawable = this.f621r;
            if (drawable != null) {
                int i2 = this.f607d;
                drawable.setBounds(0, 0, i2, i2);
                this.f618o.setCompoundDrawables(this.f621r, null, null, null);
            }
            this.f618o.setVisibility(0);
            i = 1;
        }
        Button button2 = (Button) viewGroup.findViewById(R.id.button2);
        this.f622s = button2;
        button2.setOnClickListener(this.f603S);
        if (TextUtils.isEmpty(this.f623t) && this.f625v == null) {
            this.f622s.setVisibility(8);
        } else {
            this.f622s.setText(this.f623t);
            Drawable drawable2 = this.f625v;
            if (drawable2 != null) {
                int i3 = this.f607d;
                drawable2.setBounds(0, 0, i3, i3);
                this.f622s.setCompoundDrawables(this.f625v, null, null, null);
            }
            this.f622s.setVisibility(0);
            i |= 2;
        }
        Button button3 = (Button) viewGroup.findViewById(R.id.button3);
        this.f626w = button3;
        button3.setOnClickListener(this.f603S);
        if (TextUtils.isEmpty(this.f627x) && this.f629z == null) {
            this.f626w.setVisibility(8);
        } else {
            this.f626w.setText(this.f627x);
            Drawable drawable3 = this.f629z;
            if (drawable3 != null) {
                int i4 = this.f607d;
                drawable3.setBounds(0, 0, i4, i4);
                this.f626w.setCompoundDrawables(this.f629z, null, null, null);
            }
            this.f626w.setVisibility(0);
            i |= 4;
        }
        if (m288B(this.f604a)) {
            if (i == 1) {
                m292b(this.f618o);
            } else if (i == 2) {
                m292b(this.f622s);
            } else if (i == 4) {
                m292b(this.f626w);
            }
        }
        if (i != 0) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    /* renamed from: x */
    public final void m313x(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f606c.findViewById(C0118R.id.scrollView);
        this.f585A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.f585A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(R.id.message);
        this.f590F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f609f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.f585A.removeView(this.f590F);
        if (this.f610g == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f585A.getParent();
        int indexOfChild = viewGroup2.indexOfChild(this.f585A);
        viewGroup2.removeViewAt(indexOfChild);
        viewGroup2.addView(this.f610g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    /* renamed from: y */
    public final void m314y(ViewGroup viewGroup) {
        View view = this.f611h;
        if (view == null) {
            view = this.f612i != 0 ? LayoutInflater.from(this.f604a).inflate(this.f612i, viewGroup, false) : null;
        }
        boolean z = view != null;
        if (!z || !m289a(view)) {
            this.f606c.setFlags(131072, 131072);
        }
        if (!z) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f606c.findViewById(C0118R.id.custom);
        frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
        if (this.f617n) {
            frameLayout.setPadding(this.f613j, this.f614k, this.f615l, this.f616m);
        }
        if (this.f610g != null) {
            ((LinearLayout.LayoutParams) ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams())).weight = 0.0f;
        }
    }

    /* renamed from: z */
    public final void m315z(ViewGroup viewGroup) {
        if (this.f591G != null) {
            viewGroup.addView(this.f591G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f606c.findViewById(C0118R.id.title_template).setVisibility(8);
            return;
        }
        this.f588D = (ImageView) this.f606c.findViewById(R.id.icon);
        if (!(!TextUtils.isEmpty(this.f608e)) || !this.f600P) {
            this.f606c.findViewById(C0118R.id.title_template).setVisibility(8);
            this.f588D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.f606c.findViewById(C0118R.id.alertTitle);
        this.f589E = textView;
        textView.setText(this.f608e);
        int i = this.f586B;
        if (i != 0) {
            this.f588D.setImageResource(i);
            return;
        }
        Drawable drawable = this.f587C;
        if (drawable != null) {
            this.f588D.setImageDrawable(drawable);
        } else {
            this.f589E.setPadding(this.f588D.getPaddingLeft(), this.f588D.getPaddingTop(), this.f588D.getPaddingRight(), this.f588D.getPaddingBottom());
            this.f588D.setVisibility(8);
        }
    }
}
