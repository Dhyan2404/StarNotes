package org.apache.commons.compress.harmony.unpack200;

import com.google.common.reflect.ClassPath;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.function.Consumer;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import java.util.zip.CRC32;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;
import org.apache.commons.compress.harmony.unpack200.IcTuple;
import org.apache.commons.compress.harmony.unpack200.bytecode.Attribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPField;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPMethod;
import org.apache.commons.compress.harmony.unpack200.bytecode.ClassConstantPool;
import org.apache.commons.compress.harmony.unpack200.bytecode.ClassFile;
import org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry;
import org.apache.commons.compress.harmony.unpack200.bytecode.InnerClassesAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.SourceFileAttribute;

/* loaded from: classes12.dex */
public class Segment {
    public static final int LOG_LEVEL_QUIET = 0;
    public static final int LOG_LEVEL_STANDARD = 1;
    public static final int LOG_LEVEL_VERBOSE = 2;

    /* renamed from: a */
    public SegmentHeader f107037a;

    /* renamed from: b */
    public CpBands f107038b;

    /* renamed from: c */
    public AttrDefinitionBands f107039c;

    /* renamed from: d */
    public IcBands f107040d;

    /* renamed from: e */
    public ClassBands f107041e;

    /* renamed from: f */
    public BcBands f107042f;

    /* renamed from: g */
    public FileBands f107043g;

    /* renamed from: h */
    public boolean f107044h;

    /* renamed from: i */
    public boolean f107045i;

    /* renamed from: j */
    public boolean f107046j;

    /* renamed from: k */
    public int f107047k;

    /* renamed from: l */
    public PrintWriter f107048l;

    /* renamed from: m */
    public byte[][] f107049m;

    /* renamed from: n */
    public boolean[] f107050n;

    /* renamed from: o */
    public boolean[] f107051o;

    /* renamed from: p */
    public InputStream f107052p;

