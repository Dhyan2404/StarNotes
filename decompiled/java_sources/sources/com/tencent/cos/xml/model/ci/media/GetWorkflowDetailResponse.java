package com.tencent.cos.xml.model.ci.media;

import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.List;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Response")
/* loaded from: classes10.dex */
public class GetWorkflowDetailResponse {
    public String requestId;
    public GetWorkflowDetailResponseWorkflowExecution workflowExecution;

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Audio")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseAudio {
        public String duration;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "BasicInfo")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseBasicInfo {
        public String contentType;
        public String eTag;
        public String lastModified;
        public String object;
        public String size;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "FileInfo")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseFileInfo {
        public GetWorkflowDetailResponseBasicInfo basicInfo;
        public GetWorkflowDetailResponseImageInfo imageInfo;
        public GetWorkflowDetailResponseMediaInfo mediaInfo;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Format")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseFormat {
        public String duration;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "ImageInfo")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseImageInfo {
        public String format;
        public String frameCount;
        public String height;
        public String md5;
        public String width;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "InputObjectInfo")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseInputObjectInfo {
        public String dar;
        public String duration;
        public String height;
        public String imageDar;
        public String imageHeight;
        public String imageWidth;
        public String size;
        public String width;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "JudgementInfo")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseJudgementInfo {

        @XmlElement(flatListNote = true)
        public List<GetWorkflowDetailResponseJudgementResult> judgementResult;
        public int objectCount;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "JudgementResult")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseJudgementResult {
        public GetWorkflowDetailResponseInputObjectInfo inputObjectInfo;
        public String objectName;
        public String objectUrl;
        public String state;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "MediaInfo")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseMediaInfo {
        public GetWorkflowDetailResponseAudio audio;
        public GetWorkflowDetailResponseFormat format;
        public GetWorkflowDetailResponseVideo video;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "ObjectInfo")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseObjectInfo {
        public String code;
        public String inputObjectName;
        public String message;
        public String objectName;
        public String objectUrl;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "ResultInfo")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseResultInfo {
        public String objectCount;

        @XmlElement(flatListNote = true)
        public List<GetWorkflowDetailResponseObjectInfo> objectInfo;
        public String spriteObjectCount;

        @XmlElement(flatListNote = true)
        public List<GetWorkflowDetailResponseSpriteObjectInfo> spriteObjectInfo;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "SpriteObjectInfo")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseSpriteObjectInfo {
        public String objectName;
        public String objectUrl;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Tasks")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseTasks {
        public String code;
        public String createTime;
        public String endTime;

        @XmlElement(flatListNote = true)
        public List<GetWorkflowDetailResponseFileInfo> fileInfo;
        public String jobId;
        public GetWorkflowDetailResponseJudgementInfo judgementInfo;
        public String message;
        public String name;
        public GetWorkflowDetailResponseResultInfo resultInfo;
        public String startTime;
        public String state;
        public String type;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Video")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseVideo {
        public String dar;
        public String duration;
        public String height;
        public String width;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "WorkflowExecution")
    /* loaded from: classes10.dex */
    public static class GetWorkflowDetailResponseWorkflowExecution {
        public String createTime;
        public String object;
        public String runId;
        public String state;

        @XmlElement(flatListNote = true)
        public List<GetWorkflowDetailResponseTasks> tasks;
        public String workflowId;
        public String workflowName;
    }
}
