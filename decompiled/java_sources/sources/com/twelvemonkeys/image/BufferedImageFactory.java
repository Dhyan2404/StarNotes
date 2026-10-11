package com.twelvemonkeys.image;

import com.twelvemonkeys.lang.Validate;
import java.awt.Image;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.FilteredImageSource;
import java.awt.image.ImageConsumer;
import java.awt.image.ImageProducer;
import java.awt.image.WritableRaster;
import java.lang.reflect.Array;
import java.util.EventListener;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes10.dex */
public final class BufferedImageFactory {

    /* renamed from: a */
    public List<ProgressListener> f93906a;

    /* renamed from: b */
    public int f93907b;

    /* renamed from: c */
    public ImageProducer f93908c;

    /* renamed from: d */
    public ImageConversionException f93909d;

    /* renamed from: e */
    public volatile boolean f93910e;

    /* renamed from: f */
    public boolean f93911f;

    /* renamed from: g */
    public int f93912g;

    /* renamed from: h */
    public int f93913h;

    /* renamed from: i */
    public int f93914i;

    /* renamed from: j */
    public int f93915j;

    /* renamed from: k */
    public int f93916k;

    /* renamed from: l */
    public int f93917l;

    /* renamed from: m */
    public int f93918m;

    /* renamed from: n */
    public int f93919n;

    /* renamed from: o */
    public ColorModel f93920o;

    /* renamed from: p */
    public Hashtable f93921p;

    /* renamed from: q */
    public Object f93922q;

    /* renamed from: r */
    public BufferedImage f93923r;

    /* renamed from: s */
    public ColorModel f93924s;

    /* renamed from: t */
    public final C16917b f93925t;

    /* loaded from: classes10.dex */
    public interface ProgressListener extends EventListener {
        void progress(BufferedImageFactory bufferedImageFactory, float f);
    }

    /* renamed from: com.twelvemonkeys.image.BufferedImageFactory$b */
    /* loaded from: classes10.dex */
    public class C16917b implements ImageConsumer {
        public C16917b() {
        }

        /* renamed from: a */
        public final void m60337a(ColorModel colorModel) {
            if (BufferedImageFactory.this.f93920o != colorModel) {
                if (BufferedImageFactory.this.f93922q != null) {
                    throw new IllegalStateException("Change of ColorModel after pixel delivery not supported");
                }
                BufferedImageFactory.this.f93920o = colorModel;
            }
            if (BufferedImageFactory.this.f93911f) {
                BufferedImageFactory.this.f93925t.imageComplete(4);
            }
        }

        /* renamed from: b */
        public void m60338b(int i, int i2, int i3, int i4, ColorModel colorModel, short[] sArr, int i5, int i6) {
            m60339c(i, i2, i3, i4, colorModel, sArr, i5, i6);
        }

        /* renamed from: c */
        public final void m60339c(int i, int i2, int i3, int i4, ColorModel colorModel, Object obj, int i5, int i6) {
            m60337a(colorModel);
            if (obj == null) {
                return;
            }
            if (BufferedImageFactory.this.f93922q == null) {
                BufferedImageFactory.this.f93922q = Array.newInstance(obj.getClass().getComponentType(), BufferedImageFactory.this.f93914i * BufferedImageFactory.this.f93915j);
                BufferedImageFactory bufferedImageFactory = BufferedImageFactory.this;
                bufferedImageFactory.f93919n = bufferedImageFactory.f93914i;
                BufferedImageFactory.this.f93918m = 0;
            } else if (BufferedImageFactory.this.f93922q.getClass() != obj.getClass()) {
                throw new IllegalStateException("Only one pixel type allowed");
            }
            if (i2 < BufferedImageFactory.this.f93913h) {
                int i7 = BufferedImageFactory.this.f93913h - i2;
                if (i7 >= i4) {
                    return;
                }
                i5 += i6 * i7;
                i2 += i7;
                i4 -= i7;
            }
            if (i2 + i4 <= BufferedImageFactory.this.f93913h + BufferedImageFactory.this.f93915j || (i4 = (BufferedImageFactory.this.f93913h + BufferedImageFactory.this.f93915j) - i2) > 0) {
                if (i < BufferedImageFactory.this.f93912g) {
                    int i8 = BufferedImageFactory.this.f93912g - i;
                    if (i8 >= i3) {
                        return;
                    }
                    i5 += i8;
                    i += i8;
                    i3 -= i8;
                }
                if (i + i3 <= BufferedImageFactory.this.f93912g + BufferedImageFactory.this.f93914i || (i3 = (BufferedImageFactory.this.f93912g + BufferedImageFactory.this.f93914i) - i) > 0) {
                    int i9 = BufferedImageFactory.this.f93918m + ((i2 - BufferedImageFactory.this.f93913h) * BufferedImageFactory.this.f93919n) + (i - BufferedImageFactory.this.f93912g);
                    for (int i10 = i4; i10 > 0; i10--) {
                        System.arraycopy(obj, i5, BufferedImageFactory.this.f93922q, i9, i3);
                        i5 += i6;
                        i9 += BufferedImageFactory.this.f93919n;
                    }
                    BufferedImageFactory.this.m60332A(i2 + i4);
                }
            }
        }

