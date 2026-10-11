package com.tencent.cos.xml.model.ci.ai;

import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.List;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Response")
/* loaded from: classes10.dex */
public class COSOCRResponse {
    public float angel;
    public String language;
    public int pdfPageSize;
    public String requestId;
    public COSOCRResponseTextDetections textDetections;

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "ItemPolygon")
    /* loaded from: classes10.dex */
    public static class COSOCRResponseItemPolygon {
        public int height;
        public int width;

        /* renamed from: x */
        public int f93288x;

        /* renamed from: y */
        public int f93289y;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Polygon")
    /* loaded from: classes10.dex */
    public static class COSOCRResponsePolygon {

        /* renamed from: x */
        public int f93290x;

        /* renamed from: y */
        public int f93291y;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "TextDetections")
    /* loaded from: classes10.dex */
    public static class COSOCRResponseTextDetections {
        public int confidence;
        public String detectedText;

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<COSOCRResponseItemPolygon> itemPolygon;

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<COSOCRResponsePolygon> polygon;

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<COSOCRResponseWordPolygon> wordPolygon;

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<COSOCRResponseWords> words;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "WordCoordPoint")
    /* loaded from: classes10.dex */
    public static class COSOCRResponseWordCoordPoint {
        public COSOCRResponseWordCoordinate wordCoordinate;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "WordCoordinate")
    /* loaded from: classes10.dex */
    public static class COSOCRResponseWordCoordinate {

        /* renamed from: x */
        public int f93292x;

        /* renamed from: y */
        public int f93293y;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "WordPolygon")
    /* loaded from: classes10.dex */
    public static class COSOCRResponseWordPolygon {
        public COSOCRResponsePolygon leftBottom;
        public COSOCRResponsePolygon leftTop;
        public COSOCRResponsePolygon rightBottom;
        public COSOCRResponsePolygon rightTop;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Words")
    /* loaded from: classes10.dex */
    public static class COSOCRResponseWords {
        public String character;
        public int confidence;
        public COSOCRResponseWordCoordPoint wordCoordPoint;
    }
}
