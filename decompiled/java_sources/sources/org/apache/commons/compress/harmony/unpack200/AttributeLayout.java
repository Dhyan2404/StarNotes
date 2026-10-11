package org.apache.commons.compress.harmony.unpack200;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import org.apache.commons.compress.harmony.pack200.Codec;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;
import org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry;

/* loaded from: classes12.dex */
public class AttributeLayout implements IMatcher {
    public static final String ACC_ABSTRACT = "ACC_ABSTRACT";
    public static final String ACC_ANNOTATION = "ACC_ANNOTATION";
    public static final String ACC_ENUM = "ACC_ENUM";
    public static final String ACC_FINAL = "ACC_FINAL";
    public static final String ACC_INTERFACE = "ACC_INTERFACE";
    public static final String ACC_NATIVE = "ACC_NATIVE";
    public static final String ACC_PRIVATE = "ACC_PRIVATE";
    public static final String ACC_PROTECTED = "ACC_PROTECTED";
    public static final String ACC_PUBLIC = "ACC_PUBLIC";
    public static final String ACC_STATIC = "ACC_STATIC";
    public static final String ACC_STRICT = "ACC_STRICT";
    public static final String ACC_SYNCHRONIZED = "ACC_SYNCHRONIZED";
    public static final String ACC_SYNTHETIC = "ACC_SYNTHETIC";
    public static final String ACC_TRANSIENT = "ACC_TRANSIENT";
    public static final String ACC_VOLATILE = "ACC_VOLATILE";
    public static final String ATTRIBUTE_ANNOTATION_DEFAULT = "AnnotationDefault";
    public static final String ATTRIBUTE_CLASS_FILE_VERSION = "class-file version";
    public static final String ATTRIBUTE_CONSTANT_VALUE = "ConstantValue";
    public static final String ATTRIBUTE_DEPRECATED = "Deprecated";
    public static final String ATTRIBUTE_ENCLOSING_METHOD = "EnclosingMethod";
    public static final String ATTRIBUTE_EXCEPTIONS = "Exceptions";
    public static final String ATTRIBUTE_INNER_CLASSES = "InnerClasses";
    public static final String ATTRIBUTE_LINE_NUMBER_TABLE = "LineNumberTable";
    public static final String ATTRIBUTE_LOCAL_VARIABLE_TABLE = "LocalVariableTable";
    public static final String ATTRIBUTE_LOCAL_VARIABLE_TYPE_TABLE = "LocalVariableTypeTable";
    public static final String ATTRIBUTE_RUNTIME_INVISIBLE_ANNOTATIONS = "RuntimeInvisibleAnnotations";
    public static final String ATTRIBUTE_RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS = "RuntimeInvisibleParameterAnnotations";
    public static final String ATTRIBUTE_RUNTIME_VISIBLE_ANNOTATIONS = "RuntimeVisibleAnnotations";
    public static final String ATTRIBUTE_RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS = "RuntimeVisibleParameterAnnotations";
    public static final String ATTRIBUTE_SIGNATURE = "Signature";
    public static final String ATTRIBUTE_SOURCE_FILE = "SourceFile";
    public static final int CONTEXT_CLASS = 0;
    public static final int CONTEXT_CODE = 3;
    public static final int CONTEXT_FIELD = 1;
    public static final int CONTEXT_METHOD = 2;

    /* renamed from: a */
    public final int f106825a;

    /* renamed from: b */
    public final int f106826b;

    /* renamed from: c */
    public final String f106827c;

    /* renamed from: d */
    public long f106828d;

    /* renamed from: e */
    public final String f106829e;

    /* renamed from: f */
    public final boolean f106830f;

    /* renamed from: g */
    public int f106831g;
    public static final String ATTRIBUTE_CODE = "Code";
    public static final String[] contextNames = {"Class", "Field", "Method", ATTRIBUTE_CODE};

    public AttributeLayout(String str, int i, String str2, int i2) throws Pack200Exception {
        this(str, i, str2, i2, true);
    }

