package dagger.hilt.android.internal.modules;

import android.content.Context;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata({"dagger.hilt.android.qualifiers.ApplicationContext"})
/* loaded from: classes10.dex */
public final class ApplicationContextModule_ProvideContextFactory implements Factory<Context> {

    /* renamed from: a */
    public final ApplicationContextModule f94530a;

    public ApplicationContextModule_ProvideContextFactory(ApplicationContextModule module) {
        this.f94530a = module;
    }

    public static ApplicationContextModule_ProvideContextFactory create(ApplicationContextModule module) {
        return new ApplicationContextModule_ProvideContextFactory(module);
    }

    public static Context provideContext(ApplicationContextModule instance) {
        return (Context) Preconditions.checkNotNullFromProvides(instance.m60899b());
    }

    @Override // javax.inject.Provider
    public Context get() {
        return provideContext(this.f94530a);
    }
}
