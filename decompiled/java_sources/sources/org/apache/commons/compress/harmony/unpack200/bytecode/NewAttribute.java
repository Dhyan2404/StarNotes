package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes12.dex */
public class NewAttribute extends BCIRenumberedAttribute {

    /* renamed from: c */
    public final List<Integer> f107221c;

    /* renamed from: d */
    public final List<Object> f107222d;

    /* renamed from: e */
    public ClassConstantPool f107223e;

    /* renamed from: f */
    public final int f107224f;

    /* renamed from: org.apache.commons.compress.harmony.unpack200.bytecode.NewAttribute$b */
    /* loaded from: classes12.dex */
    public static class C18903b extends AbstractC18906e {

        /* renamed from: b */
        public final int f107225b;

        public C18903b(int i) {
            super();
            this.f107225b = i;
        }
    }

    /* renamed from: org.apache.commons.compress.harmony.unpack200.bytecode.NewAttribute$c */
    /* loaded from: classes12.dex */
    public static class C18904c extends AbstractC18906e {

        /* renamed from: b */
        public final int f107226b;

        public C18904c(int i) {
            super();
            this.f107226b = i;
        }
    }

    /* renamed from: org.apache.commons.compress.harmony.unpack200.bytecode.NewAttribute$d */
    /* loaded from: classes12.dex */
    public static class C18905d extends AbstractC18906e {

        /* renamed from: b */
        public final int f107227b;

        /* renamed from: c */
        public int f107228c;

        public C18905d(int i) {
            super();
            this.f107227b = i;
        }

        /* renamed from: d */
        public void m67145d(int i) {
            this.f107228c = i;
        }
    }

    /* renamed from: org.apache.commons.compress.harmony.unpack200.bytecode.NewAttribute$e */
    /* loaded from: classes12.dex */
    public static abstract class AbstractC18906e {

        /* renamed from: a */
        public int f107229a;

        public AbstractC18906e() {
        }

        /* renamed from: a */
        public void m67146a(int i) {
            this.f107229a = i;
        }
    }

    public NewAttribute(CPUTF8 cputf8, int i) {
        super(cputf8);
        this.f107221c = new ArrayList();
        this.f107222d = new ArrayList();
        this.f107224f = i;
    }

    public void addBCIndex(int i, int i2) {
        this.f107221c.add(Integer.valueOf(i));
        this.f107222d.add(new C18903b(i2));
    }

    public void addBCLength(int i, int i2) {
        this.f107221c.add(Integer.valueOf(i));
        this.f107222d.add(new C18904c(i2));
    }

    public void addBCOffset(int i, int i2) {
        this.f107221c.add(Integer.valueOf(i));
        this.f107222d.add(new C18905d(i2));
    }

    public void addInteger(int i, long j) {
        this.f107221c.add(Integer.valueOf(i));
        this.f107222d.add(Long.valueOf(j));
    }

    public void addToBody(int i, Object obj) {
        this.f107221c.add(Integer.valueOf(i));
        this.f107222d.add(obj);
    }

    public int getLayoutIndex() {
        return this.f107224f;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public int getLength() {
        Iterator<Integer> it2 = this.f107221c.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().intValue();
        }
        return i;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        Iterator<Object> it2 = this.f107222d.iterator();
        int i = 1;
        int i2 = 1;
        while (it2.hasNext()) {
            if (it2.next() instanceof ClassFileEntry) {
                i2++;
            }
        }
        ClassFileEntry[] classFileEntryArr = new ClassFileEntry[i2];
        classFileEntryArr[0] = getAttributeName();
        for (Object obj : this.f107222d) {
            if (obj instanceof ClassFileEntry) {
                classFileEntryArr[i] = (ClassFileEntry) obj;
                i++;
            }
        }
        return classFileEntryArr;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute
    public int[] getStartPCs() {
        return null;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute
    public void renumber(List<Integer> list) {
        if (this.renumbered) {
            return;
        }
        Object obj = null;
        for (Object obj2 : this.f107222d) {
            if (obj2 instanceof C18903b) {
                C18903b c18903b = (C18903b) obj2;
                c18903b.m67146a(list.get(c18903b.f107225b).intValue());
            } else if (obj2 instanceof C18905d) {
                C18905d c18905d = (C18905d) obj2;
                if (obj instanceof C18903b) {
                    int i = ((C18903b) obj).f107225b + c18905d.f107227b;
                    c18905d.m67145d(i);
                    c18905d.m67146a(list.get(i).intValue());
                } else if (obj instanceof C18905d) {
                    int i2 = ((C18905d) obj).f107228c + c18905d.f107227b;
                    c18905d.m67145d(i2);
                    c18905d.m67146a(list.get(i2).intValue());
                } else {
                    c18905d.m67146a(list.get(c18905d.f107227b).intValue());
                }
            } else if (obj2 instanceof C18904c) {
                C18904c c18904c = (C18904c) obj2;
                C18903b c18903b2 = (C18903b) obj;
                c18904c.m67146a(list.get(c18903b2.f107225b + c18904c.f107226b).intValue() - c18903b2.f107229a);
            }
            obj = obj2;
        }
        this.renumbered = true;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        for (Object obj : this.f107222d) {
            if (obj instanceof ClassFileEntry) {
                ((ClassFileEntry) obj).resolve(classConstantPool);
            }
        }
        this.f107223e = classConstantPool;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return this.attributeName.underlyingString();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        long j;
        int i;
        for (int i2 = 0; i2 < this.f107221c.size(); i2++) {
            int intValue = this.f107221c.get(i2).intValue();
            Object obj = this.f107222d.get(i2);
            if (obj instanceof Long) {
                j = ((Long) obj).longValue();
            } else {
                if (obj instanceof ClassFileEntry) {
                    i = this.f107223e.indexOf((ClassFileEntry) obj);
                } else if (obj instanceof AbstractC18906e) {
                    i = ((AbstractC18906e) obj).f107229a;
                } else {
                    j = 0;
                }
                j = i;
            }
            if (intValue == 1) {
                dataOutputStream.writeByte((int) j);
            } else if (intValue == 2) {
                dataOutputStream.writeShort((int) j);
            } else if (intValue == 4) {
                dataOutputStream.writeInt((int) j);
            } else if (intValue == 8) {
                dataOutputStream.writeLong(j);
            }
        }
    }
}