    /* renamed from: a */
    public static ClassFileEntry m67014a(String str, long j, SegmentConstantPool segmentConstantPool) throws Pack200Exception {
        if (str.startsWith("R")) {
            if (str.indexOf(78) != -1) {
                j--;
            }
            if (str.startsWith("RU")) {
                return segmentConstantPool.getValue(1, j);
            }
            if (str.startsWith("RS")) {
                return segmentConstantPool.getValue(8, j);
            }
        } else if (str.startsWith("K")) {
            char charAt = str.charAt(1);
            if (charAt != 'C') {
                if (charAt == 'D') {
                    return segmentConstantPool.getValue(5, j);
                }
                if (charAt == 'F') {
                    return segmentConstantPool.getValue(3, j);
                }
                if (charAt == 'S') {
                    return segmentConstantPool.getValue(6, j);
                }
                if (charAt != 'I') {
                    if (charAt == 'J') {
                        return segmentConstantPool.getValue(4, j);
                    }
                }
            }
            return segmentConstantPool.getValue(2, j);
        }
        throw new Pack200Exception("Unknown layout encoding: " + str);
    }

    public Codec getCodec() {
        return this.f106827c.indexOf(79) >= 0 ? Codec.BRANCH5 : this.f106827c.indexOf(80) >= 0 ? Codec.BCI5 : (this.f106827c.indexOf(83) < 0 || this.f106827c.indexOf("KS") >= 0 || this.f106827c.indexOf("RS") >= 0) ? this.f106827c.indexOf(66) >= 0 ? Codec.BYTE1 : Codec.UNSIGNED5 : Codec.SIGNED5;
    }

    public int getContext() {
        return this.f106825a;
    }

    public int getIndex() {
        return this.f106826b;
    }

    public String getLayout() {
        return this.f106827c;
    }

    public String getName() {
        return this.f106829e;
    }

    public ClassFileEntry getValue(long j, SegmentConstantPool segmentConstantPool) throws Pack200Exception {
        return m67014a(this.f106827c, j, segmentConstantPool);
    }

    public int hashCode() {
        String str = this.f106829e;
        int hashCode = str != null ? str.hashCode() + 31 : 1;
        String str2 = this.f106827c;
        if (str2 != null) {
            hashCode = (hashCode * 31) + str2.hashCode();
        }
        return (((hashCode * 31) + this.f106826b) * 31) + this.f106825a;
    }

    public boolean isDefaultLayout() {
        return this.f106830f;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.IMatcher
    public boolean matches(long j) {
        return (j & this.f106828d) != 0;
    }

    public int numBackwardsCallables() {
        if (this.f106827c == "*") {
            return 1;
        }
        return this.f106831g;
    }

    public void setBackwardsCallCount(int i) {
        this.f106831g = i;
    }

    public String toString() {
        return contextNames[this.f106825a] + ": " + this.f106829e;
    }

    public AttributeLayout(String str, int i, String str2, int i2, boolean z) throws Pack200Exception {
        this.f106826b = i2;
        this.f106825a = i;
        if (i2 >= 0) {
            this.f106828d = 1 << i2;
        } else {
            this.f106828d = 0L;
        }
        if (i != 0 && i != 3 && i != 1 && i != 2) {
            throw new Pack200Exception("Attribute context out of range: " + i);
        }
        if (str2 != null) {
            if (str != null && str.length() != 0) {
                this.f106829e = str;
                this.f106827c = str2;
                this.f106830f = z;
                return;
            }
            throw new Pack200Exception("Cannot have an unnamed layout");
        }
        throw new Pack200Exception("Cannot have a null layout");
    }

    public ClassFileEntry getValue(long j, String str, SegmentConstantPool segmentConstantPool) throws Pack200Exception {
        if (!this.f106827c.startsWith("KQ")) {
            return m67014a(this.f106827c, j, segmentConstantPool);
        }
        if (str.equals(Constants.STRING_SIG)) {
            return m67014a("KS", j, segmentConstantPool);
        }
        return m67014a("K" + str + this.f106827c.substring(2), j, segmentConstantPool);
    }
}
