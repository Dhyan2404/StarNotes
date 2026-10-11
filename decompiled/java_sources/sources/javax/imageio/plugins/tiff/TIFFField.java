package javax.imageio.plugins.tiff;

import com.onyx.android.sdk.base.common.error.BaseError;
import com.sun.imageio.plugins.tiff.TIFFFieldNode;
import java.lang.reflect.Array;
import java.util.StringTokenizer;
import org.w3c.dom.Node;

/* loaded from: classes5.dex */
public final class TIFFField implements Cloneable {

    /* renamed from: k */
    public static final long f97935k = 4294967295L;

    /* renamed from: l */
    public static final String[] f97936l = {null, "Byte", "Ascii", "Short", "Long", "Rational", "SByte", BaseError.UNDEFINED, "SShort", "SLong", "SRational", "Float", "Double", "IFDPointer"};

    /* renamed from: m */
    public static final boolean[] f97937m = {false, true, false, true, true, false, true, true, true, true, false, false, false, false};

    /* renamed from: e */
    public TIFFTag f97938e;

    /* renamed from: f */
    public int f97939f;

    /* renamed from: g */
    public int f97940g;

    /* renamed from: h */
    public int f97941h;

    /* renamed from: i */
    public Object f97942i;

    /* renamed from: j */
    public TIFFDirectory f97943j;

    private TIFFField() {
    }

    /* renamed from: a */
    public static String m61484a(Node node, String str) {
        return node.getAttributes().getNamedItem(str).getNodeValue();
    }

