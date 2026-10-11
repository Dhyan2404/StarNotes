package net.vrallev.android.task;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.sunia.HTREnginev2.nug;
import com.sunia.HTREnginev2.t9n;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import net.vrallev.android.task.TaskCacheFragmentInterface;

/* loaded from: classes11.dex */
public final class TaskExecutor {

    /* renamed from: g */
    public static final String f103089g = "TaskExecutor";

    /* renamed from: h */
    public static final AtomicInteger f103090h = new AtomicInteger(0);

    /* renamed from: i */
    public static TaskExecutor f103091i;

    /* renamed from: a */
    public ExecutorService f103092a;

    /* renamed from: b */
    public final PostResult f103093b;

    /* renamed from: c */
    public final TaskCacheFragmentInterface.Factory f103094c;

    /* renamed from: d */
    public SparseArray<Task<?>> f103095d;

    /* renamed from: e */
    public t9n f103096e;

    /* renamed from: f */
    public Application f103097f;

    /* loaded from: classes11.dex */
    public static class Builder {

        /* renamed from: a */
        public PostResult f103098a;

        /* renamed from: b */
        public ExecutorService f103099b;

        /* renamed from: c */
        public TaskCacheFragmentInterface.Factory f103100c;

        public TaskExecutor build() {
            if (this.f103098a == null) {
                this.f103098a = PostResult.UI_THREAD;
            }
            if (this.f103099b == null) {
                this.f103099b = Executors.newCachedThreadPool();
            }
            if (this.f103100c == null) {
                this.f103100c = TaskCacheFragmentInterface.DEFAULT_FACTORY;
            }
            return new TaskExecutor(this.f103099b, this.f103098a, this.f103100c);
        }

        public Builder setCacheFactory(TaskCacheFragmentInterface.Factory factory) {
            this.f103100c = factory;
            return this;
        }

        public Builder setExecutorService(ExecutorService executorService) {
            this.f103099b = executorService;
            return this;
        }

        public Builder setPostResult(PostResult postResult) {
            this.f103098a = postResult;
            return this;
        }
    }

    /* loaded from: classes11.dex */
    public enum PostResult {
        IMMEDIATELY,
        ON_ANY_THREAD,
        UI_THREAD
    }

    /* renamed from: net.vrallev.android.task.TaskExecutor$b */
    /* loaded from: classes11.dex */
    public final class RunnableC18595b<T> implements Runnable, Application.ActivityLifecycleCallbacks {

        /* renamed from: e */
        public final Task<T> f103101e;

        /* renamed from: f */
        public final WeakReference<TaskCacheFragmentInterface> f103102f;

        /* renamed from: net.vrallev.android.task.TaskExecutor$b$a */
        /* loaded from: classes11.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ Pair f103104e;

            /* renamed from: f */
            public final /* synthetic */ Object f103105f;

            public a(Pair pair, Object obj) {
                this.f103104e = pair;
                this.f103105f = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC18595b runnableC18595b = RunnableC18595b.this;
                TaskExecutor.this.m64756h(this.f103104e, this.f103105f, runnableC18595b.f103101e);
            }
        }

