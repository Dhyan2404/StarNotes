package org.apache.commons.compress.harmony.unpack200;

import java.util.Iterator;
import java.util.List;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;
import org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry;
import org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry;

/* loaded from: classes12.dex */
public class SegmentConstantPool {
    public static final int ALL = 0;
    public static final int CP_CLASS = 7;
    public static final int CP_DESCR = 9;
    public static final int CP_DOUBLE = 5;
    public static final int CP_FIELD = 10;
    public static final int CP_FLOAT = 3;
    public static final int CP_IMETHOD = 12;
    public static final int CP_INT = 2;
    public static final int CP_LONG = 4;
    public static final int CP_METHOD = 11;
    public static final int CP_STRING = 6;
    protected static final String INITSTRING = "<init>";
    protected static final String REGEX_MATCH_ALL = ".*";
    protected static final String REGEX_MATCH_INIT = "^<init>.*";
    public static final int SIGNATURE = 8;
    public static final int UTF_8 = 1;

    /* renamed from: a */
    public final CpBands f107053a;

    /* renamed from: b */
    public final SegmentConstantPoolArrayCache f107054b = new SegmentConstantPoolArrayCache();

    public SegmentConstantPool(CpBands cpBands) {
        this.f107053a = cpBands;
    }

    public static boolean regexMatches(String str, String str2) {
        if (".*".equals(str)) {
            return true;
        }
        if (REGEX_MATCH_INIT.equals(str)) {
            if (str2.length() < 6) {
                return false;
            }
            return "<init>".equals(str2.substring(0, 6));
        }
        throw new Error("regex trying to match a pattern I don't know: " + str);
    }

    public ConstantPoolEntry getClassPoolEntry(String str) {
        int matchSpecificPoolEntryIndex = matchSpecificPoolEntryIndex(this.f107053a.getCpClass(), str, 0);
        if (matchSpecificPoolEntryIndex == -1) {
            return null;
        }
        try {
            return getConstantPoolEntry(7, matchSpecificPoolEntryIndex);
        } catch (Pack200Exception unused) {
            throw new Error("Error getting class pool entry");
        }
    }

    public ConstantPoolEntry getClassSpecificPoolEntry(int i, long j, String str) throws Pack200Exception {
        String[] cpIMethodClass;
        int i2 = (int) j;
        if (i == 10) {
            cpIMethodClass = this.f107053a.getCpFieldClass();
        } else if (i == 11) {
            cpIMethodClass = this.f107053a.getCpMethodClass();
        } else {
            if (i != 12) {
                throw new Error("Don't know how to handle " + i);
            }
            cpIMethodClass = this.f107053a.getCpIMethodClass();
        }
        return getConstantPoolEntry(i, matchSpecificPoolEntryIndex(cpIMethodClass, str, i2));
    }

    public ConstantPoolEntry getConstantPoolEntry(int i, long j) throws Pack200Exception {
        int i2 = (int) j;
        if (i2 == -1) {
            return null;
        }
        if (i2 < 0) {
            throw new Pack200Exception("Cannot have a negative range");
        }
        if (i == 1) {
            return this.f107053a.cpUTF8Value(i2);
        }
        if (i == 2) {
            return this.f107053a.cpIntegerValue(i2);
        }
        if (i == 3) {
            return this.f107053a.cpFloatValue(i2);
        }
        if (i == 4) {
            return this.f107053a.cpLongValue(i2);
        }
        if (i == 5) {
            return this.f107053a.cpDoubleValue(i2);
        }
        if (i == 6) {
            return this.f107053a.cpStringValue(i2);
        }
        if (i == 7) {
            return this.f107053a.cpClassValue(i2);
        }
        if (i == 8) {
            throw new Error("I don't know what to do with signatures yet");
        }
        if (i == 9) {
            throw new Error("I don't know what to do with descriptors yet");
        }
        if (i == 10) {
            return this.f107053a.cpFieldValue(i2);
        }
        if (i == 11) {
            return this.f107053a.cpMethodValue(i2);
        }
        if (i == 12) {
            return this.f107053a.cpIMethodValue(i2);
        }
        throw new Error("Get value incomplete");
    }

    public ConstantPoolEntry getInitMethodPoolEntry(int i, long j, String str) throws Pack200Exception {
        if (i == 11) {
            return getConstantPoolEntry(i, matchSpecificPoolEntryIndex(this.f107053a.getCpMethodClass(), this.f107053a.getCpMethodDescriptor(), str, REGEX_MATCH_INIT, (int) j));
        }
        throw new Error("Nothing but CP_METHOD can be an <init>");
    }

    public ClassFileEntry getValue(int i, long j) throws Pack200Exception {
        int i2 = (int) j;
        if (i2 == -1) {
            return null;
        }
        if (i2 < 0) {
            throw new Pack200Exception("Cannot have a negative range");
        }
        if (i == 1) {
            return this.f107053a.cpUTF8Value(i2);
        }
        if (i == 2) {
            return this.f107053a.cpIntegerValue(i2);
        }
        if (i == 3) {
            return this.f107053a.cpFloatValue(i2);
        }
        if (i == 4) {
            return this.f107053a.cpLongValue(i2);
        }
        if (i == 5) {
            return this.f107053a.cpDoubleValue(i2);
        }
        if (i == 6) {
            return this.f107053a.cpStringValue(i2);
        }
        if (i == 7) {
            return this.f107053a.cpClassValue(i2);
        }
        if (i == 8) {
            return this.f107053a.cpSignatureValue(i2);
        }
        if (i == 9) {
            return this.f107053a.cpNameAndTypeValue(i2);
        }
        throw new Error("Tried to get a value I don't know about: " + i);
    }

    public int matchSpecificPoolEntryIndex(String[] strArr, String str, int i) {
        return matchSpecificPoolEntryIndex(strArr, strArr, str, ".*", i);
    }

    public int matchSpecificPoolEntryIndex(String[] strArr, String[] strArr2, String str, String str2, int i) {
        List<Integer> indexesForArrayKey = this.f107054b.indexesForArrayKey(strArr, str);
        if (indexesForArrayKey.isEmpty()) {
            return -1;
        }
        Iterator<Integer> it2 = indexesForArrayKey.iterator();
        int i2 = -1;
        while (it2.hasNext()) {
            int intValue = it2.next().intValue();
            if (regexMatches(str2, strArr2[intValue]) && (i2 = i2 + 1) == i) {
                return intValue;
            }
        }
        return -1;
    }
}