    /* renamed from: b */
    public static void m61485b(Node node, int[] iArr, int[] iArr2, Object[] objArr) {
        Object obj;
        String substring = node.getNodeName().substring(4);
        String substring2 = substring.substring(0, substring.length() - 1);
        int typeByName = getTypeByName(substring2);
        if (typeByName == -1) {
            throw new IllegalArgumentException("typeName = " + substring2);
        }
        int i = 0;
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            substring2.equals(firstChild.getNodeName().substring(4));
            i++;
        }
        if (i > 0) {
            obj = createArrayForType(typeByName, i);
            int i2 = 0;
            for (Node firstChild2 = node.getFirstChild(); firstChild2 != null; firstChild2 = firstChild2.getNextSibling()) {
                String m61484a = m61484a(firstChild2, "value");
                switch (typeByName) {
                    case 1:
                    case 6:
                        ((byte[]) obj)[i2] = (byte) Integer.parseInt(m61484a);
                        break;
                    case 2:
                        ((String[]) obj)[i2] = m61484a;
                        break;
                    case 3:
                        ((char[]) obj)[i2] = (char) Integer.parseInt(m61484a);
                        break;
                    case 4:
                    case 13:
                        ((long[]) obj)[i2] = Long.parseLong(m61484a);
                        break;
                    case 5:
                        int indexOf = m61484a.indexOf("/");
                        String substring3 = m61484a.substring(0, indexOf);
                        String substring4 = m61484a.substring(indexOf + 1);
                        long[][] jArr = (long[][]) obj;
                        long[] jArr2 = new long[2];
                        jArr[i2] = jArr2;
                        jArr2[0] = Long.parseLong(substring3);
                        jArr[i2][1] = Long.parseLong(substring4);
                        break;
                    case 8:
                        ((short[]) obj)[i2] = (short) Integer.parseInt(m61484a);
                        break;
                    case 9:
                        ((int[]) obj)[i2] = Integer.parseInt(m61484a);
                        break;
                    case 10:
                        int indexOf2 = m61484a.indexOf("/");
                        String substring5 = m61484a.substring(0, indexOf2);
                        String substring6 = m61484a.substring(indexOf2 + 1);
                        int[][] iArr3 = (int[][]) obj;
                        int[] iArr4 = new int[2];
                        iArr3[i2] = iArr4;
                        iArr4[0] = Integer.parseInt(substring5);
                        iArr3[i2][1] = Integer.parseInt(substring6);
                        break;
                    case 11:
                        ((float[]) obj)[i2] = Float.parseFloat(m61484a);
                        break;
                    case 12:
                        ((double[]) obj)[i2] = Double.parseDouble(m61484a);
                        break;
                }
                i2++;
            }
        } else {
            obj = null;
        }
        iArr[0] = typeByName;
        iArr2[0] = i;
        objArr[0] = obj;
    }

    public static Object createArrayForType(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("count < 0!");
        }
        if ((i == 5 || i == 10) && i2 < 1) {
            throw new IllegalArgumentException("Type is TIFF_RATIONAL or TIFF_SRATIONAL and count < 1");
        }
        if (i == 13 && i2 != 1) {
            throw new IllegalArgumentException("Type is TIFF_IFD_POINTER and count != 1");
        }
        switch (i) {
            case 1:
            case 6:
            case 7:
                return new byte[i2];
            case 2:
                return new String[i2];
            case 3:
                return new char[i2];
            case 4:
            case 13:
                return new long[i2];
            case 5:
                return (long[][]) Array.newInstance((Class<?>) Long.TYPE, i2, 2);
            case 8:
                return new short[i2];
            case 9:
                return new int[i2];
            case 10:
                return (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, 2);
            case 11:
                return new float[i2];
            case 12:
                return new double[i2];
            default:
                throw new IllegalArgumentException("Unknown data type " + i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object[]] */
    public static TIFFField createFromMetadataNode(TIFFTagSet tIFFTagSet, Node node) {
        byte[] bArr;
        if (node == null) {
            throw new IllegalArgumentException(new NullPointerException("node == null!"));
        }
        if (!node.getNodeName().equals("TIFFField")) {
            throw new IllegalArgumentException("!name.equals(\"TIFFField\")");
        }
        int parseInt = Integer.parseInt(m61484a(node, "number"));
        Object obj = null;
        TIFFTag tag = tIFFTagSet != null ? tIFFTagSet.getTag(parseInt) : null;
        Node firstChild = node.getFirstChild();
        int i = 7;
        int i2 = 0;
        if (firstChild != null) {
            if (firstChild.getNodeName().equals("TIFFUndefined")) {
                StringTokenizer stringTokenizer = new StringTokenizer(m61484a(firstChild, "value"), ",");
                int countTokens = stringTokenizer.countTokens();
                byte[] bArr2 = new byte[countTokens];
                while (i2 < countTokens) {
                    bArr2[i2] = (byte) Integer.parseInt(stringTokenizer.nextToken());
                    i2++;
                }
                i2 = countTokens;
                bArr = bArr2;
            } else {
                int[] iArr = new int[1];
                int[] iArr2 = new int[1];
                ?? r3 = new Object[1];
                m61485b(node.getFirstChild(), iArr, iArr2, r3);
                int i3 = iArr[0];
                int i4 = iArr2[0];
                ?? r2 = r3[0];
                i = i3;
                i2 = i4;
                bArr = r2;
            }
            obj = bArr;
        } else if (tag != null) {
            i = 13;
            while (i >= 1 && !tag.isDataTypeOK(i)) {
                i--;
            }
        }
        if (tag == null) {
            tag = new TIFFTag(TIFFTag.UNKNOWN_TAG_NAME, parseInt, 1 << i);
        }
        try {
            return new TIFFField(tag, i, i2, obj);
        } catch (NullPointerException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int getTypeByName(String str) {
        for (int i = 1; i <= 13; i++) {
            if (str.equals(f97936l[i])) {
                return i;
            }
        }
        return -1;
    }

    public static String getTypeName(int i) {
        if (i >= 1 && i <= 13) {
            return f97936l[i];
        }
        throw new IllegalArgumentException("Unknown data type " + i);
    }

    public byte[] getAsBytes() {
        return (byte[]) this.f97942i;
    }

    public char[] getAsChars() {
        return (char[]) this.f97942i;
    }

    public double getAsDouble(int i) {
        double d;
        double d2;
        switch (this.f97940g) {
            case 1:
            case 7:
                return ((byte[]) this.f97942i)[i] & 255;
            case 2:
                return Double.parseDouble(((String[]) this.f97942i)[i]);
            case 3:
                return ((char[]) this.f97942i)[i] & 65535;
            case 4:
            case 13:
                return ((long[]) this.f97942i)[i];
            case 5:
                long[] asRational = getAsRational(i);
                d = asRational[0];
                d2 = asRational[1];
                break;
            case 6:
                return ((byte[]) this.f97942i)[i];
            case 8:
                return ((short[]) this.f97942i)[i];
            case 9:
                return ((int[]) this.f97942i)[i];
            case 10:
                int[] asSRational = getAsSRational(i);
                d = asSRational[0];
                d2 = asSRational[1];
                break;
            case 11:
                return ((float[]) this.f97942i)[i];
            case 12:
                return ((double[]) this.f97942i)[i];
            default:
                throw new ClassCastException();
        }
        return d / d2;
    }

    public double[] getAsDoubles() {
        return (double[]) this.f97942i;
    }

    public float getAsFloat(int i) {
        switch (this.f97940g) {
            case 1:
            case 7:
                return ((byte[]) this.f97942i)[i] & 255;
            case 2:
                return (float) Double.parseDouble(((String[]) this.f97942i)[i]);
            case 3:
                return ((char[]) this.f97942i)[i] & 65535;
            case 4:
            case 13:
                return (float) ((long[]) this.f97942i)[i];
            case 5:
                long[] asRational = getAsRational(i);
                return (float) (asRational[0] / asRational[1]);
            case 6:
                return ((byte[]) this.f97942i)[i];
            case 8:
                return ((short[]) this.f97942i)[i];
            case 9:
                return ((int[]) this.f97942i)[i];
            case 10:
                int[] asSRational = getAsSRational(i);
                return (float) (asSRational[0] / asSRational[1]);
            case 11:
                return ((float[]) this.f97942i)[i];
            case 12:
                return (float) ((double[]) this.f97942i)[i];
            default:
                throw new ClassCastException();
        }
    }

    public float[] getAsFloats() {
        return (float[]) this.f97942i;
    }

    public int getAsInt(int i) {
        switch (this.f97940g) {
            case 1:
            case 7:
                return ((byte[]) this.f97942i)[i] & 255;
            case 2:
                return (int) Double.parseDouble(((String[]) this.f97942i)[i]);
            case 3:
                return ((char[]) this.f97942i)[i] & 65535;
            case 4:
            case 13:
                return (int) ((long[]) this.f97942i)[i];
            case 5:
                long[] asRational = getAsRational(i);
                return (int) (asRational[0] / asRational[1]);
            case 6:
                return ((byte[]) this.f97942i)[i];
            case 8:
                return ((short[]) this.f97942i)[i];
            case 9:
                return ((int[]) this.f97942i)[i];
            case 10:
                int[] asSRational = getAsSRational(i);
                return (int) (asSRational[0] / asSRational[1]);
            case 11:
                return (int) ((float[]) this.f97942i)[i];
            case 12:
                return (int) ((double[]) this.f97942i)[i];
            default:
                throw new ClassCastException();
        }
    }

    public int[] getAsInts() {
        Object obj = this.f97942i;
        if (obj instanceof int[]) {
            return (int[]) obj;
        }
        int i = 0;
        if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            int[] iArr = new int[cArr.length];
            while (i < cArr.length) {
                iArr[i] = cArr[i] & 65535;
                i++;
            }
            return iArr;
        }
        if (!(obj instanceof short[])) {
            throw new ClassCastException("Data not char[], short[], or int[]!");
        }
        short[] sArr = (short[]) obj;
        int[] iArr2 = new int[sArr.length];
        while (i < sArr.length) {
            iArr2[i] = sArr[i];
            i++;
        }
        return iArr2;
    }

    public long getAsLong(int i) {
        switch (this.f97940g) {
            case 1:
            case 7:
                return ((byte[]) this.f97942i)[i] & 255;
            case 2:
                return (long) Double.parseDouble(((String[]) this.f97942i)[i]);
            case 3:
                return ((char[]) this.f97942i)[i] & 65535;
            case 4:
            case 13:
                return ((long[]) this.f97942i)[i];
            case 5:
                long[] asRational = getAsRational(i);
                return (long) (asRational[0] / asRational[1]);
            case 6:
                return ((byte[]) this.f97942i)[i];
            case 8:
                return ((short[]) this.f97942i)[i];
            case 9:
                return ((int[]) this.f97942i)[i];
            case 10:
                int[] asSRational = getAsSRational(i);
                return (long) (asSRational[0] / asSRational[1]);
            case 11:
                return ((float[]) this.f97942i)[i];
            case 12:
                return (long) ((double[]) this.f97942i)[i];
            default:
                throw new ClassCastException();
        }
    }

    public long[] getAsLongs() {
        return (long[]) this.f97942i;
    }

    public Node getAsNativeNode() {
        return new TIFFFieldNode(this);
    }

    public long[] getAsRational(int i) {
        return ((long[][]) this.f97942i)[i];
    }

    public long[][] getAsRationals() {
        return (long[][]) this.f97942i;
    }

    public int[] getAsSRational(int i) {
        return ((int[][]) this.f97942i)[i];
    }

    public int[][] getAsSRationals() {
        return (int[][]) this.f97942i;
    }

    public short[] getAsShorts() {
        return (short[]) this.f97942i;
    }

    public String getAsString(int i) {
        return ((String[]) this.f97942i)[i];
    }

    public int getCount() {
        return this.f97941h;
    }

    public Object getData() {
        return this.f97942i;
    }

    public TIFFDirectory getDirectory() {
        return this.f97943j;
    }

    public TIFFTag getTag() {
        return this.f97938e;
    }

    public int getTagNumber() {
        return this.f97939f;
    }

    public int getType() {
        return this.f97940g;
    }

    public String getValueAsString(int i) {
        switch (this.f97940g) {
            case 1:
            case 7:
                return Integer.toString(((byte[]) this.f97942i)[i] & 255);
            case 2:
                return ((String[]) this.f97942i)[i];
            case 3:
                return Integer.toString(((char[]) this.f97942i)[i] & 65535);
            case 4:
            case 13:
                return Long.toString(((long[]) this.f97942i)[i]);
            case 5:
                long[] asRational = getAsRational(i);
                long j = asRational[1];
                if (j != 0 && asRational[0] % j == 0) {
                    return Long.toString(asRational[0] / asRational[1]) + "/1";
                }
                return Long.toString(asRational[0]) + "/" + Long.toString(asRational[1]);
            case 6:
                return Integer.toString(((byte[]) this.f97942i)[i]);
            case 8:
                return Integer.toString(((short[]) this.f97942i)[i]);
            case 9:
                return Integer.toString(((int[]) this.f97942i)[i]);
            case 10:
                int[] asSRational = getAsSRational(i);
                int i2 = asSRational[1];
                if (i2 != 0 && asSRational[0] % i2 == 0) {
                    return Integer.toString(asSRational[0] / asSRational[1]) + "/1";
                }
                return Integer.toString(asSRational[0]) + "/" + Integer.toString(asSRational[1]);
            case 11:
                return Float.toString(((float[]) this.f97942i)[i]);
            case 12:
                return Double.toString(((double[]) this.f97942i)[i]);
            default:
                throw new ClassCastException();
        }
    }

    public boolean hasDirectory() {
        return getDirectory() != null;
    }

    public boolean isIntegral() {
        return f97937m[this.f97940g];
    }

    /* JADX WARN: Code restructure failed: missing block: B:128:0x0166, code lost:
    
        if (((char[]) r25).length == r24) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0171, code lost:
    
        if (((java.lang.String[]) r25).length == r24) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x017c, code lost:
    
        if (((byte[]) r25).length == r24) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008c, code lost:
    
        if (((double[]) r25).length == r24) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0098, code lost:
    
        if (((float[]) r25).length == r24) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00c6, code lost:
    
        if (((int[]) r25).length == r24) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00d2, code lost:
    
        if (((short[]) r25).length == r24) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x011a, code lost:
    
        throw new java.lang.IllegalArgumentException("Too large value supplied for TIFF_RATIONAL");
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0122, code lost:
    
        throw new java.lang.IllegalArgumentException("Negative value supplied for TIFF_RATIONAL");
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0041. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x018f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TIFFField(javax.imageio.plugins.tiff.TIFFTag r22, int r23, int r24, java.lang.Object r25) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.imageio.plugins.tiff.TIFFField.<init>(javax.imageio.plugins.tiff.TIFFTag, int, int, java.lang.Object):void");
    }

    public TIFFField clone() throws CloneNotSupportedException {
        Object clone;
        TIFFField tIFFField = (TIFFField) super.clone();
        switch (this.f97940g) {
            case 1:
            case 6:
            case 7:
                clone = ((byte[]) this.f97942i).clone();
                break;
            case 2:
                clone = ((String[]) this.f97942i).clone();
                break;
            case 3:
                clone = ((char[]) this.f97942i).clone();
                break;
            case 4:
            case 13:
                clone = ((long[]) this.f97942i).clone();
                break;
            case 5:
                clone = ((long[][]) this.f97942i).clone();
                break;
            case 8:
                clone = ((short[]) this.f97942i).clone();
                break;
            case 9:
                clone = ((int[]) this.f97942i).clone();
                break;
            case 10:
                clone = ((int[][]) this.f97942i).clone();
                break;
            case 11:
                clone = ((float[]) this.f97942i).clone();
                break;
            case 12:
                clone = ((double[]) this.f97942i).clone();
                break;
            default:
                throw new ClassCastException();
        }
        tIFFField.f97938e = this.f97938e;
        tIFFField.f97939f = this.f97939f;
        tIFFField.f97940g = this.f97940g;
        tIFFField.f97941h = this.f97941h;
        tIFFField.f97942i = clone;
        TIFFDirectory tIFFDirectory = this.f97943j;
        tIFFField.f97943j = tIFFDirectory != null ? tIFFDirectory.clone() : null;
        return tIFFField;
    }

    public TIFFField(TIFFTag tIFFTag, int i, int i2) {
        this(tIFFTag, i, i2, createArrayForType(i, i2));
    }

    public TIFFField(TIFFTag tIFFTag, long j) {
        if (tIFFTag == null) {
            throw new NullPointerException("tag == null!");
        }
        if (j < 0) {
            throw new IllegalArgumentException("value < 0!");
        }
        if (j <= 4294967295L) {
            this.f97938e = tIFFTag;
            this.f97939f = tIFFTag.getNumber();
            this.f97941h = 1;
            if (j < 65536) {
                if (tIFFTag.isDataTypeOK(3)) {
                    this.f97940g = 3;
                    this.f97942i = new char[]{(char) j};
                    return;
                }
                throw new IllegalArgumentException("Illegal data type " + getTypeName(3) + " for tag \"" + tIFFTag.getName() + "\"");
            }
            if (tIFFTag.isDataTypeOK(4)) {
                this.f97940g = 4;
                this.f97942i = new long[]{j};
                return;
            }
            throw new IllegalArgumentException("Illegal data type " + getTypeName(4) + " for tag \"" + tIFFTag.getName() + "\"");
        }
        throw new IllegalArgumentException("value > 0xffffffff!");
    }

    public TIFFField(TIFFTag tIFFTag, int i, long j, TIFFDirectory tIFFDirectory) {
        if (tIFFTag == null) {
            throw new NullPointerException("tag == null!");
        }
        if (i >= 1 && i <= 13) {
            if (!tIFFTag.isDataTypeOK(i)) {
                throw new IllegalArgumentException("Illegal data type " + i + " for " + tIFFTag.getName() + " tag");
            }
            if (i != 4 && i != 13) {
                throw new IllegalArgumentException("type " + i + " is neither TIFFTag.TIFF_LONG nor TIFFTag.TIFF_IFD_POINTER");
            }
            if (j <= 0) {
                throw new IllegalArgumentException("offset " + j + " is non-positive");
            }
            if (tIFFDirectory != null) {
                this.f97938e = tIFFTag;
                this.f97939f = tIFFTag.getNumber();
                this.f97940g = i;
                this.f97941h = 1;
                this.f97942i = new long[]{j};
                this.f97943j = tIFFDirectory;
                return;
            }
            throw new NullPointerException("dir == null");
        }
        throw new IllegalArgumentException("Unknown data type " + i);
    }
}
