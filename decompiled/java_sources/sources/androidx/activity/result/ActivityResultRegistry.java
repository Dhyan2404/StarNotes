package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.random.Random;

/* loaded from: classes3.dex */
public abstract class ActivityResultRegistry {

    /* renamed from: h */
    public static final String f522h = "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS";

    /* renamed from: i */
    public static final String f523i = "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS";

    /* renamed from: j */
    public static final String f524j = "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS";

    /* renamed from: k */
    public static final String f525k = "KEY_COMPONENT_ACTIVITY_PENDING_RESULT";

    /* renamed from: l */
    public static final String f526l = "ActivityResultRegistry";

    /* renamed from: m */
    public static final int f527m = 65536;

    /* renamed from: a */
    public final Map<Integer, String> f528a = new HashMap();

    /* renamed from: b */
    public final Map<String, Integer> f529b = new HashMap();

    /* renamed from: c */
    public final Map<String, C0115d> f530c = new HashMap();

    /* renamed from: d */
    public ArrayList<String> f531d = new ArrayList<>();

    /* renamed from: e */
    public final transient Map<String, C0114c<?>> f532e = new HashMap();

    /* renamed from: f */
    public final Map<String, Object> f533f = new HashMap();

    /* renamed from: g */
    public final Bundle f534g = new Bundle();

    /* JADX INFO: Add missing generic type declarations: [I] */
    /* renamed from: androidx.activity.result.ActivityResultRegistry$a */
    /* loaded from: classes3.dex */
    public class C0112a<I> extends ActivityResultLauncher<I> {

        /* renamed from: a */
        public final /* synthetic */ String f539a;

        /* renamed from: b */
        public final /* synthetic */ ActivityResultContract f540b;