    /* renamed from: a */
    public final ClassFile m67088a(int i) {
        int i2;
        ClassFile classFile = new ClassFile();
        int[] classVersionMajor = this.f107041e.getClassVersionMajor();
        int[] classVersionMinor = this.f107041e.getClassVersionMinor();
        if (classVersionMajor != null) {
            classFile.major = classVersionMajor[i];
            classFile.minor = classVersionMinor[i];
        } else {
            classFile.major = this.f107037a.getDefaultClassMajorVersion();
            classFile.minor = this.f107037a.getDefaultClassMinorVersion();
        }
        ClassConstantPool classConstantPool = classFile.pool;
        int i3 = this.f107041e.getClassThisInts()[i];
        String str = this.f107038b.getCpClass()[i3];
        int lastIndexOf = str.lastIndexOf("/") + 1;
        ArrayList<Attribute> arrayList = this.f107041e.getClassAttributes()[i];
        SourceFileAttribute sourceFileAttribute = null;
        for (Attribute attribute : arrayList) {
            if (attribute.isSourceFileAttribute()) {
                sourceFileAttribute = (SourceFileAttribute) attribute;
            }
        }
        if (sourceFileAttribute != null) {
            classFile.attributes = new Attribute[]{(Attribute) classConstantPool.add(sourceFileAttribute)};
        } else if (this.f107039c.getAttributeDefinitionMap().getAttributeLayout(AttributeLayout.ATTRIBUTE_SOURCE_FILE, 0).matches(this.f107041e.getRawClassFlags()[i])) {
            int i4 = -1;
            for (int i5 = 0; i5 < str.length(); i5++) {
                if (str.charAt(i5) <= '$') {
                    i4 = i5;
                }
            }
            classFile.attributes = new Attribute[]{(Attribute) classConstantPool.add(new SourceFileAttribute(this.f107038b.cpUTF8Value((i4 <= -1 || lastIndexOf > i4) ? str.substring(lastIndexOf) + ".java" : str.substring(lastIndexOf, i4) + ".java", false)))};
        } else {
            classFile.attributes = new Attribute[0];
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            Attribute attribute2 = arrayList.get(i6);
            if (!attribute2.isSourceFileAttribute()) {
                arrayList2.add(attribute2);
            }
        }
        Attribute[] attributeArr = classFile.attributes;
        Attribute[] attributeArr2 = new Attribute[attributeArr.length + arrayList2.size()];
        classFile.attributes = attributeArr2;
        System.arraycopy(attributeArr, 0, attributeArr2, 0, attributeArr.length);
        for (int i7 = 0; i7 < arrayList2.size(); i7++) {
            Attribute attribute3 = (Attribute) arrayList2.get(i7);
            classConstantPool.add(attribute3);
            classFile.attributes[attributeArr.length + i7] = attribute3;
        }
        ClassFileEntry add = classConstantPool.add(this.f107038b.cpClassValue(i3));
        ClassFileEntry add2 = classConstantPool.add(this.f107038b.cpClassValue(this.f107041e.getClassSuperInts()[i]));
        int length = this.f107041e.getClassInterfacesInts()[i].length;
        ClassFileEntry[] classFileEntryArr = new ClassFileEntry[length];
        for (int i8 = 0; i8 < length; i8++) {
            classFileEntryArr[i8] = classConstantPool.add(this.f107038b.cpClassValue(this.f107041e.getClassInterfacesInts()[i][i8]));
        }
        int i9 = this.f107041e.getClassFieldCount()[i];
        ClassFileEntry[] classFileEntryArr2 = new ClassFileEntry[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = this.f107041e.getFieldDescrInts()[i][i10];
            classFileEntryArr2[i10] = classConstantPool.add(new CPField(this.f107038b.cpUTF8Value(this.f107038b.getCpDescriptorNameInts()[i11]), this.f107038b.cpSignatureValue(this.f107038b.getCpDescriptorTypeInts()[i11]), this.f107041e.getFieldFlags()[i][i10], this.f107041e.getFieldAttributes()[i][i10]));
        }
        int i12 = this.f107041e.getClassMethodCount()[i];
        ClassFileEntry[] classFileEntryArr3 = new ClassFileEntry[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = this.f107041e.getMethodDescrInts()[i][i13];
            classFileEntryArr3[i13] = classConstantPool.add(new CPMethod(this.f107038b.cpUTF8Value(this.f107038b.getCpDescriptorNameInts()[i14]), this.f107038b.cpSignatureValue(this.f107038b.getCpDescriptorTypeInts()[i14]), this.f107041e.getMethodFlags()[i][i13], this.f107041e.getMethodAttributes()[i][i13]));
        }
        classConstantPool.addNestedEntries();
        IcTuple[] icTupleArr = getClassBands().getIcLocal()[i];
        boolean z = icTupleArr != null;
        InnerClassesAttribute innerClassesAttribute = new InnerClassesAttribute(AttributeLayout.ATTRIBUTE_INNER_CLASSES);
        IcTuple[] relevantIcTuples = getIcBands().getRelevantIcTuples(str, classConstantPool);
        Iterator<IcTuple> it2 = m67089b(icTupleArr, relevantIcTuples).iterator();
        boolean z2 = false;
        while (it2.hasNext()) {
            IcTuple next = it2.next();
            int thisClassIndex = next.thisClassIndex();
            Iterator<IcTuple> it3 = it2;
            int outerClassIndex = next.outerClassIndex();
            ClassFileEntry[] classFileEntryArr4 = classFileEntryArr3;
            int simpleClassNameIndex = next.simpleClassNameIndex();
            ClassFileEntry[] classFileEntryArr5 = classFileEntryArr2;
            ClassFileEntry[] classFileEntryArr6 = classFileEntryArr;
            int i15 = length;
            ClassFileEntry classFileEntry = add2;
            innerClassesAttribute.addInnerClassesEntry(thisClassIndex != -1 ? this.f107038b.cpClassValue(thisClassIndex) : this.f107038b.cpClassValue(next.thisClassString()), next.isMember() ? outerClassIndex != -1 ? this.f107038b.cpClassValue(outerClassIndex) : this.f107038b.cpClassValue(next.outerClassString()) : null, !next.isAnonymous() ? simpleClassNameIndex != -1 ? this.f107038b.cpUTF8Value(simpleClassNameIndex) : this.f107038b.cpUTF8Value(next.simpleClassName()) : null, next.f106966F);
            it2 = it3;
            classFileEntryArr3 = classFileEntryArr4;
            classFileEntryArr2 = classFileEntryArr5;
            classFileEntryArr = classFileEntryArr6;
            length = i15;
            add2 = classFileEntry;
            z2 = true;
        }
        ClassFileEntry classFileEntry2 = add2;
        int i16 = length;
        ClassFileEntry[] classFileEntryArr7 = classFileEntryArr;
        ClassFileEntry[] classFileEntryArr8 = classFileEntryArr3;
        ClassFileEntry[] classFileEntryArr9 = classFileEntryArr2;
        if (z && icTupleArr.length == 0) {
            z2 = false;
        }
        if (!z && relevantIcTuples.length == 0) {
            z2 = false;
        }
        if (z2) {
            Attribute[] attributeArr3 = classFile.attributes;
            int length2 = attributeArr3.length + 1;
            Attribute[] attributeArr4 = new Attribute[length2];
            i2 = 0;
            System.arraycopy(attributeArr3, 0, attributeArr4, 0, attributeArr3.length);
            attributeArr4[length2 - 1] = innerClassesAttribute;
            classFile.attributes = attributeArr4;
            classConstantPool.addWithNestedEntries(innerClassesAttribute);
        } else {
            i2 = 0;
        }
        classConstantPool.resolve(this);
        classFile.accessFlags = (int) this.f107041e.getClassFlags()[i];
        classFile.thisClass = classConstantPool.indexOf(add);
        classFile.superClass = classConstantPool.indexOf(classFileEntry2);
        classFile.interfaces = new int[i16];
        for (int i17 = i2; i17 < i16; i17++) {
            classFile.interfaces[i17] = classConstantPool.indexOf(classFileEntryArr7[i17]);
        }
        classFile.fields = classFileEntryArr9;
        classFile.methods = classFileEntryArr8;
        return classFile;
    }

