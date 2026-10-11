package com.huawei.stylus.penengine.estimate;

import android.util.Log;
import com.huawei.penkit.impl.estimate.HwRecycleQueueImpl;
import java.util.List;

/* loaded from: classes4.dex */
public final class HwMotionEventQueue {

    /* renamed from: b */
    public static final String f38996b = "PenKit-" + HwMotionEventQueue.class.getSimpleName();

    /* renamed from: c */
    public static final int f38997c = -1;

    /* renamed from: a */
    public IHwRecycleQueue f38998a;

    public HwMotionEventQueue() {
        if (this.f38998a == null) {
            this.f38998a = new HwRecycleQueueImpl();
        }
    }

    public void clear() {
        IHwRecycleQueue iHwRecycleQueue = this.f38998a;
        if (iHwRecycleQueue != null) {
            iHwRecycleQueue.clear();
        } else {
            Log.e(f38996b, "HwMotionEventQueue, clear error, mRecycleQueue is null!");
        }
    }

    public int fill(List<HwMotionEventInfo> list) {
        IHwRecycleQueue iHwRecycleQueue = this.f38998a;
        if (iHwRecycleQueue != null) {
            return iHwRecycleQueue.fill(list);
        }
        Log.e(f38996b, "HwMotionEventQueue, fill error, mRecycleQueue is null!");
        return -1;
    }

    public IHwRecycleQueue getQueue() {
        return this.f38998a;
    }
}