        @Override // java.awt.image.ImageConsumer
        public void imageComplete(int i) {
            BufferedImageFactory.this.f93910e = false;
            if (BufferedImageFactory.this.f93908c != null) {
                BufferedImageFactory.this.f93908c.removeConsumer(this);
            }
            if (i == 1) {
                BufferedImageFactory.this.f93909d = new ImageConversionException("ImageConsumer.IMAGEERROR");
            }
            synchronized (BufferedImageFactory.this) {
                BufferedImageFactory.this.notifyAll();
            }
        }

        @Override // java.awt.image.ImageConsumer
        public void setColorModel(ColorModel colorModel) {
            m60337a(colorModel);
        }

        @Override // java.awt.image.ImageConsumer
        public void setDimensions(int i, int i2) {
            if (BufferedImageFactory.this.f93914i < 0) {
                BufferedImageFactory bufferedImageFactory = BufferedImageFactory.this;
                bufferedImageFactory.f93914i = i - bufferedImageFactory.f93912g;
            }
            if (BufferedImageFactory.this.f93915j < 0) {
                BufferedImageFactory bufferedImageFactory2 = BufferedImageFactory.this;
                bufferedImageFactory2.f93915j = i2 - bufferedImageFactory2.f93913h;
            }
            if (BufferedImageFactory.this.f93914i <= 0 || BufferedImageFactory.this.f93915j <= 0) {
                imageComplete(3);
            }
        }

        @Override // java.awt.image.ImageConsumer
        public void setHints(int i) {
        }

        @Override // java.awt.image.ImageConsumer
        public void setPixels(int i, int i2, int i3, int i4, ColorModel colorModel, byte[] bArr, int i5, int i6) {
            m60339c(i, i2, i3, i4, colorModel, bArr, i5, i6);
        }

        @Override // java.awt.image.ImageConsumer
        public void setProperties(Hashtable hashtable) {
            BufferedImageFactory.this.f93921p = hashtable;
        }

        @Override // java.awt.image.ImageConsumer
        public void setPixels(int i, int i2, int i3, int i4, ColorModel colorModel, int[] iArr, int i5, int i6) {
            if (colorModel.getTransferType() == 1) {
                m60339c(i, i2, i3, i4, colorModel, BufferedImageFactory.m60309B(iArr), i5, i6);
            } else {
                m60339c(i, i2, i3, i4, colorModel, iArr, i5, i6);
            }
        }
    }

    public BufferedImageFactory(Image image) {
        this(image != null ? image.getSource() : null);
    }

    /* renamed from: B */
    public static short[] m60309B(int[] iArr) {
        int length = iArr.length;
        short[] sArr = new short[length];
        for (int i = 0; i < length; i++) {
            sArr[i] = (short) (iArr[i] & 65535);
        }
        return sArr;
    }

