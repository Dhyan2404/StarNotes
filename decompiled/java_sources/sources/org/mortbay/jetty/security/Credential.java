package org.mortbay.jetty.security;

import java.security.MessageDigest;
import org.mortbay.log.Log;
import org.mortbay.util.StringUtil;
import org.mortbay.util.TypeUtil;

/* loaded from: classes13.dex */
public abstract class Credential {

    /* loaded from: classes13.dex */
    public static class Crypt extends Credential {
        public static final String __TYPE = "CRYPT:";

        /* renamed from: a */
        public String f114969a;

        public Crypt(String str) {
            this.f114969a = str.startsWith(__TYPE) ? str.substring(6) : str;
        }

        public static String crypt(String str, String str2) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(__TYPE);
            stringBuffer.append(UnixCrypt.crypt(str2, str));
            return stringBuffer.toString();
        }

        @Override // org.mortbay.jetty.security.Credential
        public boolean check(Object obj) {
            if (!(obj instanceof String) && !(obj instanceof Password)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Can't check ");
                stringBuffer.append(obj.getClass());
                stringBuffer.append(" against CRYPT");
                Log.warn(stringBuffer.toString());
            }
            String obj2 = obj.toString();
            String str = this.f114969a;
            return str.equals(UnixCrypt.crypt(obj2, str));
        }
    }

    /* loaded from: classes13.dex */
    public static class MD5 extends Credential {
        public static final String __TYPE = "MD5:";
        public static final Object __md5Lock = new Object();

        /* renamed from: b */
        public static MessageDigest f114970b;

        /* renamed from: a */
        public byte[] f114971a;

        public MD5(String str) {
            this.f114971a = TypeUtil.parseBytes(str.startsWith(__TYPE) ? str.substring(4) : str, 16);
        }

        public static String digest(String str) {
            byte[] digest;
            try {
                synchronized (__md5Lock) {
                    if (f114970b == null) {
                        try {
                            f114970b = MessageDigest.getInstance("MD5");
                        } catch (Exception e) {
                            Log.warn(e);
                            return null;
                        }
                    }
                    f114970b.reset();
                    f114970b.update(str.getBytes(StringUtil.__ISO_8859_1));
                    digest = f114970b.digest();
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(__TYPE);
                stringBuffer.append(TypeUtil.toString(digest, 16));
                return stringBuffer.toString();
            } catch (Exception e2) {
                Log.warn(e2);
                return null;
            }
        }

        @Override // org.mortbay.jetty.security.Credential
        public boolean check(Object obj) {
            byte[] digest;
            try {
                if (!(obj instanceof Password) && !(obj instanceof String)) {
                    if (!(obj instanceof MD5)) {
                        if (obj instanceof Credential) {
                            return ((Credential) obj).check(this);
                        }
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Can't check ");
                        stringBuffer.append(obj.getClass());
                        stringBuffer.append(" against MD5");
                        Log.warn(stringBuffer.toString());
                        return false;
                    }
                    MD5 md5 = (MD5) obj;
                    if (this.f114971a.length != md5.f114971a.length) {
                        return false;
                    }
                    int i = 0;
                    while (true) {
                        byte[] bArr = this.f114971a;
                        if (i >= bArr.length) {
                            return true;
                        }
                        if (bArr[i] != md5.f114971a[i]) {
                            return false;
                        }
                        i++;
                    }
                }
                synchronized (__md5Lock) {
                    if (f114970b == null) {
                        f114970b = MessageDigest.getInstance("MD5");
                    }
                    f114970b.reset();
                    f114970b.update(obj.toString().getBytes(StringUtil.__ISO_8859_1));
                    digest = f114970b.digest();
                }
                if (digest != null && digest.length == this.f114971a.length) {
                    for (int i2 = 0; i2 < digest.length; i2++) {
                        if (digest[i2] != this.f114971a[i2]) {
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            } catch (Exception e) {
                Log.warn(e);
                return false;
            }
        }

        public byte[] getDigest() {
            return this.f114971a;
        }
    }

    public static Credential getCredential(String str) {
        return str.startsWith(Crypt.__TYPE) ? new Crypt(str) : str.startsWith(MD5.__TYPE) ? new MD5(str) : new Password(str);
    }

    public abstract boolean check(Object obj);
}
