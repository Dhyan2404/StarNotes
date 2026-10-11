package com.tencent.cos.xml.model.tag.pic;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.net.HttpHeaders;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "ImageInfo")
/* loaded from: classes10.dex */
public class ImageInfo {

    @XmlElement(name = "Ave")
    public String ave;

    @XmlElement(name = "Format")
    public String format;

    @XmlElement(name = "FrameCount")
    public int frameCount;

    @XmlElement(name = "Height")
    public int height;

    @XmlElement(name = ExifInterface.TAG_ORIENTATION)
    public int orientation;

    @XmlElement(name = "Quality")
    public int quality;

    @XmlElement(name = HttpHeaders.WIDTH)
    public int width;
}
