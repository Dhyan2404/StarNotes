package net.vrallev.android.task;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.vrallev.android.task.TaskCacheFragmentInterface;

/* loaded from: classes11.dex */
public final class TaskCacheFragment extends Fragment implements TaskCacheFragmentInterface {

    /* renamed from: h */
    public static final String f103080h = "TaskCacheFragment";

    /* renamed from: e */
    public final Map<String, Object> f103081e;

    /* renamed from: f */
    public boolean f103082f;

    /* renamed from: g */
    public Activity f103083g;

    public TaskCacheFragment() {
        setRetainInstance(true);
        this.f103081e = Collections.synchronizedMap(new HashMap());
    }

    /* renamed from: a */
    public static TaskCacheFragment m64747a(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        Fragment findFragmentByTag = fragmentManager.findFragmentByTag(f103080h);
        if (findFragmentByTag instanceof TaskCacheFragment) {
            return (TaskCacheFragment) findFragmentByTag;
        }
        TaskCacheFragmentInterface tempCacheFragment = TaskCacheFragmentInterface.Helper.getTempCacheFragment(activity);
        if (tempCacheFragment instanceof TaskCacheFragment) {
            return (TaskCacheFragment) tempCacheFragment;
        }
        TaskCacheFragment taskCacheFragment = new TaskCacheFragment();
        taskCacheFragment.f103083g = activity;
        fragmentManager.beginTransaction().add(taskCacheFragment, f103080h).commitAllowingStateLoss();
        try {
            fragmentManager.executePendingTransactions();
        } catch (IllegalStateException unused) {
            TaskCacheFragmentInterface.Helper.putTempCacheFragment(activity, taskCacheFragment);
        }
        return taskCacheFragment;
    }

    @Override // net.vrallev.android.task.TaskCacheFragmentInterface
    public boolean canSaveInstanceState() {
        return this.f103082f;
    }

    @Override // net.vrallev.android.task.TaskCacheFragmentInterface
    public synchronized <T> T get(String str) {
        return (T) this.f103081e.get(str);
    }

    @Override // net.vrallev.android.task.TaskCacheFragmentInterface
    public Activity getParentActivity() {
        return this.f103083g;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f103082f = true;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        this.f103083g = activity;
        super.onAttach(activity);
    }

    @Override // android.app.Fragment
    public void onDetach() {
        if (this.f103083g.isFinishing()) {
            this.f103083g = null;
        }
        super.onDetach();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.f103082f = true;
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        this.f103082f = false;
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f103082f = true;
        List list = (List) get(TaskCacheFragmentInterface.PENDING_RESULT_KEY);
        if (list == null || list.isEmpty()) {
            return;
        }
        TaskCacheFragmentInterface.Helper.postPendingResults(list, this);
    }

    @Override // android.app.Fragment
    public void onStop() {
        this.f103082f = false;
        super.onStop();
    }

    @Override // net.vrallev.android.task.TaskCacheFragmentInterface
    public synchronized <T> T put(String str, Object obj) {
        return (T) this.f103081e.put(str, obj);
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
        return (T) this.f103081e.remove(str);
    }
}
