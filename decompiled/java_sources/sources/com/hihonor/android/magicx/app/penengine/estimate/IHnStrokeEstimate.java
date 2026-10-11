package com.hihonor.android.magicx.app.penengine.estimate;

import java.util.List;

/* loaded from: classes4.dex */
public interface IHnStrokeEstimate {
    int getEstimateEvent(IHnRecycleQueue iHnRecycleQueue, List<HnMotionEventInfo> list);

    boolean isFeatureEnable();

    void setRefreshRate(float f);
}
