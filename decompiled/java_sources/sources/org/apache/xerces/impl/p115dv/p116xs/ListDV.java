package org.apache.xerces.impl.p115dv.p116xs;

import java.util.AbstractList;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.p118xs.datatypes.ObjectList;

/* loaded from: classes13.dex */
public class ListDV extends TypeValidator {

    /* renamed from: org.apache.xerces.impl.dv.xs.ListDV$a */
    /* loaded from: classes13.dex */
    public static final class C20017a extends AbstractList implements ObjectList {

        /* renamed from: e */
        public final Object[] f112342e;

        /* renamed from: f */
        public String f112343f;

        public C20017a(Object[] objArr) {
            this.f112342e = objArr;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List, org.apache.xerces.p118xs.datatypes.ObjectList
        public boolean contains(Object obj) {
            int i = 0;
            while (true) {
                Object[] objArr = this.f112342e;
                if (i >= objArr.length) {
                    return false;
                }
                if (obj == objArr[i]) {
                    return true;
                }
                i++;
            }
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (!(obj instanceof C20017a)) {
                return false;
            }
            Object[] objArr = ((C20017a) obj).f112342e;
            int length = this.f112342e.length;
            if (length != objArr.length) {
                return false;
            }
            for (int i = 0; i < length; i++) {
                if (!this.f112342e[i].equals(objArr[i])) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public Object get(int i) {
            if (i >= 0) {
                Object[] objArr = this.f112342e;
                if (i < objArr.length) {
                    return objArr[i];
                }
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Index: ");
            stringBuffer.append(i);
            throw new IndexOutOfBoundsException(stringBuffer.toString());
        }

        @Override // org.apache.xerces.p118xs.datatypes.ObjectList
        public int getLength() {
            return this.f112342e.length;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i = 0;
            int i2 = 0;
            while (true) {
                Object[] objArr = this.f112342e;
                if (i >= objArr.length) {
                    return i2;
                }
                i2 ^= objArr[i].hashCode();
                i++;
            }
        }

        @Override // org.apache.xerces.p118xs.datatypes.ObjectList
        public Object item(int i) {
            if (i < 0) {
                return null;
            }
            Object[] objArr = this.f112342e;
            if (i >= objArr.length) {
                return null;
            }
            return objArr[i];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return getLength();
        }

        @Override // java.util.AbstractCollection
        public synchronized String toString() {
            if (this.f112343f == null) {
                int length = this.f112342e.length;
                StringBuffer stringBuffer = new StringBuffer();
                if (length > 0) {
                    stringBuffer.append(this.f112342e[0].toString());
                }
                for (int i = 1; i < length; i++) {
                    stringBuffer.append(' ');
                    stringBuffer.append(this.f112342e[i].toString());
                }
                this.f112343f = stringBuffer.toString();
            }
            return this.f112343f;
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        return str;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2079;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public int getDataLength(Object obj) {
        return ((C20017a) obj).getLength();
    }
}
