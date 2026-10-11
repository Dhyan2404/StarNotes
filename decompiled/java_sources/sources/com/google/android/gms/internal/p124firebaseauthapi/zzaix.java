package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaiz;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaix<T extends zzaiz<T>> {
    private static final zzaix zzb = new zzaix(true);
    final zzali<T, Object> zza;
    private boolean zzc;
    private boolean zzd;

    private zzaix() {
        this.zza = zzali.zza(16);
    }

    public static int zza(zzamt zzamtVar, int i, Object obj) {
        int zzi = zzaim.zzi(i);
        if (zzamtVar == zzamt.zzj) {
            zzajh.zza((zzakp) obj);
            zzi <<= 1;
        }
        return zzi + zza(zzamtVar, obj);
    }

    public static <T extends zzaiz<T>> zzaix<T> zzb() {
        return zzb;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzaix zzaixVar = new zzaix();
        for (int i = 0; i < this.zza.zza(); i++) {
            Map.Entry<T, Object> zzb2 = this.zza.zzb(i);
            zzaixVar.zzb(zzb2.getKey(), zzb2.getValue());
        }
        for (Map.Entry<T, Object> entry : this.zza.zzb()) {
            zzaixVar.zzb(entry.getKey(), entry.getValue());
        }
        zzaixVar.zzd = this.zzd;
        return zzaixVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzaix) {
            return this.zza.equals(((zzaix) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final Iterator<Map.Entry<T, Object>> zzc() {
        if (this.zzd) {
            return new zzajq(this.zza.zzc().iterator());
        }
        return this.zza.zzc().iterator();
    }

    public final Iterator<Map.Entry<T, Object>> zzd() {
        return this.zzd ? new zzajq(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    public final void zze() {
        if (this.zzc) {
            return;
        }
        for (int i = 0; i < this.zza.zza(); i++) {
            Map.Entry<T, Object> zzb2 = this.zza.zzb(i);
            if (zzb2.getValue() instanceof zzaje) {
                ((zzaje) zzb2.getValue()).zzs();
            }
        }
        this.zza.zzd();
        this.zzc = true;
    }

    public final boolean zzf() {
        return this.zzc;
    }

    public final boolean zzg() {
        for (int i = 0; i < this.zza.zza(); i++) {
            if (!zzc(this.zza.zzb(i))) {
                return false;
            }
        }
        Iterator<Map.Entry<T, Object>> it2 = this.zza.zzb().iterator();
        while (it2.hasNext()) {
            if (!zzc(it2.next())) {
                return false;
            }
        }
        return true;
    }

    private final void zzb(Map.Entry<T, Object> entry) {
        zzakp zzf;
        T key = entry.getKey();
        Object value = entry.getValue();
        boolean z = value instanceof zzajp;
        if (key.zze()) {
            if (!z) {
                Object zza = zza((zzaix<T>) key);
                if (zza == null) {
                    zza = new ArrayList();
                }
                Iterator it2 = ((List) value).iterator();
                while (it2.hasNext()) {
                    ((List) zza).add(zza(it2.next()));
                }
                this.zza.zza((zzali<T, Object>) key, (T) zza);
                return;
            }
            throw new IllegalStateException("Lazy fields can not be repeated");
        }
        if (key.zzc() != zzand.MESSAGE) {
            if (!z) {
                this.zza.zza((zzali<T, Object>) key, (T) zza(value));
                return;
            }
            throw new IllegalStateException("Lazy fields must be message-valued");
        }
        Object zza2 = zza((zzaix<T>) key);
        if (zza2 == null) {
            this.zza.zza((zzali<T, Object>) key, (T) zza(value));
            if (z) {
                this.zzd = true;
                return;
            }
            return;
        }
        if (z) {
            value = zzajp.zza();
        }
        if (zza2 instanceof zzaku) {
            zzf = key.zza((zzaku) zza2, (zzaku) value);
        } else {
            zzf = key.zza(((zzakp) zza2).zzr(), (zzakp) value).zzf();
        }
        this.zza.zza((zzali<T, Object>) key, (T) zzf);
    }

    private zzaix(zzali<T, Object> zzaliVar) {
        this.zza = zzaliVar;
        zze();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.p124firebaseauthapi.zzajp) == false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0029, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.p124firebaseauthapi.zzajg) == false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        if ((r4 instanceof byte[]) == false) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zzc(T r3, java.lang.Object r4) {
        /*
            com.google.android.gms.internal.firebase-auth-api.zzamt r0 = r3.zzb()
            com.google.android.gms.internal.p124firebaseauthapi.zzajh.zza(r4)
            int[] r1 = com.google.android.gms.internal.p124firebaseauthapi.zzaiw.zza
            com.google.android.gms.internal.firebase-auth-api.zzand r0 = r0.zzb()
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 1
            r2 = 0
            switch(r0) {
                case 1: goto L44;
                case 2: goto L41;
                case 3: goto L3e;
                case 4: goto L3b;
                case 5: goto L38;
                case 6: goto L35;
                case 7: goto L2c;
                case 8: goto L23;
                case 9: goto L1a;
                default: goto L18;
            }
        L18:
            r1 = r2
            goto L46
        L1a:
            boolean r0 = r4 instanceof com.google.android.gms.internal.p124firebaseauthapi.zzakp
            if (r0 != 0) goto L46
            boolean r0 = r4 instanceof com.google.android.gms.internal.p124firebaseauthapi.zzajp
            if (r0 == 0) goto L18
            goto L46
        L23:
            boolean r0 = r4 instanceof java.lang.Integer
            if (r0 != 0) goto L46
            boolean r0 = r4 instanceof com.google.android.gms.internal.p124firebaseauthapi.zzajg
            if (r0 == 0) goto L18
            goto L46
        L2c:
            boolean r0 = r4 instanceof com.google.android.gms.internal.p124firebaseauthapi.zzaho
            if (r0 != 0) goto L46
            boolean r0 = r4 instanceof byte[]
            if (r0 == 0) goto L18
            goto L46
        L35:
            boolean r1 = r4 instanceof java.lang.String
            goto L46
        L38:
            boolean r1 = r4 instanceof java.lang.Boolean
            goto L46
        L3b:
            boolean r1 = r4 instanceof java.lang.Double
            goto L46
        L3e:
            boolean r1 = r4 instanceof java.lang.Float
            goto L46
        L41:
            boolean r1 = r4 instanceof java.lang.Long
            goto L46
        L44:
            boolean r1 = r4 instanceof java.lang.Integer
        L46:
            if (r1 == 0) goto L49
            return
        L49:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            int r1 = r3.zza()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            com.google.android.gms.internal.firebase-auth-api.zzamt r3 = r3.zzb()
            com.google.android.gms.internal.firebase-auth-api.zzand r3 = r3.zzb()
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = r4.getName()
            java.lang.Object[] r3 = new java.lang.Object[]{r1, r3, r4}
            java.lang.String r4 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r3 = java.lang.String.format(r4, r3)
            r0.<init>(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzaix.zzc(com.google.android.gms.internal.firebase-auth-api.zzaiz, java.lang.Object):void");
    }

    private static int zza(zzamt zzamtVar, Object obj) {
        switch (zzaiw.zzb[zzamtVar.ordinal()]) {
            case 1:
                return zzaim.zza(((Double) obj).doubleValue());
            case 2:
                return zzaim.zza(((Float) obj).floatValue());
            case 3:
                return zzaim.zzd(((Long) obj).longValue());
            case 4:
                return zzaim.zzg(((Long) obj).longValue());
            case 5:
                return zzaim.zze(((Integer) obj).intValue());
            case 6:
                return zzaim.zzc(((Long) obj).longValue());
            case 7:
                return zzaim.zzd(((Integer) obj).intValue());
            case 8:
                return zzaim.zza(((Boolean) obj).booleanValue());
            case 9:
                return zzaim.zza((zzakp) obj);
            case 10:
                if (obj instanceof zzajp) {
                    return zzaim.zza((zzajp) obj);
                }
                return zzaim.zzb((zzakp) obj);
            case 11:
                if (obj instanceof zzaho) {
                    return zzaim.zza((zzaho) obj);
                }
                return zzaim.zza((String) obj);
            case 12:
                if (obj instanceof zzaho) {
                    return zzaim.zza((zzaho) obj);
                }
                return zzaim.zza((byte[]) obj);
            case 13:
                return zzaim.zzj(((Integer) obj).intValue());
            case 14:
                return zzaim.zzg(((Integer) obj).intValue());
            case 15:
                return zzaim.zze(((Long) obj).longValue());
            case 16:
                return zzaim.zzh(((Integer) obj).intValue());
            case 17:
                return zzaim.zzf(((Long) obj).longValue());
            case 18:
                if (obj instanceof zzajg) {
                    return zzaim.zzc(((zzajg) obj).zza());
                }
                return zzaim.zzc(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private zzaix(boolean z) {
        this(zzali.zza(0));
        zze();
    }

    private static <T extends zzaiz<T>> boolean zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() != zzand.MESSAGE) {
            return true;
        }
        if (key.zze()) {
            Iterator it2 = ((List) entry.getValue()).iterator();
            while (it2.hasNext()) {
                if (!zzb(it2.next())) {
                    return false;
                }
            }
            return true;
        }
        return zzb(entry.getValue());
    }

    private final void zzb(T t, Object obj) {
        if (t.zze()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    zzc(t, obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            zzc(t, obj);
        }
        if (obj instanceof zzajp) {
            this.zzd = true;
        }
        this.zza.zza((zzali<T, Object>) t, (T) obj);
    }

    public static int zza(zzaiz<?> zzaizVar, Object obj) {
        zzamt zzb2 = zzaizVar.zzb();
        int zza = zzaizVar.zza();
        if (zzaizVar.zze()) {
            List list = (List) obj;
            int i = 0;
            if (zzaizVar.zzd()) {
                if (list.isEmpty()) {
                    return 0;
                }
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    i += zza(zzb2, it2.next());
                }
                return zzaim.zzi(zza) + i + zzaim.zzj(i);
            }
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                i += zza(zzb2, zza, it3.next());
            }
            return i;
        }
        return zza(zzb2, zza, obj);
    }

    private static boolean zzb(Object obj) {
        if (obj instanceof zzakr) {
            return ((zzakr) obj).zzk();
        }
        if (obj instanceof zzajp) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    public final int zza() {
        int i = 0;
        for (int i2 = 0; i2 < this.zza.zza(); i2++) {
            i += zza((Map.Entry) this.zza.zzb(i2));
        }
        Iterator<Map.Entry<T, Object>> it2 = this.zza.zzb().iterator();
        while (it2.hasNext()) {
            i += zza((Map.Entry) it2.next());
        }
        return i;
    }

    private static int zza(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzc() == zzand.MESSAGE && !key.zze() && !key.zzd()) {
            if (value instanceof zzajp) {
                return zzaim.zza(entry.getKey().zza(), (zzajp) value);
            }
            return zzaim.zza(entry.getKey().zza(), (zzakp) value);
        }
        return zza((zzaiz<?>) key, value);
    }

    private static Object zza(Object obj) {
        if (obj instanceof zzaku) {
            return ((zzaku) obj).clone();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private final Object zza(T t) {
        Object obj = this.zza.get(t);
        if (!(obj instanceof zzajp)) {
            return obj;
        }
        return zzajp.zza();
    }

    public final void zza(zzaix<T> zzaixVar) {
        for (int i = 0; i < zzaixVar.zza.zza(); i++) {
            zzb((Map.Entry) zzaixVar.zza.zzb(i));
        }
        Iterator<Map.Entry<T, Object>> it2 = zzaixVar.zza.zzb().iterator();
        while (it2.hasNext()) {
            zzb((Map.Entry) it2.next());
        }
    }

    public static void zza(zzaim zzaimVar, zzamt zzamtVar, int i, Object obj) throws IOException {
        if (zzamtVar == zzamt.zzj) {
            zzakp zzakpVar = (zzakp) obj;
            zzajh.zza(zzakpVar);
            zzaimVar.zzk(i, 3);
            zzakpVar.zza(zzaimVar);
            zzaimVar.zzk(i, 4);
            return;
        }
        zzaimVar.zzk(i, zzamtVar.zza());
        switch (zzaiw.zzb[zzamtVar.ordinal()]) {
            case 1:
                zzaimVar.zzb(((Double) obj).doubleValue());
                return;
            case 2:
                zzaimVar.zzb(((Float) obj).floatValue());
                return;
            case 3:
                zzaimVar.zzj(((Long) obj).longValue());
                return;
            case 4:
                zzaimVar.zzj(((Long) obj).longValue());
                return;
            case 5:
                zzaimVar.zzl(((Integer) obj).intValue());
                return;
            case 6:
                zzaimVar.zzh(((Long) obj).longValue());
                return;
            case 7:
                zzaimVar.zzk(((Integer) obj).intValue());
                return;
            case 8:
                zzaimVar.zzb(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzakp) obj).zza(zzaimVar);
                return;
            case 10:
                zzaimVar.zzc((zzakp) obj);
                return;
            case 11:
                if (obj instanceof zzaho) {
                    zzaimVar.zzb((zzaho) obj);
                    return;
                } else {
                    zzaimVar.zzb((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzaho) {
                    zzaimVar.zzb((zzaho) obj);
                    return;
                } else {
                    byte[] bArr = (byte[]) obj;
                    zzaimVar.zzb(bArr, 0, bArr.length);
                    return;
                }
            case 13:
                zzaimVar.zzn(((Integer) obj).intValue());
                return;
            case 14:
                zzaimVar.zzk(((Integer) obj).intValue());
                return;
            case 15:
                zzaimVar.zzh(((Long) obj).longValue());
                return;
            case 16:
                zzaimVar.zzm(((Integer) obj).intValue());
                return;
            case 17:
                zzaimVar.zzi(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzajg) {
                    zzaimVar.zzl(((zzajg) obj).zza());
                    return;
                } else {
                    zzaimVar.zzl(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }
}
