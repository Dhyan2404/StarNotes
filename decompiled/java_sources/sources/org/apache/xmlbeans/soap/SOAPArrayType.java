package org.apache.xmlbeans.soap;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.function.IntFunction;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import javax.xml.namespace.QName;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.xmlbeans.impl.common.PrefixResolver;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.common.XmlWhitespace;
import org.apache.xmlbeans.impl.values.XmlValueOutOfRangeException;
import org.apache.xmlbeans.soap.SOAPArrayType;

/* loaded from: classes13.dex */
public final class SOAPArrayType {
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private int[] _dimensions;
    private int[] _ranks;
    private QName _type;

    public SOAPArrayType(String str, PrefixResolver prefixResolver) {
        int indexOf = str.indexOf(91);
        if (indexOf >= 0) {
            String collapse = XmlWhitespace.collapse(str.substring(0, indexOf), 3);
            int indexOf2 = collapse.indexOf(58);
            String namespaceForPrefix = prefixResolver.getNamespaceForPrefix(indexOf2 >= 0 ? collapse.substring(0, indexOf2) : "");
            if (namespaceForPrefix != null) {
                this._type = QNameHelper.forLNS(collapse.substring(indexOf2 + 1), namespaceForPrefix);
                initDimensions(str, indexOf);
                return;
            }
            throw new XmlValueOutOfRangeException();
        }
        throw new XmlValueOutOfRangeException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int collapseDimString(String str) {
        String collapse = XmlWhitespace.collapse(str, 3);
        try {
            if (!"*".equals(collapse) && !collapse.isEmpty()) {
                return Integer.parseInt(collapse);
            }
            return -1;
        } catch (Exception unused) {
            throw new XmlValueOutOfRangeException("Malformed integer in SOAP array index");
        }
    }

    private void initDimensions(String str, int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = -1;
        while (i >= 0) {
            i2 = str.indexOf(93, i);
            if (i2 < 0) {
                throw new XmlValueOutOfRangeException();
            }
            arrayList.add(str.substring(i + 1, i2));
            i = str.indexOf(91, i2);
        }
        if (!XmlWhitespace.isAllSpace(str.substring(i2 + 1))) {
            throw new XmlValueOutOfRangeException();
        }
        this._ranks = new int[arrayList.size() - 1];
        for (int i3 = 0; i3 < this._ranks.length; i3++) {
            String str2 = (String) arrayList.get(i3);
            int i4 = 0;
            for (int i5 = 0; i5 < str2.length(); i5++) {
                char charAt = str2.charAt(i5);
                if (charAt == ',') {
                    i4++;
                } else if (!XmlWhitespace.isSpace(charAt)) {
                    throw new XmlValueOutOfRangeException();
                }
            }
            this._ranks[i3] = i4 + 1;
        }
        this._dimensions = internalParseCommaIntString((String) arrayList.get(arrayList.size() - 1));
    }

    private static int[] internalParseCommaIntString(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf < 0) {
                arrayList.add(str.substring(i));
                return arrayList.stream().mapToInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.kyl
                    @Override // java.util.function.ToIntFunction
                    public final int applyAsInt(Object obj) {
                        int collapseDimString;
                        collapseDimString = SOAPArrayType.collapseDimString((String) obj);
                        return collapseDimString;
                    }
                }).toArray();
            }
            arrayList.add(str.substring(i, indexOf));
            i = indexOf + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$soap11DimensionString$0(int i) {
        return i >= 0 ? Integer.toString(i) : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$soap12DimensionString$1(int i) {
        return i >= 0 ? Integer.toString(i) : "";
    }

    public static SOAPArrayType newSoap12Array(QName qName, String str) {
        String[] split = XmlWhitespace.collapse(str, 3).split(" ");
        int[] iArr = new int[split.length];
        for (int i = 0; i < split.length; i++) {
            String str2 = split[i];
            if (i == 0 && str2.equals("*")) {
                iArr[i] = -1;
            } else {
                try {
                    iArr[i] = Integer.parseInt(split[i]);
                } catch (Exception unused) {
                    throw new XmlValueOutOfRangeException();
                }
            }
        }
        SOAPArrayType sOAPArrayType = new SOAPArrayType();
        sOAPArrayType._ranks = EMPTY_INT_ARRAY;
        sOAPArrayType._type = qName;
        sOAPArrayType._dimensions = iArr;
        return sOAPArrayType;
    }

    public boolean containsNestedArrays() {
        return this._ranks.length > 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SOAPArrayType)) {
            return false;
        }
        SOAPArrayType sOAPArrayType = (SOAPArrayType) obj;
        return this._type.equals(sOAPArrayType._type) && Arrays.equals(this._ranks, sOAPArrayType._ranks) && Arrays.equals(this._dimensions, sOAPArrayType._dimensions);
    }

    public int[] getDimensions() {
        int[] iArr = this._dimensions;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        return iArr2;
    }

    public QName getQName() {
        return this._type;
    }

    public int[] getRanks() {
        int[] iArr = this._ranks;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        return iArr2;
    }

    public int hashCode() {
        int hashCode = this._type.hashCode();
        int[] iArr = this._dimensions;
        return hashCode + iArr.length + this._ranks.length + (iArr.length != 0 ? iArr[0] : 0);
    }

    public boolean isSameRankAs(SOAPArrayType sOAPArrayType) {
        return Arrays.equals(this._ranks, sOAPArrayType._ranks) && this._dimensions.length == sOAPArrayType._dimensions.length;
    }

    public SOAPArrayType nestedArrayType() {
        if (!containsNestedArrays()) {
            throw new IllegalStateException();
        }
        SOAPArrayType sOAPArrayType = new SOAPArrayType();
        sOAPArrayType._type = this._type;
        int[] iArr = new int[this._ranks.length - 1];
        sOAPArrayType._ranks = iArr;
        System.arraycopy(this._ranks, 0, iArr, 0, iArr.length);
        int[] iArr2 = new int[this._ranks[r5.length - 1]];
        sOAPArrayType._dimensions = iArr2;
        Arrays.fill(iArr2, -1);
        return sOAPArrayType;
    }

    public String soap11DimensionString() {
        return soap11DimensionString(this._dimensions);
    }

    public String soap12DimensionString(int[] iArr) {
        return (String) IntStream.of(iArr).mapToObj(new IntFunction() { // from class: com.sunia.HTREnginev2.jyl
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String lambda$soap12DimensionString$1;
                lambda$soap12DimensionString$1 = SOAPArrayType.lambda$soap12DimensionString$1(i);
                return lambda$soap12DimensionString$1;
            }
        }).collect(Collectors.joining(" "));
    }

    public String soap11DimensionString(int[] iArr) {
        StringBuilder sb = new StringBuilder();
        for (int i : this._ranks) {
            sb.append('[');
            for (int i2 = 1; i2 < i; i2++) {
                sb.append(',');
            }
            sb.append(']');
        }
        sb.append((String) IntStream.of(iArr).mapToObj(new IntFunction() { // from class: com.sunia.HTREnginev2.iyl
            @Override // java.util.function.IntFunction
            public final Object apply(int i3) {
                String lambda$soap11DimensionString$0;
                lambda$soap11DimensionString$0 = SOAPArrayType.lambda$soap11DimensionString$0(i3);
                return lambda$soap11DimensionString$0;
            }
        }).collect(Collectors.joining(",", IteratorUtils.f104923a, IteratorUtils.f104924b)));
        return sb.toString();
    }

    public SOAPArrayType(QName qName, String str) {
        int indexOf = str.indexOf(91);
        if (indexOf < 0) {
            this._type = qName;
            this._ranks = EMPTY_INT_ARRAY;
            String[] split = XmlWhitespace.collapse(str, 3).split(" ");
            for (int i = 0; i < split.length; i++) {
                if (split[i].equals("*")) {
                    this._dimensions[i] = -1;
                } else {
                    try {
                        this._dimensions[i] = Integer.parseInt(split[i]);
                    } catch (Exception unused) {
                        throw new XmlValueOutOfRangeException();
                    }
                }
            }
            return;
        }
        this._type = qName;
        initDimensions(str, indexOf);
    }

    public SOAPArrayType(SOAPArrayType sOAPArrayType, int[] iArr) {
        this._type = sOAPArrayType._type;
        int[] iArr2 = new int[sOAPArrayType._ranks.length + 1];
        this._ranks = iArr2;
        int[] iArr3 = sOAPArrayType._ranks;
        System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
        this._ranks[r0.length - 1] = sOAPArrayType._dimensions.length;
        int[] iArr4 = new int[iArr.length];
        this._dimensions = iArr4;
        System.arraycopy(iArr, 0, iArr4, 0, iArr.length);
    }

    private SOAPArrayType() {
    }
}
