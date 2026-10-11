package com.bumptech.glide.manager;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.GlideExperiments;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.resource.bitmap.HardwareConfigState;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import com.sunia.HTREnginev2.C13823hd;
import com.sunia.HTREnginev2.c6f;
import com.sunia.HTREnginev2.dpf;
import com.sunia.HTREnginev2.qvg;
import com.sunia.HTREnginev2.ymg;
import com.sunia.HTREnginev2.zmg;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class RequestManagerRetriever implements Handler.Callback {

    /* renamed from: n */
    @VisibleForTesting
    public static final String f15207n = "com.bumptech.glide.manager";

    /* renamed from: o */
    public static final String f15208o = "RMRetriever";

    /* renamed from: p */
    public static final int f15209p = 1;

    /* renamed from: q */
    public static final int f15210q = 2;

    /* renamed from: r */
    public static final String f15211r = "key";

    /* renamed from: s */
    public static final RequestManagerFactory f15212s = new C2019a();

    /* renamed from: e */
    public volatile RequestManager f15213e;

    /* renamed from: h */
    public final Handler f15216h;

    /* renamed from: i */
    public final RequestManagerFactory f15217i;

    /* renamed from: m */
    public final qvg f15221m;

    /* renamed from: f */
    @VisibleForTesting
    public final Map<FragmentManager, RequestManagerFragment> f15214f = new HashMap();

    /* renamed from: g */
    @VisibleForTesting
    public final Map<androidx.fragment.app.FragmentManager, SupportRequestManagerFragment> f15215g = new HashMap();

    /* renamed from: j */
    public final ArrayMap<View, Fragment> f15218j = new ArrayMap<>();

    /* renamed from: k */
    public final ArrayMap<View, android.app.Fragment> f15219k = new ArrayMap<>();

    /* renamed from: l */
    public final Bundle f15220l = new Bundle();

    /* loaded from: classes3.dex */
    public interface RequestManagerFactory {
        @NonNull
        RequestManager build(@NonNull Glide glide, @NonNull Lifecycle lifecycle, @NonNull RequestManagerTreeNode requestManagerTreeNode, @NonNull Context context);
    }

    /* renamed from: com.bumptech.glide.manager.RequestManagerRetriever$a */
    /* loaded from: classes3.dex */
    public class C2019a implements RequestManagerFactory {
        @Override // com.bumptech.glide.manager.RequestManagerRetriever.RequestManagerFactory
        @NonNull
        public RequestManager build(@NonNull Glide glide, @NonNull Lifecycle lifecycle, @NonNull RequestManagerTreeNode requestManagerTreeNode, @NonNull Context context) {
            return new RequestManager(glide, lifecycle, requestManagerTreeNode, context);
        }
    }

    public RequestManagerRetriever(@Nullable RequestManagerFactory requestManagerFactory, GlideExperiments glideExperiments) {
        this.f15217i = requestManagerFactory == null ? f15212s : requestManagerFactory;
        this.f15216h = new Handler(Looper.getMainLooper(), this);
        this.f15221m = m9051b(glideExperiments);
    }

    @TargetApi(17)
    /* renamed from: a */
    public static void m9050a(@NonNull Activity activity) {
        if (activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    /* renamed from: b */
    public static qvg m9051b(GlideExperiments glideExperiments) {
        return (HardwareConfigState.HARDWARE_BITMAPS_SUPPORTED && HardwareConfigState.BLOCK_HARDWARE_BITMAPS_WHEN_GL_CONTEXT_MIGHT_NOT_BE_INITIALIZED) ? glideExperiments.isEnabled(GlideBuilder.WaitForFramesAfterTrimMemory.class) ? new ymg() : new zmg() : new c6f();
    }

    @Nullable
    /* renamed from: c */
    public static Activity m9052c(@NonNull Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return m9052c(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    /* renamed from: f */
    public static void m9053f(@Nullable Collection<Fragment> collection, @NonNull Map<View, Fragment> map) {
        if (collection == null) {
            return;
        }
        for (Fragment fragment : collection) {
            if (fragment != null && fragment.getView() != null) {
                map.put(fragment.getView(), fragment);
                m9053f(fragment.getChildFragmentManager().getFragments(), map);
            }
        }
    }

    /* renamed from: o */
    public static boolean m9054o(Context context) {
        Activity m9052c = m9052c(context);
        return m9052c == null || !m9052c.isFinishing();
    }

    @TargetApi(26)
    @Deprecated
    /* renamed from: d */
    public final void m9055d(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        for (android.app.Fragment fragment : fragmentManager.getFragments()) {
            if (fragment.getView() != null) {
                arrayMap.put(fragment.getView(), fragment);
                m9055d(fragment.getChildFragmentManager(), arrayMap);
            }
        }
    }

    @Deprecated
    /* renamed from: e */
    public final void m9056e(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        android.app.Fragment fragment;
        int i = 0;
        while (true) {
            int i2 = i + 1;
            this.f15220l.putInt("key", i);
            try {
                fragment = fragmentManager.getFragment(this.f15220l, "key");
            } catch (Exception unused) {
                fragment = null;
            }
            if (fragment == null) {
                return;
            }
            if (fragment.getView() != null) {
                arrayMap.put(fragment.getView(), fragment);
                m9055d(fragment.getChildFragmentManager(), arrayMap);
            }
            i = i2;
        }
    }

    @Nullable
    @Deprecated
    /* renamed from: g */
    public final android.app.Fragment m9057g(@NonNull View view, @NonNull Activity activity) {
        this.f15219k.clear();
        m9055d(activity.getFragmentManager(), this.f15219k);
        View findViewById = activity.findViewById(R.id.content);
        android.app.Fragment fragment = null;
        while (!view.equals(findViewById) && (fragment = this.f15219k.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f15219k.clear();
        return fragment;
    }

    @NonNull
    public RequestManager get(@NonNull Context context) {
        if (context != null) {
            if (Util.isOnMainThread() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    return get((FragmentActivity) context);
                }
                if (context instanceof Activity) {
                    return get((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        return get(contextWrapper.getBaseContext());
                    }
                }
            }
            return m9060j(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    @Nullable
    /* renamed from: h */
    public final Fragment m9058h(@NonNull View view, @NonNull FragmentActivity fragmentActivity) {
        this.f15218j.clear();
        m9053f(fragmentActivity.getSupportFragmentManager().getFragments(), this.f15218j);
        View findViewById = fragmentActivity.findViewById(R.id.content);
        Fragment fragment = null;
        while (!view.equals(findViewById) && (fragment = this.f15218j.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f15218j.clear();
        return fragment;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Object obj;
        ComponentCallbacks remove;
        int i = message.what;
        boolean z = true;
        if (i == 1) {
            obj = (FragmentManager) message.obj;
            remove = this.f15214f.remove(obj);
        } else if (i != 2) {
            remove = null;
            z = false;
            obj = null;
        } else {
            obj = (androidx.fragment.app.FragmentManager) message.obj;
            remove = this.f15215g.remove(obj);
        }
        if (z && remove == null && Log.isLoggable(f15208o, 5)) {
            Log.w(f15208o, "Failed to remove expected request manager fragment, manager: " + obj);
        }
        return z;
    }

    @NonNull
    @Deprecated
    /* renamed from: i */
    public final RequestManager m9059i(@NonNull Context context, @NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z) {
        RequestManagerFragment m9062l = m9062l(fragmentManager, fragment);
        RequestManager requestManager = m9062l.getRequestManager();
        if (requestManager == null) {
            requestManager = this.f15217i.build(Glide.get(context), m9062l.m9043c(), m9062l.getRequestManagerTreeNode(), context);
            if (z) {
                requestManager.onStart();
            }
            m9062l.setRequestManager(requestManager);
        }
        return requestManager;
    }

    @NonNull
    /* renamed from: j */
    public final RequestManager m9060j(@NonNull Context context) {
        if (this.f15213e == null) {
            synchronized (this) {
                if (this.f15213e == null) {
                    this.f15213e = this.f15217i.build(Glide.get(context.getApplicationContext()), new C13823hd(), new dpf(), context.getApplicationContext());
                }
            }
        }
        return this.f15213e;
    }

    @NonNull
    @Deprecated
    /* renamed from: k */
    public RequestManagerFragment m9061k(Activity activity) {
        return m9062l(activity.getFragmentManager(), null);
    }

    @NonNull
    /* renamed from: l */
    public final RequestManagerFragment m9062l(@NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment) {
        RequestManagerFragment requestManagerFragment = (RequestManagerFragment) fragmentManager.findFragmentByTag(f15207n);
        if (requestManagerFragment != null) {
            return requestManagerFragment;
        }
        RequestManagerFragment requestManagerFragment2 = this.f15214f.get(fragmentManager);
        if (requestManagerFragment2 != null) {
            return requestManagerFragment2;
        }
        RequestManagerFragment requestManagerFragment3 = new RequestManagerFragment();
        requestManagerFragment3.m9048h(fragment);
        this.f15214f.put(fragmentManager, requestManagerFragment3);
        fragmentManager.beginTransaction().add(requestManagerFragment3, f15207n).commitAllowingStateLoss();
        this.f15216h.obtainMessage(1, fragmentManager).sendToTarget();
        return requestManagerFragment3;
    }

    @NonNull
    /* renamed from: m */
    public SupportRequestManagerFragment m9063m(androidx.fragment.app.FragmentManager fragmentManager) {
        return m9064n(fragmentManager, null);
    }

    @NonNull
    /* renamed from: n */
    public final SupportRequestManagerFragment m9064n(@NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment) {
        SupportRequestManagerFragment supportRequestManagerFragment = (SupportRequestManagerFragment) fragmentManager.findFragmentByTag(f15207n);
        if (supportRequestManagerFragment != null) {
            return supportRequestManagerFragment;
        }
        SupportRequestManagerFragment supportRequestManagerFragment2 = this.f15215g.get(fragmentManager);
        if (supportRequestManagerFragment2 != null) {
            return supportRequestManagerFragment2;
        }
        SupportRequestManagerFragment supportRequestManagerFragment3 = new SupportRequestManagerFragment();
        supportRequestManagerFragment3.m9075s0(fragment);
        this.f15215g.put(fragmentManager, supportRequestManagerFragment3);
        fragmentManager.beginTransaction().add(supportRequestManagerFragment3, f15207n).commitAllowingStateLoss();
        this.f15216h.obtainMessage(2, fragmentManager).sendToTarget();
        return supportRequestManagerFragment3;
    }

    @NonNull
    /* renamed from: p */
    public final RequestManager m9065p(@NonNull Context context, @NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z) {
        SupportRequestManagerFragment m9064n = m9064n(fragmentManager, fragment);
        RequestManager requestManager = m9064n.getRequestManager();
        if (requestManager == null) {
            requestManager = this.f15217i.build(Glide.get(context), m9064n.m9070m0(), m9064n.getRequestManagerTreeNode(), context);
            if (z) {
                requestManager.onStart();
            }
            m9064n.setRequestManager(requestManager);
        }
        return requestManager;
    }

    @NonNull
    public RequestManager get(@NonNull FragmentActivity fragmentActivity) {
        if (Util.isOnBackgroundThread()) {
            return get(fragmentActivity.getApplicationContext());
        }
        m9050a(fragmentActivity);
        this.f15221m.mo53393a(fragmentActivity);
        return m9065p(fragmentActivity, fragmentActivity.getSupportFragmentManager(), null, m9054o(fragmentActivity));
    }

    @NonNull
    public RequestManager get(@NonNull Fragment fragment) {
        Preconditions.checkNotNull(fragment.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (Util.isOnBackgroundThread()) {
            return get(fragment.getContext().getApplicationContext());
        }
        if (fragment.getActivity() != null) {
            this.f15221m.mo53393a(fragment.getActivity());
        }
        return m9065p(fragment.getContext(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    @NonNull
    public RequestManager get(@NonNull Activity activity) {
        if (Util.isOnBackgroundThread()) {
            return get(activity.getApplicationContext());
        }
        if (activity instanceof FragmentActivity) {
            return get((FragmentActivity) activity);
        }
        m9050a(activity);
        this.f15221m.mo53393a(activity);
        return m9059i(activity, activity.getFragmentManager(), null, m9054o(activity));
    }

    @NonNull
    public RequestManager get(@NonNull View view) {
        if (Util.isOnBackgroundThread()) {
            return get(view.getContext().getApplicationContext());
        }
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(view.getContext(), "Unable to obtain a request manager for a view without a Context");
        Activity m9052c = m9052c(view.getContext());
        if (m9052c == null) {
            return get(view.getContext().getApplicationContext());
        }
        if (m9052c instanceof FragmentActivity) {
            FragmentActivity fragmentActivity = (FragmentActivity) m9052c;
            Fragment m9058h = m9058h(view, fragmentActivity);
            return m9058h != null ? get(m9058h) : get(fragmentActivity);
        }
        android.app.Fragment m9057g = m9057g(view, m9052c);
        if (m9057g == null) {
            return get(m9052c);
        }
        return get(m9057g);
    }

    @NonNull
    @TargetApi(17)
    @Deprecated
    public RequestManager get(@NonNull android.app.Fragment fragment) {
        if (fragment.getActivity() != null) {
            if (!Util.isOnBackgroundThread()) {
                if (fragment.getActivity() != null) {
                    this.f15221m.mo53393a(fragment.getActivity());
                }
                return m9059i(fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
            }
            return get(fragment.getActivity().getApplicationContext());
        }
        throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
    }
}
