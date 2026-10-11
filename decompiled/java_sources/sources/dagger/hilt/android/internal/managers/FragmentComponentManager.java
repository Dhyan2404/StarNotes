package dagger.hilt.android.internal.managers;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.EntryPoint;
import dagger.hilt.EntryPoints;
import dagger.hilt.InstallIn;
import dagger.hilt.android.components.ActivityComponent;
import dagger.hilt.android.internal.builders.FragmentComponentBuilder;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import dagger.hilt.internal.GeneratedComponentManager;
import dagger.hilt.internal.Preconditions;

/* loaded from: classes10.dex */
public class FragmentComponentManager implements GeneratedComponentManager<Object> {

    /* renamed from: e */
    public volatile Object f94509e;

    /* renamed from: f */
    public final Object f94510f = new Object();

    /* renamed from: g */
    public final Fragment f94511g;

    @EntryPoint
    @InstallIn({ActivityComponent.class})
    /* loaded from: classes10.dex */
    public interface FragmentComponentBuilderEntryPoint {
        FragmentComponentBuilder fragmentComponentBuilder();
    }

    public FragmentComponentManager(Fragment fragment) {
        this.f94511g = fragment;
    }

    public static ContextWrapper createContextWrapper(Context base, Fragment fragment) {
        return new ViewComponentManager.FragmentContextWrapper(base, fragment);
    }

    public static final Context findActivity(Context context) {
        while ((context instanceof ContextWrapper) && !(context instanceof Activity)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        return context;
    }

    public static final void initializeArguments(Fragment fragment) {
        Preconditions.checkNotNull(fragment);
        if (fragment.getArguments() == null) {
            fragment.setArguments(new Bundle());
        }
    }

    /* renamed from: a */
    public final Object m60887a() {
        Preconditions.checkNotNull(this.f94511g.getHost(), "Hilt Fragments must be attached before creating the component.");
        Preconditions.checkState(this.f94511g.getHost() instanceof GeneratedComponentManager, "Hilt Fragments must be attached to an @AndroidEntryPoint Activity. Found: %s", this.f94511g.getHost().getClass());
        validate(this.f94511g);
        return ((FragmentComponentBuilderEntryPoint) EntryPoints.get(this.f94511g.getHost(), FragmentComponentBuilderEntryPoint.class)).fragmentComponentBuilder().fragment(this.f94511g).build();
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public Object generatedComponent() {
        if (this.f94509e == null) {
            synchronized (this.f94510f) {
                if (this.f94509e == null) {
                    this.f94509e = m60887a();
                }
            }
        }
        return this.f94509e;
    }

    public void validate(Fragment fragment) {
    }

    public static ContextWrapper createContextWrapper(LayoutInflater baseInflater, Fragment fragment) {
        return new ViewComponentManager.FragmentContextWrapper(baseInflater, fragment);
    }
}