        /* renamed from: b */
        public final void m64759b(T t, TaskCacheFragmentInterface taskCacheFragmentInterface) {
            if (TaskExecutor.this.isShutdown()) {
                TaskExecutor.this.m64754f(this.f103101e);
                TaskExecutor.this.f103097f.unregisterActivityLifecycleCallbacks(this);
                return;
            }
            Pair<Method, Object> m57344j = TaskExecutor.this.f103096e.m57344j(taskCacheFragmentInterface, TaskExecutor.this.f103096e.m57345k(t, this.f103101e), this.f103101e);
            if (m57344j == null) {
                TaskExecutor.this.m64754f(this.f103101e);
                TaskExecutor.this.f103097f.unregisterActivityLifecycleCallbacks(this);
                return;
            }
            if (TaskExecutor.this.f103093b.equals(PostResult.IMMEDIATELY)) {
                TaskExecutor.this.f103097f.unregisterActivityLifecycleCallbacks(this);
                TaskExecutor.this.m64756h(m57344j, t, this.f103101e);
                return;
            }
            if (!taskCacheFragmentInterface.canSaveInstanceState()) {
                Class<?> m57345k = TaskExecutor.this.f103096e.m57345k(t, this.f103101e);
                if (m57345k != null) {
                    taskCacheFragmentInterface.putPendingResult(new TaskPendingResult(m57345k, t, this.f103101e, TaskExecutor.this));
                    return;
                }
                return;
            }
            TaskExecutor.this.f103097f.unregisterActivityLifecycleCallbacks(this);
            if (TaskExecutor.this.f103093b.equals(PostResult.ON_ANY_THREAD)) {
                TaskExecutor.this.m64756h(m57344j, t, this.f103101e);
            } else {
                taskCacheFragmentInterface.getParentActivity().runOnUiThread(new a(m57344j, t));
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (bundle == null || this.f103101e.isExecuting()) {
                return;
            }
            int i = bundle.getInt(String.valueOf(this.f103101e.getKey()), -1);
            if (i == -1) {
                TaskExecutor.this.f103097f.unregisterActivityLifecycleCallbacks(this);
                return;
            }
            if (i != this.f103101e.getKey()) {
                return;
            }
            TaskExecutor.this.f103097f.unregisterActivityLifecycleCallbacks(this);
            try {
                m64759b(this.f103101e.getResult(), TaskExecutor.this.f103094c.create(activity));
            } catch (InterruptedException e) {
                Log.e(TaskExecutor.f103089g, "getResult failed", e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            TaskCacheFragmentInterface taskCacheFragmentInterface = this.f103102f.get();
            if (taskCacheFragmentInterface == null || taskCacheFragmentInterface.getParentActivity() != activity) {
                return;
            }
            bundle.putInt(String.valueOf(this.f103101e.getKey()), this.f103101e.getKey());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            List list;
            if (this.f103101e.isExecuting() || (list = (List) TaskExecutor.this.f103094c.create(activity).get(TaskCacheFragmentInterface.PENDING_RESULT_KEY)) == null || list.isEmpty()) {
                return;
            }
            TaskExecutor.this.f103097f.unregisterActivityLifecycleCallbacks(this);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (activity.isFinishing()) {
                TaskExecutor.this.f103097f.unregisterActivityLifecycleCallbacks(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            T m64737a = this.f103101e.m64737a();
            Task<T> task = this.f103101e;
            if (task instanceof TaskNoCallback) {
                TaskExecutor.this.m64754f(task);
                TaskExecutor.this.f103097f.unregisterActivityLifecycleCallbacks(this);
            } else {
                TaskCacheFragmentInterface taskCacheFragmentInterface = this.f103102f.get();
                if (taskCacheFragmentInterface != null) {
                    m64759b(m64737a, taskCacheFragmentInterface);
                }
            }
        }

        public RunnableC18595b(Task<T> task, TaskCacheFragmentInterface taskCacheFragmentInterface) {
            this.f103101e = task;
            this.f103102f = new WeakReference<>(taskCacheFragmentInterface);
        }
    }

    public static TaskExecutor getInstance() {
        if (f103091i == null) {
            synchronized (TaskExecutor.class) {
                if (f103091i == null) {
                    new Builder().build().asSingleton();
                }
            }
        }
        return f103091i;
    }

    public TaskExecutor asSingleton() {
        synchronized (TaskExecutor.class) {
            f103091i = this;
        }
        return this;
    }

    public synchronized int execute(@NonNull Task<?> task, @NonNull Fragment fragment) {
        return execute(task, fragment, (String) null);
    }

    /* renamed from: f */
    public final void m64754f(Task<?> task) {
        task.m64743g();
        m64757i(task);
    }

    /* renamed from: g */
    public final synchronized int m64755g(Task<?> task, Activity activity, TaskCacheFragmentInterface taskCacheFragmentInterface, String str, String str2) {
        if (isShutdown()) {
            return -1;
        }
        if (this.f103097f == null) {
            this.f103097f = activity.getApplication();
        }
        int incrementAndGet = f103090h.incrementAndGet();
        task.m64745i(incrementAndGet);
        task.m64746j(this);
        task.m64742f(taskCacheFragmentInterface);
        task.m64741e(str);
        task.m64744h(str2);
        this.f103095d.put(incrementAndGet, task);
        RunnableC18595b runnableC18595b = new RunnableC18595b(task, taskCacheFragmentInterface);
        this.f103097f.registerActivityLifecycleCallbacks(runnableC18595b);
        this.f103092a.execute(runnableC18595b);
        return incrementAndGet;
    }

    public synchronized List<Task<?>> getAllTasks() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (int i = 0; i < this.f103095d.size(); i++) {
            arrayList.add(this.f103095d.valueAt(i));
        }
        return arrayList;
    }

    public synchronized Task<?> getTask(int i) {
        if (this.f103095d.indexOfKey(i) < 0) {
            return null;
        }
        return this.f103095d.get(i);
    }

    /* renamed from: h */
    public void m64756h(Pair<Method, Object> pair, Object obj, Task<?> task) {
        m64754f(task);
        this.f103096e.m57346l(pair, obj, task);
    }

    /* renamed from: i */
    public final synchronized void m64757i(Task<?> task) {
        int indexOfValue = this.f103095d.indexOfValue(task);
        if (indexOfValue >= 0) {
            this.f103095d.removeAt(indexOfValue);
        }
    }

    public synchronized boolean isShutdown() {
        return this.f103092a == null;
    }

    public synchronized void shutdown() {
        this.f103092a.shutdownNow();
        this.f103092a = null;
        synchronized (TaskExecutor.class) {
            if (this == f103091i) {
                f103091i = null;
            }
        }
    }

    public TaskExecutor(ExecutorService executorService, PostResult postResult, TaskCacheFragmentInterface.Factory factory) {
        this.f103092a = executorService;
        this.f103093b = postResult;
        this.f103094c = factory;
        this.f103095d = new SparseArray<>();
        this.f103096e = new t9n(TaskResult.class);
    }

    public synchronized int execute(@NonNull Task<?> task, @NonNull Fragment fragment, @Nullable String str) {
        FragmentActivity activity;
        activity = fragment.getActivity();
        return m64755g(task, activity, this.f103094c.create(activity), str, nug.m55799b(fragment));
    }

    public synchronized int execute(@NonNull Task<?> task, @NonNull Activity activity) {
        return execute(task, activity, (String) null);
    }

    public synchronized int execute(@NonNull Task<?> task, @NonNull Activity activity, @Nullable String str) {
        return m64755g(task, activity, this.f103094c.create(activity), str, null);
    }

    public synchronized <T extends Task<?>> List<T> getAllTasks(Class<T> cls) {
        List<T> list;
        list = (List<T>) getAllTasks();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            if (!cls.isAssignableFrom(it2.next().getClass())) {
                it2.remove();
            }
        }
        return list;
    }
}
