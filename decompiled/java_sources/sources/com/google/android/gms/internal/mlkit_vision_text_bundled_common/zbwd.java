package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
final class zbwd implements Iterator {
    final /* synthetic */ zbwh zba;
    private int zbb = -1;
    private boolean zbc;
    private Iterator zbd;

    public /* synthetic */ zbwd(zbwh zbwhVar, zbwc zbwcVar) {
        this.zba = zbwhVar;
    }

    private final Iterator zba() {
        Map map;
        if (this.zbd == null) {
            map = this.zba.zbc;
            this.zbd = map.entrySet().iterator();
        }
        return this.zbd;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i;
        Map map;
        int i2 = this.zbb + 1;
        zbwh zbwhVar = this.zba;
        i = zbwhVar.zbb;
        if (i2 < i) {
            return true;
        }
        map = zbwhVar.zbc;
        return !map.isEmpty() && zba().hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        int i;
        Object[] objArr;
        this.zbc = true;
        int i2 = this.zbb + 1;
        this.zbb = i2;
        zbwh zbwhVar = this.zba;
        i = zbwhVar.zbb;
        if (i2 >= i) {
            return (Map.Entry) zba().next();
        }
        objArr = zbwhVar.zba;
        return (zbwb) objArr[i2];
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        if (!this.zbc) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zbc = false;
        this.zba.zbo();
        int i2 = this.zbb;
        zbwh zbwhVar = this.zba;
        i = zbwhVar.zbb;
        if (i2 >= i) {
            zba().remove();
        } else {
            this.zbb = i2 - 1;
            zbwhVar.zbm(i2);
        }
    }
}
