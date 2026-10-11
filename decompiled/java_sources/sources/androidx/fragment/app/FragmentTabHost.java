package androidx.fragment.app;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;

@Deprecated
/* loaded from: classes3.dex */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: e */
    public final ArrayList<C1116b> f7584e;

    /* renamed from: f */
    public FrameLayout f7585f;

    /* renamed from: g */
    public Context f7586g;

    /* renamed from: h */
    public FragmentManager f7587h;

    /* renamed from: i */
    public int f7588i;

    /* renamed from: j */
    public TabHost.OnTabChangeListener f7589j;

    /* renamed from: k */
    public C1116b f7590k;

    /* renamed from: l */
    public boolean f7591l;

    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1114a();
        String curTab;

        /* renamed from: androidx.fragment.app.FragmentTabHost$SavedState$a */
        /* loaded from: classes3.dex */
        public class C1114a implements Parcelable.Creator<SavedState> {
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

        @NonNull
        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.curTab + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.curTab);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.curTab = parcel.readString();
        }
    }

    /* renamed from: androidx.fragment.app.FragmentTabHost$a */
    /* loaded from: classes3.dex */
    public static class C1115a implements TabHost.TabContentFactory {

        /* renamed from: a */
        public final Context f7592a;

        public C1115a(Context context) {
            this.f7592a = context;
        }

        @Override // android.widget.TabHost.TabContentFactory
        public View createTabContent(String str) {
            View view = new View(this.f7592a);
            view.setMinimumWidth(0);
            view.setMinimumHeight(0);
            return view;
        }
    }

    /* renamed from: androidx.fragment.app.FragmentTabHost$b */
    /* loaded from: classes3.dex */
    public static final class C1116b {

        /* renamed from: a */
        @NonNull
        public final String f7593a;

        /* renamed from: b */
        @NonNull
        public final Class<?> f7594b;

        /* renamed from: c */
        @Nullable
        public final Bundle f7595c;

        /* renamed from: d */
        public Fragment f7596d;

        public C1116b(@NonNull String str, @NonNull Class<?> cls, @Nullable Bundle bundle) {
            this.f7593a = str;
            this.f7594b = cls;
            this.f7595c = bundle;
        }
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context) {
        super(context, null);
        this.f7584e = new ArrayList<>();
        m4770e(context, null);
    }

    @Nullable
    /* renamed from: a */
    public final FragmentTransaction m4766a(@Nullable String str, @Nullable FragmentTransaction fragmentTransaction) {
        Fragment fragment;
        C1116b m4769d = m4769d(str);
        if (this.f7590k != m4769d) {
            if (fragmentTransaction == null) {
                fragmentTransaction = this.f7587h.beginTransaction();
            }
            C1116b c1116b = this.f7590k;
            if (c1116b != null && (fragment = c1116b.f7596d) != null) {
                fragmentTransaction.detach(fragment);
            }
            if (m4769d != null) {
                Fragment fragment2 = m4769d.f7596d;
                if (fragment2 == null) {
                    Fragment instantiate = this.f7587h.getFragmentFactory().instantiate(this.f7586g.getClassLoader(), m4769d.f7594b.getName());
                    m4769d.f7596d = instantiate;
                    instantiate.setArguments(m4769d.f7595c);
                    fragmentTransaction.add(this.f7588i, m4769d.f7596d, m4769d.f7593a);
                } else {
                    fragmentTransaction.attach(fragment2);
                }
            }
            this.f7590k = m4769d;
        }
        return fragmentTransaction;
    }

    @Deprecated
    public void addTab(@NonNull TabHost.TabSpec tabSpec, @NonNull Class<?> cls, @Nullable Bundle bundle) {
        tabSpec.setContent(new C1115a(this.f7586g));
        String tag = tabSpec.getTag();
        C1116b c1116b = new C1116b(tag, cls, bundle);
        if (this.f7591l) {
            Fragment findFragmentByTag = this.f7587h.findFragmentByTag(tag);
            c1116b.f7596d = findFragmentByTag;
            if (findFragmentByTag != null && !findFragmentByTag.isDetached()) {
                FragmentTransaction beginTransaction = this.f7587h.beginTransaction();
                beginTransaction.detach(c1116b.f7596d);
                beginTransaction.commit();
            }
        }
        this.f7584e.add(c1116b);
        addTab(tabSpec);
    }

    /* renamed from: b */
    public final void m4767b() {
        if (this.f7585f == null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(this.f7588i);
            this.f7585f = frameLayout;
            if (frameLayout != null) {
                return;
            }
            throw new IllegalStateException("No tab content FrameLayout found for id " + this.f7588i);
        }
    }

    /* renamed from: c */
    public final void m4768c(Context context) {
        if (findViewById(R.id.tabs) == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(R.id.tabs);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(R.id.tabcontent);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(0, 0, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.f7585f = frameLayout2;
            frameLayout2.setId(this.f7588i);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    @Nullable
    /* renamed from: d */
    public final C1116b m4769d(String str) {
        int size = this.f7584e.size();
        for (int i = 0; i < size; i++) {
            C1116b c1116b = this.f7584e.get(i);
            if (c1116b.f7593a.equals(str)) {
                return c1116b;
            }
        }
        return null;
    }

    /* renamed from: e */
    public final void m4770e(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.inflatedId}, 0, 0);
        this.f7588i = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f7584e.size();
        FragmentTransaction fragmentTransaction = null;
        for (int i = 0; i < size; i++) {
            C1116b c1116b = this.f7584e.get(i);
            Fragment findFragmentByTag = this.f7587h.findFragmentByTag(c1116b.f7593a);
            c1116b.f7596d = findFragmentByTag;
            if (findFragmentByTag != null && !findFragmentByTag.isDetached()) {
                if (c1116b.f7593a.equals(currentTabTag)) {
                    this.f7590k = c1116b;
                } else {
                    if (fragmentTransaction == null) {
                        fragmentTransaction = this.f7587h.beginTransaction();
                    }
                    fragmentTransaction.detach(c1116b.f7596d);
                }
            }
        }
        this.f7591l = true;
        FragmentTransaction m4766a = m4766a(currentTabTag, fragmentTransaction);
        if (m4766a != null) {
            m4766a.commit();
            this.f7587h.executePendingTransactions();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7591l = false;
    }

    @Override // android.view.View
    @Deprecated
    public void onRestoreInstanceState(@SuppressLint({"UnknownNullness"}) Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.curTab);
    }

    @Override // android.view.View
    @NonNull
    @Deprecated
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.curTab = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(@Nullable String str) {
        FragmentTransaction m4766a;
        if (this.f7591l && (m4766a = m4766a(str, null)) != null) {
            m4766a.commit();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f7589j;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(@Nullable TabHost.OnTabChangeListener onTabChangeListener) {
        this.f7589j = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        m4768c(context);
        super.setup();
        this.f7586g = context;
        this.f7587h = fragmentManager;
        m4767b();
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7584e = new ArrayList<>();
        m4770e(context, attributeSet);
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull FragmentManager fragmentManager, int i) {
        m4768c(context);
        super.setup();
        this.f7586g = context;
        this.f7587h = fragmentManager;
        this.f7588i = i;
        m4767b();
        this.f7585f.setId(i);
        if (getId() == -1) {
            setId(R.id.tabhost);
        }
    }
}
