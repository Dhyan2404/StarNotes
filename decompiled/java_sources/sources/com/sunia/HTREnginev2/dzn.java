package com.sunia.HTREnginev2;

import com.fasterxml.jackson.core.JsonFactory;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes4.dex */
public final class dzn {

    /* renamed from: c */
    public static final String f68403c = "yyyy-MM-dd'T'HH:mm:ss'Z'";

    /* renamed from: d */
    public static final String f68404d = "yyyy-MM-dd";

    /* renamed from: a */
    public static final JsonFactory f68401a = new JsonFactory();

    /* renamed from: b */
    public static final TimeZone f68402b = TimeZone.getTimeZone("UTC");

    /* renamed from: e */
    public static final int f68405e = "yyyy-MM-dd'T'HH:mm:ss'Z'".replace(CloudStorageConstants.SINGLE_QUOTES, "").length();

    /* renamed from: f */
    public static final int f68406f = "yyyy-MM-dd".replace(CloudStorageConstants.SINGLE_QUOTES, "").length();

    /* renamed from: a */
    public static String m53873a(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ENGLISH);
        simpleDateFormat.setCalendar(new GregorianCalendar(f68402b));
        return simpleDateFormat.format(date);
    }

    /* renamed from: b */
    public static Date m53874b(String str) throws ParseException {
        SimpleDateFormat simpleDateFormat;
        int length = str.length();
        if (length == f68405e) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ENGLISH);
        } else {
            if (length != f68406f) {
                throw new ParseException("timestamp has unexpected format: '" + str + CloudStorageConstants.SINGLE_QUOTES, 0);
            }
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
        }
        simpleDateFormat.setCalendar(new GregorianCalendar(f68402b));
        return simpleDateFormat.parse(str);
    }
}
