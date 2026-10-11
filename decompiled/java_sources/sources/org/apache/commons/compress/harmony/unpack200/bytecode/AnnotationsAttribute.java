package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes12.dex */
public abstract class AnnotationsAttribute extends Attribute {

    /* loaded from: classes12.dex */
    public static class Annotation {

        /* renamed from: a */
        public final int f107104a;

        /* renamed from: b */
        public final CPUTF8[] f107105b;

        /* renamed from: c */
        public final ElementValue[] f107106c;

        /* renamed from: d */
        public final CPUTF8 f107107d;

        /* renamed from: e */
        public int f107108e;

        /* renamed from: f */
        public int[] f107109f;

        public Annotation(int i, CPUTF8 cputf8, CPUTF8[] cputf8Arr, ElementValue[] elementValueArr) {
            this.f107104a = i;
            this.f107107d = cputf8;
            this.f107105b = cputf8Arr;
            this.f107106c = elementValueArr;
        }

        public List<Object> getClassFileEntries() {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                CPUTF8[] cputf8Arr = this.f107105b;
                if (i >= cputf8Arr.length) {
                    arrayList.add(this.f107107d);
                    return arrayList;
                }
                arrayList.add(cputf8Arr[i]);
                arrayList.addAll(this.f107106c[i].getClassFileEntries());
                i++;
            }
        }

        public int getLength() {
            int i = 4;
            for (int i2 = 0; i2 < this.f107104a; i2++) {
                i = i + 2 + this.f107106c[i2].getLength();
            }
            return i;
        }

        public void resolve(ClassConstantPool classConstantPool) {
            this.f107107d.resolve(classConstantPool);
            this.f107108e = classConstantPool.indexOf(this.f107107d);
            this.f107109f = new int[this.f107104a];
            int i = 0;
            while (true) {
                CPUTF8[] cputf8Arr = this.f107105b;
                if (i >= cputf8Arr.length) {
                    return;
                }
                cputf8Arr[i].resolve(classConstantPool);
                this.f107109f[i] = classConstantPool.indexOf(this.f107105b[i]);
                this.f107106c[i].resolve(classConstantPool);
                i++;
            }
        }

        public void writeBody(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeShort(this.f107108e);
            dataOutputStream.writeShort(this.f107104a);
            for (int i = 0; i < this.f107104a; i++) {
                dataOutputStream.writeShort(this.f107109f[i]);
                this.f107106c[i].writeBody(dataOutputStream);
            }
        }
    }

    /* loaded from: classes12.dex */
    public static class ElementValue {

        /* renamed from: a */
        public final Object f107110a;

        /* renamed from: b */
        public final int f107111b;

        /* renamed from: c */
        public int f107112c = -1;

        public ElementValue(int i, Object obj) {
            this.f107111b = i;
            this.f107110a = obj;
        }

        public List<Object> getClassFileEntries() {
            ArrayList arrayList = new ArrayList(1);
            Object obj = this.f107110a;
            if (obj instanceof CPNameAndType) {
                arrayList.add(((CPNameAndType) obj).f107145e);
                arrayList.add(((CPNameAndType) this.f107110a).f107143c);
            } else if (obj instanceof ClassFileEntry) {
                arrayList.add(obj);
            } else if (obj instanceof ElementValue[]) {
                for (ElementValue elementValue : (ElementValue[]) obj) {
                    arrayList.addAll(elementValue.getClassFileEntries());
                }
            } else if (obj instanceof Annotation) {
                arrayList.addAll(((Annotation) obj).getClassFileEntries());
            }
            return arrayList;
        }

        public int getLength() {
            int i = this.f107111b;
            if (i == 64) {
                return ((Annotation) this.f107110a).getLength() + 1;
            }
            int i2 = 3;
            if (i != 70 && i != 83 && i != 99) {
                if (i == 101) {
                    return 5;
                }
                if (i != 115 && i != 73 && i != 74 && i != 90) {
                    if (i == 91) {
                        for (ElementValue elementValue : (ElementValue[]) this.f107110a) {
                            i2 += elementValue.getLength();
                        }
                        return i2;
                    }
                    switch (i) {
                        case 66:
                        case 67:
                        case 68:
                            break;
                        default:
                            return 0;
                    }
                }
            }
            return 3;
        }

        public void resolve(ClassConstantPool classConstantPool) {
            Object obj = this.f107110a;
            if (obj instanceof CPConstant) {
                ((CPConstant) obj).resolve(classConstantPool);
                this.f107112c = classConstantPool.indexOf((CPConstant) this.f107110a);
                return;
            }
            if (obj instanceof CPClass) {
                ((CPClass) obj).resolve(classConstantPool);
                this.f107112c = classConstantPool.indexOf((CPClass) this.f107110a);
                return;
            }
            if (obj instanceof CPUTF8) {
                ((CPUTF8) obj).resolve(classConstantPool);
                this.f107112c = classConstantPool.indexOf((CPUTF8) this.f107110a);
                return;
            }
            if (obj instanceof CPNameAndType) {
                ((CPNameAndType) obj).resolve(classConstantPool);
                return;
            }
            if (obj instanceof Annotation) {
                ((Annotation) obj).resolve(classConstantPool);
                return;
            }
            if (obj instanceof ElementValue[]) {
                for (ElementValue elementValue : (ElementValue[]) obj) {
                    elementValue.resolve(classConstantPool);
                }
            }
        }

        public void writeBody(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeByte(this.f107111b);
            int i = this.f107112c;
            if (i != -1) {
                dataOutputStream.writeShort(i);
                return;
            }
            Object obj = this.f107110a;
            if (obj instanceof CPNameAndType) {
                ((CPNameAndType) obj).writeBody(dataOutputStream);
                return;
            }
            if (obj instanceof Annotation) {
                ((Annotation) obj).writeBody(dataOutputStream);
                return;
            }
            if (!(obj instanceof ElementValue[])) {
                throw new Error("");
            }
            ElementValue[] elementValueArr = (ElementValue[]) obj;
            dataOutputStream.writeShort(elementValueArr.length);
            for (ElementValue elementValue : elementValueArr) {
                elementValue.writeBody(dataOutputStream);
            }
        }
    }

    public AnnotationsAttribute(CPUTF8 cputf8) {
        super(cputf8);
    }
}
