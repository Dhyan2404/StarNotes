package com.twelvemonkeys.image;

import com.sunia.HTREnginev2.ppi;
import com.sunia.HTREnginev2.qji;
import com.twelvemonkeys.lang.StringUtil;
import com.twelvemonkeys.lang.Validate;
import java.awt.Image;
import java.awt.image.IndexColorModel;

/* loaded from: classes10.dex */
public class InverseColorMapIndexColorModel extends IndexColorModel {

    /* renamed from: f */
    public static final int f93947f = 128;

    /* renamed from: g */
    public static final int f93948g = 16777215;

    /* renamed from: h */
    public static final int f93949h = 16777215;

    /* renamed from: e */
    public int f93950e;
    protected ppi inverseMap;
    protected int mapSize;
    protected int[] rgbs;

    public InverseColorMapIndexColorModel(IndexColorModel indexColorModel) {
        this((IndexColorModel) Validate.notNull(indexColorModel, "color model"), m60372a(indexColorModel));
    }

    /* renamed from: a */
    public static int[] m60372a(IndexColorModel indexColorModel) {
        int[] iArr = new int[indexColorModel.getMapSize()];
        indexColorModel.getRGBs(iArr);
        return iArr;
    }

    public static IndexColorModel create(Image image, int i, int i2) {
        IndexColorModel m56703d = qji.m56703d(image, i, i2);
        return m56703d instanceof InverseColorMapIndexColorModel ? (InverseColorMapIndexColorModel) m56703d : new InverseColorMapIndexColorModel(m56703d);
    }

    /* renamed from: b */
    public final int m60373b() {
        int i = 0;
        while (true) {
            int[] iArr = this.rgbs;
            if (i >= iArr.length) {
                return -1;
            }
            if ((iArr[i] & 16777215) == 16777215) {
                return i;
            }
            i++;
        }
    }

    @Override // java.awt.image.IndexColorModel, java.awt.image.ColorModel
    public Object getDataElements(int i, Object obj) {
        int m56355a;
        int i2;
        if ((i >>> 24) >= 128 || getTransparentPixel() == -1) {
            int i3 = i & 16777215;
            m56355a = (i3 != 16777215 || (i2 = this.f93950e) == -1) ? this.inverseMap.m56355a(i3) : i2;
        } else {
            m56355a = getTransparentPixel();
        }
        return installpixel(obj, m56355a);
    }

    public final Object installpixel(Object obj, int i) {
        byte[] bArr;
        Object obj2;
        short[] sArr;
        int[] iArr;
        int i2 = this.transferType;
        if (i2 == 0) {
            if (obj == null) {
                bArr = new byte[1];
                obj2 = bArr;
            } else {
                bArr = (byte[]) obj;
                obj2 = obj;
            }
            bArr[0] = (byte) i;
        } else if (i2 == 1) {
            if (obj == null) {
                sArr = new short[1];
                obj2 = sArr;
            } else {
                sArr = (short[]) obj;
                obj2 = obj;
            }
            sArr[0] = (short) i;
        } else {
            if (i2 != 3) {
                throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
            }
            if (obj == null) {
                iArr = new int[1];
                obj2 = iArr;
            } else {
                iArr = (int[]) obj;
                obj2 = obj;
            }
            iArr[0] = i;
        }
        return obj2;
    }

    @Override // java.awt.image.IndexColorModel, java.awt.image.ColorModel
    public String toString() {
        return StringUtil.replace(super.toString(), "IndexColorModel: ", getClass().getName() + ": ");
    }

    public InverseColorMapIndexColorModel(IndexColorModel indexColorModel, int[] iArr) {
        super(indexColorModel.getComponentSize()[0], indexColorModel.getMapSize(), iArr, 0, indexColorModel.getTransferType(), indexColorModel.getValidPixels());
        this.inverseMap = null;
        this.f93950e = -1;
        this.rgbs = iArr;
        this.mapSize = iArr.length;
        this.inverseMap = new ppi(iArr);
        this.f93950e = m60373b();
    }

    public InverseColorMapIndexColorModel(int i, int i2, int[] iArr, int i3, boolean z, int i4, int i5) {
        super(i, i2, iArr, i3, z, i4, i5);
        this.inverseMap = null;
        this.f93950e = -1;
        int[] m60372a = m60372a(this);
        this.rgbs = m60372a;
        this.mapSize = m60372a.length;
        this.inverseMap = new ppi(m60372a, i4);
        this.f93950e = m60373b();
    }

    public InverseColorMapIndexColorModel(int i, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, int i3) {
        super(i, i2, bArr, bArr2, bArr3, i3);
        this.inverseMap = null;
        this.f93950e = -1;
        int[] m60372a = m60372a(this);
        this.rgbs = m60372a;
        this.mapSize = m60372a.length;
        this.inverseMap = new ppi(m60372a, i3);
        this.f93950e = m60373b();
    }

    public InverseColorMapIndexColorModel(int i, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        super(i, i2, bArr, bArr2, bArr3);
        this.inverseMap = null;
        this.f93950e = -1;
        int[] m60372a = m60372a(this);
        this.rgbs = m60372a;
        this.mapSize = m60372a.length;
        this.inverseMap = new ppi(m60372a);
        this.f93950e = m60373b();
    }
}
