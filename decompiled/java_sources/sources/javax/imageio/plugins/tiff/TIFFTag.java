package javax.imageio.plugins.tiff;

import java.util.Iterator;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes5.dex */
public class TIFFTag {
    public static final int MAX_DATATYPE = 13;
    public static final int MIN_DATATYPE = 1;
    public static final int TIFF_ASCII = 2;
    public static final int TIFF_BYTE = 1;
    public static final int TIFF_DOUBLE = 12;
    public static final int TIFF_FLOAT = 11;
    public static final int TIFF_IFD_POINTER = 13;
    public static final int TIFF_LONG = 4;
    public static final int TIFF_RATIONAL = 5;
    public static final int TIFF_SBYTE = 6;
    public static final int TIFF_SHORT = 3;
    public static final int TIFF_SLONG = 9;
    public static final int TIFF_SRATIONAL = 10;
    public static final int TIFF_SSHORT = 8;
    public static final int TIFF_UNDEFINED = 7;
    public static final String UNKNOWN_TAG_NAME = "UnknownTag";

    /* renamed from: g */
    public static final int f97946g = -16384;

    /* renamed from: h */
    public static final int[] f97947h = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 4};

    /* renamed from: a */
    public int f97948a;

    /* renamed from: b */
    public String f97949b;

    /* renamed from: c */
    public int f97950c;

    /* renamed from: d */
    public int f97951d;

    /* renamed from: e */
    public TIFFTagSet f97952e;

    /* renamed from: f */
    public SortedMap<Integer, String> f97953f;

    public TIFFTag(String str, int i, int i2, int i3) {
        this.f97952e = null;
        this.f97953f = null;
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("number (" + i + ") < 0");
        }
        if (i2 >= 0 && (i2 & f97946g) == 0) {
            this.f97949b = str;
            this.f97948a = i;
            this.f97950c = i2;
            this.f97951d = i3;
            return;
        }
        throw new IllegalArgumentException("dataTypes out of range");
    }

    public static int getSizeOfType(int i) {
        if (i < 1 || i > 13) {
            throw new IllegalArgumentException("dataType out of range!");
        }
        return f97947h[i];
    }

    public void addValueName(int i, String str) {
        if (this.f97953f == null) {
            this.f97953f = new TreeMap();
        }
        this.f97953f.put(Integer.valueOf(i), str);
    }

    public int getCount() {
        return this.f97951d;
    }

    public int getDataTypes() {
        return this.f97950c;
    }

    public String getName() {
        return this.f97949b;
    }

    public int[] getNamedValues() {
        SortedMap<Integer, String> sortedMap = this.f97953f;
        if (sortedMap == null) {
            return null;
        }
        Set<Integer> keySet = sortedMap.keySet();
        Iterator<Integer> it2 = keySet.iterator();
        int[] iArr = new int[keySet.size()];
        int i = 0;
        while (it2.hasNext()) {
            iArr[i] = it2.next().intValue();
            i++;
        }
        return iArr;
    }

    public int getNumber() {
        return this.f97948a;
    }

    public TIFFTagSet getTagSet() {
        return this.f97952e;
    }

    public String getValueName(int i) {
        SortedMap<Integer, String> sortedMap = this.f97953f;
        if (sortedMap == null) {
            return null;
        }
        return sortedMap.get(Integer.valueOf(i));
    }

    public boolean hasValueNames() {
        return this.f97953f != null;
    }

    public boolean isDataTypeOK(int i) {
        if (i < 1 || i > 13) {
            throw new IllegalArgumentException("datatype not in range!");
        }
        return (this.f97950c & (1 << i)) != 0;
    }

    public boolean isIFDPointer() {
        return this.f97952e != null || isDataTypeOK(13);
    }

    public TIFFTag(String str, int i, TIFFTagSet tIFFTagSet) {
        this(str, i, 8208, 1);
        if (tIFFTagSet != null) {
            this.f97952e = tIFFTagSet;
            return;
        }
        throw new NullPointerException("tagSet == null");
    }

    public TIFFTag(String str, int i, int i2) {
        this(str, i, i2, -1);
    }
}
