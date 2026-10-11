package dagger.hilt.android.internal.modules;

import android.app.Application;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes10.dex */
public final class ApplicationContextModule_ProvideApplicationFactory implements Factory<Application> {

    /* renamed from: a */
    public final ApplicationContextModule f94529a;

    public ApplicationContextModule_ProvideApplicationFactory(ApplicationContextModule module) {
        this.f94529a = module;
    }

    public static ApplicationContextModule_ProvideApplicationFactory create(ApplicationContextModule module) {
        return new ApplicationContextModule_ProvideApplicationFactory(module);
    }

    public static Application provideApplication(ApplicationContextModule instance) {
        return (Application) Preconditions.checkNotNullFromProvides(instance.m60898a());
    }

    @Override // javax.inject.Provider
    public Application get() {
        return provideApplication(this.f94529a);
    }
}
