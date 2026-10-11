package com.tencent.cos.xml.model.ci.ai;

import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.List;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Response")
/* loaded from: classes10.dex */
public class AIBodyRecognitionResponse {

    @XmlElement(flatListNote = true, ignoreListNote = true)
    public List<AIBodyRecognitionPedestrianInfo> pedestrianInfo;
    public int status;

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Location")
    /* loaded from: classes10.dex */
    public static class AIBodyRecognitionLocation {

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<String> point;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "PedestrianInfo")
    /* loaded from: classes10.dex */
    public static class AIBodyRecognitionPedestrianInfo {

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<AIBodyRecognitionLocation> location;
        public String name;
        public String score;
    }
}
