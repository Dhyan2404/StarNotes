package com.google.android.gms.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.common.zzag;
import com.google.errorprone.annotations.RestrictedInheritance;
import com.sunia.HTREnginev2.fop;
import com.sunia.HTREnginev2.pfp;
import com.sunia.HTREnginev2.xsp;
import com.sunia.HTREnginev2.ypp;
import java.util.HashMap;

@ShowFirstParty
@KeepForSdk
@RestrictedInheritance(allowedOnPath = ".*javatests/com/google/android/gmscore/integ/client/common/robolectric/.*", explanation = "Sub classing of GMS Core's APIs are restricted to testing fakes.", link = "go/gmscore-restrictedinheritance")
/* loaded from: classes5.dex */
public class GmsSignatureVerifier {

    /* renamed from: a */
    public static final pfp f29009a;

    /* renamed from: b */
    public static final pfp f29010b;

    /* renamed from: c */
    public static final HashMap f29011c;

    static {
        xsp xspVar = new xsp();
        xspVar.m58332d("com.google.android.gms");
        xspVar.m58329a(204200000L);
        fop fopVar = ypp.f90963d;
        xspVar.m58331c(zzag.zzn(fopVar.mo54151e(), ypp.f90961b.mo54151e()));
        fop fopVar2 = ypp.f90962c;
        xspVar.m58330b(zzag.zzn(fopVar2.mo54151e(), ypp.f90960a.mo54151e()));
        f29009a = xspVar.m58333e();
        xsp xspVar2 = new xsp();
        xspVar2.m58332d("com.android.vending");
        xspVar2.m58329a(82240000L);
        xspVar2.m58331c(zzag.zzm(fopVar.mo54151e()));
        xspVar2.m58330b(zzag.zzm(fopVar2.mo54151e()));
        f29010b = xspVar2.m58333e();
        f29011c = new HashMap();
    }
}
