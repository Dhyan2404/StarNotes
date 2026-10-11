package com.sunia.HTREnginev2;

import java.awt.Point;
import java.awt.color.ColorSpace;
import java.awt.image.BufferedImage;
import java.awt.image.ComponentColorModel;
import java.awt.image.DataBufferByte;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.io.IOException;
import java.util.Hashtable;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes10.dex */
public abstract class phn {

    /* renamed from: a */
    public final ohn f80808a;

    /* renamed from: b */
    public final int f80809b;

    /* renamed from: c */
    public final int f80810c;

    /* renamed from: com.sunia.HTREnginev2.phn$b */
    /* loaded from: classes10.dex */
    public static class C14244b implements ohn {
        public C14244b() {
        }

        @Override // com.sunia.HTREnginev2.ohn
        /* renamed from: a */
        public void mo55966a(int i, int i2) {
        }

        @Override // com.sunia.HTREnginev2.ohn
        /* renamed from: b */
        public void mo55967b() {
        }

        @Override // com.sunia.HTREnginev2.ohn
        /* renamed from: c */
        public void mo55968c(float f) {
        }
    }

    public phn(ohn ohnVar, int i, int i2) {
        this.f80808a = ohnVar == null ? new C14244b() : ohnVar;
        this.f80809b = i;
        this.f80810c = i2;
    }

    /* renamed from: g */
    public static BufferedImage m56272g(ImageReader imageReader, ImageInputStream imageInputStream) throws IOException {
        imageReader.setInput(imageInputStream);
        return imageReader.read(0);
    }

    /* renamed from: h */
    public static BufferedImage m56273h(byte[] bArr, int i, int i2, int i3, int i4) {
        WritableRaster createInterleavedRaster = Raster.createInterleavedRaster(new DataBufferByte(bArr, i, i2), i3, i4, i3 * 3, 3, new int[]{0, 1, 2}, (Point) null);
        ComponentColorModel componentColorModel = new ComponentColorModel(ColorSpace.getInstance(1000), false, false, 1, 0);
        return new BufferedImage(componentColorModel, createInterleavedRaster, componentColorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
    }

    /* renamed from: a */
    public abstract int mo54287a() throws IOException;

    /* renamed from: b */
    public abstract int mo54288b() throws IOException;

    /* renamed from: c */
    public final void m56274c() {
        this.f80808a.mo55967b();
    }

    /* renamed from: d */
    public final void m56275d(float f) {
        this.f80808a.mo55968c(f);
    }

    /* renamed from: e */
    public final void m56276e() {
        this.f80808a.mo55966a(this.f80809b, this.f80810c);
    }

    /* renamed from: f */
    public abstract BufferedImage mo54289f() throws IOException;
}
