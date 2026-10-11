package org.apache.xml.serialize;

import com.google.zxing.common.StringUtils;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;
import java.util.Locale;
import org.apache.xerces.util.EncodingMap;

/* loaded from: classes13.dex */
public class Encodings {

    /* renamed from: a */
    public static final int f113655a = 127;

    /* renamed from: b */
    public static final int f113656b = 65535;

    /* renamed from: d */
    public static final String f113658d = "UTF8";

    /* renamed from: f */
    public static final String f113660f = "\\~\u007f¢£¥¬—―‖…‾‾∥∯〜＼～￠￡￢￣";

    /* renamed from: c */
    public static final String[] f113657c = {"Unicode", "UnicodeBig", "UnicodeLittle", StringUtils.GB2312, "UTF8", "UTF-16"};

    /* renamed from: e */
    public static Hashtable f113659e = new Hashtable();

    /* renamed from: a */
    public static EncodingInfo m70679a(String str, boolean z) throws UnsupportedEncodingException {
        String[] strArr;
        String[] strArr2;
        if (str == null) {
            EncodingInfo encodingInfo = (EncodingInfo) f113659e.get("UTF8");
            if (encodingInfo != null) {
                return encodingInfo;
            }
            EncodingInfo encodingInfo2 = new EncodingInfo(EncodingMap.getJava2IANAMapping("UTF8"), "UTF8", 65535);
            f113659e.put("UTF8", encodingInfo2);
            return encodingInfo2;
        }
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        String iANA2JavaMapping = EncodingMap.getIANA2JavaMapping(upperCase);
        int i = 0;
        if (iANA2JavaMapping != null) {
            EncodingInfo encodingInfo3 = (EncodingInfo) f113659e.get(iANA2JavaMapping);
            if (encodingInfo3 != null) {
                return encodingInfo3;
            }
            while (true) {
                strArr = f113657c;
                if (i >= strArr.length) {
                    break;
                }
                if (strArr[i].equalsIgnoreCase(iANA2JavaMapping)) {
                    encodingInfo3 = new EncodingInfo(upperCase, iANA2JavaMapping, 65535);
                    break;
                }
                i++;
            }
            if (i == strArr.length) {
                encodingInfo3 = new EncodingInfo(upperCase, iANA2JavaMapping, 127);
            }
            f113659e.put(iANA2JavaMapping, encodingInfo3);
            return encodingInfo3;
        }
        if (!z) {
            throw new UnsupportedEncodingException(upperCase);
        }
        EncodingInfo.testJavaEncodingName(upperCase);
        EncodingInfo encodingInfo4 = (EncodingInfo) f113659e.get(upperCase);
        if (encodingInfo4 != null) {
            return encodingInfo4;
        }
        while (true) {
            strArr2 = f113657c;
            if (i >= strArr2.length) {
                break;
            }
            if (strArr2[i].equalsIgnoreCase(upperCase)) {
                encodingInfo4 = new EncodingInfo(EncodingMap.getJava2IANAMapping(upperCase), upperCase, 65535);
                break;
            }
            i++;
        }
        if (i == strArr2.length) {
            encodingInfo4 = new EncodingInfo(EncodingMap.getJava2IANAMapping(upperCase), upperCase, 127);
        }
        f113659e.put(upperCase, encodingInfo4);
        return encodingInfo4;
    }
}
