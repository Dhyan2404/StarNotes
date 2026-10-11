package org.apache.commons.codec.cli;

import com.bumptech.glide.load.engine.GlideException;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Locale;
import org.apache.commons.codec.binary.Hex;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* loaded from: classes9.dex */
public class Digest {

    /* renamed from: a */
    public final String f104645a;

    /* renamed from: b */
    public final String[] f104646b;

    /* renamed from: c */
    public final String[] f104647c;

    public Digest(String[] strArr) {
        if (strArr == null) {
            throw new IllegalArgumentException("args");
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException(String.format("Usage: java %s [algorithm] [FILE|DIRECTORY|string] ...", Digest.class.getName()));
        }
        this.f104646b = strArr;
        this.f104645a = strArr[0];
        if (strArr.length <= 1) {
            this.f104647c = null;
            return;
        }
        String[] strArr2 = new String[strArr.length - 1];
        this.f104647c = strArr2;
        System.arraycopy(strArr, 1, strArr2, 0, strArr2.length);
    }

    public static void main(String[] strArr) throws IOException {
        new Digest(strArr).m65724c();
    }

    /* renamed from: a */
    public final void m65722a(String str, byte[] bArr) {
        m65723b(str, bArr, null);
    }

    /* renamed from: b */
    public final void m65723b(String str, byte[] bArr, String str2) {
        String str3;
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(Hex.encodeHexString(bArr));
        if (str2 != null) {
            str3 = GlideException.C1935a.f14609h + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        printStream.println(sb.toString());
    }

    /* renamed from: c */
    public final void m65724c() throws IOException {
        if (this.f104645a.equalsIgnoreCase("ALL") || this.f104645a.equals("*")) {
            m65728g(MessageDigestAlgorithms.values());
            return;
        }
        MessageDigest digest = DigestUtils.getDigest(this.f104645a, null);
        if (digest != null) {
            m65726e("", digest);
        } else {
            m65726e("", DigestUtils.getDigest(this.f104645a.toUpperCase(Locale.ROOT)));
        }
    }

    /* renamed from: d */
    public final void m65725d(String str, String str2) throws IOException {
        m65726e(str, DigestUtils.getDigest(str2));
    }

    /* renamed from: e */
    public final void m65726e(String str, MessageDigest messageDigest) throws IOException {
        String[] strArr = this.f104647c;
        if (strArr == null) {
            m65722a(str, DigestUtils.digest(messageDigest, System.in));
            return;
        }
        for (String str2 : strArr) {
            File file = new File(str2);
            if (file.isFile()) {
                m65723b(str, DigestUtils.digest(messageDigest, file), str2);
            } else if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    m65727f(str, messageDigest, listFiles);
                }
            } else {
                m65722a(str, DigestUtils.digest(messageDigest, str2.getBytes(Charset.defaultCharset())));
            }
        }
    }

    /* renamed from: f */
    public final void m65727f(String str, MessageDigest messageDigest, File[] fileArr) throws IOException {
        for (File file : fileArr) {
            if (file.isFile()) {
                m65723b(str, DigestUtils.digest(messageDigest, file), file.getName());
            }
        }
    }

    /* renamed from: g */
    public final void m65728g(String[] strArr) throws IOException {
        for (String str : strArr) {
            if (DigestUtils.isAvailable(str)) {
                m65725d(str + " ", str);
            }
        }
    }

    public String toString() {
        return String.format("%s %s", super.toString(), Arrays.toString(this.f104646b));
    }
}
