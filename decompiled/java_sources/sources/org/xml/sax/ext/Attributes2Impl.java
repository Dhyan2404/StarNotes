package org.xml.sax.ext;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes16.dex */
public class Attributes2Impl extends AttributesImpl implements Attributes2 {
    private boolean[] declared;
    private boolean[] specified;

    public Attributes2Impl() {
    }

    @Override // org.xml.sax.helpers.AttributesImpl
    public void addAttribute(String str, String str2, String str3, String str4, String str5) {
        super.addAttribute(str, str2, str3, str4, str5);
        int length = getLength();
        if (length < this.specified.length) {
            boolean[] zArr = new boolean[length];
            boolean[] zArr2 = this.declared;
            System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
            this.declared = zArr;
            boolean[] zArr3 = new boolean[length];
            boolean[] zArr4 = this.specified;
            System.arraycopy(zArr4, 0, zArr3, 0, zArr4.length);
            this.specified = zArr3;
        }
        int i = length - 1;
        this.specified[i] = true;
        this.declared[i] = !"CDATA".equals(str4);
    }

    @Override // org.xml.sax.ext.Attributes2
    public boolean isDeclared(int i) {
        if (i >= 0 && i < getLength()) {
            return this.declared[i];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("No attribute at index: ");
        stringBuffer.append(i);
        throw new ArrayIndexOutOfBoundsException(stringBuffer.toString());
    }

    @Override // org.xml.sax.ext.Attributes2
    public boolean isSpecified(int i) {
        if (i >= 0 && i < getLength()) {
            return this.specified[i];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("No attribute at index: ");
        stringBuffer.append(i);
        throw new ArrayIndexOutOfBoundsException(stringBuffer.toString());
    }

    @Override // org.xml.sax.helpers.AttributesImpl
    public void removeAttribute(int i) {
        int length = getLength() - 1;
        super.removeAttribute(i);
        if (i != length) {
            boolean[] zArr = this.declared;
            int i2 = i + 1;
            int i3 = length - i;
            System.arraycopy(zArr, i2, zArr, i, i3);
            boolean[] zArr2 = this.specified;
            System.arraycopy(zArr2, i2, zArr2, i, i3);
        }
    }

    @Override // org.xml.sax.helpers.AttributesImpl
    public void setAttributes(Attributes attributes) {
        int length = attributes.getLength();
        super.setAttributes(attributes);
        this.declared = new boolean[length];
        this.specified = new boolean[length];
        int i = 0;
        if (!(attributes instanceof Attributes2)) {
            while (i < length) {
                this.declared[i] = !"CDATA".equals(attributes.getType(i));
                this.specified[i] = true;
                i++;
            }
            return;
        }
        Attributes2 attributes2 = (Attributes2) attributes;
        while (i < length) {
            this.declared[i] = attributes2.isDeclared(i);
            this.specified[i] = attributes2.isSpecified(i);
            i++;
        }
    }

    public void setDeclared(int i, boolean z) {
        if (i >= 0 && i < getLength()) {
            this.declared[i] = z;
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("No attribute at index: ");
        stringBuffer.append(i);
        throw new ArrayIndexOutOfBoundsException(stringBuffer.toString());
    }

    public void setSpecified(int i, boolean z) {
        if (i >= 0 && i < getLength()) {
            this.specified[i] = z;
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("No attribute at index: ");
        stringBuffer.append(i);
        throw new ArrayIndexOutOfBoundsException(stringBuffer.toString());
    }

    public Attributes2Impl(Attributes attributes) {
        super(attributes);
    }

    @Override // org.xml.sax.ext.Attributes2
    public boolean isDeclared(String str) {
        int index = getIndex(str);
        if (index >= 0) {
            return this.declared[index];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("No such attribute: ");
        stringBuffer.append(str);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    @Override // org.xml.sax.ext.Attributes2
    public boolean isSpecified(String str) {
        int index = getIndex(str);
        if (index >= 0) {
            return this.specified[index];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("No such attribute: ");
        stringBuffer.append(str);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    @Override // org.xml.sax.ext.Attributes2
    public boolean isDeclared(String str, String str2) {
        int index = getIndex(str, str2);
        if (index >= 0) {
            return this.declared[index];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("No such attribute: local=");
        stringBuffer.append(str2);
        stringBuffer.append(", namespace=");
        stringBuffer.append(str);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    @Override // org.xml.sax.ext.Attributes2
    public boolean isSpecified(String str, String str2) {
        int index = getIndex(str, str2);
        if (index >= 0) {
            return this.specified[index];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("No such attribute: local=");
        stringBuffer.append(str2);
        stringBuffer.append(", namespace=");
        stringBuffer.append(str);
        throw new IllegalArgumentException(stringBuffer.toString());
    }
}
