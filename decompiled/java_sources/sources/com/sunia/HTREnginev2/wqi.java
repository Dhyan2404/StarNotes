package com.sunia.HTREnginev2;

import com.twelvemonkeys.image.InverseColorMapIndexColorModel;
import com.twelvemonkeys.imageio.stream.ByteArrayImageInputStream;
import com.twelvemonkeys.lang.Validate;
import java.awt.Point;
import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.Raster;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.util.Hashtable;
import javax.imageio.IIOException;
import javax.imageio.ImageReader;
import javax.imageio.metadata.IIOMetadata;

/* loaded from: classes10.dex */
public final class wqi extends phn {

    /* renamed from: d */
    public final ImageReader f88898d;

    /* renamed from: e */
    public final vqi f88899e;

    /* renamed from: f */
    public transient SoftReference<BufferedImage> f88900f;

    public wqi(ohn ohnVar, ImageReader imageReader, int i, int i2, vqi vqiVar) {
        super(ohnVar, i, i2);
        this.f88898d = (ImageReader) Validate.notNull(imageReader);
        this.f88899e = vqiVar;
    }

    @Override // com.sunia.HTREnginev2.phn
    /* renamed from: a */
    public int mo54287a() throws IOException {
        vqi vqiVar = this.f88899e;
        int i = vqiVar.f87826d;
        if (i == 16) {
            return m58130j(false).getHeight();
        }
        if (i == 17 || i == 19) {
            return vqiVar.f87827e[1] & 255;
        }
        throw new IIOException(String.format("Unsupported JFXX extension code: %d", Integer.valueOf(this.f88899e.f87826d)));
    }

    @Override // com.sunia.HTREnginev2.phn
    /* renamed from: b */
    public int mo54288b() throws IOException {
        vqi vqiVar = this.f88899e;
        int i = vqiVar.f87826d;
        if (i == 16) {
            return m58130j(false).getWidth();
        }
        if (i == 17 || i == 19) {
            return vqiVar.f87827e[0] & 255;
        }
        throw new IIOException(String.format("Unsupported JFXX extension code: %d", Integer.valueOf(this.f88899e.f87826d)));
    }

    @Override // com.sunia.HTREnginev2.phn
    /* renamed from: f */
    public BufferedImage mo54289f() throws IOException {
        BufferedImage m58130j;
        m56276e();
        int i = this.f88899e.f87826d;
        if (i == 16) {
            m58130j = m58130j(true);
        } else if (i == 17) {
            m58130j = m58129i();
        } else {
            if (i != 19) {
                throw new IIOException(String.format("Unsupported JFXX extension code: %d", Integer.valueOf(this.f88899e.f87826d)));
            }
            m58130j = m58132l();
        }
        m56275d(100.0f);
        m56274c();
        return m58130j;
    }

    /* renamed from: i */
    public final BufferedImage m58129i() {
        byte[] bArr = this.f88899e.f87827e;
        int i = bArr[0] & 255;
        int i2 = bArr[1] & 255;
        int[] iArr = new int[256];
        for (int i3 = 0; i3 < 256; i3++) {
            byte[] bArr2 = this.f88899e.f87827e;
            int i4 = i3 * 3;
            iArr[i3] = (bArr2[i4 + 4] & 255) | ((bArr2[i4 + 2] & 255) << 16) | ((bArr2[i4 + 3] & 255) << 8);
        }
        InverseColorMapIndexColorModel inverseColorMapIndexColorModel = new InverseColorMapIndexColorModel(8, 256, iArr, 0, false, -1, 0);
        byte[] bArr3 = this.f88899e.f87827e;
        return new BufferedImage(inverseColorMapIndexColorModel, Raster.createPackedRaster(new DataBufferByte(bArr3, bArr3.length - 770, 770), i, i2, 8, (Point) null), inverseColorMapIndexColorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
    }

    /* renamed from: j */
    public final BufferedImage m58130j(boolean z) throws IOException {
        SoftReference<BufferedImage> softReference = this.f88900f;
        BufferedImage bufferedImage = softReference != null ? softReference.get() : null;
        if (bufferedImage == null) {
            ByteArrayImageInputStream byteArrayImageInputStream = new ByteArrayImageInputStream(this.f88899e.f87827e);
            try {
                BufferedImage m56272g = phn.m56272g(this.f88898d, byteArrayImageInputStream);
                byteArrayImageInputStream.close();
                bufferedImage = m56272g;
            } catch (Throwable th) {
                byteArrayImageInputStream.close();
                throw th;
            }
        }
        this.f88900f = z ? null : new SoftReference<>(bufferedImage);
        return bufferedImage;
    }

    /* renamed from: k */
    public IIOMetadata m58131k() throws IOException {
        ByteArrayImageInputStream byteArrayImageInputStream = new ByteArrayImageInputStream(this.f88899e.f87827e);
        try {
            this.f88898d.setInput(byteArrayImageInputStream);
            return this.f88898d.getImageMetadata(0);
        } finally {
            byteArrayImageInputStream.close();
        }
    }

    /* renamed from: l */
    public final BufferedImage m58132l() {
        byte[] bArr = this.f88899e.f87827e;
        return phn.m56273h(bArr, bArr.length - 2, 2, bArr[0] & 255, bArr[1] & 255);
    }
}
