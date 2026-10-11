package com.google.android.gms.internal.p124firebaseauthapi;

import java.io.IOException;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzail implements zzale {
    private final zzaic zza;
    private int zzb;
    private int zzc;
    private int zzd = 0;

    private zzail(zzaic zzaicVar) {
        zzaic zzaicVar2 = (zzaic) zzajh.zza(zzaicVar, "input");
        this.zza = zzaicVar2;
        zzaicVar2.zzd = this;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final double zza() throws IOException {
        zzb(1);
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final float zzb() throws IOException {
        zzb(5);
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final int zzc() throws IOException {
        int i = this.zzd;
        if (i != 0) {
            this.zzb = i;
            this.zzd = 0;
        } else {
            this.zzb = this.zza.zzi();
        }
        int i2 = this.zzb;
        if (i2 == 0 || i2 == this.zzc) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final int zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final int zze() throws IOException {
        zzb(0);
        return this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final int zzf() throws IOException {
        zzb(5);
        return this.zza.zze();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final int zzg() throws IOException {
        zzb(0);
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final int zzh() throws IOException {
        zzb(5);
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final int zzi() throws IOException {
        zzb(0);
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final int zzj() throws IOException {
        zzb(0);
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final long zzk() throws IOException {
        zzb(1);
        return this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final long zzl() throws IOException {
        zzb(0);
        return this.zza.zzl();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final long zzm() throws IOException {
        zzb(1);
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final long zzn() throws IOException {
        zzb(0);
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final long zzo() throws IOException {
        zzb(0);
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final zzaho zzp() throws IOException {
        zzb(2);
        return this.zza.zzq();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final String zzq() throws IOException {
        zzb(2);
        return this.zza.zzr();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final String zzr() throws IOException {
        zzb(2);
        return this.zza.zzs();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final boolean zzs() throws IOException {
        zzb(0);
        return this.zza.zzu();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final boolean zzt() throws IOException {
        int i;
        if (this.zza.zzt() || (i = this.zzb) == this.zzc) {
            return false;
        }
        return this.zza.zze(i);
    }

    private final <T> void zzd(T t, zzalh<T> zzalhVar, zzaiq zzaiqVar) throws IOException {
        int zzj = this.zza.zzj();
        zzaic zzaicVar = this.zza;
        if (zzaicVar.zza < zzaicVar.zzb) {
            int zzb = zzaicVar.zzb(zzj);
            this.zza.zza++;
            zzalhVar.zza(t, this, zzaiqVar);
            this.zza.zzc(0);
            r4.zza--;
            this.zza.zzd(zzb);
            return;
        }
        throw new zzajk("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    public static zzail zza(zzaic zzaicVar) {
        zzail zzailVar = zzaicVar.zzd;
        return zzailVar != null ? zzailVar : new zzail(zzaicVar);
    }

    private final <T> T zzb(zzalh<T> zzalhVar, zzaiq zzaiqVar) throws IOException {
        T zza = zzalhVar.zza();
        zzd(zza, zzalhVar, zzaiqVar);
        zzalhVar.zzc(zza);
        return zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zze(List<Integer> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzajf) {
            zzajf zzajfVar = (zzajf) list;
            int i = this.zzb & 7;
            if (i != 2) {
                if (i != 5) {
                    throw zzajk.zza();
                }
                do {
                    zzajfVar.zzc(this.zza.zze());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        zzi2 = this.zza.zzi();
                    }
                } while (zzi2 == this.zzb);
                this.zzd = zzi2;
                return;
            }
            int zzj = this.zza.zzj();
            zzc(zzj);
            int zzc = this.zza.zzc() + zzj;
            do {
                zzajfVar.zzc(this.zza.zze());
            } while (this.zza.zzc() < zzc);
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 2) {
            if (i2 != 5) {
                throw zzajk.zza();
            }
            do {
                list.add(Integer.valueOf(this.zza.zze()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi = this.zza.zzi();
                }
            } while (zzi == this.zzb);
            this.zzd = zzi;
            return;
        }
        int zzj2 = this.zza.zzj();
        zzc(zzj2);
        int zzc2 = this.zza.zzc() + zzj2;
        do {
            list.add(Integer.valueOf(this.zza.zze()));
        } while (this.zza.zzc() < zzc2);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzf(List<Long> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzaka) {
            zzaka zzakaVar = (zzaka) list;
            int i = this.zzb & 7;
            if (i != 1) {
                if (i == 2) {
                    int zzj = this.zza.zzj();
                    zzd(zzj);
                    int zzc = this.zza.zzc() + zzj;
                    do {
                        zzakaVar.zza(this.zza.zzk());
                    } while (this.zza.zzc() < zzc);
                    return;
                }
                throw zzajk.zza();
            }
            do {
                zzakaVar.zza(this.zza.zzk());
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi2 = this.zza.zzi();
                }
            } while (zzi2 == this.zzb);
            this.zzd = zzi2;
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 1) {
            if (i2 == 2) {
                int zzj2 = this.zza.zzj();
                zzd(zzj2);
                int zzc2 = this.zza.zzc() + zzj2;
                do {
                    list.add(Long.valueOf(this.zza.zzk()));
                } while (this.zza.zzc() < zzc2);
                return;
            }
            throw zzajk.zza();
        }
        do {
            list.add(Long.valueOf(this.zza.zzk()));
            if (this.zza.zzt()) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == this.zzb);
        this.zzd = zzi;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzg(List<Float> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzajd) {
            zzajd zzajdVar = (zzajd) list;
            int i = this.zzb & 7;
            if (i != 2) {
                if (i != 5) {
                    throw zzajk.zza();
                }
                do {
                    zzajdVar.zza(this.zza.zzb());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        zzi2 = this.zza.zzi();
                    }
                } while (zzi2 == this.zzb);
                this.zzd = zzi2;
                return;
            }
            int zzj = this.zza.zzj();
            zzc(zzj);
            int zzc = this.zza.zzc() + zzj;
            do {
                zzajdVar.zza(this.zza.zzb());
            } while (this.zza.zzc() < zzc);
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 2) {
            if (i2 != 5) {
                throw zzajk.zza();
            }
            do {
                list.add(Float.valueOf(this.zza.zzb()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi = this.zza.zzi();
                }
            } while (zzi == this.zzb);
            this.zzd = zzi;
            return;
        }
        int zzj2 = this.zza.zzj();
        zzc(zzj2);
        int zzc2 = this.zza.zzc() + zzj2;
        do {
            list.add(Float.valueOf(this.zza.zzb()));
        } while (this.zza.zzc() < zzc2);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzh(List<Integer> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzajf) {
            zzajf zzajfVar = (zzajf) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i == 2) {
                    int zzc = this.zza.zzc() + this.zza.zzj();
                    do {
                        zzajfVar.zzc(this.zza.zzf());
                    } while (this.zza.zzc() < zzc);
                    zza(zzc);
                    return;
                }
                throw zzajk.zza();
            }
            do {
                zzajfVar.zzc(this.zza.zzf());
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi2 = this.zza.zzi();
                }
            } while (zzi2 == this.zzb);
            this.zzd = zzi2;
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int zzc2 = this.zza.zzc() + this.zza.zzj();
                do {
                    list.add(Integer.valueOf(this.zza.zzf()));
                } while (this.zza.zzc() < zzc2);
                zza(zzc2);
                return;
            }
            throw zzajk.zza();
        }
        do {
            list.add(Integer.valueOf(this.zza.zzf()));
            if (this.zza.zzt()) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == this.zzb);
        this.zzd = zzi;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzi(List<Long> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzaka) {
            zzaka zzakaVar = (zzaka) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i == 2) {
                    int zzc = this.zza.zzc() + this.zza.zzj();
                    do {
                        zzakaVar.zza(this.zza.zzl());
                    } while (this.zza.zzc() < zzc);
                    zza(zzc);
                    return;
                }
                throw zzajk.zza();
            }
            do {
                zzakaVar.zza(this.zza.zzl());
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi2 = this.zza.zzi();
                }
            } while (zzi2 == this.zzb);
            this.zzd = zzi2;
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int zzc2 = this.zza.zzc() + this.zza.zzj();
                do {
                    list.add(Long.valueOf(this.zza.zzl()));
                } while (this.zza.zzc() < zzc2);
                zza(zzc2);
                return;
            }
            throw zzajk.zza();
        }
        do {
            list.add(Long.valueOf(this.zza.zzl()));
            if (this.zza.zzt()) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == this.zzb);
        this.zzd = zzi;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzj(List<Integer> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzajf) {
            zzajf zzajfVar = (zzajf) list;
            int i = this.zzb & 7;
            if (i != 2) {
                if (i != 5) {
                    throw zzajk.zza();
                }
                do {
                    zzajfVar.zzc(this.zza.zzg());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        zzi2 = this.zza.zzi();
                    }
                } while (zzi2 == this.zzb);
                this.zzd = zzi2;
                return;
            }
            int zzj = this.zza.zzj();
            zzc(zzj);
            int zzc = this.zza.zzc() + zzj;
            do {
                zzajfVar.zzc(this.zza.zzg());
            } while (this.zza.zzc() < zzc);
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 2) {
            if (i2 != 5) {
                throw zzajk.zza();
            }
            do {
                list.add(Integer.valueOf(this.zza.zzg()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi = this.zza.zzi();
                }
            } while (zzi == this.zzb);
            this.zzd = zzi;
            return;
        }
        int zzj2 = this.zza.zzj();
        zzc(zzj2);
        int zzc2 = this.zza.zzc() + zzj2;
        do {
            list.add(Integer.valueOf(this.zza.zzg()));
        } while (this.zza.zzc() < zzc2);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzk(List<Long> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzaka) {
            zzaka zzakaVar = (zzaka) list;
            int i = this.zzb & 7;
            if (i != 1) {
                if (i == 2) {
                    int zzj = this.zza.zzj();
                    zzd(zzj);
                    int zzc = this.zza.zzc() + zzj;
                    do {
                        zzakaVar.zza(this.zza.zzn());
                    } while (this.zza.zzc() < zzc);
                    return;
                }
                throw zzajk.zza();
            }
            do {
                zzakaVar.zza(this.zza.zzn());
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi2 = this.zza.zzi();
                }
            } while (zzi2 == this.zzb);
            this.zzd = zzi2;
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 1) {
            if (i2 == 2) {
                int zzj2 = this.zza.zzj();
                zzd(zzj2);
                int zzc2 = this.zza.zzc() + zzj2;
                do {
                    list.add(Long.valueOf(this.zza.zzn()));
                } while (this.zza.zzc() < zzc2);
                return;
            }
            throw zzajk.zza();
        }
        do {
            list.add(Long.valueOf(this.zza.zzn()));
            if (this.zza.zzt()) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == this.zzb);
        this.zzd = zzi;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzl(List<Integer> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzajf) {
            zzajf zzajfVar = (zzajf) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i == 2) {
                    int zzc = this.zza.zzc() + this.zza.zzj();
                    do {
                        zzajfVar.zzc(this.zza.zzh());
                    } while (this.zza.zzc() < zzc);
                    zza(zzc);
                    return;
                }
                throw zzajk.zza();
            }
            do {
                zzajfVar.zzc(this.zza.zzh());
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi2 = this.zza.zzi();
                }
            } while (zzi2 == this.zzb);
            this.zzd = zzi2;
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int zzc2 = this.zza.zzc() + this.zza.zzj();
                do {
                    list.add(Integer.valueOf(this.zza.zzh()));
                } while (this.zza.zzc() < zzc2);
                zza(zzc2);
                return;
            }
            throw zzajk.zza();
        }
        do {
            list.add(Integer.valueOf(this.zza.zzh()));
            if (this.zza.zzt()) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == this.zzb);
        this.zzd = zzi;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzm(List<Long> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzaka) {
            zzaka zzakaVar = (zzaka) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i == 2) {
                    int zzc = this.zza.zzc() + this.zza.zzj();
                    do {
                        zzakaVar.zza(this.zza.zzo());
                    } while (this.zza.zzc() < zzc);
                    zza(zzc);
                    return;
                }
                throw zzajk.zza();
            }
            do {
                zzakaVar.zza(this.zza.zzo());
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi2 = this.zza.zzi();
                }
            } while (zzi2 == this.zzb);
            this.zzd = zzi2;
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int zzc2 = this.zza.zzc() + this.zza.zzj();
                do {
                    list.add(Long.valueOf(this.zza.zzo()));
                } while (this.zza.zzc() < zzc2);
                zza(zzc2);
                return;
            }
            throw zzajk.zza();
        }
        do {
            list.add(Long.valueOf(this.zza.zzo()));
            if (this.zza.zzt()) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == this.zzb);
        this.zzd = zzi;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzn(List<String> list) throws IOException {
        zza(list, false);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzo(List<String> list) throws IOException {
        zza(list, true);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzp(List<Integer> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzajf) {
            zzajf zzajfVar = (zzajf) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i == 2) {
                    int zzc = this.zza.zzc() + this.zza.zzj();
                    do {
                        zzajfVar.zzc(this.zza.zzj());
                    } while (this.zza.zzc() < zzc);
                    zza(zzc);
                    return;
                }
                throw zzajk.zza();
            }
            do {
                zzajfVar.zzc(this.zza.zzj());
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi2 = this.zza.zzi();
                }
            } while (zzi2 == this.zzb);
            this.zzd = zzi2;
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int zzc2 = this.zza.zzc() + this.zza.zzj();
                do {
                    list.add(Integer.valueOf(this.zza.zzj()));
                } while (this.zza.zzc() < zzc2);
                zza(zzc2);
                return;
            }
            throw zzajk.zza();
        }
        do {
            list.add(Integer.valueOf(this.zza.zzj()));
            if (this.zza.zzt()) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == this.zzb);
        this.zzd = zzi;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzq(List<Long> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzaka) {
            zzaka zzakaVar = (zzaka) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i == 2) {
                    int zzc = this.zza.zzc() + this.zza.zzj();
                    do {
                        zzakaVar.zza(this.zza.zzp());
                    } while (this.zza.zzc() < zzc);
                    zza(zzc);
                    return;
                }
                throw zzajk.zza();
            }
            do {
                zzakaVar.zza(this.zza.zzp());
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi2 = this.zza.zzi();
                }
            } while (zzi2 == this.zzb);
            this.zzd = zzi2;
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int zzc2 = this.zza.zzc() + this.zza.zzj();
                do {
                    list.add(Long.valueOf(this.zza.zzp()));
                } while (this.zza.zzc() < zzc2);
                zza(zzc2);
                return;
            }
            throw zzajk.zza();
        }
        do {
            list.add(Long.valueOf(this.zza.zzp()));
            if (this.zza.zzt()) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == this.zzb);
        this.zzd = zzi;
    }

    private final Object zza(zzamt zzamtVar, Class<?> cls, zzaiq zzaiqVar) throws IOException {
        switch (zzaik.zza[zzamtVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(zzs());
            case 2:
                return zzp();
            case 3:
                return Double.valueOf(zza());
            case 4:
                return Integer.valueOf(zze());
            case 5:
                return Integer.valueOf(zzf());
            case 6:
                return Long.valueOf(zzk());
            case 7:
                return Float.valueOf(zzb());
            case 8:
                return Integer.valueOf(zzg());
            case 9:
                return Long.valueOf(zzl());
            case 10:
                zzb(2);
                return zzb(zzald.zza().zza((Class) cls), zzaiqVar);
            case 11:
                return Integer.valueOf(zzh());
            case 12:
                return Long.valueOf(zzm());
            case 13:
                return Integer.valueOf(zzi());
            case 14:
                return Long.valueOf(zzn());
            case 15:
                return zzr();
            case 16:
                return Integer.valueOf(zzj());
            case 17:
                return Long.valueOf(zzo());
            default:
                throw new IllegalArgumentException("unsupported field type.");
        }
    }

    private final <T> void zzc(T t, zzalh<T> zzalhVar, zzaiq zzaiqVar) throws IOException {
        int i = this.zzc;
        this.zzc = ((this.zzb >>> 3) << 3) | 4;
        try {
            zzalhVar.zza(t, this, zzaiqVar);
            if (this.zzb == this.zzc) {
            } else {
                throw zzajk.zzg();
            }
        } finally {
            this.zzc = i;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final <T> void zzb(T t, zzalh<T> zzalhVar, zzaiq zzaiqVar) throws IOException {
        zzb(2);
        zzd(t, zzalhVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzb(List<zzaho> list) throws IOException {
        int zzi;
        if ((this.zzb & 7) != 2) {
            throw zzajk.zza();
        }
        do {
            list.add(zzp());
            if (this.zza.zzt()) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == this.zzb);
        this.zzd = zzi;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzd(List<Integer> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzajf) {
            zzajf zzajfVar = (zzajf) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i == 2) {
                    int zzc = this.zza.zzc() + this.zza.zzj();
                    do {
                        zzajfVar.zzc(this.zza.zzd());
                    } while (this.zza.zzc() < zzc);
                    zza(zzc);
                    return;
                }
                throw zzajk.zza();
            }
            do {
                zzajfVar.zzc(this.zza.zzd());
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi2 = this.zza.zzi();
                }
            } while (zzi2 == this.zzb);
            this.zzd = zzi2;
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int zzc2 = this.zza.zzc() + this.zza.zzj();
                do {
                    list.add(Integer.valueOf(this.zza.zzd()));
                } while (this.zza.zzc() < zzc2);
                zza(zzc2);
                return;
            }
            throw zzajk.zza();
        }
        do {
            list.add(Integer.valueOf(this.zza.zzd()));
            if (this.zza.zzt()) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == this.zzb);
        this.zzd = zzi;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final <T> void zzb(List<T> list, zzalh<T> zzalhVar, zzaiq zzaiqVar) throws IOException {
        int zzi;
        int i = this.zzb;
        if ((i & 7) != 2) {
            throw zzajk.zza();
        }
        do {
            list.add(zzb(zzalhVar, zzaiqVar));
            if (this.zza.zzt() || this.zzd != 0) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == i);
        this.zzd = zzi;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zzc(List<Double> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzaio) {
            zzaio zzaioVar = (zzaio) list;
            int i = this.zzb & 7;
            if (i != 1) {
                if (i == 2) {
                    int zzj = this.zza.zzj();
                    zzd(zzj);
                    int zzc = this.zza.zzc() + zzj;
                    do {
                        zzaioVar.zza(this.zza.zza());
                    } while (this.zza.zzc() < zzc);
                    return;
                }
                throw zzajk.zza();
            }
            do {
                zzaioVar.zza(this.zza.zza());
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi2 = this.zza.zzi();
                }
            } while (zzi2 == this.zzb);
            this.zzd = zzi2;
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 1) {
            if (i2 == 2) {
                int zzj2 = this.zza.zzj();
                zzd(zzj2);
                int zzc2 = this.zza.zzc() + zzj2;
                do {
                    list.add(Double.valueOf(this.zza.zza()));
                } while (this.zza.zzc() < zzc2);
                return;
            }
            throw zzajk.zza();
        }
        do {
            list.add(Double.valueOf(this.zza.zza()));
            if (this.zza.zzt()) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == this.zzb);
        this.zzd = zzi;
    }

    private final void zzb(int i) throws IOException {
        if ((this.zzb & 7) != i) {
            throw zzajk.zza();
        }
    }

    private final <T> T zza(zzalh<T> zzalhVar, zzaiq zzaiqVar) throws IOException {
        T zza = zzalhVar.zza();
        zzc(zza, zzalhVar, zzaiqVar);
        zzalhVar.zzc(zza);
        return zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final <T> void zza(T t, zzalh<T> zzalhVar, zzaiq zzaiqVar) throws IOException {
        zzb(3);
        zzc(t, zzalhVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    public final void zza(List<Boolean> list) throws IOException {
        int zzi;
        int zzi2;
        if (list instanceof zzahm) {
            zzahm zzahmVar = (zzahm) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i == 2) {
                    int zzc = this.zza.zzc() + this.zza.zzj();
                    do {
                        zzahmVar.zza(this.zza.zzu());
                    } while (this.zza.zzc() < zzc);
                    zza(zzc);
                    return;
                }
                throw zzajk.zza();
            }
            do {
                zzahmVar.zza(this.zza.zzu());
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi2 = this.zza.zzi();
                }
            } while (zzi2 == this.zzb);
            this.zzd = zzi2;
            return;
        }
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int zzc2 = this.zza.zzc() + this.zza.zzj();
                do {
                    list.add(Boolean.valueOf(this.zza.zzu()));
                } while (this.zza.zzc() < zzc2);
                zza(zzc2);
                return;
            }
            throw zzajk.zza();
        }
        do {
            list.add(Boolean.valueOf(this.zza.zzu()));
            if (this.zza.zzt()) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == this.zzb);
        this.zzd = zzi;
    }

    private static void zzd(int i) throws IOException {
        if ((i & 7) != 0) {
            throw zzajk.zzg();
        }
    }

    private static void zzc(int i) throws IOException {
        if ((i & 3) != 0) {
            throw zzajk.zzg();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    @Deprecated
    public final <T> void zza(List<T> list, zzalh<T> zzalhVar, zzaiq zzaiqVar) throws IOException {
        int zzi;
        int i = this.zzb;
        if ((i & 7) != 3) {
            throw zzajk.zza();
        }
        do {
            list.add(zza(zzalhVar, zzaiqVar));
            if (this.zza.zzt() || this.zzd != 0) {
                return;
            } else {
                zzi = this.zza.zzi();
            }
        } while (zzi == i);
        this.zzd = zzi;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x005b, code lost:
    
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0063, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzale
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <K, V> void zza(java.util.Map<K, V> r8, com.google.android.gms.internal.p124firebaseauthapi.zzakg<K, V> r9, com.google.android.gms.internal.p124firebaseauthapi.zzaiq r10) throws java.io.IOException {
        /*
            r7 = this;
            r0 = 2
            r7.zzb(r0)
            com.google.android.gms.internal.firebase-auth-api.zzaic r1 = r7.zza
            int r1 = r1.zzj()
            com.google.android.gms.internal.firebase-auth-api.zzaic r2 = r7.zza
            int r1 = r2.zzb(r1)
            K r2 = r9.zzb
            V r3 = r9.zzd
        L14:
            int r4 = r7.zzc()     // Catch: java.lang.Throwable -> L64
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L5b
            com.google.android.gms.internal.firebase-auth-api.zzaic r5 = r7.zza     // Catch: java.lang.Throwable -> L64
            boolean r5 = r5.zzt()     // Catch: java.lang.Throwable -> L64
            if (r5 != 0) goto L5b
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L46
            if (r4 == r0) goto L39
            boolean r4 = r7.zzt()     // Catch: com.google.android.gms.internal.p124firebaseauthapi.zzajn -> L4e java.lang.Throwable -> L64
            if (r4 == 0) goto L33
            goto L14
        L33:
            com.google.android.gms.internal.firebase-auth-api.zzajk r4 = new com.google.android.gms.internal.firebase-auth-api.zzajk     // Catch: com.google.android.gms.internal.p124firebaseauthapi.zzajn -> L4e java.lang.Throwable -> L64
            r4.<init>(r6)     // Catch: com.google.android.gms.internal.p124firebaseauthapi.zzajn -> L4e java.lang.Throwable -> L64
            throw r4     // Catch: com.google.android.gms.internal.p124firebaseauthapi.zzajn -> L4e java.lang.Throwable -> L64
        L39:
            com.google.android.gms.internal.firebase-auth-api.zzamt r4 = r9.zzc     // Catch: com.google.android.gms.internal.p124firebaseauthapi.zzajn -> L4e java.lang.Throwable -> L64
            V r5 = r9.zzd     // Catch: com.google.android.gms.internal.p124firebaseauthapi.zzajn -> L4e java.lang.Throwable -> L64
            java.lang.Class r5 = r5.getClass()     // Catch: com.google.android.gms.internal.p124firebaseauthapi.zzajn -> L4e java.lang.Throwable -> L64
            java.lang.Object r3 = r7.zza(r4, r5, r10)     // Catch: com.google.android.gms.internal.p124firebaseauthapi.zzajn -> L4e java.lang.Throwable -> L64
            goto L14
        L46:
            com.google.android.gms.internal.firebase-auth-api.zzamt r4 = r9.zza     // Catch: com.google.android.gms.internal.p124firebaseauthapi.zzajn -> L4e java.lang.Throwable -> L64
            r5 = 0
            java.lang.Object r2 = r7.zza(r4, r5, r5)     // Catch: com.google.android.gms.internal.p124firebaseauthapi.zzajn -> L4e java.lang.Throwable -> L64
            goto L14
        L4e:
            boolean r4 = r7.zzt()     // Catch: java.lang.Throwable -> L64
            if (r4 == 0) goto L55
            goto L14
        L55:
            com.google.android.gms.internal.firebase-auth-api.zzajk r8 = new com.google.android.gms.internal.firebase-auth-api.zzajk     // Catch: java.lang.Throwable -> L64
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L64
            throw r8     // Catch: java.lang.Throwable -> L64
        L5b:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L64
            com.google.android.gms.internal.firebase-auth-api.zzaic r7 = r7.zza
            r7.zzd(r1)
            return
        L64:
            r8 = move-exception
            com.google.android.gms.internal.firebase-auth-api.zzaic r7 = r7.zza
            r7.zzd(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzail.zza(java.util.Map, com.google.android.gms.internal.firebase-auth-api.zzakg, com.google.android.gms.internal.firebase-auth-api.zzaiq):void");
    }

    private final void zza(List<String> list, boolean z) throws IOException {
        int zzi;
        int zzi2;
        if ((this.zzb & 7) == 2) {
            if ((list instanceof zzajv) && !z) {
                zzajv zzajvVar = (zzajv) list;
                do {
                    zzajvVar.zza(zzp());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        zzi2 = this.zza.zzi();
                    }
                } while (zzi2 == this.zzb);
                this.zzd = zzi2;
                return;
            }
            do {
                list.add(z ? zzr() : zzq());
                if (this.zza.zzt()) {
                    return;
                } else {
                    zzi = this.zza.zzi();
                }
            } while (zzi == this.zzb);
            this.zzd = zzi;
            return;
        }
        throw zzajk.zza();
    }

    private final void zza(int i) throws IOException {
        if (this.zza.zzc() != i) {
            throw zzajk.zzi();
        }
    }
}
