package com.onegravity.rteditor.converter.tagsoup;

import org.xml.sax.Attributes;

/* loaded from: classes7.dex */
public class AttributesImpl implements Attributes {

    /* renamed from: e */
    public int f40190e;

    /* renamed from: f */
    public String[] f40191f;

    public AttributesImpl() {
        this.f40190e = 0;
        this.f40191f = null;
    }

    /* renamed from: a */
    public final void m31624a(int i) throws ArrayIndexOutOfBoundsException {
        throw new ArrayIndexOutOfBoundsException("Attempt to modify attribute at illegal index: " + i);
    }

    public void addAttribute(String str, String str2, String str3, String str4, String str5) {
        m31625b(this.f40190e + 1);
        String[] strArr = this.f40191f;
        int i = this.f40190e;
        strArr[i * 5] = str;
        strArr[(i * 5) + 1] = str2;
        strArr[(i * 5) + 2] = str3;
        strArr[(i * 5) + 3] = str4;
        strArr[(i * 5) + 4] = str5;
        this.f40190e = i + 1;
    }

    /* renamed from: b */
    public final void m31625b(int i) {
        int i2;
        if (i <= 0) {
            return;
        }
        String[] strArr = this.f40191f;
        if (strArr == null || strArr.length == 0) {
            i2 = 25;
        } else if (strArr.length >= i * 5) {
            return;
        } else {
            i2 = strArr.length;
        }
        while (i2 < i * 5) {
            i2 *= 2;
        }
        String[] strArr2 = new String[i2];
        int i3 = this.f40190e;
        if (i3 > 0) {
            System.arraycopy(this.f40191f, 0, strArr2, 0, i3 * 5);
        }
        this.f40191f = strArr2;
    }

    public void clear() {
        if (this.f40191f != null) {
            for (int i = 0; i < this.f40190e * 5; i++) {
                this.f40191f[i] = null;
            }
        }
        this.f40190e = 0;
    }

    @Override // org.xml.sax.Attributes
    public int getIndex(String str, String str2) {
        int i = this.f40190e * 5;
        for (int i2 = 0; i2 < i; i2 += 5) {
            if (this.f40191f[i2].equals(str) && this.f40191f[i2 + 1].equals(str2)) {
                return i2 / 5;
            }
        }
        return -1;
    }

    @Override // org.xml.sax.Attributes
    public int getLength() {
        return this.f40190e;
    }

    @Override // org.xml.sax.Attributes
    public String getLocalName(int i) {
        if (i < 0 || i >= this.f40190e) {
            return null;
        }
        return this.f40191f[(i * 5) + 1];
    }

    @Override // org.xml.sax.Attributes
    public String getQName(int i) {
        if (i < 0 || i >= this.f40190e) {
            return null;
        }
        return this.f40191f[(i * 5) + 2];
    }

    @Override // org.xml.sax.Attributes
    public String getType(int i) {
        if (i < 0 || i >= this.f40190e) {
            return null;
        }
        return this.f40191f[(i * 5) + 3];
    }

    @Override // org.xml.sax.Attributes
    public String getURI(int i) {
        if (i < 0 || i >= this.f40190e) {
            return null;
        }
        return this.f40191f[i * 5];
    }

    @Override // org.xml.sax.Attributes
    public String getValue(int i) {
        if (i < 0 || i >= this.f40190e) {
            return null;
        }
        return this.f40191f[(i * 5) + 4];
    }

