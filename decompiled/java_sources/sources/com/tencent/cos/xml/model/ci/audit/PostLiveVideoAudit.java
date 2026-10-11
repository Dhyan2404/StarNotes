package com.tencent.cos.xml.model.ci.audit;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class PostLiveVideoAudit {
    public PostLiveVideoAuditConf conf;
    public PostLiveVideoAuditInput input;
    public PostLiveVideoAuditStorageConf storageConf;
    public String type = "live_video";

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Conf")
    /* loaded from: classes10.dex */
    public static class PostLiveVideoAuditConf {
        public String bizType;
        public String callback;
        public int callbackType;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class PostLiveVideoAuditInput {
        public String dataId;
        public String url;
        public PostLiveVideoAuditUserInfo userInfo;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "StorageConf")
    /* loaded from: classes10.dex */
    public static class PostLiveVideoAuditStorageConf {
        public String path;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "UserInfo")
    /* loaded from: classes10.dex */
    public static class PostLiveVideoAuditUserInfo {
        public String appId;
        public String deviceId;
        public String gender;

        /* renamed from: iP */
        public String f93299iP;
        public String level;
        public String nickname;
        public String receiveTokenId;
        public String role;
        public String room;
        public String tokenId;
        public String type;
    }
}
