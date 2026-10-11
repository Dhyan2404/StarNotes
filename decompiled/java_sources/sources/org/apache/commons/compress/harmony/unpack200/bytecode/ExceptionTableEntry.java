package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.List;

/* loaded from: classes12.dex */
public class ExceptionTableEntry {

    /* renamed from: a */
    public final int f107176a;

    /* renamed from: b */
    public final int f107177b;

    /* renamed from: c */
    public final int f107178c;

    /* renamed from: d */
    public final CPClass f107179d;

    /* renamed from: e */
    public int f107180e;

    /* renamed from: f */
    public int f107181f;

    /* renamed from: g */
    public int f107182g;

    /* renamed from: h */
    public int f107183h;

    public ExceptionTableEntry(int i, int i2, int i3, CPClass cPClass) {
        this.f107176a = i;
        this.f107177b = i2;
        this.f107178c = i3;
        this.f107179d = cPClass;
    }

    public CPClass getCatchType() {
        return this.f107179d;
    }

    public void renumber(List<Integer> list) {
        this.f107180e = list.get(this.f107176a).intValue();
        int i = this.f107176a + this.f107177b;
        this.f107181f = list.get(i).intValue();
        this.f107182g = list.get(i + this.f107178c).intValue();
    }

    public void resolve(ClassConstantPool classConstantPool) {
        CPClass cPClass = this.f107179d;
        if (cPClass == null) {
            this.f107183h = 0;
        } else {
            cPClass.resolve(classConstantPool);
            this.f107183h = classConstantPool.indexOf(this.f107179d);
        }
    }

    public void write(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107180e);
        dataOutputStream.writeShort(this.f107181f);
        dataOutputStream.writeShort(this.f107182g);
        dataOutputStream.writeShort(this.f107183h);
    }
}
