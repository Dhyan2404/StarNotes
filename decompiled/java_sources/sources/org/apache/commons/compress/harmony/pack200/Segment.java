package org.apache.commons.compress.harmony.pack200;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.compress.harmony.pack200.Archive;
import org.objectweb.asm.AnnotationVisitor;
import org.objectweb.asm.Attribute;
import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.FieldVisitor;
import org.objectweb.asm.Label;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Type;

/* loaded from: classes12.dex */
public class Segment extends ClassVisitor {
    public static int ASM_API = 262144;

    /* renamed from: a */
    public SegmentHeader f106738a;

    /* renamed from: b */
    public CpBands f106739b;

    /* renamed from: c */
    public AttributeDefinitionBands f106740c;

    /* renamed from: d */
    public IcBands f106741d;

    /* renamed from: e */
    public ClassBands f106742e;

    /* renamed from: f */
    public BcBands f106743f;

    /* renamed from: g */
    public FileBands f106744g;

    /* renamed from: h */
    public final SegmentFieldVisitor f106745h;

    /* renamed from: i */
    public final SegmentMethodVisitor f106746i;

    /* renamed from: j */
    public Pack200ClassReader f106747j;

    /* renamed from: k */
    public PackingOptions f106748k;

    /* renamed from: l */
    public boolean f106749l;

    /* renamed from: m */
    public Attribute[] f106750m;

    /* loaded from: classes12.dex */
    public class ArrayVisitor extends AnnotationVisitor {

        /* renamed from: a */
        public final int f106751a;

        /* renamed from: b */
        public final List<Integer> f106752b;

        /* renamed from: c */
        public final List<Object> f106753c;

        /* renamed from: d */
        public final List<String> f106754d;

        /* renamed from: e */
        public final List<String> f106755e;

        public ArrayVisitor(List<Integer> list, List<String> list2, List<String> list3, List<Object> list4) {
            super(Segment.ASM_API);
            this.f106752b = list;
            this.f106755e = list2;
            this.f106754d = list3;
            this.f106753c = list4;
            this.f106751a = list.size() - 1;
        }

        public void visit(String str, Object obj) {
            this.f106752b.add(this.f106751a, Integer.valueOf(this.f106752b.remove(this.f106751a).intValue() + 1));
            Segment.this.m66993g(obj, this.f106755e, this.f106753c);
        }

        public AnnotationVisitor visitAnnotation(String str, String str2) {
            throw new UnsupportedOperationException("Not yet supported");
        }

        public AnnotationVisitor visitArray(String str) {
            this.f106755e.add(IteratorUtils.f104923a);
            if (str == null) {
                str = "";
            }
            this.f106754d.add(str);
            this.f106752b.add(0);
            return new ArrayVisitor(this.f106752b, this.f106755e, this.f106754d, this.f106753c);
        }

        public void visitEnd() {
        }

        public void visitEnum(String str, String str2, String str3) {
            this.f106752b.add(Integer.valueOf(this.f106752b.remove(r2.size() - 1).intValue() + 1));
            this.f106755e.add("e");
            this.f106753c.add(str2);
            this.f106753c.add(str3);
        }
    }

    /* loaded from: classes12.dex */
    public static class PassException extends RuntimeException {
        private static final long serialVersionUID = 1;
    }

    /* loaded from: classes12.dex */
    public class SegmentFieldVisitor extends FieldVisitor {
        public SegmentFieldVisitor() {
            super(Segment.ASM_API);
        }

        public AnnotationVisitor visitAnnotation(String str, boolean z) {
            return new SegmentAnnotationVisitor(1, str, z);
        }

