package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzje;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zznm {

    /* renamed from: b */
    public static final String[] f29980b = {"GoogleConsent", "gdprApplies", "EnableAdvertiserConsentMode", "PolicyVersion", "PurposeConsents", "CmpSdkID"};

    /* renamed from: a */
    public final Map<String, String> f29981a;

    public zznm(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        this.f29981a = hashMap;
        hashMap.putAll(map);
    }

    /* renamed from: a */
    public static int m22602a(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getInt(str, -1);
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    /* renamed from: b */
    public static String m22603b(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getString(str, "\u0000");
        } catch (ClassCastException unused) {
            return "\u0000";
        }
    }

    /* renamed from: c */
    public final String m22604c() {
        StringBuilder sb = new StringBuilder();
        for (String str : f29980b) {
            if (this.f29981a.containsKey(str)) {
                if (sb.length() > 0) {
                    sb.append(AndroidTreeView.f47214k);
                }
                sb.append(str);
                sb.append("=");
                sb.append(this.f29981a.get(str));
            }
        }
        return sb.toString();
    }

    /* renamed from: d */
    public final int m22605d() {
        try {
            String str = this.f29981a.get("CmpSdkID");
            if (TextUtils.isEmpty(str)) {
                return -1;
            }
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    /* renamed from: e */
    public final int m22606e() {
        try {
            String str = this.f29981a.get("PolicyVersion");
            if (TextUtils.isEmpty(str)) {
                return -1;
            }
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zznm) {
            return m22604c().equalsIgnoreCase(((zznm) obj).m22604c());
        }
        return false;
    }

    public final int hashCode() {
        return m22604c().hashCode();
    }

    public final String toString() {
        return m22604c();
    }

    public final Bundle zza() {
        if (!("1".equals(this.f29981a.get("GoogleConsent")) && "1".equals(this.f29981a.get("gdprApplies")) && "1".equals(this.f29981a.get("EnableAdvertiserConsentMode")))) {
            return Bundle.EMPTY;
        }
        int m22606e = m22606e();
        if (m22606e < 0) {
            return Bundle.EMPTY;
        }
        String str = this.f29981a.get("PurposeConsents");
        if (TextUtils.isEmpty(str)) {
            return Bundle.EMPTY;
        }
        Bundle bundle = new Bundle();
        if (str.length() > 0) {
            bundle.putString(zzje.zza.AD_STORAGE.zze, str.charAt(0) == '1' ? "granted" : "denied");
        }
        if (str.length() > 3) {
            bundle.putString(zzje.zza.AD_PERSONALIZATION.zze, (str.charAt(2) == '1' && str.charAt(3) == '1') ? "granted" : "denied");
        }
        if (str.length() > 6 && m22606e >= 4) {
            bundle.putString(zzje.zza.AD_USER_DATA.zze, (str.charAt(0) == '1' && str.charAt(6) == '1') ? "granted" : "denied");
        }
        return bundle;
    }

    public final String zzb() {
        StringBuilder sb = new StringBuilder();
        sb.append("1");
        int m22605d = m22605d();
        if (m22605d < 0 || m22605d > 4095) {
            sb.append("00");
        } else {
            sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt((m22605d >> 6) & 63));
            sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(m22605d & 63));
        }
        int m22606e = m22606e();
        if (m22606e < 0 || m22606e > 63) {
            sb.append("0");
        } else {
            sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(m22606e));
        }
        Preconditions.checkArgument(true);
        int i = ("1".equals(this.f29981a.get("gdprApplies")) ? 2 : 0) | 4;
        if ("1".equals(this.f29981a.get("EnableAdvertiserConsentMode"))) {
            i |= 8;
        }
        sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i));
        return sb.toString();
    }

    public static zznm zza(SharedPreferences sharedPreferences) {
        HashMap hashMap = new HashMap();
        String m22603b = m22603b(sharedPreferences, "IABTCF_VendorConsents");
        if (!"\u0000".equals(m22603b) && m22603b.length() > 754) {
            hashMap.put("GoogleConsent", String.valueOf(m22603b.charAt(754)));
        }
        int m22602a = m22602a(sharedPreferences, "IABTCF_gdprApplies");
        if (m22602a != -1) {
            hashMap.put("gdprApplies", String.valueOf(m22602a));
        }
        int m22602a2 = m22602a(sharedPreferences, "IABTCF_EnableAdvertiserConsentMode");
        if (m22602a2 != -1) {
            hashMap.put("EnableAdvertiserConsentMode", String.valueOf(m22602a2));
        }
        int m22602a3 = m22602a(sharedPreferences, "IABTCF_PolicyVersion");
        if (m22602a3 != -1) {
            hashMap.put("PolicyVersion", String.valueOf(m22602a3));
        }
        String m22603b2 = m22603b(sharedPreferences, "IABTCF_PurposeConsents");
        if (!"\u0000".equals(m22603b2)) {
            hashMap.put("PurposeConsents", m22603b2);
        }
        int m22602a4 = m22602a(sharedPreferences, "IABTCF_CmpSdkID");
        if (m22602a4 != -1) {
            hashMap.put("CmpSdkID", String.valueOf(m22602a4));
        }
        return new zznm(hashMap);
    }

    public static String zza(String str, boolean z) {
        if (!z || str.length() <= 4) {
            return str;
        }
        char[] charArray = str.toCharArray();
        int i = 1;
        while (true) {
            if (i >= 64) {
                i = 0;
                break;
            }
            if (charArray[4] == "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i)) {
                break;
            }
            i++;
        }
        charArray[4] = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(1 | i);
        return String.valueOf(charArray);
    }
}
