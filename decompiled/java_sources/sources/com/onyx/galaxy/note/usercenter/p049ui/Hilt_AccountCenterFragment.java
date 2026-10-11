package com.onyx.galaxy.note.usercenter.p049ui;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.lifecycle.ViewModelProvider;
import com.onyx.galaxy.note.common.base.BaseFragment;
import dagger.hilt.android.flags.FragmentGetContextFix;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.managers.FragmentComponentManager;
import dagger.hilt.internal.GeneratedComponentManagerHolder;
import dagger.hilt.internal.Preconditions;
import dagger.hilt.internal.UnsafeCasts;

/* loaded from: classes9.dex */
public abstract class Hilt_AccountCenterFragment extends BaseFragment implements GeneratedComponentManagerHolder {

    /* renamed from: d1 */
    public ContextWrapper f62396d1;

    /* renamed from: e1 */
    public boolean f62397e1;

    /* renamed from: f1 */
    public volatile FragmentComponentManager f62398f1;

    /* renamed from: g1 */
    public final Object f62399g1 = new Object();

    /* renamed from: h1 */
    public boolean f62400h1 = false;

    public FragmentComponentManager createComponentManager() {
        return new FragmentComponentManager(this);
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() == null && !this.f62397e1) {
            return null;
        }
        m51629l0();
        return this.f62396d1;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return DefaultViewModelFactories.getFragmentFactory(this, super.getDefaultViewModelProviderFactory());
    }

    public void inject() {
        if (this.f62400h1) {
            return;
        }
        this.f62400h1 = true;
        ((AccountCenterFragment_GeneratedInjector) generatedComponent()).injectAccountCenterFragment((AccountCenterFragment) UnsafeCasts.unsafeCast(this));
    }

    /* renamed from: l0 */
    public final void m51629l0() {
        if (this.f62396d1 == null) {
            this.f62396d1 = FragmentComponentManager.createContextWrapper(super.getContext(), this);
            this.f62397e1 = FragmentGetContextFix.isFragmentGetContextFixDisabled(super.getContext());
        }
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onAttach(Context context) {
        super.onAttach(context);
        m51629l0();
        inject();
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return onGetLayoutInflater.cloneInContext(FragmentComponentManager.createContextWrapper(onGetLayoutInflater, this));
    }

    @Override // dagger.hilt.internal.GeneratedComponentManagerHolder
    public final FragmentComponentManager componentManager() {
        if (this.f62398f1 == null) {
            synchronized (this.f62399g1) {
                if (this.f62398f1 == null) {
                    this.f62398f1 = createComponentManager();
                }
            }
        }
        return this.f62398f1;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f62396d1;
        Preconditions.checkState(contextWrapper == null || FragmentComponentManager.findActivity(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m51629l0();
        inject();
    }
}
