package com.tencent.cos.xml.model.ci.ai;

import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.List;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Response")
/* loaded from: classes10.dex */
public class AIDetectPetResponse {

    @XmlElement(flatListNote = true, ignoreListNote = true)
    public List<AIDetectPetResponseResultInfo> resultInfo;

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Location")
    /* loaded from: classes10.dex */
    public static class AIDetectPetResponseLocation {
        public int height;
        public int width;

        /* renamed from: x */
        public int f93286x;

        /* renamed from: y */
        public int f93287y;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "ResultInfo")
    /* loaded from: classes10.dex */
    public static class AIDetectPetResponseResultInfo {
        public AIDetectPetResponseLocation location;
        public String name;
        public int score;
    }
}
