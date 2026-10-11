package com.tencent.qimei.p092m;

import android.text.TextUtils;
import com.alibaba.fastjson2.JSONB;
import com.google.common.base.Ascii;
import com.tencent.qimei.p084e.C16773a;
import com.tencent.qimei.p093n.C16806a;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Date;
import java.util.Random;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;

/* renamed from: com.tencent.qimei.m.a */
/* loaded from: classes10.dex */
public class C16800a {

    /* renamed from: a */
    public static final Random f93540a = new Random();

    /* renamed from: a */
    public static String m59972a() {
        return m59973a("_" + C16773a.m59902d() + "_" + new Date().getTime() + "_" + (f93540a.nextInt(2147473647) + 1000));
    }

    /* renamed from: b */
    public static String m59976b() {
        byte[] bArr = {119, TarConstants.LF_PAX_EXTENDED_HEADER_UC, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 97, 73, 107, 115, TarConstants.LF_LINK, 115, JSONB.Constants.BC_STR_ASCII_FIX_36, TarConstants.LF_GNUTYPE_LONGNAME, 104, JSONB.Constants.BC_STR_UTF8, FramedLZ4CompressorInputStream.f106197v, 65, 100};
        byte[] bArr2 = {Ascii.ESC, 87, 19, 34, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 13};
        for (int i = 0; i < 16; i++) {
            bArr[i] = (byte) (bArr[i] ^ bArr2[i % 6]);
        }
        for (int i2 = 0; i2 < 16; i2++) {
            bArr[i2] = (byte) (bArr[i2] ^ bArr2[i2 % 6]);
        }
        return new String(bArr, Charset.forName("UTF-8"));
    }

    /* renamed from: c */
    public static String m59978c(String str) {
        String str2 = "";
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = fileInputStream2.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                str2 = byteArrayOutputStream.toString("UTF-8").trim().replaceAll("\\s*|\\t|\\r|\\n", "");
                m59974a(fileInputStream2);
                m59974a(byteArrayOutputStream);
            } catch (Exception unused) {
                fileInputStream = fileInputStream2;
                m59974a(fileInputStream);
                m59974a(byteArrayOutputStream);
                return str2;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                m59974a(fileInputStream);
                m59974a(byteArrayOutputStream);
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
        return str2;
    }

    /* renamed from: a */
    public static String m59973a(String str) {
        String m59977b = m59977b(str);
        if (m59977b == null) {
            return m59977b;
        }
        try {
            return m59977b.substring(8, 24);
        } catch (Exception e) {
            C16806a.m59992a(e);
            return m59977b;
        }
    }

    /* renamed from: b */
    public static String m59977b(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes(Charset.forName("UTF-8")));
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                int i = b & 255;
                if (i < 16) {
                    sb.append(0);
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (Exception e) {
            C16806a.m59992a(e);
            return str;
        }
    }

    /* renamed from: a */
    public static void m59974a(Closeable... closeableArr) {
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m59975a(String str, String str2) {
        return TextUtils.isEmpty(str2) || str.equals(str2);
    }
}
