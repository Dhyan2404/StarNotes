package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.accounts.Account;

/* loaded from: classes5.dex */
public final class zzyi {
    public static final Account zza = new Account("shared", "mobstore");

    public static Account zza(String str) {
        if ("shared".equals(str)) {
            return zza;
        }
        int indexOf = str.indexOf(58);
        zzzt.zza(indexOf >= 0, "Malformed account", new Object[0]);
        return new Account(str.substring(indexOf + 1), str.substring(0, indexOf));
    }

    public static String zzb(Account account) {
        zzzt.zza(account.type.indexOf(58) == -1, "Account type contains ':'.", new Object[0]);
        zzzt.zza(account.type.indexOf(47) == -1, "Account type contains '/'.", new Object[0]);
        zzzt.zza(account.name.indexOf(47) == -1, "Account name contains '/'.", new Object[0]);
        if (zza.equals(account)) {
            return "shared";
        }
        return account.type + ":" + account.name;
    }

    public static boolean zzc(String str) {
        return "shared".equals(str);
    }
}
