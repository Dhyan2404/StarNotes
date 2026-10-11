package com.sunia.commonv2.bean;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class HWEPoint {
    private List<HandWritingInfo> handwritingInfoList = new ArrayList();

    /* loaded from: classes10.dex */
    public static class HandWritingInfo {
        private long endTimestamp;
        private long startTimestamp;
        private List<strokeTouchEventInfo> strokeTouchEventInfoList = new ArrayList();
    }

    /* loaded from: classes10.dex */
    public static class strokeTouchEventInfo {
        private int eventType;
        private double pressure;
        private float touchX;
        private float touchY;
    }

    public List<HandWritingInfo> getHandwritingInfoList() {
        return this.handwritingInfoList;
    }
}
