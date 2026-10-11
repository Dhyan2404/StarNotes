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
public abstract class Hilt_LogOffAgreementFragment extends BaseFragment implements GeneratedComponentManagerHolder {

    /* renamed from: d1 */
    public ContextWrapper f62401d1;

    /* renamed from: e1 */
    public boolean f62402e1;

    /* renamed from: f1 */
    public volatile FragmentComponentManager f62403f1;

    /* renamed from: g1 */
    public final Object f62404g1 = new Object();

    /* renamed from: h1 */
    public boolean f62405h1 = false;

    public FragmentComponentManager createComponentManager() {
        return new FragmentComponentManager(this);
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() == null && !this.f62402e1) {
            return null;
        }
        m51630l0();
        return this.f62401d1;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return DefaultViewModelFactories.getFragmentFactory(this, super.getDefaultViewModelProviderFactory());
    }

    public void inject() {
        if (this.f62405h1) {
            return;
        }
        this.f62405h1 = true;
        ((LogOffAgreementFragment_GeneratedInjector) generatedComponent()).injectLogOffAgreementFragment((LogOffAgreementFragment) UnsafeCasts.unsafeCast(this));
    }

    /* renamed from: l0 */
    public final void m51630l0() {
        if (this.f62401d1 == null) {
            this.f62401d1 = FragmentComponentManager.createContextWrapper(super.getContext(), this);
            this.f62402e1 = FragmentGetContextFix.isFragmentGetContextFixDisabled(super.getContext());
        }
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onAttach(Context context) {
        super.onAttach(context);
        m51630l0();
        inject();
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return onGetLayoutInflater.cloneInContext(FragmentComponentManager.createContextWrapper(onGetLayoutInflater, this));
    }

    @Override // dagger.hilt.internal.GeneratedComponentManagerHolder
    public final FragmentComponentManager componentManager() {
        if (this.f62403f1 == null) {
            synchronized (this.f62404g1) {
                if (this.f62403f1 == null) {
                    this.f62403f1 = createComponentManager();
                }
            }
        }
        return this.f62403f1;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f62401d1;
        Preconditions.checkState(contextWrapper == null || FragmentComponentManager.findActivity(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m51630l0();
        inject();
    }
}
