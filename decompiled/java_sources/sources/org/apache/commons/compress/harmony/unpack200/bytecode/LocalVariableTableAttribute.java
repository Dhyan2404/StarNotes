package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;

/* loaded from: classes12.dex */
public class LocalVariableTableAttribute extends BCIRenumberedAttribute {

    /* renamed from: l */
    public static CPUTF8 f107201l;

    /* renamed from: c */
    public final int f107202c;

    /* renamed from: d */
    public final int[] f107203d;

    /* renamed from: e */
    public final int[] f107204e;

    /* renamed from: f */
    public int[] f107205f;

    /* renamed from: g */
    public int[] f107206g;

    /* renamed from: h */
    public final int[] f107207h;

    /* renamed from: i */
    public final CPUTF8[] f107208i;

    /* renamed from: j */
    public final CPUTF8[] f107209j;

    /* renamed from: k */
    public int f107210k;

    public LocalVariableTableAttribute(int i, int[] iArr, int[] iArr2, CPUTF8[] cputf8Arr, CPUTF8[] cputf8Arr2, int[] iArr3) {
        super(f107201l);
        this.f107202c = i;
        this.f107203d = iArr;
        this.f107204e = iArr2;
        this.f107208i = cputf8Arr;
        this.f107209j = cputf8Arr2;
        this.f107207h = iArr3;
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        f107201l = cputf8;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public int getLength() {
        return (this.f107202c * 10) + 2;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(getAttributeName());
        for (int i = 0; i < this.f107202c; i++) {
            arrayList.add(this.f107208i[i]);
            arrayList.add(this.f107209j[i]);
        }
        return (ClassFileEntry[]) arrayList.toArray(ClassFileEntry.NONE);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute
    public int[] getStartPCs() {
        return this.f107203d;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute
    public void renumber(List<Integer> list) throws Pack200Exception {
        int[] iArr = this.f107203d;
        int[] iArr2 = new int[iArr.length];
        int i = 0;
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        super.renumber(list);
        int i2 = this.f107210k;
        while (true) {
            int[] iArr3 = this.f107204e;
            if (i >= iArr3.length) {
                return;
            }
            int i3 = this.f107203d[i];
            int i4 = iArr2[i] + iArr3[i];
            if (i4 < 0) {
                throw new Pack200Exception("Error renumbering bytecode indexes");
            }
            this.f107204e[i] = i4 == list.size() ? i2 - i3 : list.get(i4).intValue() - i3;
            i++;
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        int i = this.f107202c;
        this.f107205f = new int[i];
        this.f107206g = new int[i];
        for (int i2 = 0; i2 < this.f107202c; i2++) {
            this.f107208i[i2].resolve(classConstantPool);
            this.f107209j[i2].resolve(classConstantPool);
            this.f107205f[i2] = classConstantPool.indexOf(this.f107208i[i2]);
            this.f107206g[i2] = classConstantPool.indexOf(this.f107209j[i2]);
        }
    }

    public void setCodeLength(int i) {
        this.f107210k = i;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "LocalVariableTable: " + this.f107202c + " variables";
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107202c);
        for (int i = 0; i < this.f107202c; i++) {
            dataOutputStream.writeShort(this.f107203d[i]);
            dataOutputStream.writeShort(this.f107204e[i]);
            dataOutputStream.writeShort(this.f107205f[i]);
            dataOutputStream.writeShort(this.f107206g[i]);
            dataOutputStream.writeShort(this.f107207h[i]);
        }
    }
}
