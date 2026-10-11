package androidx.core.view;

import android.annotation.SuppressLint;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.core.view.MenuHostHelper;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public class MenuHostHelper {

    /* renamed from: a */
    public final Runnable f5839a;

    /* renamed from: b */
    public final CopyOnWriteArrayList<MenuProvider> f5840b = new CopyOnWriteArrayList<>();

    /* renamed from: c */
    public final Map<MenuProvider, C0772a> f5841c = new HashMap();

    /* renamed from: androidx.core.view.MenuHostHelper$a */
    /* loaded from: classes3.dex */
    public static class C0772a {

        /* renamed from: a */
        public final Lifecycle f5842a;

        /* renamed from: b */
        public LifecycleEventObserver f5843b;

        public C0772a(@NonNull Lifecycle lifecycle, @NonNull LifecycleEventObserver lifecycleEventObserver) {
            this.f5842a = lifecycle;
            this.f5843b = lifecycleEventObserver;
            lifecycle.addObserver(lifecycleEventObserver);
        }

        /* renamed from: a */
        public void m3337a() {
            this.f5842a.removeObserver(this.f5843b);
            this.f5843b = null;
        }
    }

    public MenuHostHelper(@NonNull Runnable runnable) {
        this.f5839a = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m3335c(MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            removeMenuProvider(menuProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m3336d(Lifecycle.State state, MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.upTo(state)) {
            addMenuProvider(menuProvider);
            return;
        }
        if (event == Lifecycle.Event.ON_DESTROY) {
            removeMenuProvider(menuProvider);
        } else if (event == Lifecycle.Event.downFrom(state)) {
            this.f5840b.remove(menuProvider);
            this.f5839a.run();
        }
    }

    public void addMenuProvider(@NonNull MenuProvider menuProvider) {
        this.f5840b.add(menuProvider);
        this.f5839a.run();
    }

    public void onCreateMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        Iterator<MenuProvider> it2 = this.f5840b.iterator();
        while (it2.hasNext()) {
            it2.next().onCreateMenu(menu, menuInflater);
        }
    }

    public void onMenuClosed(@NonNull Menu menu) {
        Iterator<MenuProvider> it2 = this.f5840b.iterator();
        while (it2.hasNext()) {
            it2.next().onMenuClosed(menu);
        }
    }

    public boolean onMenuItemSelected(@NonNull MenuItem menuItem) {
        Iterator<MenuProvider> it2 = this.f5840b.iterator();
        while (it2.hasNext()) {
            if (it2.next().onMenuItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void onPrepareMenu(@NonNull Menu menu) {
        Iterator<MenuProvider> it2 = this.f5840b.iterator();
        while (it2.hasNext()) {
            it2.next().onPrepareMenu(menu);
        }
    }

    public void removeMenuProvider(@NonNull MenuProvider menuProvider) {
        this.f5840b.remove(menuProvider);
        C0772a remove = this.f5841c.remove(menuProvider);
        if (remove != null) {
            remove.m3337a();
        }
        this.f5839a.run();
    }

    public void addMenuProvider(@NonNull final MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner) {
        addMenuProvider(menuProvider);
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        C0772a remove = this.f5841c.remove(menuProvider);
        if (remove != null) {
            remove.m3337a();
        }
        this.f5841c.put(menuProvider, new C0772a(lifecycle, new LifecycleEventObserver() { // from class: com.sunia.HTREnginev2.bmj
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                MenuHostHelper.this.m3335c(menuProvider, lifecycleOwner2, event);
            }
        }));
    }

    @SuppressLint({"LambdaLast"})
    public void addMenuProvider(@NonNull final MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner, @NonNull final Lifecycle.State state) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        C0772a remove = this.f5841c.remove(menuProvider);
        if (remove != null) {
            remove.m3337a();
        }
        this.f5841c.put(menuProvider, new C0772a(lifecycle, new LifecycleEventObserver() { // from class: com.sunia.HTREnginev2.cmj
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                MenuHostHelper.this.m3336d(state, menuProvider, lifecycleOwner2, event);
            }
        }));
    }
}
