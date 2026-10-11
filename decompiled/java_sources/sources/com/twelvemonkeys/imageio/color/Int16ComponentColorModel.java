package com.twelvemonkeys.imageio.color;

import com.fasterxml.jackson.core.JsonParser;
import java.awt.color.ColorSpace;
import java.awt.image.ComponentColorModel;

/* loaded from: classes10.dex */
public final class Int16ComponentColorModel extends ComponentColorModel {

    /* renamed from: e */
    public final ComponentColorModel f94025e;

    public Int16ComponentColorModel(ColorSpace colorSpace, boolean z, boolean z2) {
        super(colorSpace, z, z2, z ? 3 : 1, 2);
        this.f94025e = new ComponentColorModel(colorSpace, z, z2, z ? 3 : 1, 1);
    }

    /* renamed from: a */
    public final void m60445a(short[] sArr, int i) {
        short s = sArr[i];
        if (s < 0) {
            sArr[i] = (short) (s - JsonParser.f21215g);
        } else {
            sArr[i] = (short) (s + JsonParser.f21215g);
        }
    }

    @Override // java.awt.image.ComponentColorModel, java.awt.image.ColorModel
    public int getBlue(Object obj) {
        m60445a((short[]) obj, 2);
        return this.f94025e.getBlue(obj);
    }

    @Override // java.awt.image.ComponentColorModel, java.awt.image.ColorModel
    public int getGreen(Object obj) {
        m60445a((short[]) obj, 1);
        return this.f94025e.getGreen(obj);
    }

    @Override // java.awt.image.ComponentColorModel, java.awt.image.ColorModel
    public int getRed(Object obj) {
        m60445a((short[]) obj, 0);
        return this.f94025e.getRed(obj);
    }
}
