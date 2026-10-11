package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
final class zbvq implements zbvx {
    private final zbvm zba;
    private final zbwl zbb;
    private final boolean zbc;
    private final zbtq zbd;

    private zbvq(zbwl zbwlVar, zbtq zbtqVar, zbvm zbvmVar) {
        this.zbb = zbwlVar;
        this.zbc = zbvmVar instanceof zbub;
        this.zbd = zbtqVar;
        this.zba = zbvmVar;
    }

    public static zbvq zbc(zbwl zbwlVar, zbtq zbtqVar, zbvm zbvmVar) {
        return new zbvq(zbwlVar, zbtqVar, zbvmVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final int zba(Object obj) {
        int zbb = ((zbuf) obj).zbc.zbb();
        return this.zbc ? zbb + ((zbub) obj).zbb.zbc() : zbb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final int zbb(Object obj) {
        int hashCode = ((zbuf) obj).zbc.hashCode();
        return this.zbc ? (hashCode * 53) + ((zbub) obj).zbb.zba.hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final Object zbe() {
        zbvm zbvmVar = this.zba;
        return zbvmVar instanceof zbuf ? ((zbuf) zbvmVar).zbt() : zbvmVar.zbJ().zbl();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final void zbf(Object obj) {
        this.zbb.zbb(obj);
        this.zbd.zba(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final void zbg(Object obj, Object obj2) {
        zbvz.zbp(this.zbb, obj, obj2);
        if (this.zbc) {
            zbvz.zbo(this.zbd, obj, obj2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b5 A[EDGE_INSN: B:24:0x00b5->B:25:0x00b5 BREAK  A[LOOP:1: B:10:0x0062->B:18:0x0062], SYNTHETIC] */
    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zbh(java.lang.Object r11, byte[] r12, int r13, int r14, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsq r15) throws java.io.IOException {
        /*
            r10 = this;
            r0 = r11
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf r0 = (com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf) r0
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwm r1 = r0.zbc
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwm r2 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwm.zbc()
            if (r1 != r2) goto L11
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwm r1 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwm.zbf()
            r0.zbc = r1
        L11:
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbub r11 = (com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbub) r11
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtu r11 = r11.zbg()
            r0 = 0
            r2 = r0
        L19:
            if (r13 >= r14) goto Lc0
            int r4 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsr.zbk(r12, r13, r15)
            int r13 = r15.zba
            r3 = 11
            r5 = 2
            if (r13 == r3) goto L60
            r3 = r13 & 7
            if (r3 != r5) goto L5b
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtp r2 = r15.zbd
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvm r3 = r10.zba
            int r5 = r13 >>> 3
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbud r8 = r2.zbc(r3, r5)
            if (r8 == 0) goto L50
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvm r13 = r8.zba
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvu r2 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvu.zba()
            java.lang.Class r13 = r13.getClass()
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx r13 = r2.zbb(r13)
            int r13 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsr.zbe(r13, r12, r4, r14, r15)
            java.lang.Object r2 = r15.zbc
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuc r3 = r8.zbb
            r11.zbj(r3, r2)
            goto L59
        L50:
            r2 = r13
            r3 = r12
            r5 = r14
            r6 = r1
            r7 = r15
            int r13 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsr.zbj(r2, r3, r4, r5, r6, r7)
        L59:
            r2 = r8
            goto L19
        L5b:
            int r13 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsr.zbq(r13, r12, r4, r14, r15)
            goto L19
        L60:
            r13 = 0
            r3 = r0
        L62:
            if (r4 >= r14) goto Lb5
            int r4 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsr.zbk(r12, r4, r15)
            int r6 = r15.zba
            int r7 = r6 >>> 3
            r8 = r6 & 7
            if (r7 == r5) goto L9b
            r9 = 3
            if (r7 == r9) goto L74
            goto Lac
        L74:
            if (r2 == 0) goto L90
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvm r6 = r2.zba
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvu r7 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvu.zba()
            java.lang.Class r6 = r6.getClass()
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx r6 = r7.zbb(r6)
            int r4 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsr.zbe(r6, r12, r4, r14, r15)
            java.lang.Object r6 = r15.zbc
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuc r7 = r2.zbb
            r11.zbj(r7, r6)
            goto L62
        L90:
            if (r8 != r5) goto Lac
            int r4 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsr.zba(r12, r4, r15)
            java.lang.Object r3 = r15.zbc
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtc r3 = (com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtc) r3
            goto L62
        L9b:
            if (r8 != 0) goto Lac
            int r4 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsr.zbk(r12, r4, r15)
            int r13 = r15.zba
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtp r2 = r15.zbd
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvm r6 = r10.zba
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbud r2 = r2.zbc(r6, r13)
            goto L62
        Lac:
            r7 = 12
            if (r6 == r7) goto Lb5
            int r4 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsr.zbq(r6, r12, r4, r14, r15)
            goto L62
        Lb5:
            if (r3 == 0) goto Lbd
            int r13 = r13 << 3
            r13 = r13 | r5
            r1.zbj(r13, r3)
        Lbd:
            r13 = r4
            goto L19
        Lc0:
            if (r13 != r14) goto Lc3
            return
        Lc3:
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuq r10 = new com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuq
            java.lang.String r11 = "Failed to parse the message."
            r10.<init>(r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvq.zbh(java.lang.Object, byte[], int, int, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsq):void");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final void zbi(Object obj, zbwy zbwyVar) throws IOException {
        Iterator zbg = ((zbub) obj).zbb.zbg();
        while (zbg.hasNext()) {
            Map.Entry entry = (Map.Entry) zbg.next();
            zbtt zbttVar = (zbtt) entry.getKey();
            if (zbttVar.zbe() != zbwx.MESSAGE) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            zbttVar.zbg();
            zbttVar.zbf();
            if (entry instanceof zbut) {
                zbttVar.zba();
                zbwyVar.zbx(32149011, ((zbut) entry).zba().zbb());
            } else {
                zbttVar.zba();
                zbwyVar.zbx(32149011, entry.getValue());
            }
        }
        ((zbuf) obj).zbc.zbk(zbwyVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final boolean zbj(Object obj, Object obj2) {
        if (!((zbuf) obj).zbc.equals(((zbuf) obj2).zbc)) {
            return false;
        }
        if (this.zbc) {
            return ((zbub) obj).zbb.equals(((zbub) obj2).zbb);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final boolean zbk(Object obj) {
        return ((zbub) obj).zbb.zbm();
    }
}
