package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.common.VideoTargetRec;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.List;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Response")
/* loaded from: classes10.dex */
public class PostVideoTargetRecResponse {

    @XmlElement(flatListNote = true, ignoreListNote = true)
    public List<PostVideoTargetRecResponseJobsDetail> jobsDetail;

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "BodyInfo")
    /* loaded from: classes10.dex */
    public static class PostVideoTargetRecResponseBodyInfo {
        public PostVideoTargetRecResponseLocation location;
        public String name;
        public int score;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "BodyRecognition")
    /* loaded from: classes10.dex */
    public static class PostVideoTargetRecResponseBodyRecognition {
        public PostVideoTargetRecResponseBodyInfo bodyInfo;
        public String time;
        public String url;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "CarInfo")
    /* loaded from: classes10.dex */
    public static class PostVideoTargetRecResponseCarInfo {
        public PostVideoTargetRecResponseLocation location;
        public String name;
        public int score;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "CarRecognition")
    /* loaded from: classes10.dex */
    public static class PostVideoTargetRecResponseCarRecognition {

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<PostVideoTargetRecResponseCarInfo> carInfo;
        public String time;
        public String url;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "JobsDetail")
    /* loaded from: classes10.dex */
    public static class PostVideoTargetRecResponseJobsDetail {
        public String code;
        public String creationTime;
        public String endTime;
        public String jobId;
        public String message;
        public PostVideoTargetRecResponseOperation operation;
        public String queueId;
        public String startTime;
        public String state;
        public String tag;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Location")
    /* loaded from: classes10.dex */
    public static class PostVideoTargetRecResponseLocation {
        public String height;
        public String width;

        /* renamed from: x */
        public String f93294x;

        /* renamed from: y */
        public String f93295y;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Operation")
    /* loaded from: classes10.dex */
    public static class PostVideoTargetRecResponseOperation {
        public String jobLevel;
        public String templateId;
        public String templateName;
        public String userData;
        public VideoTargetRec videoTargetRec;
        public PostVideoTargetRecResponseVideoTargetRecResult videoTargetRecResult;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "PetInfo")
    /* loaded from: classes10.dex */
    public static class PostVideoTargetRecResponsePetInfo {
        public PostVideoTargetRecResponseLocation location;
        public String name;
        public int score;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "PetRecognition")
    /* loaded from: classes10.dex */
    public static class PostVideoTargetRecResponsePetRecognition {

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<PostVideoTargetRecResponsePetInfo> petInfo;
        public String time;
        public String url;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "VideoTargetRecResult")
    /* loaded from: classes10.dex */
    public static class PostVideoTargetRecResponseVideoTargetRecResult {

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<PostVideoTargetRecResponseBodyRecognition> bodyRecognition;

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<PostVideoTargetRecResponseCarRecognition> carRecognition;

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<PostVideoTargetRecResponsePetRecognition> petRecognition;
    }
}
