package dagger.hilt.android.internal.managers;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import dagger.hilt.EntryPoint;
import dagger.hilt.EntryPoints;
import dagger.hilt.InstallIn;
import dagger.hilt.android.components.ActivityComponent;
import dagger.hilt.android.components.FragmentComponent;
import dagger.hilt.android.internal.Contexts;
import dagger.hilt.android.internal.builders.ViewComponentBuilder;
import dagger.hilt.android.internal.builders.ViewWithFragmentComponentBuilder;
import dagger.hilt.internal.GeneratedComponentManager;
import dagger.hilt.internal.Preconditions;

/* loaded from: classes10.dex */
public final class ViewComponentManager implements GeneratedComponentManager<Object> {

    /* renamed from: e */
    public volatile Object f94518e;

    /* renamed from: f */
    public final Object f94519f = new Object();

    /* renamed from: g */
    public final boolean f94520g;

    /* renamed from: h */
    public final View f94521h;

    @EntryPoint
    @InstallIn({ActivityComponent.class})
    /* loaded from: classes10.dex */
    public interface ViewComponentBuilderEntryPoint {
        ViewComponentBuilder viewComponentBuilder();
    }

    @EntryPoint
    @InstallIn({FragmentComponent.class})
    /* loaded from: classes10.dex */
    public interface ViewWithFragmentComponentBuilderEntryPoint {
        ViewWithFragmentComponentBuilder viewWithFragmentComponentBuilder();
    }

    public ViewComponentManager(View view, boolean hasFragmentBindings) {
        this.f94521h = view;
        this.f94520g = hasFragmentBindings;
    }

    /* renamed from: d */
    public static Context m60890d(Context context, Class<?> target) {
        while ((context instanceof ContextWrapper) && !target.isInstance(context)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        return context;
    }

    /* renamed from: a */
    public final Object m60891a() {
        GeneratedComponentManager<?> m60892b = m60892b(false);
        return this.f94520g ? ((ViewWithFragmentComponentBuilderEntryPoint) EntryPoints.get(m60892b, ViewWithFragmentComponentBuilderEntryPoint.class)).viewWithFragmentComponentBuilder().view(this.f94521h).build() : ((ViewComponentBuilderEntryPoint) EntryPoints.get(m60892b, ViewComponentBuilderEntryPoint.class)).viewComponentBuilder().view(this.f94521h).build();
    }

    /* renamed from: b */
    public final GeneratedComponentManager<?> m60892b(boolean allowMissing) {
        if (this.f94520g) {
            Context m60893c = m60893c(FragmentContextWrapper.class, allowMissing);
            if (m60893c instanceof FragmentContextWrapper) {
                return (GeneratedComponentManager) ((FragmentContextWrapper) m60893c).m60897d();
            }
            if (allowMissing) {
                return null;
            }
            Preconditions.checkState(!(r5 instanceof GeneratedComponentManager), "%s, @WithFragmentBindings Hilt view must be attached to an @AndroidEntryPoint Fragment. Was attached to context %s", this.f94521h.getClass(), m60893c(GeneratedComponentManager.class, allowMissing).getClass().getName());
        } else {
            Object m60893c2 = m60893c(GeneratedComponentManager.class, allowMissing);
            if (m60893c2 instanceof GeneratedComponentManager) {
                return (GeneratedComponentManager) m60893c2;
            }
            if (allowMissing) {
                return null;
            }
        }
        throw new IllegalStateException(String.format("%s, Hilt view must be attached to an @AndroidEntryPoint Fragment or Activity.", this.f94521h.getClass()));
    }

    /* renamed from: c */
    public final Context m60893c(Class<?> parentType, boolean allowMissing) {
        Context m60890d = m60890d(this.f94521h.getContext(), parentType);
        if (m60890d != Contexts.getApplication(m60890d.getApplicationContext())) {
            return m60890d;
        }
        Preconditions.checkState(allowMissing, "%s, Hilt view cannot be created using the application context. Use a Hilt Fragment or Activity context.", this.f94521h.getClass());
        return null;
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public Object generatedComponent() {
        if (this.f94518e == null) {
            synchronized (this.f94519f) {
                if (this.f94518e == null) {
                    this.f94518e = m60891a();
                }
            }
        }
        return this.f94518e;
    }

    public GeneratedComponentManager<?> maybeGetParentComponentManager() {
        return m60892b(true);
    }

    /* loaded from: classes10.dex */
    public static final class FragmentContextWrapper extends ContextWrapper {

        /* renamed from: a */
        public Fragment f94522a;

        /* renamed from: b */
        public LayoutInflater f94523b;

        /* renamed from: c */
        public LayoutInflater f94524c;

        /* renamed from: d */
        public final LifecycleEventObserver f94525d;

        public FragmentContextWrapper(Context base, Fragment fragment) {
            super((Context) Preconditions.checkNotNull(base));
            LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: dagger.hilt.android.internal.managers.ViewComponentManager.FragmentContextWrapper.1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_DESTROY) {
                        FragmentContextWrapper.this.f94522a = null;
                        FragmentContextWrapper.this.f94523b = null;
                        FragmentContextWrapper.this.f94524c = null;
                    }
                }
            };
            this.f94525d = lifecycleEventObserver;
            this.f94523b = null;
            Fragment fragment2 = (Fragment) Preconditions.checkNotNull(fragment);
            this.f94522a = fragment2;
            fragment2.getLifecycle().addObserver(lifecycleEventObserver);
        }

        /* renamed from: d */
        public Fragment m60897d() {
            Preconditions.checkNotNull(this.f94522a, "The fragment has already been destroyed.");
            return this.f94522a;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Object getSystemService(String name) {
            if (!"layout_inflater".equals(name)) {
                return getBaseContext().getSystemService(name);
            }
            if (this.f94524c == null) {
                if (this.f94523b == null) {
                    this.f94523b = (LayoutInflater) getBaseContext().getSystemService("layout_inflater");
                }
                this.f94524c = this.f94523b.cloneInContext(this);
            }
            return this.f94524c;
        }

        public FragmentContextWrapper(LayoutInflater baseInflater, Fragment fragment) {
            super((Context) Preconditions.checkNotNull(((LayoutInflater) Preconditions.checkNotNull(baseInflater)).getContext()));
            LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: dagger.hilt.android.internal.managers.ViewComponentManager.FragmentContextWrapper.1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_DESTROY) {
                        FragmentContextWrapper.this.f94522a = null;
                        FragmentContextWrapper.this.f94523b = null;
                        FragmentContextWrapper.this.f94524c = null;
                    }
                }
            };
            this.f94525d = lifecycleEventObserver;
            this.f94523b = baseInflater;
            Fragment fragment2 = (Fragment) Preconditions.checkNotNull(fragment);
            this.f94522a = fragment2;
            fragment2.getLifecycle().addObserver(lifecycleEventObserver);
        }
    }
}
