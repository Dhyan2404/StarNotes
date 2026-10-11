package com.hihonor.android.magicx.app.penengine.estimate;

import android.util.Log;
import com.hihonor.stylus.penengine.feature.IFeature;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class HnRecycleQueueImpl implements IHnRecycleQueue, IFeature {

    /* renamed from: b */
    public static final String f38904b = HnRecycleQueueImpl.class.getSimpleName();

    /* renamed from: c */
    public static final int f38905c = -1;

    /* renamed from: a */
    public com.hihonor.penkit.impl.estimate.HnRecycleQueueImpl f38906a = new com.hihonor.penkit.impl.estimate.HnRecycleQueueImpl();

    /* renamed from: a */
    public final com.hihonor.stylus.penengine.estimate.HnMotionEventInfo m30875a(HnMotionEventInfo hnMotionEventInfo) {
        return new com.hihonor.stylus.penengine.estimate.HnMotionEventInfo(hnMotionEventInfo.getX(), hnMotionEventInfo.getY(), hnMotionEventInfo.getPress(), hnMotionEventInfo.getTilt(), hnMotionEventInfo.getEventTime());
    }

    @Override // com.hihonor.android.magicx.app.penengine.estimate.IHnRecycleQueue
    public void clear() {
        com.hihonor.penkit.impl.estimate.HnRecycleQueueImpl hnRecycleQueueImpl = this.f38906a;
        if (hnRecycleQueueImpl != null) {
            hnRecycleQueueImpl.clear();
        } else {
            Log.e(f38904b, "HnMotionEventQueue, clear error, mRecycleQueue is null!");
        }
    }

    @Override // com.hihonor.android.magicx.app.penengine.estimate.IHnRecycleQueue
    public int fill(List<HnMotionEventInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (HnMotionEventInfo hnMotionEventInfo : list) {
            if (hnMotionEventInfo != null) {
                arrayList.add(m30875a(hnMotionEventInfo));
            }
        }
        com.hihonor.penkit.impl.estimate.HnRecycleQueueImpl hnRecycleQueueImpl = this.f38906a;
        if (hnRecycleQueueImpl != null) {
            return hnRecycleQueueImpl.fill(arrayList);
        }
        Log.e(f38904b, "HnMotionEventQueue, fill error, mRecycleQueue is null!");
        return -1;
    }

    public com.hihonor.penkit.impl.estimate.HnRecycleQueueImpl getRecycleQueue() {
        return this.f38906a;
    }
}
