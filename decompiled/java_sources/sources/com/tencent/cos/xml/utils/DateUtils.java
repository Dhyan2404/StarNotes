package com.tencent.cos.xml.utils;

import com.tencent.cos.xml.common.ClientErrorCode;
import com.tencent.cos.xml.exception.CosXmlClientException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes10.dex */
public class DateUtils {
    private static final String GMT_TIME_FORMAT = "EEE, dd MMM yyyy HH:mm:ss 'GMT'";

    public static String getFormatTime(String str, long j) {
        return new SimpleDateFormat(str, Locale.ENGLISH).format(new Date(j));
    }

    public static Date toDate(String str) throws CosXmlClientException {
        try {
            return new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.ENGLISH).parse(str);
        } catch (ParseException e) {
            throw new CosXmlClientException(ClientErrorCode.INTERNAL_ERROR.getCode(), e);
        }
    }

    public static String toString(Date date) {
        return new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.ENGLISH).format(date);
    }

    public static String toString(long j) {
        return new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.ENGLISH).format(new Date(j));
    }
}
