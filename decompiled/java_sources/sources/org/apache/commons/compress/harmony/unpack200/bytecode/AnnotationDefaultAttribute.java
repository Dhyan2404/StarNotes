package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import org.apache.commons.compress.harmony.unpack200.bytecode.AnnotationsAttribute;

/* loaded from: classes12.dex */
public class AnnotationDefaultAttribute extends AnnotationsAttribute {

    /* renamed from: d */
    public static CPUTF8 f107102d;

    /* renamed from: c */
    public final AnnotationsAttribute.ElementValue f107103c;

    public AnnotationDefaultAttribute(AnnotationsAttribute.ElementValue elementValue) {
        super(f107102d);
        this.f107103c = elementValue;
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        f107102d = cputf8;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        return this == obj;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public int getLength() {
        return this.f107103c.getLength();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(f107102d);
        arrayList.addAll(this.f107103c.getClassFileEntries());
        int size = arrayList.size();
        ClassFileEntry[] classFileEntryArr = new ClassFileEntry[size];
        for (int i = 0; i < size; i++) {
            classFileEntryArr[i] = (ClassFileEntry) arrayList.get(i);
        }
        return classFileEntryArr;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.f107103c.resolve(classConstantPool);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "AnnotationDefault: " + this.f107103c;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        this.f107103c.writeBody(dataOutputStream);
    }
}
