package org.apache.xerces.impl.dtd.models;

import org.apache.xerces.xni.QName;

/* loaded from: classes13.dex */
public class MixedContentModel implements ContentModelValidator {

    /* renamed from: a */
    public final int f112262a;

    /* renamed from: b */
    public final QName[] f112263b;

    /* renamed from: c */
    public final int[] f112264c;

    /* renamed from: d */
    public final boolean f112265d;

    public MixedContentModel(QName[] qNameArr, int[] iArr, int i, int i2, boolean z) {
        this.f112262a = i2;
        this.f112263b = new QName[i2];
        this.f112264c = new int[i2];
        for (int i3 = 0; i3 < this.f112262a; i3++) {
            int i4 = i + i3;
            this.f112263b[i3] = new QName(qNameArr[i4]);
            this.f112264c[i3] = iArr[i4];
        }
        this.f112265d = z;
    }

    @Override // org.apache.xerces.impl.dtd.models.ContentModelValidator
    public int validate(QName[] qNameArr, int i, int i2) {
        int i3;
        if (this.f112265d) {
            int i4 = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                QName qName = qNameArr[i + i5];
                if (qName.localpart != null) {
                    int i6 = this.f112264c[i4];
                    if (i6 == 0) {
                        if (this.f112263b[i4].rawname != qName.rawname) {
                            return i5;
                        }
                    } else if (i6 == 6) {
                        String str = this.f112263b[i4].uri;
                        if (str != null && str != qNameArr[i5].uri) {
                            return i5;
                        }
                    } else if (i6 == 8) {
                        if (qNameArr[i5].uri != null) {
                            return i5;
                        }
                    } else if (i6 == 7 && this.f112263b[i4].uri == qNameArr[i5].uri) {
                        return i5;
                    }
                    i4++;
                }
            }
            return -1;
        }
        for (int i7 = 0; i7 < i2; i7++) {
            QName qName2 = qNameArr[i + i7];
            if (qName2.localpart != null) {
                int i8 = 0;
                while (true) {
                    i3 = this.f112262a;
                    if (i8 >= i3) {
                        break;
                    }
                    int i9 = this.f112264c[i8];
                    if (i9 == 0) {
                        if (qName2.rawname == this.f112263b[i8].rawname) {
                            break;
                        }
                        i8++;
                    } else if (i9 == 6) {
                        String str2 = this.f112263b[i8].uri;
                        if (str2 == null || str2 == qNameArr[i7].uri) {
                            break;
                        }
                        i8++;
                    } else if (i9 != 8) {
                        if (i9 == 7 && this.f112263b[i8].uri != qNameArr[i7].uri) {
                            break;
                        }
                        i8++;
                    } else {
                        if (qNameArr[i7].uri == null) {
                            break;
                        }
                        i8++;
                    }
                }
                if (i8 == i3) {
                    return i7;
                }
            }
        }
        return -1;
    }
}
