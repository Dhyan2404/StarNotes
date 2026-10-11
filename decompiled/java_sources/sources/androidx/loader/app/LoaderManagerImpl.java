package androidx.loader.app;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.util.DebugUtils;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.bumptech.glide.load.engine.GlideException;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import org.apache.commons.collections4.MapUtils;

/* loaded from: classes3.dex */
public class LoaderManagerImpl extends LoaderManager {

    /* renamed from: c */
    public static final String f8006c = "LoaderManager";

    /* renamed from: d */
    public static boolean f8007d;

    /* renamed from: a */
    @NonNull
    public final LifecycleOwner f8008a;

    /* renamed from: b */
    @NonNull
    public final C1166b f8009b;

    /* loaded from: classes3.dex */
    public static class LoaderInfo<D> extends MutableLiveData<D> implements Loader.OnLoadCompleteListener<D> {

        /* renamed from: m */
        public final int f8010m;

        /* renamed from: n */
        @Nullable
        public final Bundle f8011n;

        /* renamed from: o */
        @NonNull
        public final Loader<D> f8012o;

        /* renamed from: p */
        public LifecycleOwner f8013p;

        /* renamed from: q */
        public C1165a<D> f8014q;

        /* renamed from: r */
        public Loader<D> f8015r;

        public LoaderInfo(int i, @Nullable Bundle bundle, @NonNull Loader<D> loader, @Nullable Loader<D> loader2) {
            this.f8010m = i;
            this.f8011n = bundle;
            this.f8012o = loader;
            this.f8015r = loader2;
            loader.registerListener(i, this);
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f8010m);
            printWriter.print(" mArgs=");
            printWriter.println(this.f8011n);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f8012o);
            this.f8012o.dump(str + GlideException.C1935a.f14609h, fileDescriptor, printWriter, strArr);
            if (this.f8014q != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.f8014q);
                this.f8014q.m4951a(str + GlideException.C1935a.f14609h, printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(m4947g().dataToString(getValue()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(hasActiveObservers());
        }

        @MainThread
        /* renamed from: f */
        public Loader<D> m4946f(boolean z) {
            if (LoaderManagerImpl.f8007d) {
                Log.v(LoaderManagerImpl.f8006c, "  Destroying: " + this);
            }
            this.f8012o.cancelLoad();
            this.f8012o.abandon();
            C1165a<D> c1165a = this.f8014q;
            if (c1165a != null) {
                removeObserver(c1165a);
                if (z) {
                    c1165a.m4953c();
                }
            }
            this.f8012o.unregisterListener(this);
            if ((c1165a == null || c1165a.m4952b()) && !z) {
                return this.f8012o;
            }
            this.f8012o.reset();
            return this.f8015r;
        }

        @NonNull
        /* renamed from: g */
        public Loader<D> m4947g() {
            return this.f8012o;
        }

        /* renamed from: h */
        public boolean m4948h() {
            C1165a<D> c1165a;
            return (!hasActiveObservers() || (c1165a = this.f8014q) == null || c1165a.m4952b()) ? false : true;
        }

        /* renamed from: i */
        public void m4949i() {
            LifecycleOwner lifecycleOwner = this.f8013p;
            C1165a<D> c1165a = this.f8014q;
            if (lifecycleOwner == null || c1165a == null) {
                return;
            }
            super.removeObserver(c1165a);
            observe(lifecycleOwner, c1165a);
        }

        @NonNull
        @MainThread
        /* renamed from: j */
        public Loader<D> m4950j(@NonNull LifecycleOwner lifecycleOwner, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            C1165a<D> c1165a = new C1165a<>(this.f8012o, loaderCallbacks);
            observe(lifecycleOwner, c1165a);
            C1165a<D> c1165a2 = this.f8014q;
            if (c1165a2 != null) {
                removeObserver(c1165a2);
            }
            this.f8013p = lifecycleOwner;
            this.f8014q = c1165a;
            return this.f8012o;
        }

        @Override // androidx.lifecycle.LiveData
        public void onActive() {
            if (LoaderManagerImpl.f8007d) {
                Log.v(LoaderManagerImpl.f8006c, "  Starting: " + this);
            }
            this.f8012o.startLoading();
        }

        @Override // androidx.lifecycle.LiveData
        public void onInactive() {
            if (LoaderManagerImpl.f8007d) {
                Log.v(LoaderManagerImpl.f8006c, "  Stopping: " + this);
            }
            this.f8012o.stopLoading();
        }

        @Override // androidx.loader.content.Loader.OnLoadCompleteListener
        public void onLoadComplete(@NonNull Loader<D> loader, @Nullable D d) {
            if (LoaderManagerImpl.f8007d) {
                Log.v(LoaderManagerImpl.f8006c, "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                setValue(d);
                return;
            }
            if (LoaderManagerImpl.f8007d) {
                Log.w(LoaderManagerImpl.f8006c, "onLoadComplete was incorrectly called on a background thread");
            }
            postValue(d);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void removeObserver(@NonNull Observer<? super D> observer) {
            super.removeObserver(observer);
            this.f8013p = null;
            this.f8014q = null;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(D d) {
            super.setValue(d);
            Loader<D> loader = this.f8015r;
            if (loader != null) {
                loader.reset();
                this.f8015r = null;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f8010m);
            sb.append(" : ");
            DebugUtils.buildShortClassTag(this.f8012o, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* renamed from: androidx.loader.app.LoaderManagerImpl$a */
    /* loaded from: classes3.dex */
    public static class C1165a<D> implements Observer<D> {

        /* renamed from: a */
        @NonNull
        public final Loader<D> f8016a;

        /* renamed from: b */
        @NonNull
        public final LoaderManager.LoaderCallbacks<D> f8017b;

        /* renamed from: c */
        public boolean f8018c = false;

        public C1165a(@NonNull Loader<D> loader, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            this.f8016a = loader;
            this.f8017b = loaderCallbacks;
        }

        /* renamed from: a */
        public void m4951a(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f8018c);
        }

        /* renamed from: b */
        public boolean m4952b() {
            return this.f8018c;
        }

        @MainThread
        /* renamed from: c */
        public void m4953c() {
            if (this.f8018c) {
                if (LoaderManagerImpl.f8007d) {
                    Log.v(LoaderManagerImpl.f8006c, "  Resetting: " + this.f8016a);
                }
                this.f8017b.onLoaderReset(this.f8016a);
            }
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable D d) {
            if (LoaderManagerImpl.f8007d) {
                Log.v(LoaderManagerImpl.f8006c, "  onLoadFinished in " + this.f8016a + ": " + this.f8016a.dataToString(d));
            }
            this.f8017b.onLoadFinished(this.f8016a, d);
            this.f8018c = true;
        }

        public String toString() {
            return this.f8017b.toString();
        }
    }

    /* renamed from: androidx.loader.app.LoaderManagerImpl$b */
    /* loaded from: classes3.dex */
    public static class C1166b extends ViewModel {

        /* renamed from: j */
        public static final ViewModelProvider.Factory f8019j = new a();

        /* renamed from: h */
        public SparseArrayCompat<LoaderInfo> f8020h = new SparseArrayCompat<>();

        /* renamed from: i */
        public boolean f8021i = false;

        /* renamed from: androidx.loader.app.LoaderManagerImpl$b$a */
        /* loaded from: classes3.dex */
        public static class a implements ViewModelProvider.Factory {
            @Override // androidx.lifecycle.ViewModelProvider.Factory
            @NonNull
            public <T extends ViewModel> T create(@NonNull Class<T> cls) {
                return new C1166b();
            }
        }

        @NonNull
        /* renamed from: f */
        public static C1166b m4954f(ViewModelStore viewModelStore) {
            return (C1166b) new ViewModelProvider(viewModelStore, f8019j).get(C1166b.class);
        }

        /* renamed from: d */
        public void m4955d(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f8020h.size() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + MapUtils.f104930a;
                for (int i = 0; i < this.f8020h.size(); i++) {
                    LoaderInfo valueAt = this.f8020h.valueAt(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f8020h.keyAt(i));
                    printWriter.print(": ");
                    printWriter.println(valueAt.toString());
                    valueAt.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        /* renamed from: e */
        public void m4956e() {
            this.f8021i = false;
        }

        /* renamed from: g */
        public <D> LoaderInfo<D> m4957g(int i) {
            return this.f8020h.get(i);
        }

        /* renamed from: h */
        public boolean m4958h() {
            int size = this.f8020h.size();
            for (int i = 0; i < size; i++) {
                if (this.f8020h.valueAt(i).m4948h()) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: i */
        public boolean m4959i() {
            return this.f8021i;
        }

        /* renamed from: j */
        public void m4960j() {
            int size = this.f8020h.size();
            for (int i = 0; i < size; i++) {
                this.f8020h.valueAt(i).m4949i();
            }
        }

        /* renamed from: k */
        public void m4961k(int i, @NonNull LoaderInfo loaderInfo) {
            this.f8020h.put(i, loaderInfo);
        }

        /* renamed from: l */
        public void m4962l(int i) {
            this.f8020h.remove(i);
        }

        /* renamed from: m */
        public void m4963m() {
            this.f8021i = true;
        }

        @Override // androidx.lifecycle.ViewModel
        public void onCleared() {
            super.onCleared();
            int size = this.f8020h.size();
            for (int i = 0; i < size; i++) {
                this.f8020h.valueAt(i).m4946f(true);
            }
            this.f8020h.clear();
        }
    }

    public LoaderManagerImpl(@NonNull LifecycleOwner lifecycleOwner, @NonNull ViewModelStore viewModelStore) {
        this.f8008a = lifecycleOwner;
        this.f8009b = C1166b.m4954f(viewModelStore);
    }

    @NonNull
    @MainThread
    /* renamed from: a */
    public final <D> Loader<D> m4945a(int i, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks, @Nullable Loader<D> loader) {
        try {
            this.f8009b.m4963m();
            Loader<D> onCreateLoader = loaderCallbacks.onCreateLoader(i, bundle);
            if (onCreateLoader == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (onCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(onCreateLoader.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + onCreateLoader);
            }
            LoaderInfo loaderInfo = new LoaderInfo(i, bundle, onCreateLoader, loader);
            if (f8007d) {
                Log.v(f8006c, "  Created new loader " + loaderInfo);
            }
            this.f8009b.m4961k(i, loaderInfo);
            this.f8009b.m4956e();
            return loaderInfo.m4950j(this.f8008a, loaderCallbacks);
        } catch (Throwable th) {
            this.f8009b.m4956e();
            throw th;
        }
    }

    @Override // androidx.loader.app.LoaderManager
    @MainThread
    public void destroyLoader(int i) {
        if (this.f8009b.m4959i()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("destroyLoader must be called on the main thread");
        }
        if (f8007d) {
            Log.v(f8006c, "destroyLoader in " + this + " of " + i);
        }
        LoaderInfo m4957g = this.f8009b.m4957g(i);
        if (m4957g != null) {
            m4957g.m4946f(true);
            this.f8009b.m4962l(i);
        }
    }

    @Override // androidx.loader.app.LoaderManager
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f8009b.m4955d(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.loader.app.LoaderManager
    @Nullable
    public <D> Loader<D> getLoader(int i) {
        if (this.f8009b.m4959i()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo<D> m4957g = this.f8009b.m4957g(i);
        if (m4957g != null) {
            return m4957g.m4947g();
        }
        return null;
    }

    @Override // androidx.loader.app.LoaderManager
    public boolean hasRunningLoaders() {
        return this.f8009b.m4958h();
    }

    @Override // androidx.loader.app.LoaderManager
    @NonNull
    @MainThread
    public <D> Loader<D> initLoader(int i, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.f8009b.m4959i()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        LoaderInfo<D> m4957g = this.f8009b.m4957g(i);
        if (f8007d) {
            Log.v(f8006c, "initLoader in " + this + ": args=" + bundle);
        }
        if (m4957g == null) {
            return m4945a(i, bundle, loaderCallbacks, null);
        }
        if (f8007d) {
            Log.v(f8006c, "  Re-using existing loader " + m4957g);
        }
        return m4957g.m4950j(this.f8008a, loaderCallbacks);
    }

    @Override // androidx.loader.app.LoaderManager
    public void markForRedelivery() {
        this.f8009b.m4960j();
    }

    @Override // androidx.loader.app.LoaderManager
    @NonNull
    @MainThread
    public <D> Loader<D> restartLoader(int i, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.f8009b.m4959i()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("restartLoader must be called on the main thread");
        }
        if (f8007d) {
            Log.v(f8006c, "restartLoader in " + this + ": args=" + bundle);
        }
        LoaderInfo<D> m4957g = this.f8009b.m4957g(i);
        return m4945a(i, bundle, loaderCallbacks, m4957g != null ? m4957g.m4946f(false) : null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(CloudStorageConstants.OPERATION_IN);
        DebugUtils.buildShortClassTag(this.f8008a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
