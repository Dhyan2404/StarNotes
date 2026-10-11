package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class zbkn extends zbjz {
    final CharSequence zbb;
    int zbc = 0;
    int zbd = Integer.MAX_VALUE;

    public zbkn(zbko zbkoVar, CharSequence charSequence) {
        this.zbb = charSequence;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbjz
    @CheckForNull
    public final /* bridge */ /* synthetic */ Object zba() {
        int zbc;
        int i = this.zbc;
        while (true) {
            int i2 = this.zbc;
            if (i2 == -1) {
                zbb();
                return null;
            }
            int zbd = zbd(i2);
            if (zbd == -1) {
                zbd = this.zbb.length();
                this.zbc = -1;
                zbc = -1;
            } else {
                zbc = zbc(zbd);
                this.zbc = zbc;
            }
            if (zbc != i) {
                if (i < zbd) {
                    this.zbb.charAt(i);
                }
                if (i < zbd) {
                    this.zbb.charAt(zbd - 1);
                }
                int i3 = this.zbd;
                if (i3 == 1) {
                    zbd = this.zbb.length();
                    this.zbc = -1;
                    if (zbd > i) {
                        this.zbb.charAt(zbd - 1);
                    }
                } else {
                    this.zbd = i3 - 1;
                }
                return this.zbb.subSequence(i, zbd).toString();
            }
            int i4 = zbc + 1;
            this.zbc = i4;
            if (i4 > this.zbb.length()) {
                this.zbc = -1;
            }
        }
    }

    public abstract int zbc(int i);

    public abstract int zbd(int i);
}
