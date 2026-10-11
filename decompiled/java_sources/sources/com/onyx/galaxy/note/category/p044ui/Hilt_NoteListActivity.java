package com.onyx.galaxy.note.category.p044ui;

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
public abstract class Hilt_NoteListActivity extends BaseCompatActivity implements GeneratedComponentManagerHolder {

    /* renamed from: w0 */
    public SavedStateHandleHolder f54612w0;

    /* renamed from: x0 */
    public volatile ActivityComponentManager f54613x0;

    /* renamed from: y0 */
    public final Object f54614y0 = new Object();

    /* renamed from: z0 */
    public boolean f54615z0 = false;

    /* renamed from: com.onyx.galaxy.note.category.ui.Hilt_NoteListActivity$a */
    /* loaded from: classes9.dex */
    public class C11255a implements OnContextAvailableListener {
        public C11255a() {
        }

        @Override // androidx.activity.contextaware.OnContextAvailableListener
        public void onContextAvailable(Context context) {
            Hilt_NoteListActivity.this.inject();
        }
    }

    public Hilt_NoteListActivity() {
        m43139E();
    }

    /* renamed from: E */
    public final void m43139E() {
        addOnContextAvailableListener(new C11255a());
    }

    /* renamed from: F */
    public final void m43140F() {
        if (getApplication() instanceof GeneratedComponentManager) {
            SavedStateHandleHolder savedStateHandleHolder = componentManager().getSavedStateHandleHolder();
            this.f54612w0 = savedStateHandleHolder;
            if (savedStateHandleHolder.isInvalid()) {
                this.f54612w0.setExtras(getDefaultViewModelCreationExtras());
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
        if (this.f54615z0) {
            return;
        }
        this.f54615z0 = true;
        ((NoteListActivity_GeneratedInjector) generatedComponent()).injectNoteListActivity((NoteListActivity) UnsafeCasts.unsafeCast(this));
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @CallSuper
    public void onCreate(@Nullable Bundle bundle) {
        C13086AB.m52315v(-1426063324, this, bundle);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        SavedStateHandleHolder savedStateHandleHolder = this.f54612w0;
        if (savedStateHandleHolder != null) {
            savedStateHandleHolder.clear();
        }
    }

    @Override // dagger.hilt.internal.GeneratedComponentManagerHolder
    public final ActivityComponentManager componentManager() {
        if (this.f54613x0 == null) {
            synchronized (this.f54614y0) {
                if (this.f54613x0 == null) {
                    this.f54613x0 = createComponentManager();
                }
            }
        }
        return this.f54613x0;
    }
}
