package dagger.hilt.android.internal.modules;

import android.app.Application;
import android.content.Context;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.InstallIn;
import dagger.hilt.android.internal.Contexts;
import dagger.hilt.android.qualifiers.ApplicationContext;
import dagger.hilt.components.SingletonComponent;

@Module
@InstallIn({SingletonComponent.class})
/* loaded from: classes10.dex */
public final class ApplicationContextModule {

    /* renamed from: a */
    public final Context f94528a;

    public ApplicationContextModule(Context applicationContext) {
        this.f94528a = applicationContext;
    }

    @Provides
    /* renamed from: a */
    public Application m60898a() {
        return Contexts.getApplication(this.f94528a);
    }

    @Provides
    @ApplicationContext
    /* renamed from: b */
    public Context m60899b() {
        return this.f94528a;
    }
}