        public void visitAttribute(Attribute attribute) {
            if (attribute.isUnknown()) {
                String unknownAttributeAction = Segment.this.f106748k.getUnknownAttributeAction();
                if (unknownAttributeAction.equals("pass")) {
                    Segment.this.m66994h();
                    return;
                } else {
                    if (unknownAttributeAction.equals("error")) {
                        throw new Error("Unknown attribute encountered");
                    }
                    return;
                }
            }
            if (!(attribute instanceof NewAttribute)) {
                throw new IllegalArgumentException("Unexpected attribute encountered: " + attribute.type);
            }
            NewAttribute newAttribute = (NewAttribute) attribute;
            if (newAttribute.isUnknown(1)) {
                String unknownFieldAttributeAction = Segment.this.f106748k.getUnknownFieldAttributeAction(newAttribute.type);
                if (unknownFieldAttributeAction.equals("pass")) {
                    Segment.this.m66994h();
                } else if (unknownFieldAttributeAction.equals("error")) {
                    throw new Error("Unknown attribute encountered");
                }
            }
            Segment.this.f106742e.addFieldAttribute(newAttribute);
        }

        public void visitEnd() {
        }
    }

    /* loaded from: classes12.dex */
    public class SegmentMethodVisitor extends MethodVisitor {
        public SegmentMethodVisitor() {
            super(Segment.ASM_API);
        }

        public AnnotationVisitor visitAnnotation(String str, boolean z) {
            return new SegmentAnnotationVisitor(2, str, z);
        }

        public AnnotationVisitor visitAnnotationDefault() {
            return new SegmentAnnotationVisitor(2);
        }

        public void visitAttribute(Attribute attribute) {
            if (attribute.isUnknown()) {
                String unknownAttributeAction = Segment.this.f106748k.getUnknownAttributeAction();
                if (unknownAttributeAction.equals("pass")) {
                    Segment.this.m66994h();
                    return;
                } else {
                    if (unknownAttributeAction.equals("error")) {
                        throw new Error("Unknown attribute encountered");
                    }
                    return;
                }
            }
            if (!(attribute instanceof NewAttribute)) {
                throw new IllegalArgumentException("Unexpected attribute encountered: " + attribute.type);
            }
            NewAttribute newAttribute = (NewAttribute) attribute;
            if (attribute.isCodeAttribute()) {
                if (newAttribute.isUnknown(3)) {
                    String unknownCodeAttributeAction = Segment.this.f106748k.getUnknownCodeAttributeAction(newAttribute.type);
                    if (unknownCodeAttributeAction.equals("pass")) {
                        Segment.this.m66994h();
                    } else if (unknownCodeAttributeAction.equals("error")) {
                        throw new Error("Unknown attribute encountered");
                    }
                }
                Segment.this.f106742e.addCodeAttribute(newAttribute);
                return;
            }
            if (newAttribute.isUnknown(2)) {
                String unknownMethodAttributeAction = Segment.this.f106748k.getUnknownMethodAttributeAction(newAttribute.type);
                if (unknownMethodAttributeAction.equals("pass")) {
                    Segment.this.m66994h();
                } else if (unknownMethodAttributeAction.equals("error")) {
                    throw new Error("Unknown attribute encountered");
                }
            }
            Segment.this.f106742e.addMethodAttribute(newAttribute);
        }

        public void visitCode() {
            Segment.this.f106742e.addCode();
        }

        public void visitEnd() {
            Segment.this.f106742e.endOfMethod();
            Segment.this.f106743f.visitEnd();
        }

        public void visitFieldInsn(int i, String str, String str2, String str3) {
            Segment.this.f106743f.visitFieldInsn(i, str, str2, str3);
        }

        public void visitFrame(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        }

        public void visitIincInsn(int i, int i2) {
            Segment.this.f106743f.visitIincInsn(i, i2);
        }

        public void visitInsn(int i) {
            Segment.this.f106743f.visitInsn(i);
        }

        public void visitIntInsn(int i, int i2) {
            Segment.this.f106743f.visitIntInsn(i, i2);
        }

        public void visitJumpInsn(int i, Label label) {
            Segment.this.f106743f.visitJumpInsn(i, label);
        }

        public void visitLabel(Label label) {
            Segment.this.f106743f.visitLabel(label);
        }

        public void visitLdcInsn(Object obj) {
            Segment.this.f106743f.visitLdcInsn(obj);
        }

        public void visitLineNumber(int i, Label label) {
            if (Segment.this.f106749l) {
                return;
            }
            Segment.this.f106742e.addLineNumber(i, label);
        }

