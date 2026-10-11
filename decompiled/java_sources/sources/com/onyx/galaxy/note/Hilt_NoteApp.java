package com.onyx.galaxy.note;

import android.app.Application;
import androidx.annotation.CallSuper;
import dagger.hilt.android.internal.managers.ApplicationComponentManager;
import dagger.hilt.android.internal.managers.ComponentSupplier;
import dagger.hilt.android.internal.modules.ApplicationContextModule;
import dagger.hilt.internal.GeneratedComponentManagerHolder;
import dagger.hilt.internal.UnsafeCasts;

/* loaded from: classes9.dex */
public abstract class Hilt_NoteApp extends Application implements GeneratedComponentManagerHolder {

    /* renamed from: e */
    public boolean f53343e = false;

    /* renamed from: f */
    public final ApplicationComponentManager f53344f = new ApplicationComponentManager(new C10634a());

    /* renamed from: com.onyx.galaxy.note.Hilt_NoteApp$a */
    /* loaded from: classes9.dex */
    public class C10634a implements ComponentSupplier {
        public C10634a() {
        }

        @Override // dagger.hilt.android.internal.managers.ComponentSupplier
        public Object get() {
            return DaggerNoteApp_HiltComponents_SingletonC.builder().applicationContextModule(new ApplicationContextModule(Hilt_NoteApp.this)).build();
        }
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    public void hiltInternalInject() {
        if (this.f53343e) {
            return;
        }
        this.f53343e = true;
        ((NoteApp_GeneratedInjector) generatedComponent()).injectNoteApp((NoteApp) UnsafeCasts.unsafeCast(this));
    }

    @Override // android.app.Application
    @CallSuper
    public void onCreate() {
        hiltInternalInject();
        super.onCreate();
    }

    @Override // dagger.hilt.internal.GeneratedComponentManagerHolder
    public final ApplicationComponentManager componentManager() {
        return this.f53344f;
    }
}
