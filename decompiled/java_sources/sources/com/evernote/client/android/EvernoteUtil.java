package com.evernote.client.android;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Looper;
import android.util.Base64;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.ValueCallback;
import androidx.annotation.Nullable;
import com.evernote.client.android.helper.Cat;
import com.evernote.edam.type.Resource;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* loaded from: classes4.dex */
public final class EvernoteUtil {
    public static final String ACTION_AUTHORIZE = "com.evernote.action.AUTHORIZE";
    public static final String ACTION_GET_BOOTSTRAP_PROFILE_NAME = "com.evernote.action.GET_BOOTSTRAP_PROFILE_NAME";
    public static final String EXTRA_AUTHORIZATION_URL = "authorization_url";
    public static final String EXTRA_BOOTSTRAP_PROFILE_NAME = "bootstrap_profile_name";
    public static final String EXTRA_OAUTH_CALLBACK_URL = "oauth_callback_url";
    public static final String NOTE_PREFIX = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE en-note SYSTEM \"http://xml.evernote.com/pub/enml2.dtd\"><en-note>";
    public static final String NOTE_SUFFIX = "</en-note>";

    /* renamed from: a */
    public static final Cat f20826a = new Cat("EvernoteUtil");

    /* renamed from: b */
    public static final String f20827b = "MD5";

    /* renamed from: c */
    public static final MessageDigest f20828c;

    /* renamed from: d */
    public static final String f20829d = "com.evernote";

    /* renamed from: e */
    public static final String f20830e = "XS7HhF3x8-kho4iOnAQIdP7_m4UsbRKgaEAr1HaXwnc=";

    /* loaded from: classes4.dex */
    public enum EvernoteInstallStatus {
        INSTALLED,
        OLD_VERSION,
        NOT_INSTALLED
    }

    /* loaded from: classes4.dex */
    public static final class EvernoteUtilException extends RuntimeException {
        public EvernoteUtilException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* renamed from: com.evernote.client.android.EvernoteUtil$a */
    /* loaded from: classes4.dex */
    public static class C4461a implements ValueCallback<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ CookieManager f20831a;

        /* renamed from: com.evernote.client.android.EvernoteUtil$a$a */
        /* loaded from: classes4.dex */
        public class a extends Thread {
            public a() {
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                C4461a.this.f20831a.flush();
            }
        }

        public C4461a(CookieManager cookieManager) {
            this.f20831a = cookieManager;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(Boolean bool) {
            new a().start();
        }
    }

    static {
        MessageDigest messageDigest;
        try {
            messageDigest = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException unused) {
            messageDigest = null;
        }
        f20828c = messageDigest;
    }

    /* renamed from: a */
    public static String m16934a(byte[] bArr) {
        return Base64.encodeToString(bArr, 10);
    }

