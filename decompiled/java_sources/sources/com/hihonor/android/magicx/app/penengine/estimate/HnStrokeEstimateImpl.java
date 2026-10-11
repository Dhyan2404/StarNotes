package com.hihonor.android.magicx.app.penengine.estimate;

import android.util.Log;
import com.hihonor.stylus.penengine.feature.IFeature;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class HnStrokeEstimateImpl implements IHnStrokeEstimate, IFeature {

    /* renamed from: b */
    public static final String f38911b = HnStrokeEstimateImpl.class.getSimpleName();

    /* renamed from: c */
    public static final int f38912c = -1;

    /* renamed from: a */
    public com.hihonor.penkit.impl.estimate.HnStrokeEstimateImpl f38913a = new com.hihonor.penkit.impl.estimate.HnStrokeEstimateImpl();

    /* renamed from: a */
    public final HnMotionEventInfo m30876a(com.hihonor.stylus.penengine.estimate.HnMotionEventInfo hnMotionEventInfo) {
        return new HnMotionEventInfo(hnMotionEventInfo.getX(), hnMotionEventInfo.getY(), hnMotionEventInfo.getPress(), hnMotionEventInfo.getTilt(), hnMotionEventInfo.getEventTime());
    }

    @Override // com.hihonor.android.magicx.app.penengine.estimate.IHnStrokeEstimate
    public int getEstimateEvent(IHnRecycleQueue iHnRecycleQueue, List<HnMotionEventInfo> list) {
        if (iHnRecycleQueue == null || list == null) {
            Log.e(f38911b, "HnStrokeEstimate, getEstimateEvent error, queue or lstEstimate is null!");
            return -1;
        }
        if (this.f38913a == null) {
            Log.e(f38911b, "HnStrokeEstimate, getEstimateEvent error, sEstimate is null!");
            return -1;
        }
        com.hihonor.penkit.impl.estimate.HnRecycleQueueImpl recycleQueue = iHnRecycleQueue instanceof HnRecycleQueueImpl ? ((HnRecycleQueueImpl) iHnRecycleQueue).getRecycleQueue() : null;
        ArrayList<com.hihonor.stylus.penengine.estimate.HnMotionEventInfo> arrayList = new ArrayList();
        int estimateEvent = this.f38913a.getEstimateEvent(recycleQueue, arrayList);
        for (com.hihonor.stylus.penengine.estimate.HnMotionEventInfo hnMotionEventInfo : arrayList) {
            if (hnMotionEventInfo != null) {
                list.add(m30876a(hnMotionEventInfo));
            }
        }
        return estimateEvent;
    }

    @Override // com.hihonor.android.magicx.app.penengine.estimate.IHnStrokeEstimate
    public boolean isFeatureEnable() {
        com.hihonor.penkit.impl.estimate.HnStrokeEstimateImpl hnStrokeEstimateImpl = this.f38913a;
        if (hnStrokeEstimateImpl != null) {
            return hnStrokeEstimateImpl.isFeatureEnable();
        }
        Log.e(f38911b, "HnStrokeEstimate, isFeatureEnable error, sEstimate is null!");
        return false;
    }

    @Override // com.hihonor.android.magicx.app.penengine.estimate.IHnStrokeEstimate
    public void setRefreshRate(float f) {
        com.hihonor.penkit.impl.estimate.HnStrokeEstimateImpl hnStrokeEstimateImpl = this.f38913a;
        if (hnStrokeEstimateImpl != null) {
            hnStrokeEstimateImpl.setRefreshRate(f);
        } else {
            Log.e(f38911b, "HnStrokeEstimate, setRefreshRate error, sEstimate is null!");
        }
    }
}
