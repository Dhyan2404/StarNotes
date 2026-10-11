package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.p056xs.datatypes.ObjectList;

/* loaded from: classes10.dex */
public class ListDV extends TypeValidator {

    /* loaded from: classes10.dex */
    public static final class ListData implements ObjectList {
        private String canonical;
        final Object[] data;

        public ListData(Object[] objArr) {
            this.data = objArr;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.ObjectList
        public boolean contains(Object obj) {
            int i = 0;
            while (true) {
                Object[] objArr = this.data;
                if (i >= objArr.length) {
                    return false;
                }
                if (obj == objArr[i]) {
                    return true;
                }
                i++;
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ListData)) {
                return false;
            }
            Object[] objArr = ((ListData) obj).data;
            int length = this.data.length;
            if (length != objArr.length) {
                return false;
            }
            for (int i = 0; i < length; i++) {
                if (!this.data[i].equals(objArr[i])) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.ObjectList
        public int getLength() {
            return this.data.length;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.ObjectList
        public Object item(int i) {
            if (i < 0) {
                return null;
            }
            Object[] objArr = this.data;
            if (i >= objArr.length) {
                return null;
            }
            return objArr[i];
        }

        public synchronized String toString() {
            if (this.canonical == null) {
                int length = this.data.length;
                StringBuffer stringBuffer = new StringBuffer();
                if (length > 0) {
                    stringBuffer.append(this.data[0].toString());
                }
                for (int i = 1; i < length; i++) {
                    stringBuffer.append(' ');
                    stringBuffer.append(this.data[i].toString());
                }
                this.canonical = stringBuffer.toString();
            }
            return this.canonical;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        return str;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2079;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public int getDataLength(Object obj) {
        return ((ListData) obj).getLength();
    }
}
