package com.onyx.galaxy.note.update;

import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

@ScopeMetadata("dagger.hilt.android.scopes.ActivityScoped")
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes9.dex */
public final class GoogleAppUpdateModule_BindGoogleAppUpdateFactory implements Factory<IAppUpdateDetect> {

    /* renamed from: com.onyx.galaxy.note.update.GoogleAppUpdateModule_BindGoogleAppUpdateFactory$a */
    /* loaded from: classes9.dex */
    public static final class C12833a {

        /* renamed from: a */
        public static final GoogleAppUpdateModule_BindGoogleAppUpdateFactory f62287a = new GoogleAppUpdateModule_BindGoogleAppUpdateFactory();
    }

    public static IAppUpdateDetect bindGoogleAppUpdate() {
        return (IAppUpdateDetect) Preconditions.checkNotNullFromProvides(GoogleAppUpdateModule.INSTANCE.bindGoogleAppUpdate());
    }

    public static GoogleAppUpdateModule_BindGoogleAppUpdateFactory create() {
        return C12833a.f62287a;
    }

    @Override // javax.inject.Provider
    public IAppUpdateDetect get() {
        return bindGoogleAppUpdate();
    }
}
