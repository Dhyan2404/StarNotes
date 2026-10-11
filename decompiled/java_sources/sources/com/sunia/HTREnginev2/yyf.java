package com.sunia.HTREnginev2;

import android.text.TextUtils;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes7.dex */
public final class yyf {

    /* renamed from: a */
    public static final String f91183a = "yyf";

    /* renamed from: b */
    public static final int f91184b = -1;

    /* renamed from: a */
    public static Date m58497a(String str) {
        try {
            String attribute = m58500d(str).getAttribute(ExifInterface.TAG_DATETIME);
            if (TextUtils.isEmpty(attribute)) {
                return null;
            }
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                return simpleDateFormat.parse(attribute);
            } catch (ParseException e) {
                Log.d(f91183a, "failed to parse date taken", e);
                return null;
            }
        } catch (IOException e2) {
            Log.e(f91183a, "cannot read exif", e2);
            return null;
        }
    }

    /* renamed from: b */
    public static long m58498b(String str) {
        Date m58497a = m58497a(str);
        if (m58497a == null) {
            return -1L;
        }
        return m58497a.getTime();
    }

    /* renamed from: c */
    public static int m58499c(String str) {
        try {
            int attributeInt = m58500d(str).getAttributeInt(ExifInterface.TAG_ORIENTATION, -1);
            if (attributeInt == -1) {
                return 0;
            }
            if (attributeInt == 3) {
                return 180;
            }
            if (attributeInt != 6) {
                return attributeInt != 8 ? 0 : 270;
            }
            return 90;
        } catch (IOException e) {
            Log.e(f91183a, "cannot read exif", e);
            return -1;
        }
    }

    /* renamed from: d */
    public static android.media.ExifInterface m58500d(String str) throws IOException {
        if (str != null) {
            return new android.media.ExifInterface(str);
        }
        throw new NullPointerException("filename should not be null");
    }
}
