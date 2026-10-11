package net.vrallev.android.task;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.vrallev.android.task.TaskCacheFragmentInterface;

/* loaded from: classes11.dex */
public final class TaskCacheFragmentSupport extends Fragment implements TaskCacheFragmentInterface {

    /* renamed from: f1 */
    public static final String f103085f1 = "TaskCacheFragmentSupport";

    /* renamed from: c1 */
    public final Map<String, Object> f103086c1;

    /* renamed from: d1 */
    public boolean f103087d1;

    /* renamed from: e1 */
    public Activity f103088e1;

    public TaskCacheFragmentSupport() {
        setRetainInstance(true);
        this.f103086c1 = Collections.synchronizedMap(new HashMap());
    }

    /* renamed from: k0 */
    public static TaskCacheFragmentSupport m64748k0(FragmentActivity fragmentActivity) {
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag(f103085f1);
        if (findFragmentByTag instanceof TaskCacheFragmentSupport) {
            return (TaskCacheFragmentSupport) findFragmentByTag;
        }
        TaskCacheFragmentInterface tempCacheFragment = TaskCacheFragmentInterface.Helper.getTempCacheFragment(fragmentActivity);
        if (tempCacheFragment instanceof TaskCacheFragmentSupport) {
            return (TaskCacheFragmentSupport) tempCacheFragment;
        }
        TaskCacheFragmentSupport taskCacheFragmentSupport = new TaskCacheFragmentSupport();
        taskCacheFragmentSupport.f103088e1 = fragmentActivity;
        supportFragmentManager.beginTransaction().add(taskCacheFragmentSupport, f103085f1).commitAllowingStateLoss();
        try {
            supportFragmentManager.executePendingTransactions();
        } catch (IllegalStateException unused) {
            TaskCacheFragmentInterface.Helper.putTempCacheFragment(fragmentActivity, taskCacheFragmentSupport);
        }
        return taskCacheFragmentSupport;
    }

    @Override // net.vrallev.android.task.TaskCacheFragmentInterface
    public boolean canSaveInstanceState() {
        return this.f103087d1;
    }

    @Override // net.vrallev.android.task.TaskCacheFragmentInterface
    public synchronized <T> T get(String str) {
        return (T) this.f103086c1.get(str);
    }

    @Override // net.vrallev.android.task.TaskCacheFragmentInterface
    public Activity getParentActivity() {
        return this.f103088e1;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f103087d1 = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        this.f103088e1 = activity;
        super.onAttach(activity);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.f103088e1.isFinishing()) {
            this.f103088e1 = null;
        }
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f103087d1 = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        this.f103087d1 = false;
        super.onSaveInstanceState(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f103087d1 = true;
        List list = (List) get(TaskCacheFragmentInterface.PENDING_RESULT_KEY);
        if (list == null || list.isEmpty()) {
            return;
        }
        TaskCacheFragmentInterface.Helper.postPendingResults(list, this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        this.f103087d1 = false;
        super.onStop();
    }

    @Override // net.vrallev.android.task.TaskCacheFragmentInterface
    public synchronized <T> T put(String str, Object obj) {
        return (T) this.f103086c1.put(str, obj);
    }

    @Override // net.vrallev.android.task.TaskCacheFragmentInterface
    public synchronized void putPendingResult(TaskPendingResult taskPendingResult) {
        List list = (List) get(TaskCacheFragmentInterface.PENDING_RESULT_KEY);
        if (list == null) {
            list = Collections.synchronizedList(new ArrayList());
            put(TaskCacheFragmentInterface.PENDING_RESULT_KEY, list);
        }
        list.add(taskPendingResult);
    }

    @Override // net.vrallev.android.task.TaskCacheFragmentInterface
    public synchronized <T> T remove(String str) {
        return (T) this.f103086c1.remove(str);
    }
}
