package com.google.mlkit.vision.digitalink.internal;

import com.google.android.gms.internal.mlkit_vision_digital_ink.zzafa;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzagc;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzagy;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatd;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzate;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatf;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzati;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatj;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatk;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatl;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatm;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatn;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatp;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatq;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatr;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzats;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatt;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatu;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatv;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzaty;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzatz;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzazy;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzazz;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbph;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpk;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModel;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModelIdentifier;
import com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions;
import com.google.mlkit.vision.digitalink.Ink;
import com.google.mlkit.vision.digitalink.RecognitionCandidate;
import com.google.mlkit.vision.digitalink.RecognitionResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;

/* loaded from: classes6.dex */
public final class zzb {

    /* renamed from: g */
    public final /* synthetic */ zzc f36796g;

    /* renamed from: h */
    public final int f36797h;

    /* renamed from: b */
    public final ArrayList f36791b = new ArrayList();

    /* renamed from: c */
    public int f36792c = 0;

    /* renamed from: e */
    public long f36794e = 30;

    /* renamed from: f */
    public boolean f36795f = false;

    /* renamed from: a */
    public final zzatf f36790a = zzatz.zza();

    /* renamed from: d */
    public final zzagy f36793d = zzagy.zzb(zzafa.zza());

    public /* synthetic */ zzb(zzc zzcVar, int i, zza zzaVar) {
        this.f36796g = zzcVar;
        this.f36797h = i;
    }

    /* renamed from: a */
    public static final zzatq m28582a(Ink ink) {
        List<Ink.Stroke> strokes = ink.getStrokes();
        Iterator<Ink.Stroke> it2 = strokes.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().getPoints().size();
        }
        zzatq zza = zzatr.zza();
        zza.zza(strokes.size());
        zza.zzb(i);
        return zza;
    }

    public final zzaty zza() {
        return this.f36790a.zzk();
    }

    public final zzb zzb(List list) {
        this.f36790a.zza(list);
        return this;
    }

    public final synchronized zzb zzc(Ink ink, RecognitionResult recognitionResult, long j) {
        Random random;
        int i = this.f36792c;
        this.f36792c = i + 1;
        if (i >= 30) {
            random = zzc.f36798b;
            i = random.nextInt(this.f36792c);
        }
        if (i >= 30) {
            return this;
        }
        zzatk zza = zzatl.zza();
        zza.zzb(m28582a(ink));
        Iterator<RecognitionCandidate> it2 = recognitionResult.getCandidates().iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            String text = it2.next().getText();
            i2 += text.codePointCount(0, text.length());
        }
        zzats zza2 = zzatt.zza();
        zza2.zza(recognitionResult.getCandidates().size());
        zza2.zzb(i2);
        zza.zzc(zza2);
        zza.zza(j);
        zzatl zzatlVar = (zzatl) zza.zzx();
        if (i < this.f36791b.size()) {
            this.f36791b.set(i, zzatlVar);
        } else {
            this.f36791b.add(zzatlVar);
        }
        this.f36795f = true;
        return this;
    }

    public final synchronized zzb zzd() {
        if (this.f36795f) {
            this.f36791b.clear();
            this.f36792c = 0;
            this.f36790a.zzb();
        }
        this.f36795f = false;
        return this;
    }

    public final synchronized zzb zze() {
        if (this.f36795f) {
            zzn();
            zzd();
            zzagy zzagyVar = this.f36793d;
            zzagyVar.zzc();
            zzagyVar.zzd();
        }
        return this;
    }

    public final synchronized zzb zzf() {
        if (this.f36793d.zza(TimeUnit.SECONDS) > this.f36794e) {
            zze();
        }
        return this;
    }

    public final zzb zzg(long j) {
        this.f36790a.zzd(j);
        return this;
    }

    public final zzb zzh(long j) {
        this.f36794e = 30L;
        return this;
    }

    public final zzb zzi(DigitalInkRecognitionModel digitalInkRecognitionModel) {
        this.f36790a.zzf(zzatp.zzc());
        DigitalInkRecognitionModelIdentifier modelIdentifier = digitalInkRecognitionModel.getModelIdentifier();
        zzatf zzatfVar = this.f36790a;
        zzatm zza = zzatn.zza();
        zza.zza(modelIdentifier.getLanguageTag());
        zzatfVar.zze(zza);
        return this;
    }

    public final zzb zzj(zzo zzoVar) {
        zzati zza = zzatj.zza();
        zza.zzc(zzoVar.zza());
        zzagb zzb = zzoVar.zzb();
        if (zzb.zzc()) {
            zza.zza((String) ((zzagc) zzb.zza()).zza);
            zza.zzb(((Integer) ((zzagc) zzb.zza()).zzb).intValue());
        }
        this.f36790a.zzg(zza);
        return this;
    }

    public final zzb zzk(DigitalInkRecognizerOptions digitalInkRecognizerOptions) {
        zzatf zzatfVar = this.f36790a;
        zzatu zza = zzatv.zza();
        zza.zza(digitalInkRecognizerOptions.zza());
        zzatfVar.zzh(zza);
        zzi(digitalInkRecognizerOptions.zzb());
        return this;
    }

    public final zzb zzl(Ink ink) {
        this.f36790a.zzi(m28582a(ink));
        return this;
    }

    public final zzb zzm(zzaty zzatyVar) {
        this.f36790a.zzj(zzatyVar);
        return this;
    }

    public final synchronized void zzn() {
        zzbph zzbphVar;
        zzatf zzatfVar = this.f36790a;
        zzatd zza = zzate.zza();
        zza.zzb(this.f36792c);
        zza.zza(this.f36791b);
        zzatfVar.zzc(zza);
        zzbphVar = this.f36796g.f36799a;
        zzazy zza2 = zzazz.zza();
        zza2.zzc(3);
        zza2.zze(zzatz.zza, (zzatz) this.f36790a.zzx());
        zzbphVar.zzc(zzbpk.zzc(zza2, 0), this.f36797h);
    }
}
