package com.google.firebase.auth.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.p124firebaseauthapi.zzafz;
import com.google.firebase.auth.ActionCodeInfo;
import com.google.firebase.auth.ActionCodeResult;

/* loaded from: classes6.dex */
public final class zzr implements ActionCodeResult {

    /* renamed from: a */
    public final int f35773a;

    /* renamed from: b */
    public final String f35774b;

    /* renamed from: c */
    public final String f35775c;

    /* renamed from: d */
    public final ActionCodeInfo f35776d;

    public zzr(zzafz zzafzVar) {
        this.f35774b = zzafzVar.zzg() ? zzafzVar.zzc() : zzafzVar.zzb();
        this.f35775c = zzafzVar.zzb();
        ActionCodeInfo actionCodeInfo = null;
        if (!zzafzVar.zzh()) {
            this.f35773a = 3;
            this.f35776d = null;
            return;
        }
        String zzd = zzafzVar.zzd();
        zzd.hashCode();
        int i = 5;
        char c = 65535;
        switch (zzd.hashCode()) {
            case -1874510116:
                if (zzd.equals("REVERT_SECOND_FACTOR_ADDITION")) {
                    c = 0;
                    break;
                }
                break;
            case -1452371317:
                if (zzd.equals("PASSWORD_RESET")) {
                    c = 1;
                    break;
                }
                break;
            case -1341836234:
                if (zzd.equals("VERIFY_EMAIL")) {
                    c = 2;
                    break;
                }
                break;
            case -1099157829:
                if (zzd.equals("VERIFY_AND_CHANGE_EMAIL")) {
                    c = 3;
                    break;
                }
                break;
            case 870738373:
                if (zzd.equals("EMAIL_SIGNIN")) {
                    c = 4;
                    break;
                }
                break;
            case 970484929:
                if (zzd.equals("RECOVER_EMAIL")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                i = 6;
                break;
            case 1:
                i = 0;
                break;
            case 2:
                i = 1;
                break;
            case 3:
                break;
            case 4:
                i = 4;
                break;
            case 5:
                i = 2;
                break;
            default:
                i = 3;
                break;
        }
        this.f35773a = i;
        if (i == 4 || i == 3) {
            this.f35776d = null;
            return;
        }
        if (zzafzVar.zzf()) {
            actionCodeInfo = new zzs(zzafzVar.zzb(), zzbh.zza(zzafzVar.zza()));
        } else if (zzafzVar.zzg()) {
            actionCodeInfo = new zzq(zzafzVar.zzc(), zzafzVar.zzb());
        } else if (zzafzVar.zze()) {
            actionCodeInfo = new zzp(zzafzVar.zzb());
        }
        this.f35776d = actionCodeInfo;
    }

    @Override // com.google.firebase.auth.ActionCodeResult
    @Nullable
    public final String getData(int i) {
        if (this.f35773a == 4) {
            return null;
        }
        if (i == 0) {
            return this.f35774b;
        }
        if (i != 1) {
            return null;
        }
        return this.f35775c;
    }

    @Override // com.google.firebase.auth.ActionCodeResult
    @Nullable
    public final ActionCodeInfo getInfo() {
        return this.f35776d;
    }

    @Override // com.google.firebase.auth.ActionCodeResult
    public final int getOperation() {
        return this.f35773a;
    }
}
