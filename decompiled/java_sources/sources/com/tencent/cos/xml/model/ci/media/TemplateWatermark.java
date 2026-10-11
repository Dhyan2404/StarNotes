package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class TemplateWatermark {
    public String name;
    public String tag = "Watermark";
    public Watermark watermark;

    @XmlBean(name = GeoConstant.Image)
    /* loaded from: classes10.dex */
    public static class TemplateWatermarkImage {
        public String background;
        public String height;
        public String mode;
        public String transparency;
        public String url;
        public String width;
    }

    @XmlBean(name = "SlideConfig")
    /* loaded from: classes10.dex */
    public static class TemplateWatermarkSlideConfig {
        public String slideMode;
        public String xSlideSpeed;
        public String ySlideSpeed;
    }

    @XmlBean(name = "Text")
    /* loaded from: classes10.dex */
    public static class TemplateWatermarkText {
        public String fontColor;
        public String fontSize;
        public String fontType;
        public String text;
        public String transparency;
    }

    @XmlBean(name = "Watermark")
    /* loaded from: classes10.dex */
    public static class Watermark {

        /* renamed from: dx */
        public String f93306dx;

        /* renamed from: dy */
        public String f93307dy;
        public String endTime;
        public TemplateWatermarkImage image;
        public String locMode;
        public String pos;
        public TemplateWatermarkSlideConfig slideConfig;
        public String startTime;
        public TemplateWatermarkText text;
        public String type;
    }
}
