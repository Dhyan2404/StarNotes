package org.apache.xerces.impl.dtd.models;

import org.apache.xerces.xni.QName;

/* loaded from: classes13.dex */
public class SimpleContentModel implements ContentModelValidator {
    public static final short CHOICE = -1;
    public static final short SEQUENCE = -1;

    /* renamed from: a */
    public final QName f112266a;

    /* renamed from: b */
    public final QName f112267b;

    /* renamed from: c */
    public final int f112268c;

    public SimpleContentModel(short s, QName qName, QName qName2) {
        QName qName3 = new QName();
        this.f112266a = qName3;
        QName qName4 = new QName();
        this.f112267b = qName4;
        qName3.setValues(qName);
        if (qName2 != null) {
            qName4.setValues(qName2);
        } else {
            qName4.clear();
        }
        this.f112268c = s;
    }

    @Override // org.apache.xerces.impl.dtd.models.ContentModelValidator
    public int validate(QName[] qNameArr, int i, int i2) {
        int i3 = this.f112268c;
        int i4 = 0;
        if (i3 == 0) {
            if (i2 != 0 && qNameArr[i].rawname == this.f112266a.rawname) {
                return i2 > 1 ? 1 : -1;
            }
            return 0;
        }
        if (i3 == 1) {
            if (i2 != 1 || qNameArr[i].rawname == this.f112266a.rawname) {
                return i2 > 1 ? 1 : -1;
            }
            return 0;
        }
        if (i3 == 2) {
            if (i2 <= 0) {
                return -1;
            }
            while (i4 < i2) {
                if (qNameArr[i + i4].rawname != this.f112266a.rawname) {
                    return i4;
                }
                i4++;
            }
            return -1;
        }
        if (i3 == 3) {
            if (i2 == 0) {
                return 0;
            }
            while (i4 < i2) {
                if (qNameArr[i + i4].rawname != this.f112266a.rawname) {
                    return i4;
                }
                i4++;
            }
            return -1;
        }
        if (i3 == 4) {
            if (i2 == 0) {
                return 0;
            }
            String str = qNameArr[i].rawname;
            if (str == this.f112266a.rawname || str == this.f112267b.rawname) {
                return i2 > 1 ? 1 : -1;
            }
            return 0;
        }
        if (i3 != 5) {
            throw new RuntimeException("ImplementationMessages.VAL_CST");
        }
        if (i2 == 2) {
            if (qNameArr[i].rawname != this.f112266a.rawname) {
                return 0;
            }
            return qNameArr[i + 1].rawname != this.f112267b.rawname ? 1 : -1;
        }
        if (i2 > 2) {
            return 2;
        }
        return i2;
    }
}
