package com.onyx.galaxy.note.usercenter.p049ui;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModelProvider;
import com.onyx.galaxy.note.common.base.BaseCompatActivity;
import com.sagittarius.p050v6.C13086AB;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.managers.ActivityComponentManager;
import dagger.hilt.android.internal.managers.SavedStateHandleHolder;
import dagger.hilt.internal.GeneratedComponentManager;
import dagger.hilt.internal.GeneratedComponentManagerHolder;
import dagger.hilt.internal.UnsafeCasts;

/* loaded from: classes17.dex */
public abstract class Hilt_UserCenterActivity extends BaseCompatActivity implements GeneratedComponentManagerHolder {

    /* renamed from: w0 */
    public SavedStateHandleHolder f62406w0;

    /* renamed from: x0 */
    public volatile ActivityComponentManager f62407x0;

    /* renamed from: y0 */
    public final Object f62408y0 = new Object();

    /* renamed from: z0 */
    public boolean f62409z0 = false;

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.Hilt_UserCenterActivity$a */
    /* loaded from: classes9.dex */
    public class C12871a implements OnContextAvailableListener {
        public C12871a() {
        }

        @Override // androidx.activity.contextaware.OnContextAvailableListener
        public void onContextAvailable(Context context) {
            Hilt_UserCenterActivity.this.inject();
        }
    }

    public Hilt_UserCenterActivity() {
        m51631E();
    }

    /* renamed from: E */
    public final void m51631E() {
        addOnContextAvailableListener(new C12871a());
    }

    /* renamed from: F */
    public final void m51632F() {
        if (getApplication() instanceof GeneratedComponentManager) {
            SavedStateHandleHolder savedStateHandleHolder = componentManager().getSavedStateHandleHolder();
            this.f62406w0 = savedStateHandleHolder;
            if (savedStateHandleHolder.isInvalid()) {
                this.f62406w0.setExtras(getDefaultViewModelCreationExtras());
            }
        }
    }

    public ActivityComponentManager createComponentManager() {
        return new ActivityComponentManager(this);
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.activity.ComponentActivity, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return DefaultViewModelFactories.getActivityFactory(this, super.getDefaultViewModelProviderFactory());
    }

    public void inject() {
        if (this.f62409z0) {
            return;
        }
        this.f62409z0 = true;
        ((UserCenterActivity_GeneratedInjector) generatedComponent()).injectUserCenterActivity((UserCenterActivity) UnsafeCasts.unsafeCast(this));
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @CallSuper
    public void onCreate(@Nullable Bundle bundle) {
        C13086AB.m52315v(-1426063255, this, bundle);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        SavedStateHandleHolder savedStateHandleHolder = this.f62406w0;
        if (savedStateHandleHolder != null) {
            savedStateHandleHolder.clear();
        }
    }

    @Override // dagger.hilt.internal.GeneratedComponentManagerHolder
    public final ActivityComponentManager componentManager() {
        if (this.f62407x0 == null) {
            synchronized (this.f62408y0) {
                if (this.f62407x0 == null) {
                    this.f62407x0 = createComponentManager();
                }
            }
        }
        return this.f62407x0;
    }
}
