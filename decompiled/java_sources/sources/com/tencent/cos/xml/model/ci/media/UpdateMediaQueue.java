package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class UpdateMediaQueue {
    public String name;
    public UpdateMediaQueueNotifyConfig notifyConfig;
    public String state;

    @XmlBean(name = "NotifyConfig")
    /* loaded from: classes10.dex */
    public static class UpdateMediaQueueNotifyConfig {
        public String event;
        public String mqMode;
        public String mqName;
        public String mqRegion;
        public String resultFormat;
        public String state;
        public String type;
        public String url;
    }
}
