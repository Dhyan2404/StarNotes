package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.fasterxml.jackson.core.base.ParserBase;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class zzvh implements zzux {
    public static final /* synthetic */ int zza = 0;
    private static final TimeZone zzb = TimeZone.getTimeZone("UTC");
    private final zzaaw zzc;
    private final Executor zzd;
    private final Random zze;
    private final zzgs zzf;

    public zzvh(zzaaw zzaawVar, zzgs zzgsVar, Executor executor, Random random, byte[] bArr) {
        this.zzc = zzaawVar;
        this.zzf = zzgsVar;
        this.zzd = executor;
        this.zze = random;
    }

    public static final /* synthetic */ zzdy zzd(AtomicReference atomicReference, zzdy zzdyVar) {
        Long valueOf = Long.valueOf(System.currentTimeMillis());
        zzbxa zze = zzdyVar.zze();
        zzbxw.zza(zze);
        Long valueOf2 = Long.valueOf(zzaps.zza(zzaps.zzb(zze.zze(), 1000L), zze.zzc() / 1000000));
        zzdx zzdxVar = (zzdx) zzdyVar.zzO();
        zzdxVar.zze(zzbxw.zzb(valueOf.longValue()));
        zzdy zzdyVar2 = (zzdy) zzdxVar.zzx();
        if (!zzdyVar.zzm()) {
            return zzdyVar2;
        }
        long days = TimeUnit.MILLISECONDS.toDays(zze(valueOf.longValue()) - zze(valueOf2.longValue()));
        atomicReference.set(zzagb.zzf(Integer.valueOf(days > 2147483647L ? Integer.MAX_VALUE : days < ParserBase.f21225q ? Integer.MIN_VALUE : (int) days)));
        return zzdyVar2;
    }

    private static long zze(long j) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(zzb);
        gregorianCalendar.setTimeInMillis(j);
        gregorianCalendar.set(11, 0);
        gregorianCalendar.set(12, 0);
        gregorianCalendar.set(13, 0);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzux
    public final zzasi zza() {
        final AtomicReference atomicReference = new AtomicReference(zzajm.zzq());
        zzasi zzh = this.zzc.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzvf
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                AtomicReference atomicReference2 = atomicReference;
                zzdy zzdyVar = (zzdy) obj;
                int i = zzvh.zza;
                atomicReference2.set(zzdyVar.zzf());
                zzdx zzdxVar = (zzdx) zzdyVar.zzO();
                zzdxVar.zzc();
                return (zzdy) zzdxVar.zzx();
            }
        }, this.zzd);
        zzaft zza2 = zzaeq.zza(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzvb
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                AtomicReference atomicReference2 = atomicReference;
                int i = zzvh.zza;
                return (List) atomicReference2.get();
            }
        });
        return zzarx.zzn(zzh, zzaeq.zza(zza2), this.zzd);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzux
    public final zzasi zzb() {
        final AtomicReference atomicReference = new AtomicReference(zzagb.zzd());
        zzasi zzh = this.zzc.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzvc
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzvh.zzd(atomicReference, (zzdy) obj);
            }
        }, zzasq.zzb());
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzvd
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                AtomicReference atomicReference2 = atomicReference;
                int i = zzvh.zza;
                return (zzagb) atomicReference2.get();
            }
        };
        return zzarx.zzn(zzh, zzaeq.zza(zzaftVar), zzasq.zzb());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzux
    public final zzasi zzc(final zzdl zzdlVar) {
        return this.zzc.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzve
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                final zzdl zzdlVar2 = zzdl.this;
                zzdy zzdyVar = (zzdy) obj;
                int i = zzvh.zza;
                List zzf = zzdyVar.zzf();
                int zza2 = zzakl.zza(zzf.iterator(), new zzagh() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzva
                    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagh
                    public final boolean zza(Object obj2) {
                        zzdl zzdlVar3 = zzdl.this;
                        zzdl zzdlVar4 = (zzdl) obj2;
                        int i2 = zzvh.zza;
                        return zzdlVar3.zzh().equals(zzdlVar4.zzh()) && zzdlVar3.zza() == zzdlVar4.zza() && zzdlVar3.zzc() == zzdlVar4.zzc();
                    }
                });
                if (zza2 == -1) {
                    zzdx zzdxVar = (zzdx) zzdyVar.zzO();
                    zzdxVar.zzb(zzdlVar2);
                    return (zzdy) zzdxVar.zzx();
                }
                zzdl zza3 = zzdyVar.zza(zza2);
                zzdk zzdkVar = (zzdk) zza3.zzO();
                zzdkVar.zzb(zza3.zzd() + zzdlVar2.zzd());
                zzdkVar.zzg(zza3.zze() + zzdlVar2.zze());
                zzdl zzdlVar3 = (zzdl) zzdkVar.zzx();
                zzdx zzdxVar2 = (zzdx) zzdyVar.zzO();
                zzdxVar2.zzd(zza2, zzdlVar3);
                return (zzdy) zzdxVar2.zzx();
            }
        }, this.zzd);
    }
}
