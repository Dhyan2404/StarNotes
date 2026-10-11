package dagger.hilt.android.internal.lifecycle;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.savedstate.SavedStateRegistryOwner;
import dagger.Module;
import dagger.hilt.EntryPoint;
import dagger.hilt.EntryPoints;
import dagger.hilt.InstallIn;
import dagger.hilt.android.components.ActivityComponent;
import dagger.hilt.android.components.ViewModelComponent;
import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.hilt.android.internal.lifecycle.HiltViewModelMap;
import dagger.hilt.android.internal.lifecycle.RetainedLifecycleImpl;
import dagger.multibindings.Multibinds;
import java.io.Closeable;
import java.util.Map;
import javax.inject.Provider;
import kotlin.jvm.functions.Function1;

/* loaded from: classes10.dex */
public final class HiltViewModelFactory implements ViewModelProvider.Factory {
    public static final CreationExtras.Key<Function1<Object, ViewModel>> CREATION_CALLBACK_KEY = new C17051a();

    /* renamed from: a */
    public final Map<Class<?>, Boolean> f94487a;

    /* renamed from: b */
    public final ViewModelProvider.Factory f94488b;

    /* renamed from: c */
    public final ViewModelProvider.Factory f94489c;

    @EntryPoint
    @InstallIn({ViewModelComponent.class})
    /* loaded from: classes10.dex */
    public interface ViewModelFactoriesEntryPoint {
        @HiltViewModelAssistedMap
        Map<Class<?>, Object> getHiltViewModelAssistedMap();

        @HiltViewModelMap
        Map<Class<?>, Provider<ViewModel>> getHiltViewModelMap();
    }

    /* renamed from: dagger.hilt.android.internal.lifecycle.HiltViewModelFactory$a */
    /* loaded from: classes10.dex */
    public class C17051a implements CreationExtras.Key<Function1<Object, ViewModel>> {
    }

    /* renamed from: dagger.hilt.android.internal.lifecycle.HiltViewModelFactory$b */
    /* loaded from: classes10.dex */
    public class C17052b implements ViewModelProvider.Factory {

        /* renamed from: a */
        public final /* synthetic */ ViewModelComponentBuilder f94490a;

        public C17052b(final ViewModelComponentBuilder val$viewModelComponentBuilder) {
            this.f94490a = val$viewModelComponentBuilder;
        }

        /* renamed from: a */
        public final <T extends ViewModel> T m60875a(@NonNull ViewModelComponent component, @NonNull Class<T> modelClass, @NonNull CreationExtras extras) {
            Provider<ViewModel> provider = ((ViewModelFactoriesEntryPoint) EntryPoints.get(component, ViewModelFactoriesEntryPoint.class)).getHiltViewModelMap().get(modelClass);
            Function1 function1 = (Function1) extras.get(HiltViewModelFactory.CREATION_CALLBACK_KEY);
            Object obj = ((ViewModelFactoriesEntryPoint) EntryPoints.get(component, ViewModelFactoriesEntryPoint.class)).getHiltViewModelAssistedMap().get(modelClass);
            if (obj == null) {
                if (function1 != null) {
                    throw new IllegalStateException("Found creation callback but class " + modelClass.getName() + " does not have an assisted factory specified in @HiltViewModel.");
                }
                if (provider != null) {
                    return (T) provider.get();
                }
                throw new IllegalStateException("Expected the @HiltViewModel-annotated class " + modelClass.getName() + " to be available in the multi-binding of @HiltViewModelMap but none was found.");
            }
            if (provider != null) {
                throw new AssertionError("Found the @HiltViewModel-annotated class " + modelClass.getName() + " in both the multi-bindings of @HiltViewModelMap and @HiltViewModelAssistedMap.");
            }
            if (function1 != null) {
                return (T) function1.invoke(obj);
            }
            throw new IllegalStateException("Found @HiltViewModel-annotated class " + modelClass.getName() + " using @AssistedInject but no creation callback was provided in CreationExtras.");
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NonNull
        public <T extends ViewModel> T create(@NonNull Class<T> cls, @NonNull CreationExtras creationExtras) {
            final RetainedLifecycleImpl retainedLifecycleImpl = new RetainedLifecycleImpl();
            T t = (T) m60875a(this.f94490a.savedStateHandle(SavedStateHandleSupport.createSavedStateHandle(creationExtras)).viewModelLifecycle(retainedLifecycleImpl).build(), cls, creationExtras);
            t.addCloseable(new Closeable() { // from class: com.sunia.HTREnginev2.fzh
                @Override // java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                    RetainedLifecycleImpl.this.dispatchOnCleared();
                }
            });
            return t;
        }
    }

    @EntryPoint
    @InstallIn({ActivityComponent.class})
    /* renamed from: dagger.hilt.android.internal.lifecycle.HiltViewModelFactory$c */
    /* loaded from: classes10.dex */
    public interface InterfaceC17053c {
        @HiltViewModelMap.KeySet
        /* renamed from: a */
        Map<Class<?>, Boolean> mo41661a();

        /* renamed from: b */
        ViewModelComponentBuilder mo41662b();
    }

    @Module
    @InstallIn({ViewModelComponent.class})
    /* renamed from: dagger.hilt.android.internal.lifecycle.HiltViewModelFactory$d */
    /* loaded from: classes10.dex */
    public interface InterfaceC17054d {
        @HiltViewModelMap
        @Multibinds
        /* renamed from: a */
        Map<Class<?>, ViewModel> m60876a();

        @HiltViewModelAssistedMap
        @Multibinds
        /* renamed from: b */
        Map<Class<?>, Object> m60877b();
    }

    public HiltViewModelFactory(@NonNull Map<Class<?>, Boolean> hiltViewModelKeys, @NonNull ViewModelProvider.Factory delegateFactory, @NonNull ViewModelComponentBuilder viewModelComponentBuilder) {
        this.f94487a = hiltViewModelKeys;
        this.f94488b = delegateFactory;
        this.f94489c = new C17052b(viewModelComponentBuilder);
    }

    public static ViewModelProvider.Factory createInternal(@NonNull Activity activity, @NonNull SavedStateRegistryOwner owner, @Nullable Bundle defaultArgs, @NonNull ViewModelProvider.Factory delegateFactory) {
        return createInternal(activity, delegateFactory);
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    @NonNull
    public <T extends ViewModel> T create(@NonNull Class<T> cls, @NonNull CreationExtras creationExtras) {
        if (this.f94487a.containsKey(cls)) {
            return (T) this.f94489c.create(cls, creationExtras);
        }
        return (T) this.f94488b.create(cls, creationExtras);
    }

    public static ViewModelProvider.Factory createInternal(@NonNull Activity activity, @NonNull ViewModelProvider.Factory delegateFactory) {
        InterfaceC17053c interfaceC17053c = (InterfaceC17053c) EntryPoints.get(activity, InterfaceC17053c.class);
        return new HiltViewModelFactory(interfaceC17053c.mo41661a(), delegateFactory, interfaceC17053c.mo41662b());
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    @NonNull
    public <T extends ViewModel> T create(@NonNull Class<T> cls) {
        if (this.f94487a.containsKey(cls)) {
            return (T) this.f94489c.create(cls);
        }
        return (T) this.f94488b.create(cls);
    }
}
