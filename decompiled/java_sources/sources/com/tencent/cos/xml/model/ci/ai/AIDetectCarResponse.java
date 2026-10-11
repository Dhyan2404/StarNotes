package com.tencent.cos.xml.model.ci.ai;

import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.List;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Response")
/* loaded from: classes10.dex */
public class AIDetectCarResponse {

    @XmlElement(flatListNote = true, ignoreListNote = true)
    public List<AIDetectCarResponseCarTags> carTags;
    public String requestId;

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "CarLocation")
    /* loaded from: classes10.dex */
    public static class AIDetectCarResponseCarLocation {

        /* renamed from: x */
        public int f93280x;

        /* renamed from: y */
        public int f93281y;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "CarTags")
    /* loaded from: classes10.dex */
    public static class AIDetectCarResponseCarTags {
        public String brand;

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<AIDetectCarResponseCarLocation> carLocation;
        public String color;
        public int confidence;

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<AIDetectCarResponsePlateContent> plateContent;
        public String serial;
        public String type;
        public int year;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "PlateContent")
    /* loaded from: classes10.dex */
    public static class AIDetectCarResponsePlateContent {
        public String color;
        public String plate;

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<AIDetectCarResponsePlateLocation> plateLocation;
        public String type;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "PlateLocation")
    /* loaded from: classes10.dex */
    public static class AIDetectCarResponsePlateLocation {

        /* renamed from: x */
        public int f93282x;

        /* renamed from: y */
        public int f93283y;
    }
}
