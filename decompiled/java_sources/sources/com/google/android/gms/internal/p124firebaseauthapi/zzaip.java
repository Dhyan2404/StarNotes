package com.google.android.gms.internal.p124firebaseauthapi;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzaip implements zzanc {
    private final zzaim zza;

    private zzaip(zzaim zzaimVar) {
        zzaim zzaimVar2 = (zzaim) zzajh.zza(zzaimVar, Constants.ELEMNAME_OUTPUT_STRING);
        this.zza = zzaimVar2;
        zzaimVar2.zze = this;
    }

    public static zzaip zza(zzaim zzaimVar) {
        zzaip zzaipVar = zzaimVar.zze;
        return zzaipVar != null ? zzaipVar : new zzaip(zzaimVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzb(int i, List<Double> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzaio)) {
            if (z) {
                this.zza.zzk(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    i3 += zzaim.zza(list.get(i4).doubleValue());
                }
                this.zza.zzn(i3);
                while (i2 < list.size()) {
                    this.zza.zzb(list.get(i2).doubleValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzb(i, list.get(i2).doubleValue());
                i2++;
            }
            return;
        }
        zzaio zzaioVar = (zzaio) list;
        if (z) {
            this.zza.zzk(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < zzaioVar.size(); i6++) {
                i5 += zzaim.zza(zzaioVar.zzb(i6));
            }
            this.zza.zzn(i5);
            while (i2 < zzaioVar.size()) {
                this.zza.zzb(zzaioVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzaioVar.size()) {
            this.zza.zzb(i, zzaioVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzc(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zza.zzk(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzaim.zzc(list.get(i4).intValue());
            }
            this.zza.zzn(i3);
            while (i2 < list.size()) {
                this.zza.zzl(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzi(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzd(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzajf)) {
            if (z) {
                this.zza.zzk(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    i3 += zzaim.zzd(list.get(i4).intValue());
                }
                this.zza.zzn(i3);
                while (i2 < list.size()) {
                    this.zza.zzk(list.get(i2).intValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzh(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        zzajf zzajfVar = (zzajf) list;
        if (z) {
            this.zza.zzk(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < zzajfVar.size(); i6++) {
                i5 += zzaim.zzd(zzajfVar.zzb(i6));
            }
            this.zza.zzn(i5);
            while (i2 < zzajfVar.size()) {
                this.zza.zzk(zzajfVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzajfVar.size()) {
            this.zza.zzh(i, zzajfVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zze(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzaka)) {
            if (z) {
                this.zza.zzk(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    i3 += zzaim.zzc(list.get(i4).longValue());
                }
                this.zza.zzn(i3);
                while (i2 < list.size()) {
                    this.zza.zzh(list.get(i2).longValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzf(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        zzaka zzakaVar = (zzaka) list;
        if (z) {
            this.zza.zzk(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < zzakaVar.size(); i6++) {
                i5 += zzaim.zzc(zzakaVar.zzb(i6));
            }
            this.zza.zzn(i5);
            while (i2 < zzakaVar.size()) {
                this.zza.zzh(zzakaVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzakaVar.size()) {
            this.zza.zzf(i, zzakaVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzf(int i, List<Float> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzajd)) {
            if (z) {
                this.zza.zzk(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    i3 += zzaim.zza(list.get(i4).floatValue());
                }
                this.zza.zzn(i3);
                while (i2 < list.size()) {
                    this.zza.zzb(list.get(i2).floatValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzb(i, list.get(i2).floatValue());
                i2++;
            }
            return;
        }
        zzajd zzajdVar = (zzajd) list;
        if (z) {
            this.zza.zzk(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < zzajdVar.size(); i6++) {
                i5 += zzaim.zza(zzajdVar.zzb(i6));
            }
            this.zza.zzn(i5);
            while (i2 < zzajdVar.size()) {
                this.zza.zzb(zzajdVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzajdVar.size()) {
            this.zza.zzb(i, zzajdVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzg(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzajf)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzi(i, list.get(i2).intValue());
                    i2++;
                }
                return;
            }
            this.zza.zzk(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzaim.zze(list.get(i4).intValue());
            }
            this.zza.zzn(i3);
            while (i2 < list.size()) {
                this.zza.zzl(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        zzajf zzajfVar = (zzajf) list;
        if (!z) {
            while (i2 < zzajfVar.size()) {
                this.zza.zzi(i, zzajfVar.zzb(i2));
                i2++;
            }
            return;
        }
        this.zza.zzk(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzajfVar.size(); i6++) {
            i5 += zzaim.zze(zzajfVar.zzb(i6));
        }
        this.zza.zzn(i5);
        while (i2 < zzajfVar.size()) {
            this.zza.zzl(zzajfVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzh(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzaka)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzh(i, list.get(i2).longValue());
                    i2++;
                }
                return;
            }
            this.zza.zzk(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzaim.zzd(list.get(i4).longValue());
            }
            this.zza.zzn(i3);
            while (i2 < list.size()) {
                this.zza.zzj(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        zzaka zzakaVar = (zzaka) list;
        if (!z) {
            while (i2 < zzakaVar.size()) {
                this.zza.zzh(i, zzakaVar.zzb(i2));
                i2++;
            }
            return;
        }
        this.zza.zzk(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzakaVar.size(); i6++) {
            i5 += zzaim.zzd(zzakaVar.zzb(i6));
        }
        this.zza.zzn(i5);
        while (i2 < zzakaVar.size()) {
            this.zza.zzj(zzakaVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzi(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzajf)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzh(i, list.get(i2).intValue());
                    i2++;
                }
                return;
            }
            this.zza.zzk(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzaim.zzg(list.get(i4).intValue());
            }
            this.zza.zzn(i3);
            while (i2 < list.size()) {
                this.zza.zzk(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        zzajf zzajfVar = (zzajf) list;
        if (!z) {
            while (i2 < zzajfVar.size()) {
                this.zza.zzh(i, zzajfVar.zzb(i2));
                i2++;
            }
            return;
        }
        this.zza.zzk(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzajfVar.size(); i6++) {
            i5 += zzaim.zzg(zzajfVar.zzb(i6));
        }
        this.zza.zzn(i5);
        while (i2 < zzajfVar.size()) {
            this.zza.zzk(zzajfVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzj(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzaka)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzf(i, list.get(i2).longValue());
                    i2++;
                }
                return;
            }
            this.zza.zzk(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzaim.zze(list.get(i4).longValue());
            }
            this.zza.zzn(i3);
            while (i2 < list.size()) {
                this.zza.zzh(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        zzaka zzakaVar = (zzaka) list;
        if (!z) {
            while (i2 < zzakaVar.size()) {
                this.zza.zzf(i, zzakaVar.zzb(i2));
                i2++;
            }
            return;
        }
        this.zza.zzk(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzakaVar.size(); i6++) {
            i5 += zzaim.zze(zzakaVar.zzb(i6));
        }
        this.zza.zzn(i5);
        while (i2 < zzakaVar.size()) {
            this.zza.zzh(zzakaVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzk(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzajf)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzj(i, list.get(i2).intValue());
                    i2++;
                }
                return;
            }
            this.zza.zzk(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzaim.zzh(list.get(i4).intValue());
            }
            this.zza.zzn(i3);
            while (i2 < list.size()) {
                this.zza.zzm(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        zzajf zzajfVar = (zzajf) list;
        if (!z) {
            while (i2 < zzajfVar.size()) {
                this.zza.zzj(i, zzajfVar.zzb(i2));
                i2++;
            }
            return;
        }
        this.zza.zzk(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzajfVar.size(); i6++) {
            i5 += zzaim.zzh(zzajfVar.zzb(i6));
        }
        this.zza.zzn(i5);
        while (i2 < zzajfVar.size()) {
            this.zza.zzm(zzajfVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzl(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzaka)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzg(i, list.get(i2).longValue());
                    i2++;
                }
                return;
            }
            this.zza.zzk(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzaim.zzf(list.get(i4).longValue());
            }
            this.zza.zzn(i3);
            while (i2 < list.size()) {
                this.zza.zzi(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        zzaka zzakaVar = (zzaka) list;
        if (!z) {
            while (i2 < zzakaVar.size()) {
                this.zza.zzg(i, zzakaVar.zzb(i2));
                i2++;
            }
            return;
        }
        this.zza.zzk(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzakaVar.size(); i6++) {
            i5 += zzaim.zzf(zzakaVar.zzb(i6));
        }
        this.zza.zzn(i5);
        while (i2 < zzakaVar.size()) {
            this.zza.zzi(zzakaVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzm(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzajf)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzl(i, list.get(i2).intValue());
                    i2++;
                }
                return;
            }
            this.zza.zzk(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzaim.zzj(list.get(i4).intValue());
            }
            this.zza.zzn(i3);
            while (i2 < list.size()) {
                this.zza.zzn(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        zzajf zzajfVar = (zzajf) list;
        if (!z) {
            while (i2 < zzajfVar.size()) {
                this.zza.zzl(i, zzajfVar.zzb(i2));
                i2++;
            }
            return;
        }
        this.zza.zzk(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzajfVar.size(); i6++) {
            i5 += zzaim.zzj(zzajfVar.zzb(i6));
        }
        this.zza.zzn(i5);
        while (i2 < zzajfVar.size()) {
            this.zza.zzn(zzajfVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzn(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzaka)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzh(i, list.get(i2).longValue());
                    i2++;
                }
                return;
            }
            this.zza.zzk(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzaim.zzg(list.get(i4).longValue());
            }
            this.zza.zzn(i3);
            while (i2 < list.size()) {
                this.zza.zzj(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        zzaka zzakaVar = (zzaka) list;
        if (!z) {
            while (i2 < zzakaVar.size()) {
                this.zza.zzh(i, zzakaVar.zzb(i2));
                i2++;
            }
            return;
        }
        this.zza.zzk(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzakaVar.size(); i6++) {
            i5 += zzaim.zzg(zzakaVar.zzb(i6));
        }
        this.zza.zzn(i5);
        while (i2 < zzakaVar.size()) {
            this.zza.zzj(zzakaVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final int zza() {
        return zzanf.zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zza(int i, boolean z) throws IOException {
        this.zza.zzb(i, z);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zza(int i, List<Boolean> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzahm)) {
            if (z) {
                this.zza.zzk(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    i3 += zzaim.zza(list.get(i4).booleanValue());
                }
                this.zza.zzn(i3);
                while (i2 < list.size()) {
                    this.zza.zzb(list.get(i2).booleanValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzb(i, list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        zzahm zzahmVar = (zzahm) list;
        if (z) {
            this.zza.zzk(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < zzahmVar.size(); i6++) {
                i5 += zzaim.zza(zzahmVar.zzb(i6));
            }
            this.zza.zzn(i5);
            while (i2 < zzahmVar.size()) {
                this.zza.zzb(zzahmVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzahmVar.size()) {
            this.zza.zzb(i, zzahmVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzc(int i, int i2) throws IOException {
        this.zza.zzi(i, i2);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzc(int i, long j) throws IOException {
        this.zza.zzf(i, j);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzb(int i, int i2) throws IOException {
        this.zza.zzh(i, i2);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzd(int i, int i2) throws IOException {
        this.zza.zzh(i, i2);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zze(int i, int i2) throws IOException {
        this.zza.zzj(i, i2);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzf(int i, int i2) throws IOException {
        this.zza.zzl(i, i2);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzb(int i, long j) throws IOException {
        this.zza.zzh(i, j);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zze(int i, long j) throws IOException {
        this.zza.zzh(i, j);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzd(int i, long j) throws IOException {
        this.zza.zzg(i, j);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzb(int i, Object obj, zzalh zzalhVar) throws IOException {
        this.zza.zzc(i, (zzakp) obj, zzalhVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zza(int i, zzaho zzahoVar) throws IOException {
        this.zza.zzc(i, zzahoVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzb(int i, List<?> list, zzalh zzalhVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzalhVar);
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zza(int i, List<zzaho> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zzc(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    @Deprecated
    public final void zzb(int i) throws IOException {
        this.zza.zzk(i, 3);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zza(int i, double d) throws IOException {
        this.zza.zzb(i, d);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zzb(int i, List<String> list) throws IOException {
        int i2 = 0;
        if (list instanceof zzajv) {
            zzajv zzajvVar = (zzajv) list;
            while (i2 < list.size()) {
                Object zzb = zzajvVar.zzb(i2);
                if (zzb instanceof String) {
                    this.zza.zzb(i, (String) zzb);
                } else {
                    this.zza.zzc(i, (zzaho) zzb);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzb(i, list.get(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    @Deprecated
    public final void zza(int i) throws IOException {
        this.zza.zzk(i, 4);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zza(int i, int i2) throws IOException {
        this.zza.zzi(i, i2);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zza(int i, long j) throws IOException {
        this.zza.zzf(i, j);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zza(int i, float f) throws IOException {
        this.zza.zzb(i, f);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zza(int i, Object obj, zzalh zzalhVar) throws IOException {
        zzaim zzaimVar = this.zza;
        zzaimVar.zzk(i, 3);
        zzalhVar.zza((zzalh) obj, (zzanc) zzaimVar.zze);
        zzaimVar.zzk(i, 4);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zza(int i, List<?> list, zzalh zzalhVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzalhVar);
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final <K, V> void zza(int i, zzakg<K, V> zzakgVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zza.zzk(i, 2);
            this.zza.zzn(zzakh.zza(zzakgVar, entry.getKey(), entry.getValue()));
            zzakh.zza(this.zza, zzakgVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zza(int i, Object obj) throws IOException {
        if (obj instanceof zzaho) {
            this.zza.zzd(i, (zzaho) obj);
        } else {
            this.zza.zzb(i, (zzakp) obj);
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzanc
    public final void zza(int i, String str) throws IOException {
        this.zza.zzb(i, str);
    }
}
