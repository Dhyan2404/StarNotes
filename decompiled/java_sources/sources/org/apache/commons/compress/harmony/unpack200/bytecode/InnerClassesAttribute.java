package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes12.dex */
public class InnerClassesAttribute extends Attribute {

    /* renamed from: e */
    public static CPUTF8 f107187e;

    /* renamed from: c */
    public final List<C18901a> f107188c;

    /* renamed from: d */
    public final List<ConstantPoolEntry> f107189d;

    /* renamed from: org.apache.commons.compress.harmony.unpack200.bytecode.InnerClassesAttribute$a */
    /* loaded from: classes12.dex */
    public static class C18901a {

        /* renamed from: a */
        public CPClass f107190a;

        /* renamed from: b */
        public CPClass f107191b;

        /* renamed from: c */
        public CPUTF8 f107192c;

        /* renamed from: d */
        public int f107193d = -1;

        /* renamed from: e */
        public int f107194e = -1;

        /* renamed from: f */
        public int f107195f = -1;

        /* renamed from: g */
        public int f107196g;

        public C18901a(CPClass cPClass, CPClass cPClass2, CPUTF8 cputf8, int i) {
            this.f107190a = cPClass;
            this.f107191b = cPClass2;
            this.f107192c = cputf8;
            this.f107196g = i;
        }

        /* renamed from: a */
        public void m67139a(ClassConstantPool classConstantPool) {
            CPClass cPClass = this.f107190a;
            if (cPClass != null) {
                cPClass.resolve(classConstantPool);
                this.f107193d = classConstantPool.indexOf(this.f107190a);
            } else {
                this.f107193d = 0;
            }
            CPUTF8 cputf8 = this.f107192c;
            if (cputf8 != null) {
                cputf8.resolve(classConstantPool);
                this.f107195f = classConstantPool.indexOf(this.f107192c);
            } else {
                this.f107195f = 0;
            }
            CPClass cPClass2 = this.f107191b;
            if (cPClass2 == null) {
                this.f107194e = 0;
            } else {
                cPClass2.resolve(classConstantPool);
                this.f107194e = classConstantPool.indexOf(this.f107191b);
            }
        }

        /* renamed from: b */
        public void m67140b(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeShort(this.f107193d);
            dataOutputStream.writeShort(this.f107194e);
            dataOutputStream.writeShort(this.f107195f);
            dataOutputStream.writeShort(this.f107196g);
        }
    }

    public InnerClassesAttribute(String str) {
        super(f107187e);
        this.f107188c = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.f107189d = arrayList;
        arrayList.add(getAttributeName());
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        f107187e = cputf8;
    }

    /* renamed from: a */
    public final void m67138a(C18901a c18901a) {
        this.f107188c.add(c18901a);
    }

    public void addInnerClassesEntry(CPClass cPClass, CPClass cPClass2, CPUTF8 cputf8, int i) {
        if (cPClass != null) {
            this.f107189d.add(cPClass);
        }
        if (cPClass2 != null) {
            this.f107189d.add(cPClass2);
        }
        if (cputf8 != null) {
            this.f107189d.add(cputf8);
        }
        m67138a(new C18901a(cPClass, cPClass2, cputf8, i));
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void doWrite(DataOutputStream dataOutputStream) throws IOException {
        super.doWrite(dataOutputStream);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        InnerClassesAttribute innerClassesAttribute = (InnerClassesAttribute) obj;
        if (getAttributeName() == null) {
            if (innerClassesAttribute.getAttributeName() != null) {
                return false;
            }
        } else if (!getAttributeName().equals(innerClassesAttribute.getAttributeName())) {
            return false;
        }
        return true;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public int getLength() {
        return (this.f107188c.size() * 8) + 2;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        return (ClassFileEntry[]) this.f107189d.toArray(ClassFileEntry.NONE);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        return (super.hashCode() * 31) + (getAttributeName() == null ? 0 : getAttributeName().hashCode());
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        Iterator<C18901a> it2 = this.f107188c.iterator();
        while (it2.hasNext()) {
            it2.next().m67139a(classConstantPool);
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "InnerClasses: " + getAttributeName();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107188c.size());
        Iterator<C18901a> it2 = this.f107188c.iterator();
        while (it2.hasNext()) {
            it2.next().m67140b(dataOutputStream);
        }
    }
}