    @Nullable
    /* renamed from: b */
    public static MessageDigest m16935b() {
        try {
            return MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static String bytesToHex(byte[] bArr) {
        return bytesToHex(bArr, false);
    }

    /* renamed from: c */
    public static void m16936c(Context context) {
        CookieSyncManager.createInstance(context);
        CookieManager.getInstance().removeAllCookie();
    }

    public static Intent createAuthorizationIntent(Context context, String str, boolean z) {
        Intent intent;
        if (z || !EvernoteInstallStatus.INSTALLED.equals(getEvernoteInstallStatus(context, ACTION_AUTHORIZE))) {
            intent = new Intent(context, (Class<?>) EvernoteOAuthActivity.class);
        } else {
            intent = new Intent(ACTION_AUTHORIZE);
            intent.setPackage(f20829d);
        }
        intent.putExtra(EXTRA_AUTHORIZATION_URL, str);
        return intent;
    }

    public static String createEnMediaTag(Resource resource) {
        return "<en-media hash=\"" + bytesToHex(resource.getData().getBodyHash()) + "\" type=\"" + resource.getMime() + "\"/>";
    }

    public static Intent createGetBootstrapProfileNameIntent(Context context, EvernoteSession evernoteSession) {
        if (evernoteSession.m16930i()) {
            return null;
        }
        if (EvernoteInstallStatus.INSTALLED.equals(getEvernoteInstallStatus(context, ACTION_GET_BOOTSTRAP_PROFILE_NAME))) {
            return new Intent(ACTION_GET_BOOTSTRAP_PROFILE_NAME).setPackage(f20829d);
        }
        return null;
    }

    @TargetApi(21)
    /* renamed from: d */
    public static void m16937d() {
        boolean z;
        Looper myLooper;
        CookieManager cookieManager = CookieManager.getInstance();
        if (Looper.myLooper() == null) {
            Looper.prepare();
            z = true;
        } else {
            z = false;
        }
        cookieManager.removeAllCookies(new C4461a(cookieManager));
        if (!z || (myLooper = Looper.myLooper()) == null) {
            return;
        }
        myLooper.quit();
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    /* renamed from: e */
    public static EvernoteInstallStatus m16938e(PackageManager packageManager) {
        MessageDigest m16935b = m16935b();
        if (m16935b == null) {
            return EvernoteInstallStatus.NOT_INSTALLED;
        }
        try {
            Signature[] signatureArr = packageManager.getPackageInfo(f20829d, 64).signatures;
            if (signatureArr == null || signatureArr.length == 0) {
                return EvernoteInstallStatus.NOT_INSTALLED;
            }
            for (Signature signature : signatureArr) {
                m16935b.update(signature.toByteArray());
                if (f20830e.equals(m16934a(m16935b.digest()))) {
                    return EvernoteInstallStatus.INSTALLED;
                }
            }
            return EvernoteInstallStatus.NOT_INSTALLED;
        } catch (PackageManager.NameNotFoundException unused) {
            return EvernoteInstallStatus.NOT_INSTALLED;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String generateUserAgentString(android.content.Context r3) {
        /*
            r0 = 0
            java.lang.String r1 = r3.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L12
            android.content.pm.PackageManager r3 = r3.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L10
            android.content.pm.PackageInfo r3 = r3.getPackageInfo(r1, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L10
            int r0 = r3.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L10
            goto L1d
        L10:
            r3 = move-exception
            goto L14
        L12:
            r3 = move-exception
            r1 = 0
        L14:
            com.evernote.client.android.helper.Cat r2 = com.evernote.client.android.EvernoteUtil.f20826a
            java.lang.String r3 = r3.getMessage()
            r2.m17073e(r3)
        L1d:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r1)
            java.lang.String r1 = " Android/"
            r3.append(r1)
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            java.util.Locale r0 = java.util.Locale.getDefault()
            java.lang.String r1 = " ("
            if (r0 != 0) goto L53
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r3)
            r0.append(r1)
            java.util.Locale r3 = java.util.Locale.US
            r0.append(r3)
            java.lang.String r3 = ");"
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            goto L6e
        L53:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r3)
            r2.append(r1)
            java.lang.String r3 = r0.toString()
            r2.append(r3)
            java.lang.String r3 = "); "
            r2.append(r3)
            java.lang.String r3 = r2.toString()
        L6e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r3)
            java.lang.String r3 = "Android/"
            r0.append(r3)
            java.lang.String r3 = android.os.Build.VERSION.RELEASE
            r0.append(r3)
            java.lang.String r3 = "; "
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r3)
            java.lang.String r3 = android.os.Build.MODEL
            r0.append(r3)
            java.lang.String r3 = "/"
            r0.append(r3)
            int r3 = android.os.Build.VERSION.SDK_INT
            r0.append(r3)
            java.lang.String r3 = ";"
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.evernote.client.android.EvernoteUtil.generateUserAgentString(android.content.Context):java.lang.String");
    }

    public static EvernoteInstallStatus getEvernoteInstallStatus(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        if (!packageManager.queryIntentActivities(new Intent(str).setPackage(f20829d), 65536).isEmpty()) {
            return m16938e(packageManager);
        }
        try {
            packageManager.getPackageInfo(f20829d, 1);
            return EvernoteInstallStatus.OLD_VERSION;
        } catch (Exception unused) {
            return EvernoteInstallStatus.NOT_INSTALLED;
        }
    }

    public static byte[] hash(byte[] bArr) {
        MessageDigest messageDigest = f20828c;
        if (messageDigest != null) {
            return messageDigest.digest(bArr);
        }
        throw new EvernoteUtilException("MD5 not supported", new NoSuchAlgorithmException("MD5"));
    }

    public static byte[] hexToBytes(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
        }
        return bArr;
    }

    public static void removeAllCookies(Context context) {
        m16937d();
    }

    public static String bytesToHex(byte[] bArr, boolean z) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            int i = b & 255;
            if (i < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(i));
            if (z) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    public static byte[] hash(InputStream inputStream) throws IOException {
        if (f20828c == null) {
            throw new EvernoteUtilException("MD5 not supported", new NoSuchAlgorithmException("MD5"));
        }
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                f20828c.update(bArr, 0, read);
            } else {
                return f20828c.digest();
            }
        }
    }
}
