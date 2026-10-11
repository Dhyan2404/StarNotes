package dagger.hilt.android.internal.lifecycle;

import androidx.activity.ComponentActivity;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import dagger.Module;
import dagger.hilt.EntryPoint;
import dagger.hilt.EntryPoints;
import dagger.hilt.InstallIn;
import dagger.hilt.android.components.ActivityComponent;
import dagger.hilt.android.components.FragmentComponent;
import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.hilt.android.internal.lifecycle.HiltViewModelMap;
import dagger.hilt.internal.Preconditions;
import dagger.multibindings.Multibinds;
import java.util.Map;
import javax.inject.Inject;

/* loaded from: classes10.dex */
public final class DefaultViewModelFactories {

    @EntryPoint
    @InstallIn({ActivityComponent.class})
    /* loaded from: classes10.dex */
    public interface ActivityEntryPoint {
        InternalFactoryFactory getHiltInternalFactoryFactory();
    }

    @EntryPoint
    @InstallIn({FragmentComponent.class})
    /* loaded from: classes10.dex */
    public interface FragmentEntryPoint {
        InternalFactoryFactory getHiltInternalFactoryFactory();
    }

    /* loaded from: classes10.dex */
    public static final class InternalFactoryFactory {

        /* renamed from: a */
        public final Map<Class<?>, Boolean> f94483a;

        /* renamed from: b */
        public final ViewModelComponentBuilder f94484b;

        @Inject
        public InternalFactoryFactory(@HiltViewModelMap.KeySet Map<Class<?>, Boolean> keySet, ViewModelComponentBuilder viewModelComponentBuilder) {
            this.f94483a = keySet;
            this.f94484b = viewModelComponentBuilder;
        }

        /* renamed from: a */
        public ViewModelProvider.Factory m60871a(ComponentActivity activity, ViewModelProvider.Factory delegateFactory) {
            return m60873c(delegateFactory);
        }

        /* renamed from: b */
        public ViewModelProvider.Factory m60872b(Fragment fragment, ViewModelProvider.Factory delegateFactory) {
            return m60873c(delegateFactory);
        }

        /* renamed from: c */
        public final ViewModelProvider.Factory m60873c(ViewModelProvider.Factory delegate) {
            return new HiltViewModelFactory(this.f94483a, (ViewModelProvider.Factory) Preconditions.checkNotNull(delegate), this.f94484b);
        }
    }

    @Module
    @InstallIn({ActivityComponent.class})
    /* renamed from: dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories$a */
    /* loaded from: classes10.dex */
    public interface InterfaceC17050a {
        @HiltViewModelMap.KeySet
        @Multibinds
        /* renamed from: a */
        Map<Class<?>, Boolean> m60874a();
    }

    public static ViewModelProvider.Factory getActivityFactory(ComponentActivity activity, ViewModelProvider.Factory delegateFactory) {
        return ((ActivityEntryPoint) EntryPoints.get(activity, ActivityEntryPoint.class)).getHiltInternalFactoryFactory().m60871a(activity, delegateFactory);
    }

    public static ViewModelProvider.Factory getFragmentFactory(Fragment fragment, ViewModelProvider.Factory delegateFactory) {
        return ((FragmentEntryPoint) EntryPoints.get(fragment, FragmentEntryPoint.class)).getHiltInternalFactoryFactory().m60872b(fragment, delegateFactory);
    }
}
