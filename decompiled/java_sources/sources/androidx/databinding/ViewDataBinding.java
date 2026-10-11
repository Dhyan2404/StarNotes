package androidx.databinding;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.databinding.CallbackRegistry;
import androidx.databinding.Observable;
import androidx.databinding.ObservableList;
import androidx.databinding.ObservableMap;
import androidx.databinding.library.C0998R;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.viewbinding.ViewBinding;
import com.sunia.HTREnginev2.pek;
import com.sunia.HTREnginev2.r5o;
import com.sunia.HTREnginev2.zge;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class ViewDataBinding extends BaseObservable implements ViewBinding {
    public static final String BINDING_TAG_PREFIX = "binding_";

    /* renamed from: t */
    public static final int f6697t = 1;

    /* renamed from: u */
    public static final int f6698u = 2;

    /* renamed from: v */
    public static final int f6699v = 3;

    /* renamed from: w */
    public static final int f6700w = 8;

    /* renamed from: e */
    public final Runnable f6704e;

    /* renamed from: f */
    public boolean f6705f;

    /* renamed from: g */
    public boolean f6706g;

    /* renamed from: h */
    public r5o[] f6707h;

    /* renamed from: i */
    public final View f6708i;

    /* renamed from: j */
    public CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> f6709j;

    /* renamed from: k */
    public boolean f6710k;

    /* renamed from: l */
    public Choreographer f6711l;

    /* renamed from: m */
    public final Choreographer.FrameCallback f6712m;
    protected final DataBindingComponent mBindingComponent;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected boolean mInStateFlowRegisterObserver;

    /* renamed from: n */
    public Handler f6713n;

    /* renamed from: o */
    public ViewDataBinding f6714o;

    /* renamed from: p */
    public LifecycleOwner f6715p;

    /* renamed from: q */
    public OnStartListener f6716q;

    /* renamed from: r */
    public boolean f6717r;

    /* renamed from: s */
    public static int f6696s = Build.VERSION.SDK_INT;

    /* renamed from: x */
    public static final boolean f6701x = true;

    /* renamed from: y */
    public static final zge f6702y = new C0964a();

    /* renamed from: z */
    public static final zge f6703z = new C0965b();

    /* renamed from: J */
    public static final zge f6691J = new C0966c();

    /* renamed from: O */
    public static final zge f6692O = new C0967d();

    /* renamed from: Q */
    public static final CallbackRegistry.NotifierCallback<OnRebindCallback, ViewDataBinding, Void> f6693Q = new C0968e();

    /* renamed from: Z */
    public static final ReferenceQueue<ViewDataBinding> f6694Z = new ReferenceQueue<>();

    /* renamed from: k0 */
    public static final View.OnAttachStateChangeListener f6695k0 = new ViewOnAttachStateChangeListenerC0969f();

    /* loaded from: classes3.dex */
    public static class IncludedLayouts {
        public final int[][] indexes;
        public final int[][] layoutIds;
        public final String[][] layouts;

        public IncludedLayouts(int i) {
            this.layouts = new String[i];
            this.indexes = new int[i];
            this.layoutIds = new int[i];
        }

        public void setIncludes(int i, String[] strArr, int[] iArr, int[] iArr2) {
            this.layouts[i] = strArr;
            this.indexes[i] = iArr;
            this.layoutIds[i] = iArr2;
        }
    }

    /* loaded from: classes3.dex */
    public static class OnStartListener implements LifecycleObserver {

        /* renamed from: e */
        public final WeakReference<ViewDataBinding> f6718e;

        public /* synthetic */ OnStartListener(ViewDataBinding viewDataBinding, C0964a c0964a) {
            this(viewDataBinding);
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_START)
        public void onStart() {
            ViewDataBinding viewDataBinding = this.f6718e.get();
            if (viewDataBinding != null) {
                viewDataBinding.executePendingBindings();
            }
        }

        public OnStartListener(ViewDataBinding viewDataBinding) {
            this.f6718e = new WeakReference<>(viewDataBinding);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class PropertyChangedInverseListener extends Observable.OnPropertyChangedCallback implements InverseBindingListener {

        /* renamed from: a */
        public final int f6719a;

        public PropertyChangedInverseListener(int i) {
            this.f6719a = i;
        }

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void onPropertyChanged(Observable observable, int i) {
            if (i == this.f6719a || i == 0) {
                onChange();
            }
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$a */
    /* loaded from: classes3.dex */
    public class C0964a implements zge {
        @Override // com.sunia.HTREnginev2.zge
        /* renamed from: a */
        public r5o mo4088a(ViewDataBinding viewDataBinding, int i, ReferenceQueue<ViewDataBinding> referenceQueue) {
            return new C0975l(viewDataBinding, i, referenceQueue).getListener();
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$b */
    /* loaded from: classes3.dex */
    public class C0965b implements zge {
        @Override // com.sunia.HTREnginev2.zge
        /* renamed from: a */
        public r5o mo4088a(ViewDataBinding viewDataBinding, int i, ReferenceQueue<ViewDataBinding> referenceQueue) {
            return new C0973j(viewDataBinding, i, referenceQueue).getListener();
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$c */
    /* loaded from: classes3.dex */
    public class C0966c implements zge {
        @Override // com.sunia.HTREnginev2.zge
        /* renamed from: a */
        public r5o mo4088a(ViewDataBinding viewDataBinding, int i, ReferenceQueue<ViewDataBinding> referenceQueue) {
            return new C0974k(viewDataBinding, i, referenceQueue).getListener();
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$d */
    /* loaded from: classes3.dex */
    public class C0967d implements zge {
        @Override // com.sunia.HTREnginev2.zge
        /* renamed from: a */
        public r5o mo4088a(ViewDataBinding viewDataBinding, int i, ReferenceQueue<ViewDataBinding> referenceQueue) {
            return new C0972i(viewDataBinding, i, referenceQueue).getListener();
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$e */
    /* loaded from: classes3.dex */
    public class C0968e extends CallbackRegistry.NotifierCallback<OnRebindCallback, ViewDataBinding, Void> {
        @Override // androidx.databinding.CallbackRegistry.NotifierCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNotifyCallback(OnRebindCallback onRebindCallback, ViewDataBinding viewDataBinding, int i, Void r4) {
            if (i == 1) {
                if (onRebindCallback.onPreBind(viewDataBinding)) {
                    return;
                }
                viewDataBinding.f6706g = true;
            } else if (i == 2) {
                onRebindCallback.onCanceled(viewDataBinding);
            } else {
                if (i != 3) {
                    return;
                }
                onRebindCallback.onBound(viewDataBinding);
            }
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$f */
    /* loaded from: classes3.dex */
    public class ViewOnAttachStateChangeListenerC0969f implements View.OnAttachStateChangeListener {
        @Override // android.view.View.OnAttachStateChangeListener
        @TargetApi(19)
        public void onViewAttachedToWindow(View view) {
            ViewDataBinding.m4081m(view).f6704e.run();
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$g */
    /* loaded from: classes3.dex */
    public class RunnableC0970g implements Runnable {
        public RunnableC0970g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                ViewDataBinding.this.f6705f = false;
            }
            ViewDataBinding.m4085q();
            if (ViewDataBinding.this.f6708i.isAttachedToWindow()) {
                ViewDataBinding.this.executePendingBindings();
            } else {
                ViewDataBinding.this.f6708i.removeOnAttachStateChangeListener(ViewDataBinding.f6695k0);
                ViewDataBinding.this.f6708i.addOnAttachStateChangeListener(ViewDataBinding.f6695k0);
            }
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$h */
    /* loaded from: classes3.dex */
    public class ChoreographerFrameCallbackC0971h implements Choreographer.FrameCallback {
        public ChoreographerFrameCallbackC0971h() {
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            ViewDataBinding.this.f6704e.run();
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$i */
    /* loaded from: classes3.dex */
    public static class C0972i implements Observer, pek<LiveData<?>> {

        /* renamed from: a */
        public final r5o<LiveData<?>> f6722a;

        /* renamed from: b */
        @Nullable
        public WeakReference<LifecycleOwner> f6723b = null;

        public C0972i(ViewDataBinding viewDataBinding, int i, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.f6722a = new r5o<>(viewDataBinding, i, this, referenceQueue);
        }

        @Override // com.sunia.HTREnginev2.pek
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void addListener(LiveData<?> liveData) {
            LifecycleOwner m4091b = m4091b();
            if (m4091b != null) {
                liveData.observe(m4091b, this);
            }
        }

        @Nullable
        /* renamed from: b */
        public final LifecycleOwner m4091b() {
            WeakReference<LifecycleOwner> weakReference = this.f6723b;
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }

        @Override // com.sunia.HTREnginev2.pek
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public void removeListener(LiveData<?> liveData) {
            liveData.removeObserver(this);
        }

        @Override // com.sunia.HTREnginev2.pek
        public r5o<LiveData<?>> getListener() {
            return this.f6722a;
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable Object obj) {
            ViewDataBinding m56910a = this.f6722a.m56910a();
            if (m56910a != null) {
                r5o<LiveData<?>> r5oVar = this.f6722a;
                m56910a.handleFieldChange(r5oVar.f82778b, r5oVar.m56911b(), 0);
            }
        }

        @Override // com.sunia.HTREnginev2.pek
        public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
            LifecycleOwner m4091b = m4091b();
            LiveData<?> m56911b = this.f6722a.m56911b();
            if (m56911b != null) {
                if (m4091b != null) {
                    m56911b.removeObserver(this);
                }
                if (lifecycleOwner != null) {
                    m56911b.observe(lifecycleOwner, this);
                }
            }
            if (lifecycleOwner != null) {
                this.f6723b = new WeakReference<>(lifecycleOwner);
            }
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$j */
    /* loaded from: classes3.dex */
    public static class C0973j extends ObservableList.OnListChangedCallback implements pek<ObservableList> {

        /* renamed from: a */
        public final r5o<ObservableList> f6724a;

        public C0973j(ViewDataBinding viewDataBinding, int i, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.f6724a = new r5o<>(viewDataBinding, i, this, referenceQueue);
        }

        @Override // com.sunia.HTREnginev2.pek
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void addListener(ObservableList observableList) {
            observableList.addOnListChangedCallback(this);
        }

        @Override // com.sunia.HTREnginev2.pek
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void removeListener(ObservableList observableList) {
            observableList.removeOnListChangedCallback(this);
        }

        @Override // com.sunia.HTREnginev2.pek
        public r5o<ObservableList> getListener() {
            return this.f6724a;
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onChanged(ObservableList observableList) {
            ObservableList m56911b;
            ViewDataBinding m56910a = this.f6724a.m56910a();
            if (m56910a != null && (m56911b = this.f6724a.m56911b()) == observableList) {
                m56910a.handleFieldChange(this.f6724a.f82778b, m56911b, 0);
            }
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeChanged(ObservableList observableList, int i, int i2) {
            onChanged(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeInserted(ObservableList observableList, int i, int i2) {
            onChanged(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeMoved(ObservableList observableList, int i, int i2, int i3) {
            onChanged(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeRemoved(ObservableList observableList, int i, int i2) {
            onChanged(observableList);
        }

        @Override // com.sunia.HTREnginev2.pek
        public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$k */
    /* loaded from: classes3.dex */
    public static class C0974k extends ObservableMap.OnMapChangedCallback implements pek<ObservableMap> {

        /* renamed from: a */
        public final r5o<ObservableMap> f6725a;

        public C0974k(ViewDataBinding viewDataBinding, int i, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.f6725a = new r5o<>(viewDataBinding, i, this, referenceQueue);
        }

        @Override // com.sunia.HTREnginev2.pek
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void addListener(ObservableMap observableMap) {
            observableMap.addOnMapChangedCallback(this);
        }

        @Override // com.sunia.HTREnginev2.pek
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void removeListener(ObservableMap observableMap) {
            observableMap.removeOnMapChangedCallback(this);
        }

        @Override // com.sunia.HTREnginev2.pek
        public r5o<ObservableMap> getListener() {
            return this.f6725a;
        }

        @Override // androidx.databinding.ObservableMap.OnMapChangedCallback
        public void onMapChanged(ObservableMap observableMap, Object obj) {
            ViewDataBinding m56910a = this.f6725a.m56910a();
            if (m56910a == null || observableMap != this.f6725a.m56911b()) {
                return;
            }
            m56910a.handleFieldChange(this.f6725a.f82778b, observableMap, 0);
        }

        @Override // com.sunia.HTREnginev2.pek
        public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$l */
    /* loaded from: classes3.dex */
    public static class C0975l extends Observable.OnPropertyChangedCallback implements pek<Observable> {

        /* renamed from: a */
        public final r5o<Observable> f6726a;

        public C0975l(ViewDataBinding viewDataBinding, int i, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.f6726a = new r5o<>(viewDataBinding, i, this, referenceQueue);
        }

        @Override // com.sunia.HTREnginev2.pek
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void addListener(Observable observable) {
            observable.addOnPropertyChangedCallback(this);
        }

        @Override // com.sunia.HTREnginev2.pek
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void removeListener(Observable observable) {
            observable.removeOnPropertyChangedCallback(this);
        }

        @Override // com.sunia.HTREnginev2.pek
        public r5o<Observable> getListener() {
            return this.f6726a;
        }

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void onPropertyChanged(Observable observable, int i) {
            ViewDataBinding m56910a = this.f6726a.m56910a();
            if (m56910a != null && this.f6726a.m56911b() == observable) {
                m56910a.handleFieldChange(this.f6726a.f82778b, observable, i);
            }
        }

        @Override // com.sunia.HTREnginev2.pek
        public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        }
    }

    public ViewDataBinding(DataBindingComponent dataBindingComponent, View view, int i) {
        this.f6704e = new RunnableC0970g();
        this.f6705f = false;
        this.f6706g = false;
        this.mBindingComponent = dataBindingComponent;
        this.f6707h = new r5o[i];
        this.f6708i = view;
        if (Looper.myLooper() != null) {
            if (f6701x) {
                this.f6711l = Choreographer.getInstance();
                this.f6712m = new ChoreographerFrameCallbackC0971h();
                return;
            } else {
                this.f6712m = null;
                this.f6713n = new Handler(Looper.myLooper());
                return;
            }
        }
        throw new IllegalStateException("DataBinding must be created in view's UI Thread");
    }

    public static ViewDataBinding bind(Object obj, View view, int i) {
        return DataBindingUtil.m4045a(m4078g(obj), view, i);
    }

    public static void executeBindingsOn(ViewDataBinding viewDataBinding) {
        viewDataBinding.m4086h();
    }

    /* renamed from: g */
    public static DataBindingComponent m4078g(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof DataBindingComponent) {
            return (DataBindingComponent) obj;
        }
        throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
    }

    public static int getBuildSdkInt() {
        return f6696s;
    }

    public static int getColorFromResource(View view, int i) {
        return view.getContext().getColor(i);
    }

    public static ColorStateList getColorStateListFromResource(View view, int i) {
        return view.getContext().getColorStateList(i);
    }

    public static Drawable getDrawableFromResource(View view, int i) {
        return view.getContext().getDrawable(i);
    }

    public static <K, T> T getFrom(Map<K, T> map, K k) {
        if (map == null) {
            return null;
        }
        return map.get(k);
    }

    public static <T> T getFromArray(T[] tArr, int i) {
        if (tArr == null || i < 0 || i >= tArr.length) {
            return null;
        }
        return tArr[i];
    }

    public static <T> T getFromList(List<T> list, int i) {
        if (list == null || i < 0 || i >= list.size()) {
            return null;
        }
        return list.get(i);
    }

    /* renamed from: i */
    public static int m4079i(String str, int i, IncludedLayouts includedLayouts, int i2) {
        CharSequence subSequence = str.subSequence(str.indexOf(47) + 1, str.length() - 2);
        String[] strArr = includedLayouts.layouts[i2];
        int length = strArr.length;
        while (i < length) {
            if (TextUtils.equals(subSequence, strArr[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static <T extends ViewDataBinding> T inflateInternal(@NonNull LayoutInflater layoutInflater, int i, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (T) DataBindingUtil.inflate(layoutInflater, i, viewGroup, z, m4078g(obj));
    }

    /* renamed from: k */
    public static int m4080k(ViewGroup viewGroup, int i) {
        String str = (String) viewGroup.getChildAt(i).getTag();
        String substring = str.substring(0, str.length() - 1);
        int length = substring.length();
        int childCount = viewGroup.getChildCount();
        for (int i2 = i + 1; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            String str2 = childAt.getTag() instanceof String ? (String) childAt.getTag() : null;
            if (str2 != null && str2.startsWith(substring)) {
                if (str2.length() == str.length() && str2.charAt(str2.length() - 1) == '0') {
                    return i;
                }
                if (m4082n(str2, length)) {
                    i = i2;
                }
            }
        }
        return i;
    }

    /* renamed from: m */
    public static ViewDataBinding m4081m(View view) {
        if (view != null) {
            return (ViewDataBinding) view.getTag(C0998R.id.dataBinding);
        }
        return null;
    }

    public static Object[] mapBindings(DataBindingComponent dataBindingComponent, View view, int i, IncludedLayouts includedLayouts, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i];
        m4083o(dataBindingComponent, view, objArr, includedLayouts, sparseIntArray, true);
        return objArr;
    }

    /* renamed from: n */
    public static boolean m4082n(String str, int i) {
        int length = str.length();
        if (length == i) {
            return false;
        }
        while (i < length) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
            i++;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x010e A[SYNTHETIC] */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m4083o(androidx.databinding.DataBindingComponent r17, android.view.View r18, java.lang.Object[] r19, androidx.databinding.ViewDataBinding.IncludedLayouts r20, android.util.SparseIntArray r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.databinding.ViewDataBinding.m4083o(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[], androidx.databinding.ViewDataBinding$IncludedLayouts, android.util.SparseIntArray, boolean):void");
    }

    /* renamed from: p */
    public static int m4084p(String str, int i) {
        int i2 = 0;
        while (i < str.length()) {
            i2 = (i2 * 10) + (str.charAt(i) - '0');
            i++;
        }
        return i2;
    }

    public static boolean parse(String str, boolean z) {
        return str == null ? z : Boolean.parseBoolean(str);
    }

    /* renamed from: q */
    public static void m4085q() {
        while (true) {
            Reference<? extends ViewDataBinding> poll = f6694Z.poll();
            if (poll == null) {
                return;
            }
            if (poll instanceof r5o) {
                ((r5o) poll).m56914e();
            }
        }
    }

    public static int safeUnbox(Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static void setBindingInverseListener(ViewDataBinding viewDataBinding, InverseBindingListener inverseBindingListener, PropertyChangedInverseListener propertyChangedInverseListener) {
        if (inverseBindingListener != propertyChangedInverseListener) {
            if (inverseBindingListener != null) {
                viewDataBinding.removeOnPropertyChangedCallback((PropertyChangedInverseListener) inverseBindingListener);
            }
            if (propertyChangedInverseListener != null) {
                viewDataBinding.addOnPropertyChangedCallback(propertyChangedInverseListener);
            }
        }
    }

    public static <T> void setTo(T[] tArr, int i, T t) {
        if (tArr == null || i < 0 || i >= tArr.length) {
            return;
        }
        tArr[i] = t;
    }

    public void addOnRebindCallback(@NonNull OnRebindCallback onRebindCallback) {
        if (this.f6709j == null) {
            this.f6709j = new CallbackRegistry<>(f6693Q);
        }
        this.f6709j.add(onRebindCallback);
    }

    public void ensureBindingComponentIsNotNull(Class<?> cls) {
        if (this.mBindingComponent != null) {
            return;
        }
        throw new IllegalStateException("Required DataBindingComponent is null in class " + getClass().getSimpleName() + ". A BindingAdapter in " + cls.getCanonicalName() + " is not static and requires an object to use, retrieved from the DataBindingComponent. If you don't use an inflation method taking a DataBindingComponent, use DataBindingUtil.setDefaultComponent or make all BindingAdapter methods static.");
    }

    public abstract void executeBindings();

    public void executePendingBindings() {
        ViewDataBinding viewDataBinding = this.f6714o;
        if (viewDataBinding == null) {
            m4086h();
        } else {
            viewDataBinding.executePendingBindings();
        }
    }

    @Nullable
    public LifecycleOwner getLifecycleOwner() {
        return this.f6715p;
    }

    public Object getObservedField(int i) {
        r5o r5oVar = this.f6707h[i];
        if (r5oVar == null) {
            return null;
        }
        return r5oVar.m56911b();
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f6708i;
    }

    /* renamed from: h */
    public final void m4086h() {
        if (this.f6710k) {
            requestRebind();
            return;
        }
        if (hasPendingBindings()) {
            this.f6710k = true;
            this.f6706g = false;
            CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry = this.f6709j;
            if (callbackRegistry != null) {
                callbackRegistry.notifyCallbacks(this, 1, null);
                if (this.f6706g) {
                    this.f6709j.notifyCallbacks(this, 2, null);
                }
            }
            if (!this.f6706g) {
                executeBindings();
                CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry2 = this.f6709j;
                if (callbackRegistry2 != null) {
                    callbackRegistry2.notifyCallbacks(this, 3, null);
                }
            }
            this.f6710k = false;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void handleFieldChange(int i, Object obj, int i2) {
        if (this.f6717r || this.mInStateFlowRegisterObserver || !onFieldChange(i, obj, i2)) {
            return;
        }
        requestRebind();
    }

    public abstract boolean hasPendingBindings();

    public abstract void invalidateAll();

    /* renamed from: l */
    public void m4087l() {
        executeBindings();
    }

    public abstract boolean onFieldChange(int i, Object obj, int i2);

    public void registerTo(int i, Object obj, zge zgeVar) {
        if (obj == null) {
            return;
        }
        r5o r5oVar = this.f6707h[i];
        if (r5oVar == null) {
            r5oVar = zgeVar.mo4088a(this, i, f6694Z);
            this.f6707h[i] = r5oVar;
            LifecycleOwner lifecycleOwner = this.f6715p;
            if (lifecycleOwner != null) {
                r5oVar.m56912c(lifecycleOwner);
            }
        }
        r5oVar.m56913d(obj);
    }

    public void removeOnRebindCallback(@NonNull OnRebindCallback onRebindCallback) {
        CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry = this.f6709j;
        if (callbackRegistry != null) {
            callbackRegistry.remove(onRebindCallback);
        }
    }

    public void requestRebind() {
        ViewDataBinding viewDataBinding = this.f6714o;
        if (viewDataBinding != null) {
            viewDataBinding.requestRebind();
            return;
        }
        LifecycleOwner lifecycleOwner = this.f6715p;
        if (lifecycleOwner == null || lifecycleOwner.getLifecycle().getState().isAtLeast(Lifecycle.State.STARTED)) {
            synchronized (this) {
                if (this.f6705f) {
                    return;
                }
                this.f6705f = true;
                if (f6701x) {
                    this.f6711l.postFrameCallback(this.f6712m);
                } else {
                    this.f6713n.post(this.f6704e);
                }
            }
        }
    }

    public void setContainedBinding(ViewDataBinding viewDataBinding) {
        if (viewDataBinding != null) {
            viewDataBinding.f6714o = this;
        }
    }

    @MainThread
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        if (lifecycleOwner instanceof Fragment) {
            Log.w("DataBinding", "Setting the fragment as the LifecycleOwner might cause memory leaks because views lives shorter than the Fragment. Consider using Fragment's view lifecycle");
        }
        LifecycleOwner lifecycleOwner2 = this.f6715p;
        if (lifecycleOwner2 == lifecycleOwner) {
            return;
        }
        if (lifecycleOwner2 != null) {
            lifecycleOwner2.getLifecycle().removeObserver(this.f6716q);
        }
        this.f6715p = lifecycleOwner;
        if (lifecycleOwner != null) {
            if (this.f6716q == null) {
                this.f6716q = new OnStartListener(this, null);
            }
            lifecycleOwner.getLifecycle().addObserver(this.f6716q);
        }
        for (r5o r5oVar : this.f6707h) {
            if (r5oVar != null) {
                r5oVar.m56912c(lifecycleOwner);
            }
        }
    }

    public void setRootTag(View view) {
        view.setTag(C0998R.id.dataBinding, this);
    }

    public abstract boolean setVariable(int i, @Nullable Object obj);

    public void unbind() {
        for (r5o r5oVar : this.f6707h) {
            if (r5oVar != null) {
                r5oVar.m56914e();
            }
        }
    }

    public boolean unregisterFrom(int i) {
        r5o r5oVar = this.f6707h[i];
        if (r5oVar != null) {
            return r5oVar.m56914e();
        }
        return false;
    }

    public boolean updateLiveDataRegistration(int i, LiveData<?> liveData) {
        this.f6717r = true;
        try {
            return updateRegistration(i, liveData, f6692O);
        } finally {
            this.f6717r = false;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean updateRegistration(int i, Object obj, zge zgeVar) {
        if (obj == null) {
            return unregisterFrom(i);
        }
        r5o r5oVar = this.f6707h[i];
        if (r5oVar == null) {
            registerTo(i, obj, zgeVar);
            return true;
        }
        if (r5oVar.m56911b() == obj) {
            return false;
        }
        unregisterFrom(i);
        registerTo(i, obj, zgeVar);
        return true;
    }

    public static byte parse(String str, byte b) {
        try {
            return Byte.parseByte(str);
        } catch (NumberFormatException unused) {
            return b;
        }
    }

    public static long safeUnbox(Long l) {
        if (l == null) {
            return 0L;
        }
        return l.longValue();
    }

    public void setRootTag(View[] viewArr) {
        for (View view : viewArr) {
            view.setTag(C0998R.id.dataBinding, this);
        }
    }

    public static boolean getFromArray(boolean[] zArr, int i) {
        if (zArr == null || i < 0 || i >= zArr.length) {
            return false;
        }
        return zArr[i];
    }

    public static <T> T getFromList(SparseArray<T> sparseArray, int i) {
        if (sparseArray == null || i < 0) {
            return null;
        }
        return sparseArray.get(i);
    }

    public static Object[] mapBindings(DataBindingComponent dataBindingComponent, View[] viewArr, int i, IncludedLayouts includedLayouts, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i];
        for (View view : viewArr) {
            m4083o(dataBindingComponent, view, objArr, includedLayouts, sparseIntArray, true);
        }
        return objArr;
    }

    public static short parse(String str, short s) {
        try {
            return Short.parseShort(str);
        } catch (NumberFormatException unused) {
            return s;
        }
    }

    public static short safeUnbox(Short sh) {
        if (sh == null) {
            return (short) 0;
        }
        return sh.shortValue();
    }

    public static void setTo(boolean[] zArr, int i, boolean z) {
        if (zArr == null || i < 0 || i >= zArr.length) {
            return;
        }
        zArr[i] = z;
    }

    @TargetApi(16)
    public static <T> T getFromList(LongSparseArray<T> longSparseArray, int i) {
        if (longSparseArray == null || i < 0) {
            return null;
        }
        return longSparseArray.get(i);
    }

    public static int parse(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public static byte safeUnbox(Byte b) {
        if (b == null) {
            return (byte) 0;
        }
        return b.byteValue();
    }

    public static byte getFromArray(byte[] bArr, int i) {
        if (bArr == null || i < 0 || i >= bArr.length) {
            return (byte) 0;
        }
        return bArr[i];
    }

    public static <T> T getFromList(androidx.collection.LongSparseArray<T> longSparseArray, int i) {
        if (longSparseArray == null || i < 0) {
            return null;
        }
        return longSparseArray.get(i);
    }

    public static long parse(String str, long j) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    public static char safeUnbox(Character ch) {
        if (ch == null) {
            return (char) 0;
        }
        return ch.charValue();
    }

    public static void setTo(byte[] bArr, int i, byte b) {
        if (bArr == null || i < 0 || i >= bArr.length) {
            return;
        }
        bArr[i] = b;
    }

    public static boolean getFromList(SparseBooleanArray sparseBooleanArray, int i) {
        if (sparseBooleanArray == null || i < 0) {
            return false;
        }
        return sparseBooleanArray.get(i);
    }

    public static float parse(String str, float f) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return f;
        }
    }

    public static double safeUnbox(Double d) {
        if (d == null) {
            return 0.0d;
        }
        return d.doubleValue();
    }

    public static short getFromArray(short[] sArr, int i) {
        if (sArr == null || i < 0 || i >= sArr.length) {
            return (short) 0;
        }
        return sArr[i];
    }

    public static int getFromList(SparseIntArray sparseIntArray, int i) {
        if (sparseIntArray == null || i < 0) {
            return 0;
        }
        return sparseIntArray.get(i);
    }

    public static double parse(String str, double d) {
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException unused) {
            return d;
        }
    }

    public static float safeUnbox(Float f) {
        if (f == null) {
            return 0.0f;
        }
        return f.floatValue();
    }

    public static void setTo(short[] sArr, int i, short s) {
        if (sArr == null || i < 0 || i >= sArr.length) {
            return;
        }
        sArr[i] = s;
    }

    public boolean updateRegistration(int i, Observable observable) {
        return updateRegistration(i, observable, f6702y);
    }

    @TargetApi(18)
    public static long getFromList(SparseLongArray sparseLongArray, int i) {
        if (sparseLongArray == null || i < 0) {
            return 0L;
        }
        return sparseLongArray.get(i);
    }

    public static char parse(String str, char c) {
        return (str == null || str.isEmpty()) ? c : str.charAt(0);
    }

    public static boolean safeUnbox(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean updateRegistration(int i, ObservableList observableList) {
        return updateRegistration(i, observableList, f6703z);
    }

    public static char getFromArray(char[] cArr, int i) {
        if (cArr == null || i < 0 || i >= cArr.length) {
            return (char) 0;
        }
        return cArr[i];
    }

    public static void setTo(char[] cArr, int i, char c) {
        if (cArr == null || i < 0 || i >= cArr.length) {
            return;
        }
        cArr[i] = c;
    }

    public boolean updateRegistration(int i, ObservableMap observableMap) {
        return updateRegistration(i, observableMap, f6691J);
    }

    public static int getFromArray(int[] iArr, int i) {
        if (iArr == null || i < 0 || i >= iArr.length) {
            return 0;
        }
        return iArr[i];
    }

    public static void setTo(int[] iArr, int i, int i2) {
        if (iArr == null || i < 0 || i >= iArr.length) {
            return;
        }
        iArr[i] = i2;
    }

    public static long getFromArray(long[] jArr, int i) {
        if (jArr == null || i < 0 || i >= jArr.length) {
            return 0L;
        }
        return jArr[i];
    }

    public static void setTo(long[] jArr, int i, long j) {
        if (jArr == null || i < 0 || i >= jArr.length) {
            return;
        }
        jArr[i] = j;
    }

    public ViewDataBinding(Object obj, View view, int i) {
        this(m4078g(obj), view, i);
    }

    public static float getFromArray(float[] fArr, int i) {
        if (fArr == null || i < 0 || i >= fArr.length) {
            return 0.0f;
        }
        return fArr[i];
    }

    public static void setTo(float[] fArr, int i, float f) {
        if (fArr == null || i < 0 || i >= fArr.length) {
            return;
        }
        fArr[i] = f;
    }

    public static double getFromArray(double[] dArr, int i) {
        if (dArr == null || i < 0 || i >= dArr.length) {
            return 0.0d;
        }
        return dArr[i];
    }

    public static void setTo(double[] dArr, int i, double d) {
        if (dArr == null || i < 0 || i >= dArr.length) {
            return;
        }
        dArr[i] = d;
    }

    public static <T> void setTo(List<T> list, int i, T t) {
        if (list == null || i < 0 || i >= list.size()) {
            return;
        }
        list.set(i, t);
    }

    public static <T> void setTo(SparseArray<T> sparseArray, int i, T t) {
        if (sparseArray == null || i < 0 || i >= sparseArray.size()) {
            return;
        }
        sparseArray.put(i, t);
    }

    @TargetApi(16)
    public static <T> void setTo(LongSparseArray<T> longSparseArray, int i, T t) {
        if (longSparseArray == null || i < 0 || i >= longSparseArray.size()) {
            return;
        }
        longSparseArray.put(i, t);
    }

    public static <T> void setTo(androidx.collection.LongSparseArray<T> longSparseArray, int i, T t) {
        if (longSparseArray == null || i < 0 || i >= longSparseArray.size()) {
            return;
        }
        longSparseArray.put(i, t);
    }

    public static void setTo(SparseBooleanArray sparseBooleanArray, int i, boolean z) {
        if (sparseBooleanArray == null || i < 0 || i >= sparseBooleanArray.size()) {
            return;
        }
        sparseBooleanArray.put(i, z);
    }

    public static void setTo(SparseIntArray sparseIntArray, int i, int i2) {
        if (sparseIntArray == null || i < 0 || i >= sparseIntArray.size()) {
            return;
        }
        sparseIntArray.put(i, i2);
    }

    @TargetApi(18)
    public static void setTo(SparseLongArray sparseLongArray, int i, long j) {
        if (sparseLongArray == null || i < 0 || i >= sparseLongArray.size()) {
            return;
        }
        sparseLongArray.put(i, j);
    }

    public static <K, T> void setTo(Map<K, T> map, K k, T t) {
        if (map == null) {
            return;
        }
        map.put(k, t);
    }
}
