package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;

/* loaded from: classes12.dex */
public class LocalVariableTypeTableAttribute extends BCIRenumberedAttribute {

    /* renamed from: l */
    public static CPUTF8 f107211l;

    /* renamed from: c */
    public final int f107212c;

    /* renamed from: d */
    public final int[] f107213d;

    /* renamed from: e */
    public final int[] f107214e;

    /* renamed from: f */
    public int[] f107215f;

    /* renamed from: g */
    public int[] f107216g;

    /* renamed from: h */
    public final int[] f107217h;

    /* renamed from: i */
    public final CPUTF8[] f107218i;

    /* renamed from: j */
    public final CPUTF8[] f107219j;

    /* renamed from: k */
    public int f107220k;

    public LocalVariableTypeTableAttribute(int i, int[] iArr, int[] iArr2, CPUTF8[] cputf8Arr, CPUTF8[] cputf8Arr2, int[] iArr3) {
        super(f107211l);
        this.f107212c = i;
        this.f107213d = iArr;
        this.f107214e = iArr2;
        this.f107218i = cputf8Arr;
        this.f107219j = cputf8Arr2;
        this.f107217h = iArr3;
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        f107211l = cputf8;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public int getLength() {
        return (this.f107212c * 10) + 2;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(getAttributeName());
        for (int i = 0; i < this.f107212c; i++) {
            arrayList.add(this.f107218i[i]);
            arrayList.add(this.f107219j[i]);
        }
        return (ClassFileEntry[]) arrayList.toArray(ClassFileEntry.NONE);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute
    public int[] getStartPCs() {
        return this.f107213d;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute
    public void renumber(List<Integer> list) throws Pack200Exception {
        int[] iArr = this.f107213d;
        int[] iArr2 = new int[iArr.length];
        int i = 0;
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        super.renumber(list);
        int i2 = this.f107220k;
        while (true) {
            int[] iArr3 = this.f107214e;
            if (i >= iArr3.length) {
                return;
            }
            int i3 = this.f107213d[i];
            int i4 = iArr2[i] + iArr3[i];
            if (i4 < 0) {
                throw new Pack200Exception("Error renumbering bytecode indexes");
            }
            this.f107214e[i] = i4 == list.size() ? i2 - i3 : list.get(i4).intValue() - i3;
            i++;
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        int i = this.f107212c;
        this.f107215f = new int[i];
        this.f107216g = new int[i];
        for (int i2 = 0; i2 < this.f107212c; i2++) {
            this.f107218i[i2].resolve(classConstantPool);
            this.f107219j[i2].resolve(classConstantPool);
            this.f107215f[i2] = classConstantPool.indexOf(this.f107218i[i2]);
            this.f107216g[i2] = classConstantPool.indexOf(this.f107219j[i2]);
        }
    }

    public void setCodeLength(int i) {
        this.f107220k = i;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "LocalVariableTypeTable: " + this.f107212c + " varaibles";
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107212c);
        for (int i = 0; i < this.f107212c; i++) {
            dataOutputStream.writeShort(this.f107213d[i]);
            dataOutputStream.writeShort(this.f107214e[i]);
            dataOutputStream.writeShort(this.f107215f[i]);
            dataOutputStream.writeShort(this.f107216g[i]);
            dataOutputStream.writeShort(this.f107217h[i]);
        }
    }
}