        public void visitLocalVariable(String str, String str2, String str3, Label label, Label label2, int i) {
            if (Segment.this.f106749l) {
                return;
            }
            Segment.this.f106742e.addLocalVariable(str, str2, str3, label, label2, i);
        }

        public void visitLookupSwitchInsn(Label label, int[] iArr, Label[] labelArr) {
            Segment.this.f106743f.visitLookupSwitchInsn(label, iArr, labelArr);
        }

        public void visitMaxs(int i, int i2) {
            Segment.this.f106742e.addMaxStack(i, i2);
        }

        public void visitMethodInsn(int i, String str, String str2, String str3) {
            Segment.this.f106743f.visitMethodInsn(i, str, str2, str3);
        }

        public void visitMultiANewArrayInsn(String str, int i) {
            Segment.this.f106743f.visitMultiANewArrayInsn(str, i);
        }

        public AnnotationVisitor visitParameterAnnotation(int i, String str, boolean z) {
            return new SegmentAnnotationVisitor(2, i, str, z);
        }

        public void visitTableSwitchInsn(int i, int i2, Label label, Label... labelArr) {
            Segment.this.f106743f.visitTableSwitchInsn(i, i2, label, labelArr);
        }

        public void visitTryCatchBlock(Label label, Label label2, Label label3, String str) {
            Segment.this.f106742e.addHandler(label, label2, label3, str);
        }

        public void visitTypeInsn(int i, String str) {
            Segment.this.f106743f.visitTypeInsn(i, str);
        }

        public void visitVarInsn(int i, int i2) {
            Segment.this.f106743f.visitVarInsn(i, i2);
        }
    }

    public Segment() {
        super(ASM_API);
        this.f106745h = new SegmentFieldVisitor();
        this.f106746i = new SegmentMethodVisitor();
    }

    /* renamed from: g */
    public final void m66993g(Object obj, List<String> list, List<Object> list2) {
        if (obj instanceof Integer) {
            list.add("I");
            list2.add(obj);
            return;
        }
        if (obj instanceof Double) {
            list.add(SardineUtil.DEFAULT_NAMESPACE_PREFIX);
            list2.add(obj);
            return;
        }
        if (obj instanceof Float) {
            list.add("F");
            list2.add(obj);
            return;
        }
        if (obj instanceof Long) {
            list.add("J");
            list2.add(obj);
            return;
        }
        if (obj instanceof Byte) {
            list.add("B");
            list2.add(Integer.valueOf(((Byte) obj).intValue()));
            return;
        }
        if (obj instanceof Character) {
            list.add(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY);
            list2.add(Integer.valueOf(((Character) obj).charValue()));
            return;
        }
        if (obj instanceof Short) {
            list.add("S");
            list2.add(Integer.valueOf(((Short) obj).intValue()));
            return;
        }
        if (obj instanceof Boolean) {
            list.add(Constants.HASIDCALL_INDEX_SIG);
            list2.add(Integer.valueOf(((Boolean) obj).booleanValue() ? 1 : 0));
        } else if (obj instanceof String) {
            list.add("s");
            list2.add(obj);
        } else if (obj instanceof Type) {
            list.add("c");
            list2.add(((Type) obj).toString());
        }
    }

    public AttributeDefinitionBands getAttrBands() {
        return this.f106740c;
    }

    public ClassBands getClassBands() {
        return this.f106742e;
    }

    public CpBands getCpBands() {
        return this.f106739b;
    }

    public Pack200ClassReader getCurrentClassReader() {
        return this.f106747j;
    }

    public IcBands getIcBands() {
        return this.f106741d;
    }

    public SegmentHeader getSegmentHeader() {
        return this.f106738a;
    }

    /* renamed from: h */
    public final void m66994h() {
        throw new PassException();
    }

