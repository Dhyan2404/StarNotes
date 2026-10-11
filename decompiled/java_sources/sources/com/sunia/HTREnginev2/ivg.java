package com.sunia.HTREnginev2;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;

/* loaded from: classes3.dex */
public class ivg implements HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, ViewModelStoreOwner {

    /* renamed from: e */
    public final Fragment f73624e;

    /* renamed from: f */
    public final ViewModelStore f73625f;

    /* renamed from: g */
    public final Runnable f73626g;

    /* renamed from: h */
    public ViewModelProvider.Factory f73627h;

    /* renamed from: i */
    public LifecycleRegistry f73628i = null;

    /* renamed from: j */
    public SavedStateRegistryController f73629j = null;

    public ivg(@NonNull Fragment fragment, @NonNull ViewModelStore viewModelStore, @NonNull Runnable runnable) {
        this.f73624e = fragment;
        this.f73625f = viewModelStore;
        this.f73626g = runnable;
    }

    /* renamed from: a */
    public void m54796a(@NonNull Lifecycle.Event event) {
        this.f73628i.handleLifecycleEvent(event);
    }

    /* renamed from: b */
    public void m54797b() {
        if (this.f73628i == null) {
            this.f73628i = new LifecycleRegistry(this);
            SavedStateRegistryController create = SavedStateRegistryController.create(this);
            this.f73629j = create;
            create.performAttach();
            this.f73626g.run();
        }
    }

    /* renamed from: c */
    public boolean m54798c() {
        return this.f73628i != null;
    }

    /* renamed from: d */
    public void m54799d(@Nullable Bundle bundle) {
        this.f73629j.performRestore(bundle);
    }

    /* renamed from: e */
    public void m54800e(@NonNull Bundle bundle) {
        this.f73629j.performSave(bundle);
    }

    /* renamed from: f */
    public void m54801f(@NonNull Lifecycle.State state) {
        this.f73628i.setCurrentState(state);
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    @NonNull
    @CallSuper
    public CreationExtras getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = this.f73624e.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras();
        if (application != null) {
            mutableCreationExtras.set(ViewModelProvider.AndroidViewModelFactory.APPLICATION_KEY, application);
        }
        mutableCreationExtras.set(SavedStateHandleSupport.SAVED_STATE_REGISTRY_OWNER_KEY, this.f73624e);
        mutableCreationExtras.set(SavedStateHandleSupport.VIEW_MODEL_STORE_OWNER_KEY, this);
        if (this.f73624e.getArguments() != null) {
            mutableCreationExtras.set(SavedStateHandleSupport.DEFAULT_ARGS_KEY, this.f73624e.getArguments());
        }
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    @NonNull
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        Application application;
        ViewModelProvider.Factory defaultViewModelProviderFactory = this.f73624e.getDefaultViewModelProviderFactory();
        if (!defaultViewModelProviderFactory.equals(this.f73624e.f7390M0)) {
            this.f73627h = defaultViewModelProviderFactory;
            return defaultViewModelProviderFactory;
        }
        if (this.f73627h == null) {
            Context applicationContext = this.f73624e.requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            Fragment fragment = this.f73624e;
            this.f73627h = new SavedStateViewModelFactory(application, fragment, fragment.getArguments());
        }
        return this.f73627h;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        m54797b();
        return this.f73628i;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    @NonNull
    public SavedStateRegistry getSavedStateRegistry() {
        m54797b();
        return this.f73629j.getSavedStateRegistry();
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    @NonNull
    public ViewModelStore getViewModelStore() {
        m54797b();
        return this.f73625f;
    }
}