    /* renamed from: A */
    public final void m60332A(int i) {
        int i2;
        List<ProgressListener> list = this.f93906a;
        if (list == null || (i2 = (i * 100) / this.f93915j) <= this.f93907b) {
            return;
        }
        this.f93907b = i2;
        Iterator<ProgressListener> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().progress(this, i2);
        }
    }

    public void abort() {
        this.f93925t.imageComplete(4);
    }

    public void addProgressListener(ProgressListener progressListener) {
        if (progressListener == null) {
            return;
        }
        if (this.f93906a == null) {
            this.f93906a = new CopyOnWriteArrayList();
        }
        this.f93906a.add(progressListener);
    }

    public void dispose() {
        m60336z();
        this.f93923r = null;
        this.f93924s = null;
    }

    public BufferedImage getBufferedImage() throws ImageConversionException {
        m60335y(false);
        return this.f93923r;
    }

    public ColorModel getColorModel() throws ImageConversionException {
        m60335y(true);
        BufferedImage bufferedImage = this.f93923r;
        return bufferedImage != null ? bufferedImage.getColorModel() : this.f93924s;
    }

    public void removeAllProgressListeners() {
        List<ProgressListener> list = this.f93906a;
        if (list != null) {
            list.clear();
        }
    }

    public void removeProgressListener(ProgressListener progressListener) {
        List<ProgressListener> list;
        if (progressListener == null || (list = this.f93906a) == null) {
            return;
        }
        list.remove(progressListener);
    }

    public void setSourceRegion(Rectangle rectangle) {
        if (this.f93912g != rectangle.f97732x || this.f93913h != rectangle.f97733y || this.f93914i != rectangle.width || this.f93915j != rectangle.height) {
            dispose();
        }
        this.f93912g = rectangle.f97732x;
        this.f93913h = rectangle.f97733y;
        this.f93914i = rectangle.width;
        this.f93915j = rectangle.height;
    }

    public void setSourceSubsampling(int i, int i2) {
        if (this.f93916k != i || this.f93917l != i2) {
            dispose();
        }
        if (i > 1) {
            this.f93916k = i;
        }
        if (i2 > 1) {
            this.f93917l = i2;
        }
    }

    /* renamed from: w */
    public final void m60333w() {
        int i;
        Object obj;
        int i2 = this.f93914i;
        if (i2 > 0 && (i = this.f93915j) > 0) {
            ColorModel colorModel = this.f93920o;
            if (colorModel == null || (obj = this.f93922q) == null) {
                this.f93923r = ImageUtil.createClear(i2, i, null);
            } else {
                WritableRaster m60360j = ImageUtil.m60360j(i2, i, obj, colorModel);
                ColorModel colorModel2 = this.f93920o;
                this.f93923r = new BufferedImage(colorModel2, m60360j, colorModel2.isAlphaPremultiplied(), (Hashtable<?, ?>) this.f93921p);
            }
        }
        m60336z();
    }

    /* renamed from: x */
    public final void m60334x() {
        this.f93924s = this.f93920o;
        m60336z();
    }

    /* renamed from: y */
    public final synchronized void m60335y(boolean z) throws ImageConversionException {
        int i;
        int i2;
        if (!this.f93910e && ((!z && this.f93923r == null) || (this.f93923r == null && this.f93920o == null))) {
            if (!z && ((i = this.f93916k) > 1 || this.f93917l > 1)) {
                int i3 = this.f93914i;
                if (i3 > 0 && (i2 = this.f93915j) > 0) {
                    this.f93914i = ((i3 + i) - 1) / i;
                    int i4 = this.f93917l;
                    this.f93915j = ((i2 + i4) - 1) / i4;
                    this.f93912g = ((this.f93912g + i) - 1) / i;
                    this.f93913h = ((this.f93913h + i4) - 1) / i4;
                }
                this.f93908c = new FilteredImageSource(this.f93908c, new SubsamplingFilter(i, this.f93917l));
            }
            this.f93910e = true;
            this.f93911f = z;
            this.f93908c.startProduction(this.f93925t);
            while (this.f93910e) {
                try {
                    wait(200L);
                } catch (InterruptedException e) {
                    throw new ImageConversionException("Image conversion aborted: " + e.getMessage(), e);
                }
            }
            if (this.f93909d != null) {
                throw new ImageConversionException("Image conversion failed: " + this.f93909d.getMessage(), this.f93909d);
            }
            if (z) {
                m60334x();
            } else {
                m60333w();
            }
        }
    }

    /* renamed from: z */
    public final void m60336z() {
        this.f93920o = null;
        this.f93922q = null;
        this.f93921p = null;
    }

    public BufferedImageFactory(ImageProducer imageProducer) {
        this.f93912g = 0;
        this.f93913h = 0;
        this.f93914i = -1;
        this.f93915j = -1;
        this.f93916k = 1;
        this.f93917l = 1;
        this.f93925t = new C16917b();
        Validate.notNull(imageProducer, "source");
        this.f93908c = imageProducer;
    }
}
