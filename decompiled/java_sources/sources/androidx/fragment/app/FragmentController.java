package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Preconditions;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.loader.app.LoaderManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class FragmentController {

    /* renamed from: a */
    public final FragmentHostCallback<?> f7481a;

    public FragmentController(FragmentHostCallback<?> fragmentHostCallback) {
        this.f7481a = fragmentHostCallback;
    }

    @NonNull
    public static FragmentController createController(@NonNull FragmentHostCallback<?> fragmentHostCallback) {
        return new FragmentController((FragmentHostCallback) Preconditions.checkNotNull(fragmentHostCallback, "callbacks == null"));
    }

    public void attachHost(@Nullable Fragment fragment) {
        FragmentHostCallback<?> fragmentHostCallback = this.f7481a;
        fragmentHostCallback.f7487i.m4715m(fragmentHostCallback, fragmentHostCallback, fragment);
    }

    public void dispatchActivityCreated() {
        this.f7481a.f7487i.m4742x();
    }

    @Deprecated
    public void dispatchConfigurationChanged(@NonNull Configuration configuration) {
        this.f7481a.f7487i.m4746z(configuration, true);
    }

    public boolean dispatchContextItemSelected(@NonNull MenuItem menuItem) {
        return this.f7481a.f7487i.m4644A(menuItem);
    }

    public void dispatchCreate() {
        this.f7481a.f7487i.m4646B();
    }

    @Deprecated
    public boolean dispatchCreateOptionsMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        return this.f7481a.f7487i.m4648C(menu, menuInflater);
    }

    public void dispatchDestroy() {
        this.f7481a.f7487i.m4650D();
    }

    public void dispatchDestroyView() {
        this.f7481a.f7487i.m4652E();
    }

    @Deprecated
    public void dispatchLowMemory() {
        this.f7481a.f7487i.m4654F(true);
    }

    @Deprecated
    public void dispatchMultiWindowModeChanged(boolean z) {
        this.f7481a.f7487i.m4656G(z, true);
    }

    @Deprecated
    public boolean dispatchOptionsItemSelected(@NonNull MenuItem menuItem) {
        return this.f7481a.f7487i.m4659J(menuItem);
    }

    @Deprecated
    public void dispatchOptionsMenuClosed(@NonNull Menu menu) {
        this.f7481a.f7487i.m4660K(menu);
    }

    public void dispatchPause() {
        this.f7481a.f7487i.m4663M();
    }

    @Deprecated
    public void dispatchPictureInPictureModeChanged(boolean z) {
        this.f7481a.f7487i.m4665N(z, true);
    }

    @Deprecated
    public boolean dispatchPrepareOptionsMenu(@NonNull Menu menu) {
        return this.f7481a.f7487i.m4667O(menu);
    }

    @Deprecated
    public void dispatchReallyStop() {
    }

    public void dispatchResume() {
        this.f7481a.f7487i.m4671Q();
    }

    public void dispatchStart() {
        this.f7481a.f7487i.m4673R();
    }

    public void dispatchStop() {
        this.f7481a.f7487i.m4677T();
    }

    @Deprecated
    public void doLoaderDestroy() {
    }

    @Deprecated
    public void doLoaderRetain() {
    }

    @Deprecated
    public void doLoaderStart() {
    }

    @Deprecated
    public void doLoaderStop(boolean z) {
    }

    @Deprecated
    public void dumpLoaders(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
    }

    public boolean execPendingActions() {
        return this.f7481a.f7487i.m4689Z(true);
    }

    @Nullable
    public Fragment findFragmentByWho(@NonNull String str) {
        return this.f7481a.f7487i.m4699f0(str);
    }

    @NonNull
    public List<Fragment> getActiveFragments(@SuppressLint({"UnknownNullness"}) List<Fragment> list) {
        return this.f7481a.f7487i.m4716m0();
    }

    public int getActiveFragmentsCount() {
        return this.f7481a.f7487i.m4713l0();
    }

    @NonNull
    public FragmentManager getSupportFragmentManager() {
        return this.f7481a.f7487i;
    }

    @SuppressLint({"UnknownNullness"})
    @Deprecated
    public LoaderManager getSupportLoaderManager() {
        throw new UnsupportedOperationException("Loaders are managed separately from FragmentController, use LoaderManager.getInstance() to obtain a LoaderManager.");
    }

    public void noteStateNotSaved() {
        this.f7481a.f7487i.m4670P0();
    }

    @Nullable
    public View onCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return this.f7481a.f7487i.m4731r0().onCreateView(view, str, context, attributeSet);
    }

    @Deprecated
    public void reportLoaderStart() {
    }

    @Deprecated
    public void restoreAllState(@Nullable Parcelable parcelable, @Nullable List<Fragment> list) {
        this.f7481a.f7487i.m4690Z0(parcelable, new FragmentManagerNonConfig(list, null, null));
    }

    @Deprecated
    public void restoreLoaderNonConfig(@SuppressLint({"UnknownNullness"}) SimpleArrayMap<String, LoaderManager> simpleArrayMap) {
    }

    @Deprecated
    public void restoreSaveState(@Nullable Parcelable parcelable) {
        FragmentHostCallback<?> fragmentHostCallback = this.f7481a;
        if (!(fragmentHostCallback instanceof ViewModelStoreOwner)) {
            throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
        }
        fragmentHostCallback.f7487i.m4693b1(parcelable);
    }

    @Nullable
    @Deprecated
    public SimpleArrayMap<String, LoaderManager> retainLoaderNonConfig() {
        return null;
    }

    @Nullable
    @Deprecated
    public FragmentManagerNonConfig retainNestedNonConfig() {
        return this.f7481a.f7487i.m4697d1();
    }

    @Nullable
    @Deprecated
    public List<Fragment> retainNonConfig() {
        FragmentManagerNonConfig m4697d1 = this.f7481a.f7487i.m4697d1();
        if (m4697d1 == null || m4697d1.m4758b() == null) {
            return null;
        }
        return new ArrayList(m4697d1.m4758b());
    }

    @Nullable
    @Deprecated
    public Parcelable saveAllState() {
        return this.f7481a.f7487i.m4700f1();
    }

    @Deprecated
    public void restoreAllState(@Nullable Parcelable parcelable, @Nullable FragmentManagerNonConfig fragmentManagerNonConfig) {
        this.f7481a.f7487i.m4690Z0(parcelable, fragmentManagerNonConfig);
    }
}
