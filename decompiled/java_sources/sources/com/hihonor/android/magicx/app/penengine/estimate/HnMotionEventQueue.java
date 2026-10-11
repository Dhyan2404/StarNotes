package com.hihonor.android.magicx.app.penengine.estimate;

import android.util.Log;
import java.util.List;

/* loaded from: classes4.dex */
public final class HnMotionEventQueue {

    /* renamed from: b */
    public static final String f38901b = "PenKit-" + HnMotionEventQueue.class.getSimpleName();

    /* renamed from: c */
    public static final int f38902c = -1;

    /* renamed from: a */
    public IHnRecycleQueue f38903a;

    public HnMotionEventQueue() {
        if (this.f38903a == null) {
            this.f38903a = new HnRecycleQueueImpl();
        }
    }

    public void clear() {
        IHnRecycleQueue iHnRecycleQueue = this.f38903a;
        if (iHnRecycleQueue != null) {
            iHnRecycleQueue.clear();
        } else {
            Log.e(f38901b, "HnMotionEventQueue, clear error, mRecycleQueue is null!");
        }
    }

    public int fill(List<HnMotionEventInfo> list) {
        IHnRecycleQueue iHnRecycleQueue = this.f38903a;
        if (iHnRecycleQueue != null) {
            return iHnRecycleQueue.fill(list);
        }
        Log.e(f38901b, "HnMotionEventQueue, fill error, mRecycleQueue is null!");
        return -1;
    }

    public IHnRecycleQueue getQueue() {
        return this.f38903a;
    }
}
