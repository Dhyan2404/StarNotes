package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.compress.harmony.unpack200.bytecode.AnnotationsAttribute;

/* loaded from: classes12.dex */
public class RuntimeVisibleorInvisibleParameterAnnotationsAttribute extends AnnotationsAttribute {

    /* renamed from: c */
    public final int f107278c;

    /* renamed from: d */
    public final ParameterAnnotation[] f107279d;

    /* loaded from: classes12.dex */
    public static class ParameterAnnotation {

        /* renamed from: a */
        public final AnnotationsAttribute.Annotation[] f107280a;

        /* renamed from: b */
        public final int f107281b;

        public ParameterAnnotation(AnnotationsAttribute.Annotation[] annotationArr) {
            this.f107281b = annotationArr.length;
            this.f107280a = annotationArr;
        }

        public List<Object> getClassFileEntries() {
            ArrayList arrayList = new ArrayList();
            for (AnnotationsAttribute.Annotation annotation : this.f107280a) {
                arrayList.addAll(annotation.getClassFileEntries());
            }
            return arrayList;
        }

        public int getLength() {
            int i = 2;
            for (AnnotationsAttribute.Annotation annotation : this.f107280a) {
                i += annotation.getLength();
            }
            return i;
        }

        public void resolve(ClassConstantPool classConstantPool) {
            for (AnnotationsAttribute.Annotation annotation : this.f107280a) {
                annotation.resolve(classConstantPool);
            }
        }

        public void writeBody(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeShort(this.f107281b);
            for (AnnotationsAttribute.Annotation annotation : this.f107280a) {
                annotation.writeBody(dataOutputStream);
            }
        }
    }

    public RuntimeVisibleorInvisibleParameterAnnotationsAttribute(CPUTF8 cputf8, ParameterAnnotation[] parameterAnnotationArr) {
        super(cputf8);
        this.f107278c = parameterAnnotationArr.length;
        this.f107279d = parameterAnnotationArr;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public int getLength() {
        int i = 1;
        for (int i2 = 0; i2 < this.f107278c; i2++) {
            i += this.f107279d[i2].getLength();
        }
        return i;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.attributeName);
        for (ParameterAnnotation parameterAnnotation : this.f107279d) {
            arrayList.addAll(parameterAnnotation.getClassFileEntries());
        }
        return (ClassFileEntry[]) arrayList.toArray(ClassFileEntry.NONE);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        for (ParameterAnnotation parameterAnnotation : this.f107279d) {
            parameterAnnotation.resolve(classConstantPool);
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return this.attributeName.underlyingString() + ": " + this.f107278c + " parameter annotations";
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.f107278c);
        for (int i = 0; i < this.f107278c; i++) {
            this.f107279d[i].writeBody(dataOutputStream);
        }
    }
}
