package net.vrallev.android.task;

import android.app.Activity;
import android.util.SparseArray;
import androidx.fragment.app.FragmentActivity;
import com.sunia.HTREnginev2.t9n;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes11.dex */
public interface TaskCacheFragmentInterface {
    public static final Factory DEFAULT_FACTORY = new C18593a();
    public static final String PENDING_RESULT_KEY = "PENDING_RESULT_KEY";

    /* loaded from: classes11.dex */
    public interface Factory {
        TaskCacheFragmentInterface create(Activity activity);
    }

    /* loaded from: classes11.dex */
    public static final class Helper {

        /* renamed from: a */
        public static final SparseArray<WeakReference<TaskCacheFragmentInterface>> f103084a = new SparseArray<>();

        public static TaskCacheFragmentInterface getTempCacheFragment(Activity activity) {
            WeakReference<TaskCacheFragmentInterface> weakReference = f103084a.get(activity.hashCode());
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }

        public static void postPendingResults(List<TaskPendingResult> list, TaskCacheFragmentInterface taskCacheFragmentInterface) {
            t9n t9nVar = new t9n(TaskResult.class);
            for (TaskPendingResult taskPendingResult : list) {
                taskPendingResult.getTaskExecutor().m64756h(t9nVar.m57344j(taskCacheFragmentInterface, taskPendingResult.getResultType(), taskPendingResult.getTask()), taskPendingResult.getResult(), taskPendingResult.getTask());
            }
            list.clear();
        }

        public static void putTempCacheFragment(Activity activity, TaskCacheFragmentInterface taskCacheFragmentInterface) {
            f103084a.put(activity.hashCode(), new WeakReference<>(taskCacheFragmentInterface));
        }
    }

    /* renamed from: net.vrallev.android.task.TaskCacheFragmentInterface$a */
    /* loaded from: classes11.dex */
    public static class C18593a implements Factory {
        @Override // net.vrallev.android.task.TaskCacheFragmentInterface.Factory
        public TaskCacheFragmentInterface create(Activity activity) {
            return activity instanceof FragmentActivity ? TaskCacheFragmentSupport.m64748k0((FragmentActivity) activity) : TaskCacheFragment.m64747a(activity);
        }
    }

    boolean canSaveInstanceState();

    <T> T get(String str);

    Activity getParentActivity();

    <T> T put(String str, Object obj);

    void putPendingResult(TaskPendingResult taskPendingResult);

    <T> T remove(String str);
}
