package net.vrallev.android.task;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.sunia.HTREnginev2.nug;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes11.dex */
public abstract class Task<RESULT> {

    /* renamed from: b */
    public volatile boolean f103072b;

    /* renamed from: c */
    public volatile boolean f103073c;

    /* renamed from: e */
    public TaskExecutor f103075e;

    /* renamed from: f */
    public WeakReference<TaskCacheFragmentInterface> f103076f;

    /* renamed from: g */
    public String f103077g;

    /* renamed from: h */
    public String f103078h;

    /* renamed from: i */
    public RESULT f103079i;

    /* renamed from: d */
    public int f103074d = -1;

    /* renamed from: a */
    public final CountDownLatch f103071a = new CountDownLatch(1);

    /* renamed from: a */
    public final RESULT m64737a() {
        this.f103079i = execute();
        this.f103071a.countDown();
        return this.f103079i;
    }

    /* renamed from: b */
    public final Fragment m64738b(FragmentManager fragmentManager) {
        Fragment m64738b;
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments == null) {
            return null;
        }
        for (Fragment fragment : fragments) {
            if (fragment != null) {
                if (this.f103078h.equals(nug.m55799b(fragment))) {
                    return fragment;
                }
                if (fragment.getChildFragmentManager() != null && (m64738b = m64738b(fragment.getChildFragmentManager())) != null) {
                    return m64738b;
                }
            }
        }
        return null;
    }

    /* renamed from: c */
    public final String m64739c() {
        return this.f103077g;
    }

    public final void cancel() {
        this.f103072b = true;
    }

    /* renamed from: d */
    public final String m64740d() {
        return this.f103078h;
    }

    /* renamed from: e */
    public final void m64741e(String str) {
        this.f103077g = str;
    }

    public abstract RESULT execute();

    /* renamed from: f */
    public final void m64742f(TaskCacheFragmentInterface taskCacheFragmentInterface) {
        this.f103076f = new WeakReference<>(taskCacheFragmentInterface);
    }

    @Deprecated
    public final android.app.Fragment findFragment(String str) {
        Activity activity = getActivity();
        if (activity != null) {
            return activity.getFragmentManager().findFragmentByTag(str);
        }
        return null;
    }

    @Deprecated
    public final Fragment findFragmentSupport(String str) {
        Activity activity = getActivity();
        if (activity instanceof FragmentActivity) {
            return ((FragmentActivity) activity).getSupportFragmentManager().findFragmentByTag(str);
        }
        return null;
    }

    /* renamed from: g */
    public final void m64743g() {
        this.f103073c = true;
    }

    public final Activity getActivity() {
        TaskCacheFragmentInterface taskCacheFragmentInterface = this.f103076f.get();
        if (taskCacheFragmentInterface != null) {
            return taskCacheFragmentInterface.getParentActivity();
        }
        return null;
    }

    public final Fragment getFragment() {
        if (this.f103078h == null) {
            return null;
        }
        Activity activity = getActivity();
        if (activity instanceof FragmentActivity) {
            return m64738b(((FragmentActivity) activity).getSupportFragmentManager());
        }
        return null;
    }

    public final int getKey() {
        return this.f103074d;
    }

    public RESULT getResult() throws InterruptedException {
        this.f103071a.await();
        return this.f103079i;
    }

    public Class<RESULT> getResultClass() {
        return null;
    }

    /* renamed from: h */
    public final void m64744h(String str) {
        this.f103078h = str;
    }

    /* renamed from: i */
    public final void m64745i(int i) {
        this.f103074d = i;
    }

    public final boolean isCancelled() {
        return this.f103072b || Thread.currentThread().isInterrupted();
    }

    public final boolean isExecuting() {
        return this.f103071a.getCount() > 0;
    }

    public final boolean isFinished() {
        return this.f103073c;
    }

    /* renamed from: j */
    public final void m64746j(TaskExecutor taskExecutor) {
        this.f103075e = taskExecutor;
    }

    public String toString() {
        return String.format(Locale.US, "%s{mKey=%d, executing=%b, finished=%b, cancelled=%b", getClass().getSimpleName(), Integer.valueOf(this.f103074d), Boolean.valueOf(isExecuting()), Boolean.valueOf(isFinished()), Boolean.valueOf(isCancelled()));
    }

    @Deprecated
    public final android.app.Fragment findFragment(int i) {
        Activity activity = getActivity();
        if (activity != null) {
            return activity.getFragmentManager().findFragmentById(i);
        }
        return null;
    }

    @Deprecated
    public final Fragment findFragmentSupport(int i) {
        Activity activity = getActivity();
        if (activity instanceof FragmentActivity) {
            return ((FragmentActivity) activity).getSupportFragmentManager().findFragmentById(i);
        }
        return null;
    }
}
