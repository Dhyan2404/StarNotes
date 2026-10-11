package dagger.hilt.android.internal.managers;

import android.content.Context;
import androidx.activity.ComponentActivity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.EntryPoint;
import dagger.hilt.EntryPoints;
import dagger.hilt.InstallIn;
import dagger.hilt.android.ActivityRetainedLifecycle;
import dagger.hilt.android.EntryPointAccessors;
import dagger.hilt.android.components.ActivityRetainedComponent;
import dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder;
import dagger.hilt.android.internal.lifecycle.RetainedLifecycleImpl;
import dagger.hilt.android.scopes.ActivityRetainedScoped;
import dagger.hilt.components.SingletonComponent;
import dagger.hilt.internal.GeneratedComponentManager;

/* loaded from: classes10.dex */
public final class ActivityRetainedComponentManager implements GeneratedComponentManager<ActivityRetainedComponent> {

    /* renamed from: e */
    public final ViewModelStoreOwner f94497e;

    /* renamed from: f */
    public final Context f94498f;

    /* renamed from: g */
    @Nullable
    public volatile ActivityRetainedComponent f94499g;

    /* renamed from: h */
    public final Object f94500h = new Object();

    @EntryPoint
    @InstallIn({SingletonComponent.class})
    /* loaded from: classes10.dex */
    public interface ActivityRetainedComponentBuilderEntryPoint {
        ActivityRetainedComponentBuilder retainedComponentBuilder();
    }

    @EntryPoint
    @InstallIn({ActivityRetainedComponent.class})
    /* loaded from: classes10.dex */
    public interface ActivityRetainedLifecycleEntryPoint {
        ActivityRetainedLifecycle getActivityRetainedLifecycle();
    }

    /* renamed from: dagger.hilt.android.internal.managers.ActivityRetainedComponentManager$a */
    /* loaded from: classes10.dex */
    public class C17055a implements ViewModelProvider.Factory {

        /* renamed from: a */
        public final /* synthetic */ Context f94501a;

        public C17055a(final Context val$context) {
            this.f94501a = val$context;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NonNull
        public <T extends ViewModel> T create(@NonNull Class<T> aClass, CreationExtras creationExtras) {
            SavedStateHandleHolder savedStateHandleHolder = new SavedStateHandleHolder(creationExtras);
            return new C17056b(((ActivityRetainedComponentBuilderEntryPoint) EntryPointAccessors.fromApplication(this.f94501a, ActivityRetainedComponentBuilderEntryPoint.class)).retainedComponentBuilder().savedStateHandleHolder(savedStateHandleHolder).build(), savedStateHandleHolder);
        }
    }

    /* renamed from: dagger.hilt.android.internal.managers.ActivityRetainedComponentManager$b */
    /* loaded from: classes10.dex */
    public static final class C17056b extends ViewModel {

        /* renamed from: h */
        public final ActivityRetainedComponent f94503h;

        /* renamed from: i */
        public final SavedStateHandleHolder f94504i;

        public C17056b(ActivityRetainedComponent component, SavedStateHandleHolder savedStateHandleHolder) {
            this.f94503h = component;
            this.f94504i = savedStateHandleHolder;
        }

        /* renamed from: d */
        public ActivityRetainedComponent m60883d() {
            return this.f94503h;
        }

        /* renamed from: e */
        public SavedStateHandleHolder m60884e() {
            return this.f94504i;
        }

        @Override // androidx.lifecycle.ViewModel
        public void onCleared() {
            super.onCleared();
            ((RetainedLifecycleImpl) ((ActivityRetainedLifecycleEntryPoint) EntryPoints.get(this.f94503h, ActivityRetainedLifecycleEntryPoint.class)).getActivityRetainedLifecycle()).dispatchOnCleared();
        }
    }

    @Module
    @InstallIn({ActivityRetainedComponent.class})
    /* renamed from: dagger.hilt.android.internal.managers.ActivityRetainedComponentManager$c */
    /* loaded from: classes10.dex */
    public static abstract class AbstractC17057c {
        @Provides
        @ActivityRetainedScoped
        /* renamed from: a */
        public static ActivityRetainedLifecycle m60885a() {
            return new RetainedLifecycleImpl();
        }
    }

    public ActivityRetainedComponentManager(ComponentActivity activity) {
        this.f94497e = activity;
        this.f94498f = activity;
    }

    /* renamed from: a */
    public final ActivityRetainedComponent m60879a() {
        return ((C17056b) m60882d(this.f94497e, this.f94498f).get(C17056b.class)).m60883d();
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public ActivityRetainedComponent generatedComponent() {
        if (this.f94499g == null) {
            synchronized (this.f94500h) {
                if (this.f94499g == null) {
                    this.f94499g = m60879a();
                }
            }
        }
        return this.f94499g;
    }

    /* renamed from: c */
    public SavedStateHandleHolder m60881c() {
        return ((C17056b) m60882d(this.f94497e, this.f94498f).get(C17056b.class)).m60884e();
    }

    /* renamed from: d */
    public final ViewModelProvider m60882d(ViewModelStoreOwner owner, Context context) {
        return new ViewModelProvider(owner, new C17055a(context));
    }
}