    /* renamed from: i */
    public final void m66995i(Archive.C18891b c18891b, Attribute[] attributeArr) throws Pack200Exception {
        this.f106738a.setClass_count(c18891b.m66853d());
        for (Pack200ClassReader pack200ClassReader : c18891b.m66856g()) {
            this.f106747j = pack200ClassReader;
            boolean z = false;
            try {
                pack200ClassReader.accept(this, attributeArr, this.f106749l ? 2 : 0);
            } catch (PassException unused) {
                this.f106742e.removeCurrentClass();
                String fileName = pack200ClassReader.getFileName();
                this.f106748k.addPassFile(fileName);
                this.f106739b.m66940r(fileName);
                Iterator<Archive.C18890a> it2 = c18891b.m66857h().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Archive.C18890a next = it2.next();
                    if (next.m66844e().equals(fileName)) {
                        next.m66847h(pack200ClassReader.b);
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    throw new Pack200Exception("Error passing file " + fileName);
                }
            }
        }
    }

    public boolean lastConstantHadWideIndex() {
        return this.f106747j.lastConstantHadWideIndex();
    }

    public void pack(Archive.C18891b c18891b, OutputStream outputStream, PackingOptions packingOptions) throws IOException, Pack200Exception {
        this.f106748k = packingOptions;
        this.f106749l = packingOptions.isStripDebug();
        int effort = packingOptions.getEffort();
        this.f106750m = packingOptions.getUnknownAttributePrototypes();
        PackingUtils.log("Start to pack a new segment with " + c18891b.m66854e() + " files including " + c18891b.m66853d() + " classes");
        PackingUtils.log("Initialize a header for the segment");
        SegmentHeader segmentHeader = new SegmentHeader();
        this.f106738a = segmentHeader;
        segmentHeader.setFile_count(c18891b.m66854e());
        this.f106738a.setHave_all_code_flags(this.f106749l ^ true);
        if (!packingOptions.isKeepDeflateHint()) {
            this.f106738a.setDeflate_hint("true".equals(packingOptions.getDeflateHint()));
        }
        PackingUtils.log("Setup constant pool bands for the segment");
        this.f106739b = new CpBands(this, effort);
        PackingUtils.log("Setup attribute definition bands for the segment");
        this.f106740c = new AttributeDefinitionBands(this, effort, this.f106750m);
        PackingUtils.log("Setup internal class bands for the segment");
        this.f106741d = new IcBands(this.f106738a, this.f106739b, effort);
        PackingUtils.log("Setup class bands for the segment");
        this.f106742e = new ClassBands(this, c18891b.m66853d(), effort, this.f106749l);
        PackingUtils.log("Setup byte code bands for the segment");
        this.f106743f = new BcBands(this.f106739b, this, effort);
        PackingUtils.log("Setup file bands for the segment");
        this.f106744g = new FileBands(this.f106739b, this.f106738a, packingOptions, c18891b, effort);
        m66995i(c18891b, this.f106750m);
        this.f106739b.finaliseBands();
        this.f106740c.finaliseBands();
        this.f106741d.finaliseBands();
        this.f106742e.finaliseBands();
        this.f106743f.finaliseBands();
        this.f106744g.finaliseBands();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PackingUtils.log("Packing...");
        int numClassesProcessed = this.f106742e.numClassesProcessed();
        this.f106738a.setClass_count(numClassesProcessed);
        this.f106739b.pack(byteArrayOutputStream);
        if (numClassesProcessed > 0) {
            this.f106740c.pack(byteArrayOutputStream);
            this.f106741d.pack(byteArrayOutputStream);
            this.f106742e.pack(byteArrayOutputStream);
            this.f106743f.pack(byteArrayOutputStream);
        }
        this.f106744g.pack(byteArrayOutputStream);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        this.f106738a.pack(byteArrayOutputStream2);
        byteArrayOutputStream2.writeTo(outputStream);
        byteArrayOutputStream.writeTo(outputStream);
        c18891b.m66852c(byteArrayOutputStream2.size());
        c18891b.m66852c(byteArrayOutputStream.size());
        PackingUtils.log("Wrote total of " + c18891b.m66858i() + " bytes");
        PackingUtils.log("Transmitted " + c18891b.m66854e() + " files of " + c18891b.m66855f() + " input bytes in a segment of " + c18891b.m66858i() + " bytes");
    }

