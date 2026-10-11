package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class llk {

    /* renamed from: a */
    public static final String f76583a = "PackageIdentity";

    @RequiresApi(28)
    /* renamed from: com.sunia.HTREnginev2.llk$a */
    /* loaded from: classes3.dex */
    public static class C14048a implements InterfaceC14050c {
        @Override // com.sunia.HTREnginev2.llk.InterfaceC14050c
        @Nullable
        /* renamed from: a */
        public List<byte[]> mo55449a(String str, PackageManager packageManager) throws PackageManager.NameNotFoundException {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 134217728);
            ArrayList arrayList = new ArrayList();
            SigningInfo signingInfo = packageInfo.signingInfo;
            if (signingInfo.hasMultipleSigners()) {
                for (Signature signature : signingInfo.getApkContentsSigners()) {
                    arrayList.add(llk.m55445a(signature));
                }
            } else {
                arrayList.add(llk.m55445a(signingInfo.getSigningCertificateHistory()[0]));
            }
            return arrayList;
        }

        @Override // com.sunia.HTREnginev2.llk.InterfaceC14050c
        /* renamed from: b */
        public boolean mo55450b(String str, PackageManager packageManager, yin yinVar) throws PackageManager.NameNotFoundException, IOException {
            List<byte[]> mo55449a;
            if (yinVar.m58432h().equals(str) && (mo55449a = mo55449a(str, packageManager)) != null) {
                return mo55449a.size() == 1 ? packageManager.hasSigningCertificate(str, yinVar.m58430f(0), 1) : yinVar.equals(yin.m58427c(str, mo55449a));
            }
            return false;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.llk$b */
    /* loaded from: classes3.dex */
    public static class C14049b implements InterfaceC14050c {
        @Override // com.sunia.HTREnginev2.llk.InterfaceC14050c
        @Nullable
        @SuppressLint({"PackageManagerGetSignatures"})
        /* renamed from: a */
        public List<byte[]> mo55449a(String str, PackageManager packageManager) throws PackageManager.NameNotFoundException {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 64);
            ArrayList arrayList = new ArrayList(packageInfo.signatures.length);
            for (Signature signature : packageInfo.signatures) {
                byte[] m55445a = llk.m55445a(signature);
                if (m55445a == null) {
                    return null;
                }
                arrayList.add(m55445a);
            }
            return arrayList;
        }

        @Override // com.sunia.HTREnginev2.llk.InterfaceC14050c
        /* renamed from: b */
        public boolean mo55450b(String str, PackageManager packageManager, yin yinVar) throws IOException, PackageManager.NameNotFoundException {
            List<byte[]> mo55449a;
            if (str.equals(yinVar.m58432h()) && (mo55449a = mo55449a(str, packageManager)) != null) {
                return yinVar.equals(yin.m58427c(str, mo55449a));
            }
            return false;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.llk$c */
    /* loaded from: classes3.dex */
    public interface InterfaceC14050c {
        @Nullable
        /* renamed from: a */
        List<byte[]> mo55449a(String str, PackageManager packageManager) throws PackageManager.NameNotFoundException;

        /* renamed from: b */
        boolean mo55450b(String str, PackageManager packageManager, yin yinVar) throws IOException, PackageManager.NameNotFoundException;
    }

    @Nullable
    /* renamed from: a */
    public static byte[] m55445a(Signature signature) {
        try {
            return MessageDigest.getInstance("SHA256").digest(signature.toByteArray());
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    @Nullable
    /* renamed from: b */
    public static List<byte[]> m55446b(String str, PackageManager packageManager) {
        try {
            return m55447c().mo55449a(str, packageManager);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(f76583a, "Could not get fingerprint for package.", e);
            return null;
        }
    }

    /* renamed from: c */
    public static InterfaceC14050c m55447c() {
        return new C14048a();
    }

    /* renamed from: d */
    public static boolean m55448d(String str, PackageManager packageManager, yin yinVar) {
        try {
            return m55447c().mo55450b(str, packageManager, yinVar);
        } catch (PackageManager.NameNotFoundException | IOException e) {
            Log.e(f76583a, "Could not check if package matches token.", e);
            return false;
        }
    }
}
