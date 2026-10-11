package dagger.hilt.android.internal.lifecycle;

import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import java.util.Map;
import javax.inject.Provider;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
/* loaded from: classes10.dex */
public final class DefaultViewModelFactories_InternalFactoryFactory_Factory implements Factory<DefaultViewModelFactories.InternalFactoryFactory> {

    /* renamed from: a */
    public final Provider<Map<Class<?>, Boolean>> f94485a;

    /* renamed from: b */
    public final Provider<ViewModelComponentBuilder> f94486b;

    public DefaultViewModelFactories_InternalFactoryFactory_Factory(Provider<Map<Class<?>, Boolean>> keySetProvider, Provider<ViewModelComponentBuilder> viewModelComponentBuilderProvider) {
        this.f94485a = keySetProvider;
        this.f94486b = viewModelComponentBuilderProvider;
    }

    public static DefaultViewModelFactories_InternalFactoryFactory_Factory create(Provider<Map<Class<?>, Boolean>> keySetProvider, Provider<ViewModelComponentBuilder> viewModelComponentBuilderProvider) {
        return new DefaultViewModelFactories_InternalFactoryFactory_Factory(keySetProvider, viewModelComponentBuilderProvider);
    }

    public static DefaultViewModelFactories.InternalFactoryFactory newInstance(Map<Class<?>, Boolean> keySet, ViewModelComponentBuilder viewModelComponentBuilder) {
        return new DefaultViewModelFactories.InternalFactoryFactory(keySet, viewModelComponentBuilder);
    }

    @Override // javax.inject.Provider
    public DefaultViewModelFactories.InternalFactoryFactory get() {
        return newInstance(this.f94485a.get(), this.f94486b.get());
    }
}