    /* renamed from: b */
    public final List<IcTuple> m67089b(IcTuple[] icTupleArr, IcTuple[] icTupleArr2) {
        final ArrayList arrayList = new ArrayList(icTupleArr2.length);
        ArrayList arrayList2 = new ArrayList(icTupleArr2.length);
        HashSet hashSet = new HashSet(icTupleArr2.length);
        if (icTupleArr != null) {
            for (IcTuple icTuple : icTupleArr) {
                if (hashSet.add(icTuple)) {
                    arrayList.add(icTuple);
                }
            }
        }
        for (IcTuple icTuple2 : icTupleArr2) {
            if (hashSet.add(icTuple2)) {
                arrayList.add(icTuple2);
            } else {
                arrayList2.add(icTuple2);
            }
        }
        arrayList2.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.rdm
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.remove((IcTuple) obj);
            }
        });
        return arrayList;
    }

    /* renamed from: c */
    public final void m67090c() throws IOException, Pack200Exception {
        this.f107037a.unpack();
        this.f107038b.unpack();
        this.f107039c.unpack();
        this.f107040d.unpack();
        this.f107041e.unpack();
        this.f107042f.unpack();
        this.f107043g.unpack();
        int numberOfFiles = this.f107037a.getNumberOfFiles();
        String[] fileName = this.f107043g.getFileName();
        int[] fileOptions = this.f107043g.getFileOptions();
        SegmentOptions options = this.f107037a.getOptions();
        this.f107049m = new byte[numberOfFiles];
        this.f107050n = new boolean[numberOfFiles];
        this.f107051o = new boolean[numberOfFiles];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        int i = 0;
        for (int i2 = 0; i2 < numberOfFiles; i2++) {
            String str = fileName[i2];
            boolean z = true;
            boolean z2 = str == null || str.equals("");
            boolean z3 = (fileOptions[i2] & 2) == 2 || z2;
            if (z3 && z2) {
                fileName[i2] = this.f107038b.getCpClass()[this.f107041e.getClassThisInts()[i]] + ClassPath.f35080d;
            }
            if (this.f107044h) {
                this.f107050n[i2] = this.f107045i;
            } else {
                boolean[] zArr = this.f107050n;
                if ((fileOptions[i2] & 1) != 1 && !options.shouldDeflate()) {
                    z = false;
                }
                zArr[i2] = z;
            }
            this.f107051o[i2] = z3;
            if (z3) {
                m67088a(i).write(dataOutputStream);
                dataOutputStream.flush();
                this.f107049m[i] = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.reset();
                i++;
            }
        }
    }

    /* renamed from: d */
    public final void m67091d(InputStream inputStream) throws IOException, Pack200Exception {
        log(2, "-------");
        CpBands cpBands = new CpBands(this);
        this.f107038b = cpBands;
        cpBands.read(inputStream);
        AttrDefinitionBands attrDefinitionBands = new AttrDefinitionBands(this);
        this.f107039c = attrDefinitionBands;
        attrDefinitionBands.read(inputStream);
        IcBands icBands = new IcBands(this);
        this.f107040d = icBands;
        icBands.read(inputStream);
        ClassBands classBands = new ClassBands(this);
        this.f107041e = classBands;
        classBands.read(inputStream);
        BcBands bcBands = new BcBands(this);
        this.f107042f = bcBands;
        bcBands.read(inputStream);
        FileBands fileBands = new FileBands(this);
        this.f107043g = fileBands;
        fileBands.read(inputStream);
        this.f107043g.processFileBits();
    }

    /* renamed from: e */
    public void m67092e() throws IOException, Pack200Exception {
        InputStream inputStream = this.f107052p;
        if (inputStream != null) {
            m67091d(inputStream);
        }
        m67090c();
    }

    /* renamed from: f */
    public void m67093f(InputStream inputStream) throws IOException, Pack200Exception {
        if (!inputStream.markSupported()) {
            inputStream = new BufferedInputStream(inputStream);
        }
        SegmentHeader segmentHeader = new SegmentHeader(this);
        this.f107037a = segmentHeader;
        segmentHeader.read(inputStream);
        int archiveSize = ((int) this.f107037a.getArchiveSize()) - this.f107037a.getArchiveSizeOffset();
        if (!this.f107046j || this.f107037a.getArchiveSize() == 0) {
            m67091d(inputStream);
            return;
        }
        byte[] bArr = new byte[archiveSize];
        inputStream.read(bArr);
        this.f107052p = new BufferedInputStream(new ByteArrayInputStream(bArr));
    }

    /* renamed from: g */
    public void m67094g(JarOutputStream jarOutputStream) throws IOException {
        writeJar(jarOutputStream);
        PrintWriter printWriter = this.f107048l;
        if (printWriter != null) {
            printWriter.close();
        }
    }

    public AttrDefinitionBands getAttrDefinitionBands() {
        return this.f107039c;
    }

    public ClassBands getClassBands() {
        return this.f107041e;
    }

    public SegmentConstantPool getConstantPool() {
        return this.f107038b.getConstantPool();
    }

    public CpBands getCpBands() {
        return this.f107038b;
    }

    public IcBands getIcBands() {
        return this.f107040d;
    }

    public SegmentHeader getSegmentHeader() {
        return this.f107037a;
    }

    public void log(int i, String str) {
        if (this.f107047k >= i) {
            this.f107048l.println(str);
        }
    }

    public void overrideDeflateHint(boolean z) {
        this.f107044h = true;
        this.f107045i = z;
    }

    public void setLogLevel(int i) {
        this.f107047k = i;
    }

    public void setLogStream(OutputStream outputStream) {
        this.f107048l = new PrintWriter((Writer) new OutputStreamWriter(outputStream, Charset.defaultCharset()), false);
    }

    public void setPreRead(boolean z) {
        this.f107046j = z;
    }

    public void unpack(InputStream inputStream, JarOutputStream jarOutputStream) throws IOException, Pack200Exception {
        m67093f(inputStream);
        m67092e();
        m67094g(jarOutputStream);
    }

    public void writeJar(JarOutputStream jarOutputStream) throws IOException {
        String[] strArr;
        int[] iArr;
        String[] fileName = this.f107043g.getFileName();
        int[] fileModtime = this.f107043g.getFileModtime();
        long[] fileSize = this.f107043g.getFileSize();
        byte[][] fileBits = this.f107043g.getFileBits();
        int numberOfFiles = this.f107037a.getNumberOfFiles();
        long archiveModtime = this.f107037a.getArchiveModtime();
        int i = 0;
        int i2 = 0;
        while (i < numberOfFiles) {
            String str = fileName[i];
            long j = (fileModtime[i] + archiveModtime) * 1000;
            boolean z = this.f107050n[i];
            JarEntry jarEntry = new JarEntry(str);
            if (z) {
                jarEntry.setMethod(8);
                strArr = fileName;
                iArr = fileModtime;
            } else {
                jarEntry.setMethod(0);
                CRC32 crc32 = new CRC32();
                if (this.f107051o[i]) {
                    crc32.update(this.f107049m[i2]);
                    strArr = fileName;
                    iArr = fileModtime;
                    jarEntry.setSize(this.f107049m[i2].length);
                } else {
                    strArr = fileName;
                    iArr = fileModtime;
                    crc32.update(fileBits[i]);
                    jarEntry.setSize(fileSize[i]);
                }
                jarEntry.setCrc(crc32.getValue());
            }
            jarEntry.setTime(j - TimeZone.getDefault().getRawOffset());
            jarOutputStream.putNextEntry(jarEntry);
            if (this.f107051o[i]) {
                jarEntry.setSize(this.f107049m[i2].length);
                jarOutputStream.write(this.f107049m[i2]);
                i2++;
            } else {
                jarEntry.setSize(fileSize[i]);
                jarOutputStream.write(fileBits[i]);
            }
            i++;
            fileName = strArr;
            fileModtime = iArr;
        }
    }
}