    public void visit(int i, int i2, String str, String str2, String str3, String[] strArr) {
        this.f106743f.setCurrentClass(str, str3);
        this.f106738a.addMajorVersion(i);
        this.f106742e.addClass(i, i2, str, str2, str3, strArr);
    }

    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        return new SegmentAnnotationVisitor(0, str, z);
    }

    public void visitAttribute(Attribute attribute) {
        if (attribute.isUnknown()) {
            String unknownAttributeAction = this.f106748k.getUnknownAttributeAction();
            if (unknownAttributeAction.equals("pass")) {
                m66994h();
                return;
            } else {
                if (unknownAttributeAction.equals("error")) {
                    throw new Error("Unknown attribute encountered");
                }
                return;
            }
        }
        if (!(attribute instanceof NewAttribute)) {
            throw new IllegalArgumentException("Unexpected attribute encountered: " + attribute.type);
        }
        NewAttribute newAttribute = (NewAttribute) attribute;
        if (newAttribute.isUnknown(0)) {
            String unknownClassAttributeAction = this.f106748k.getUnknownClassAttributeAction(newAttribute.type);
            if (unknownClassAttributeAction.equals("pass")) {
                m66994h();
            } else if (unknownClassAttributeAction.equals("error")) {
                throw new Error("Unknown attribute encountered");
            }
        }
        this.f106742e.addClassAttribute(newAttribute);
    }

    public void visitEnd() {
        this.f106742e.endOfClass();
    }

    public FieldVisitor visitField(int i, String str, String str2, String str3, Object obj) {
        this.f106742e.addField(i, str, str2, str3, obj);
        return this.f106745h;
    }

    public void visitInnerClass(String str, String str2, String str3, int i) {
        this.f106741d.addInnerClass(str, str2, str3, i);
    }

    public MethodVisitor visitMethod(int i, String str, String str2, String str3, String[] strArr) {
        this.f106742e.addMethod(i, str, str2, str3, strArr);
        return this.f106746i;
    }

    public void visitOuterClass(String str, String str2, String str3) {
        this.f106742e.addEnclosingMethod(str, str2, str3);
    }

    public void visitSource(String str, String str2) {
        if (this.f106749l) {
            return;
        }
        this.f106742e.addSourceFile(str);
    }

    /* loaded from: classes12.dex */
    public class SegmentAnnotationVisitor extends AnnotationVisitor {

        /* renamed from: a */
        public int f106757a;

        /* renamed from: b */
        public int f106758b;

        /* renamed from: c */
        public String f106759c;

        /* renamed from: d */
        public boolean f106760d;

        /* renamed from: e */
        public final List<String> f106761e;

        /* renamed from: f */
        public final List<String> f106762f;

        /* renamed from: g */
        public final List<Object> f106763g;

        /* renamed from: h */
        public final List<Integer> f106764h;

        /* renamed from: i */
        public final List<String> f106765i;

        /* renamed from: j */
        public final List<String> f106766j;

        /* renamed from: k */
        public final List<Integer> f106767k;

        /* renamed from: org.apache.commons.compress.harmony.pack200.Segment$SegmentAnnotationVisitor$a */
        /* loaded from: classes12.dex */
        public class C18895a extends AnnotationVisitor {
            public C18895a(int i, AnnotationVisitor annotationVisitor) {
                super(i, annotationVisitor);
            }

            /* renamed from: a */
            public void m67000a(String str, Object obj) {
                SegmentAnnotationVisitor.this.f106767k.add(Integer.valueOf(((Integer) SegmentAnnotationVisitor.this.f106767k.remove(SegmentAnnotationVisitor.this.f106767k.size() - 1)).intValue() + 1));
                SegmentAnnotationVisitor.this.f106766j.add(str);
                SegmentAnnotationVisitor segmentAnnotationVisitor = SegmentAnnotationVisitor.this;
                Segment.this.m66993g(obj, segmentAnnotationVisitor.f106762f, SegmentAnnotationVisitor.this.f106763g);
            }

            /* renamed from: b */
            public AnnotationVisitor m67001b(String str, String str2) {
                throw new UnsupportedOperationException("Not yet supported");
            }

            /* renamed from: c */
            public AnnotationVisitor m67002c(String str) {
                throw new UnsupportedOperationException("Not yet supported");
            }

            /* renamed from: d */
            public void m67003d() {
            }

            /* renamed from: e */
            public void m67004e(String str, String str2, String str3) {
                SegmentAnnotationVisitor.this.f106767k.add(Integer.valueOf(((Integer) SegmentAnnotationVisitor.this.f106767k.remove(SegmentAnnotationVisitor.this.f106767k.size() - 1)).intValue() + 1));
                SegmentAnnotationVisitor.this.f106762f.add("e");
                SegmentAnnotationVisitor.this.f106766j.add(str);
                SegmentAnnotationVisitor.this.f106763g.add(str2);
                SegmentAnnotationVisitor.this.f106763g.add(str3);
            }
        }

        public SegmentAnnotationVisitor(int i, String str, boolean z) {
            super(Segment.ASM_API);
            this.f106757a = -1;
            this.f106758b = -1;
            this.f106761e = new ArrayList();
            this.f106762f = new ArrayList();
            this.f106763g = new ArrayList();
            this.f106764h = new ArrayList();
            this.f106765i = new ArrayList();
            this.f106766j = new ArrayList();
            this.f106767k = new ArrayList();
            this.f106757a = i;
            this.f106759c = str;
            this.f106760d = z;
        }

        public void visit(String str, Object obj) {
            if (str == null) {
                str = "";
            }
            this.f106761e.add(str);
            Segment.this.m66993g(obj, this.f106762f, this.f106763g);
        }

        public AnnotationVisitor visitAnnotation(String str, String str2) {
            this.f106762f.add("@");
            if (str == null) {
                str = "";
            }
            this.f106761e.add(str);
            this.f106765i.add(str2);
            this.f106767k.add(0);
            return new C18895a(this.f106757a, this.av);
        }

        public AnnotationVisitor visitArray(String str) {
            this.f106762f.add(IteratorUtils.f104923a);
            if (str == null) {
                str = "";
            }
            this.f106761e.add(str);
            this.f106764h.add(0);
            return new ArrayVisitor(this.f106764h, this.f106762f, this.f106761e, this.f106763g);
        }

        public void visitEnd() {
            if (this.f106759c == null) {
                Segment.this.f106742e.addAnnotationDefault(this.f106761e, this.f106762f, this.f106763g, this.f106764h, this.f106765i, this.f106766j, this.f106767k);
            } else if (this.f106758b != -1) {
                Segment.this.f106742e.addParameterAnnotation(this.f106758b, this.f106759c, this.f106760d, this.f106761e, this.f106762f, this.f106763g, this.f106764h, this.f106765i, this.f106766j, this.f106767k);
            } else {
                Segment.this.f106742e.addAnnotation(this.f106757a, this.f106759c, this.f106760d, this.f106761e, this.f106762f, this.f106763g, this.f106764h, this.f106765i, this.f106766j, this.f106767k);
            }
        }

        public void visitEnum(String str, String str2, String str3) {
            this.f106762f.add("e");
            if (str == null) {
                str = "";
            }
            this.f106761e.add(str);
            this.f106763g.add(str2);
            this.f106763g.add(str3);
        }

        public SegmentAnnotationVisitor(int i) {
            super(Segment.ASM_API);
            this.f106757a = -1;
            this.f106758b = -1;
            this.f106761e = new ArrayList();
            this.f106762f = new ArrayList();
            this.f106763g = new ArrayList();
            this.f106764h = new ArrayList();
            this.f106765i = new ArrayList();
            this.f106766j = new ArrayList();
            this.f106767k = new ArrayList();
            this.f106757a = i;
        }

        public SegmentAnnotationVisitor(int i, int i2, String str, boolean z) {
            super(Segment.ASM_API);
            this.f106757a = -1;
            this.f106758b = -1;
            this.f106761e = new ArrayList();
            this.f106762f = new ArrayList();
            this.f106763g = new ArrayList();
            this.f106764h = new ArrayList();
            this.f106765i = new ArrayList();
            this.f106766j = new ArrayList();
            this.f106767k = new ArrayList();
            this.f106757a = i;
            this.f106758b = i2;
            this.f106759c = str;
            this.f106760d = z;
        }
    }
}