    public void removeAttribute(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.f40190e)) {
            m31624a(i);
            return;
        }
        if (i < i2 - 1) {
            String[] strArr = this.f40191f;
            System.arraycopy(strArr, (i + 1) * 5, strArr, i * 5, ((i2 - i) - 1) * 5);
        }
        int i3 = this.f40190e;
        int i4 = (i3 - 1) * 5;
        String[] strArr2 = this.f40191f;
        int i5 = i4 + 1;
        strArr2[i4] = null;
        int i6 = i5 + 1;
        strArr2[i5] = null;
        int i7 = i6 + 1;
        strArr2[i6] = null;
        strArr2[i7] = null;
        strArr2[i7 + 1] = null;
        this.f40190e = i3 - 1;
    }

    public void setAttribute(int i, String str, String str2, String str3, String str4, String str5) {
        if (i < 0 || i >= this.f40190e) {
            m31624a(i);
            return;
        }
        String[] strArr = this.f40191f;
        int i2 = i * 5;
        strArr[i2] = str;
        strArr[i2 + 1] = str2;
        strArr[i2 + 2] = str3;
        strArr[i2 + 3] = str4;
        strArr[i2 + 4] = str5;
    }

    public void setAttributes(Attributes attributes) {
        clear();
        int length = attributes.getLength();
        this.f40190e = length;
        if (length > 0) {
            this.f40191f = new String[length * 5];
            for (int i = 0; i < this.f40190e; i++) {
                int i2 = i * 5;
                this.f40191f[i2] = attributes.getURI(i);
                this.f40191f[i2 + 1] = attributes.getLocalName(i);
                this.f40191f[i2 + 2] = attributes.getQName(i);
                this.f40191f[i2 + 3] = attributes.getType(i);
                this.f40191f[i2 + 4] = attributes.getValue(i);
            }
        }
    }

    public void setLocalName(int i, String str) {
        if (i < 0 || i >= this.f40190e) {
            m31624a(i);
        } else {
            this.f40191f[(i * 5) + 1] = str;
        }
    }

    public void setQName(int i, String str) {
        if (i < 0 || i >= this.f40190e) {
            m31624a(i);
        } else {
            this.f40191f[(i * 5) + 2] = str;
        }
    }

    public void setType(int i, String str) {
        if (i < 0 || i >= this.f40190e) {
            m31624a(i);
        } else {
            this.f40191f[(i * 5) + 3] = str;
        }
    }

    public void setURI(int i, String str) {
        if (i < 0 || i >= this.f40190e) {
            m31624a(i);
        } else {
            this.f40191f[i * 5] = str;
        }
    }

    public void setValue(int i, String str) {
        if (i < 0 || i >= this.f40190e) {
            m31624a(i);
        } else {
            this.f40191f[(i * 5) + 4] = str;
        }
    }

    @Override // org.xml.sax.Attributes
    public String getType(String str, String str2) {
        int i = this.f40190e * 5;
        for (int i2 = 0; i2 < i; i2 += 5) {
            if (this.f40191f[i2].equals(str) && this.f40191f[i2 + 1].equals(str2)) {
                return this.f40191f[i2 + 3];
            }
        }
        return null;
    }

    @Override // org.xml.sax.Attributes
    public String getValue(String str, String str2) {
        int i = this.f40190e * 5;
        for (int i2 = 0; i2 < i; i2 += 5) {
            if (this.f40191f[i2].equals(str) && this.f40191f[i2 + 1].equals(str2)) {
                return this.f40191f[i2 + 4];
            }
        }
        return null;
    }

    public AttributesImpl(Attributes attributes) {
        setAttributes(attributes);
    }

    @Override // org.xml.sax.Attributes
    public int getIndex(String str) {
        int i = this.f40190e * 5;
        for (int i2 = 0; i2 < i; i2 += 5) {
            if (this.f40191f[i2 + 2].equals(str)) {
                return i2 / 5;
            }
        }
        return -1;
    }

    @Override // org.xml.sax.Attributes
    public String getType(String str) {
        int i = this.f40190e * 5;
        for (int i2 = 0; i2 < i; i2 += 5) {
            if (this.f40191f[i2 + 2].equals(str)) {
                return this.f40191f[i2 + 3];
            }
        }
        return null;
    }

    @Override // org.xml.sax.Attributes
    public String getValue(String str) {
        int i = this.f40190e * 5;
        for (int i2 = 0; i2 < i; i2 += 5) {
            if (this.f40191f[i2 + 2].equals(str)) {
                return this.f40191f[i2 + 4];
            }
        }
        return null;
    }
}
