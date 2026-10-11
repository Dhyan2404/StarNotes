package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class TemplateSnapshot {
    public String name;
    public TemplateSnapshotSnapshot snapshot;
    public String tag = "Snapshot";

    @XmlBean(name = "Snapshot")
    /* loaded from: classes10.dex */
    public static class TemplateSnapshotSnapshot {
        public String blackLevel;
        public String cIParam;
        public String count;
        public String height;
        public String isCheckBlack;
        public String isCheckCount;
        public String mode;
        public String pixelBlackThreshold;
        public String snapshotOutMode;
        public TemplateSnapshotSpriteSnapshotConfig spriteSnapshotConfig;
        public String start;
        public String timeInterval;
        public String width;
    }

    @XmlBean(name = "SpriteSnapshotConfig")
    /* loaded from: classes10.dex */
    public static class TemplateSnapshotSpriteSnapshotConfig {
        public String cellHeight;
        public String cellWidth;
        public String color;
        public String columns;
        public String lines;
        public String margin;
        public String padding;
        public String scaleMethod;
    }
}
