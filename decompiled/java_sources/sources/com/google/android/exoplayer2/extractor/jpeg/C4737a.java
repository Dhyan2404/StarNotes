package com.google.android.exoplayer2.extractor.jpeg;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.jpeg.MotionPhotoDescription;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.XmlPullParserUtil;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* renamed from: com.google.android.exoplayer2.extractor.jpeg.a */
/* loaded from: classes5.dex */
public final class C4737a {

    /* renamed from: a */
    public static final String f23685a = "MotionPhotoXmpParser";

    /* renamed from: b */
    public static final String[] f23686b = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* renamed from: c */
    public static final String[] f23687c = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: d */
    public static final String[] f23688d = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    @Nullable
    /* renamed from: a */
    public static MotionPhotoDescription m18870a(String str) throws IOException {
        try {
            return m18871b(str);
        } catch (ParserException | NumberFormatException | XmlPullParserException unused) {
            Log.m21493w(f23685a, "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    @Nullable
    /* renamed from: b */
    public static MotionPhotoDescription m18871b(String str) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
        newPullParser.setInput(new StringReader(str));
        newPullParser.next();
        if (!XmlPullParserUtil.isStartTag(newPullParser, "x:xmpmeta")) {
            throw ParserException.createForMalformedContainer("Couldn't find xmp metadata", null);
        }
        ImmutableList<MotionPhotoDescription.ContainerItem> m26161of = ImmutableList.m26161of();
        long j = C4649C.TIME_UNSET;
        do {
            newPullParser.next();
            if (XmlPullParserUtil.isStartTag(newPullParser, "rdf:Description")) {
                if (!m18873d(newPullParser)) {
                    return null;
                }
                j = m18874e(newPullParser);
                m26161of = m18872c(newPullParser);
            } else if (XmlPullParserUtil.isStartTag(newPullParser, "Container:Directory")) {
                m26161of = m18875f(newPullParser, "Container", "Item");
            } else if (XmlPullParserUtil.isStartTag(newPullParser, "GContainer:Directory")) {
                m26161of = m18875f(newPullParser, "GContainer", "GContainerItem");
            }
        } while (!XmlPullParserUtil.isEndTag(newPullParser, "x:xmpmeta"));
        if (m26161of.isEmpty()) {
            return null;
        }
        return new MotionPhotoDescription(j, m26161of);
    }

    /* renamed from: c */
    public static ImmutableList<MotionPhotoDescription.ContainerItem> m18872c(XmlPullParser xmlPullParser) {
        for (String str : f23688d) {
            String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, str);
            if (attributeValue != null) {
                return ImmutableList.m26163of(new MotionPhotoDescription.ContainerItem("image/jpeg", "Primary", 0L, 0L), new MotionPhotoDescription.ContainerItem("video/mp4", "MotionPhoto", Long.parseLong(attributeValue), 0L));
            }
        }
        return ImmutableList.m26161of();
    }

    /* renamed from: d */
    public static boolean m18873d(XmlPullParser xmlPullParser) {
        for (String str : f23686b) {
            String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, str);
            if (attributeValue != null) {
                return Integer.parseInt(attributeValue) == 1;
            }
        }
        return false;
    }

    /* renamed from: e */
    public static long m18874e(XmlPullParser xmlPullParser) {
        for (String str : f23687c) {
            String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, str);
            if (attributeValue != null) {
                long parseLong = Long.parseLong(attributeValue);
                return parseLong == -1 ? C4649C.TIME_UNSET : parseLong;
            }
        }
        return C4649C.TIME_UNSET;
    }

    /* renamed from: f */
    public static ImmutableList<MotionPhotoDescription.ContainerItem> m18875f(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        ImmutableList.Builder builder = ImmutableList.builder();
        String concat = String.valueOf(str).concat(":Item");
        String concat2 = String.valueOf(str).concat(":Directory");
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, concat)) {
                String concat3 = String.valueOf(str2).concat(":Mime");
                String concat4 = String.valueOf(str2).concat(":Semantic");
                String concat5 = String.valueOf(str2).concat(":Length");
                String concat6 = String.valueOf(str2).concat(":Padding");
                String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, concat3);
                String attributeValue2 = XmlPullParserUtil.getAttributeValue(xmlPullParser, concat4);
                String attributeValue3 = XmlPullParserUtil.getAttributeValue(xmlPullParser, concat5);
                String attributeValue4 = XmlPullParserUtil.getAttributeValue(xmlPullParser, concat6);
                if (attributeValue == null || attributeValue2 == null) {
                    return ImmutableList.m26161of();
                }
                builder.add((ImmutableList.Builder) new MotionPhotoDescription.ContainerItem(attributeValue, attributeValue2, attributeValue3 != null ? Long.parseLong(attributeValue3) : 0L, attributeValue4 != null ? Long.parseLong(attributeValue4) : 0L));
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, concat2));
        return builder.build();
    }
}
