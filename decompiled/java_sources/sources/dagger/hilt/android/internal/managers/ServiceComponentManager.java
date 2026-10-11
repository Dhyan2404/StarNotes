package dagger.hilt.android.internal.managers;

import android.app.Application;
import android.app.Service;
import dagger.hilt.EntryPoint;
import dagger.hilt.EntryPoints;
import dagger.hilt.InstallIn;
import dagger.hilt.android.internal.builders.ServiceComponentBuilder;
import dagger.hilt.components.SingletonComponent;
import dagger.hilt.internal.GeneratedComponentManager;
import dagger.hilt.internal.Preconditions;

/* loaded from: classes10.dex */
public final class ServiceComponentManager implements GeneratedComponentManager<Object> {

    /* renamed from: e */
    public final Service f94516e;

    /* renamed from: f */
    public Object f94517f;

    @EntryPoint
    @InstallIn({SingletonComponent.class})
    /* loaded from: classes10.dex */
    public interface ServiceComponentBuilderEntryPoint {
        ServiceComponentBuilder serviceComponentBuilder();
    }

    public ServiceComponentManager(Service service) {
        this.f94516e = service;
    }

    /* renamed from: a */
    public final Object m60889a() {
        Application application = this.f94516e.getApplication();
        Preconditions.checkState(application instanceof GeneratedComponentManager, "Hilt service must be attached to an @HiltAndroidApp Application. Found: %s", application.getClass());
        return ((ServiceComponentBuilderEntryPoint) EntryPoints.get(application, ServiceComponentBuilderEntryPoint.class)).serviceComponentBuilder().service(this.f94516e).build();
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public Object generatedComponent() {
        if (this.f94517f == null) {
            this.f94517f = m60889a();
        }
        return this.f94517f;
    }
}
