package com.sun.org.apache.xml.internal.serialize;

import com.google.zxing.common.StringUtils;
import com.sun.org.apache.xerces.internal.util.EncodingMap;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;
import java.util.Locale;

/* loaded from: classes10.dex */
public class Encodings {
    static final String DEFAULT_ENCODING = "UTF8";
    static final int DEFAULT_LAST_PRINTABLE = 127;
    static final String JIS_DANGER_CHARS = "\\~\u007f¢£¥¬—―‖…‾‾∥∯〜＼～￠￡￢￣";
    static final int LAST_PRINTABLE_UNICODE = 65535;
    static final String[] UNICODE_ENCODINGS = {"Unicode", "UnicodeBig", "UnicodeLittle", StringUtils.GB2312, "UTF8", "UTF-16"};
    static Hashtable _encodings = new Hashtable();

    public static EncodingInfo getEncodingInfo(String str, boolean z) throws UnsupportedEncodingException {
        String[] strArr;
        String[] strArr2;
        if (str == null) {
            EncodingInfo encodingInfo = (EncodingInfo) _encodings.get("UTF8");
            if (encodingInfo != null) {
                return encodingInfo;
            }
            EncodingInfo encodingInfo2 = new EncodingInfo(EncodingMap.getJava2IANAMapping("UTF8"), "UTF8", 65535);
            _encodings.put("UTF8", encodingInfo2);
            return encodingInfo2;
        }
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        String iANA2JavaMapping = EncodingMap.getIANA2JavaMapping(upperCase);
        int i = 0;
        if (iANA2JavaMapping != null) {
            EncodingInfo encodingInfo3 = (EncodingInfo) _encodings.get(iANA2JavaMapping);
            if (encodingInfo3 != null) {
                return encodingInfo3;
            }
            while (true) {
                strArr = UNICODE_ENCODINGS;
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
            _encodings.put(iANA2JavaMapping, encodingInfo3);
            return encodingInfo3;
        }
        if (!z) {
            throw new UnsupportedEncodingException(upperCase);
        }
        EncodingInfo.testJavaEncodingName(upperCase);
        EncodingInfo encodingInfo4 = (EncodingInfo) _encodings.get(upperCase);
        if (encodingInfo4 != null) {
            return encodingInfo4;
        }
        while (true) {
            strArr2 = UNICODE_ENCODINGS;
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
        _encodings.put(upperCase, encodingInfo4);
        return encodingInfo4;
    }
}