        public C0112a(String str, ActivityResultContract activityResultContract) {
            this.f539a = str;
            this.f540b = activityResultContract;
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        @NonNull
        public ActivityResultContract<I, ?> getContract() {
            return this.f540b;
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        public void launch(I i, @Nullable ActivityOptionsCompat activityOptionsCompat) {
            Integer num = ActivityResultRegistry.this.f529b.get(this.f539a);
            if (num != null) {
                ActivityResultRegistry.this.f531d.add(this.f539a);
                try {
                    ActivityResultRegistry.this.onLaunch(num.intValue(), this.f540b, i, activityOptionsCompat);
                    return;
                } catch (Exception e) {
                    ActivityResultRegistry.this.f531d.remove(this.f539a);
                    throw e;
                }
            }
            throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + this.f540b + " and input " + i + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        public void unregister() {
            ActivityResultRegistry.this.m277e(this.f539a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    /* renamed from: androidx.activity.result.ActivityResultRegistry$b */
    /* loaded from: classes3.dex */
    public class C0113b<I> extends ActivityResultLauncher<I> {

        /* renamed from: a */
        public final /* synthetic */ String f542a;

        /* renamed from: b */
        public final /* synthetic */ ActivityResultContract f543b;

        public C0113b(String str, ActivityResultContract activityResultContract) {
            this.f542a = str;
            this.f543b = activityResultContract;
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        @NonNull
        public ActivityResultContract<I, ?> getContract() {
            return this.f543b;
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        public void launch(I i, @Nullable ActivityOptionsCompat activityOptionsCompat) {
            Integer num = ActivityResultRegistry.this.f529b.get(this.f542a);
            if (num != null) {
                ActivityResultRegistry.this.f531d.add(this.f542a);
                try {
                    ActivityResultRegistry.this.onLaunch(num.intValue(), this.f543b, i, activityOptionsCompat);
                    return;
                } catch (Exception e) {
                    ActivityResultRegistry.this.f531d.remove(this.f542a);
                    throw e;
                }
            }
            throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + this.f543b + " and input " + i + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        public void unregister() {
            ActivityResultRegistry.this.m277e(this.f542a);
        }
    }

    /* renamed from: androidx.activity.result.ActivityResultRegistry$c */
    /* loaded from: classes3.dex */
    public static class C0114c<O> {

        /* renamed from: a */
        public final ActivityResultCallback<O> f545a;

        /* renamed from: b */
        public final ActivityResultContract<?, O> f546b;

        public C0114c(ActivityResultCallback<O> activityResultCallback, ActivityResultContract<?, O> activityResultContract) {
            this.f545a = activityResultCallback;
            this.f546b = activityResultContract;
        }
    }

    /* renamed from: androidx.activity.result.ActivityResultRegistry$d */
    /* loaded from: classes3.dex */
    public static class C0115d {

        /* renamed from: a */
        public final Lifecycle f547a;

        /* renamed from: b */
        public final ArrayList<LifecycleEventObserver> f548b = new ArrayList<>();

        public C0115d(@NonNull Lifecycle lifecycle) {
            this.f547a = lifecycle;
        }

        /* renamed from: a */
        public void m278a(@NonNull LifecycleEventObserver lifecycleEventObserver) {
            this.f547a.addObserver(lifecycleEventObserver);
            this.f548b.add(lifecycleEventObserver);
        }

        /* renamed from: b */
        public void m279b() {
            Iterator<LifecycleEventObserver> it2 = this.f548b.iterator();
            while (it2.hasNext()) {
                this.f547a.removeObserver(it2.next());
            }
            this.f548b.clear();
        }
    }

    /* renamed from: a */
    public final void m273a(int i, String str) {
        this.f528a.put(Integer.valueOf(i), str);
        this.f529b.put(str, Integer.valueOf(i));
    }

    /* renamed from: b */
    public final <O> void m274b(String str, int i, @Nullable Intent intent, @Nullable C0114c<O> c0114c) {
        if (c0114c == null || c0114c.f545a == null || !this.f531d.contains(str)) {
            this.f533f.remove(str);
            this.f534g.putParcelable(str, new ActivityResult(i, intent));
        } else {
            c0114c.f545a.onActivityResult(c0114c.f546b.parseResult(i, intent));
            this.f531d.remove(str);
        }
    }

    /* renamed from: c */
    public final int m275c() {
        int nextInt = Random.INSTANCE.nextInt(2147418112);
        while (true) {
            int i = nextInt + 65536;
            if (!this.f528a.containsKey(Integer.valueOf(i))) {
                return i;
            }
            nextInt = Random.INSTANCE.nextInt(2147418112);
        }
    }

    /* renamed from: d */
    public final void m276d(String str) {
        if (this.f529b.get(str) != null) {
            return;
        }
        m273a(m275c(), str);
    }

    @MainThread
    public final boolean dispatchResult(int i, int i2, @Nullable Intent intent) {
        String str = this.f528a.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        m274b(str, i2, intent, this.f532e.get(str));
        return true;
    }

    @MainThread
    /* renamed from: e */
    public final void m277e(@NonNull String str) {
        Integer remove;
        if (!this.f531d.contains(str) && (remove = this.f529b.remove(str)) != null) {
            this.f528a.remove(remove);
        }
        this.f532e.remove(str);
        if (this.f533f.containsKey(str)) {
            Log.w(f526l, "Dropping pending result for request " + str + ": " + this.f533f.get(str));
            this.f533f.remove(str);
        }
        if (this.f534g.containsKey(str)) {
            Log.w(f526l, "Dropping pending result for request " + str + ": " + this.f534g.getParcelable(str));
            this.f534g.remove(str);
        }
        C0115d c0115d = this.f530c.get(str);
        if (c0115d != null) {
            c0115d.m279b();
            this.f530c.remove(str);
        }
    }

    @MainThread
    public abstract <I, O> void onLaunch(int i, @NonNull ActivityResultContract<I, O> activityResultContract, @SuppressLint({"UnknownNullness"}) I i2, @Nullable ActivityOptionsCompat activityOptionsCompat);

    public final void onRestoreInstanceState(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(f522h);
        ArrayList<String> stringArrayList = bundle.getStringArrayList(f523i);
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        this.f531d = bundle.getStringArrayList(f524j);
        this.f534g.putAll(bundle.getBundle(f525k));
        for (int i = 0; i < stringArrayList.size(); i++) {
            String str = stringArrayList.get(i);
            if (this.f529b.containsKey(str)) {
                Integer remove = this.f529b.remove(str);
                if (!this.f534g.containsKey(str)) {
                    this.f528a.remove(remove);
                }
            }
            m273a(integerArrayList.get(i).intValue(), stringArrayList.get(i));
        }
    }

    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        bundle.putIntegerArrayList(f522h, new ArrayList<>(this.f529b.values()));
        bundle.putStringArrayList(f523i, new ArrayList<>(this.f529b.keySet()));
        bundle.putStringArrayList(f524j, new ArrayList<>(this.f531d));
        bundle.putBundle(f525k, (Bundle) this.f534g.clone());
    }

    @NonNull
    public final <I, O> ActivityResultLauncher<I> register(@NonNull final String str, @NonNull LifecycleOwner lifecycleOwner, @NonNull final ActivityResultContract<I, O> activityResultContract, @NonNull final ActivityResultCallback<O> activityResultCallback) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (!lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            m276d(str);
            C0115d c0115d = this.f530c.get(str);
            if (c0115d == null) {
                c0115d = new C0115d(lifecycle);
            }
            c0115d.m278a(new LifecycleEventObserver() { // from class: androidx.activity.result.ActivityResultRegistry.1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner2, @NonNull Lifecycle.Event event) {
                    if (!Lifecycle.Event.ON_START.equals(event)) {
                        if (Lifecycle.Event.ON_STOP.equals(event)) {
                            ActivityResultRegistry.this.f532e.remove(str);
                            return;
                        } else {
                            if (Lifecycle.Event.ON_DESTROY.equals(event)) {
                                ActivityResultRegistry.this.m277e(str);
                                return;
                            }
                            return;
                        }
                    }
                    ActivityResultRegistry.this.f532e.put(str, new C0114c<>(activityResultCallback, activityResultContract));
                    if (ActivityResultRegistry.this.f533f.containsKey(str)) {
                        Object obj = ActivityResultRegistry.this.f533f.get(str);
                        ActivityResultRegistry.this.f533f.remove(str);
                        activityResultCallback.onActivityResult(obj);
                    }
                    ActivityResult activityResult = (ActivityResult) ActivityResultRegistry.this.f534g.getParcelable(str);
                    if (activityResult != null) {
                        ActivityResultRegistry.this.f534g.remove(str);
                        activityResultCallback.onActivityResult(activityResultContract.parseResult(activityResult.getResultCode(), activityResult.getData()));
                    }
                }
            });
            this.f530c.put(str, c0115d);
            return new C0112a(str, activityResultContract);
        }
        throw new IllegalStateException("LifecycleOwner " + lifecycleOwner + " is attempting to register while current state is " + lifecycle.getCurrentState() + ". LifecycleOwners must call register before they are STARTED.");
    }

    @MainThread
    public final <O> boolean dispatchResult(int i, @SuppressLint({"UnknownNullness"}) O o) {
        ActivityResultCallback<?> activityResultCallback;
        String str = this.f528a.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        C0114c<?> c0114c = this.f532e.get(str);
        if (c0114c != null && (activityResultCallback = c0114c.f545a) != null) {
            if (!this.f531d.remove(str)) {
                return true;
            }
            activityResultCallback.onActivityResult(o);
            return true;
        }
        this.f534g.remove(str);
        this.f533f.put(str, o);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public final <I, O> ActivityResultLauncher<I> register(@NonNull String str, @NonNull ActivityResultContract<I, O> activityResultContract, @NonNull ActivityResultCallback<O> activityResultCallback) {
        m276d(str);
        this.f532e.put(str, new C0114c<>(activityResultCallback, activityResultContract));
        if (this.f533f.containsKey(str)) {
            Object obj = this.f533f.get(str);
            this.f533f.remove(str);
            activityResultCallback.onActivityResult(obj);
        }
        ActivityResult activityResult = (ActivityResult) this.f534g.getParcelable(str);
        if (activityResult != null) {
            this.f534g.remove(str);
            activityResultCallback.onActivityResult(activityResultContract.parseResult(activityResult.getResultCode(), activityResult.getData()));
        }
        return new C0113b(str, activityResultContract);
    }
}
