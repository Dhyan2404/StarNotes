package net.p110sf.saxon.expr.sort;

import java.util.Arrays;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Base64BinaryValue;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.DecimalValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.DurationValue;
import net.p110sf.saxon.value.FloatValue;
import net.p110sf.saxon.value.GDateValue;
import net.p110sf.saxon.value.HexBinaryValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.TimeValue;

/* loaded from: classes11.dex */
public class SimpleTypeComparison implements EqualityMatcher<AtomicSequence> {

    /* renamed from: a */
    public static final SimpleTypeComparison f100108a = new SimpleTypeComparison();

    public static SimpleTypeComparison getInstance() {
        return f100108a;
    }

    public int compareItems(AtomicValue atomicValue, AtomicValue atomicValue2) {
        char charAt = atomicValue.getItemType().getBasicAlphaCode().charAt(1);
        if (charAt == 'Z') {
            charAt = 'S';
        }
        char charAt2 = atomicValue2.getItemType().getBasicAlphaCode().charAt(1);
        if (charAt != (charAt2 != 'Z' ? charAt2 : 'S')) {
            return Integer.MIN_VALUE;
        }
        if (charAt == '2') {
            return Arrays.equals(((Base64BinaryValue) atomicValue).getBinaryValue(), ((Base64BinaryValue) atomicValue2).getBinaryValue()) ? 0 : Integer.MIN_VALUE;
        }
        if (charAt == 'D') {
            return ((atomicValue instanceof Int64Value) && (atomicValue2 instanceof Int64Value)) ? Long.compare(((Int64Value) atomicValue).longValue(), ((Int64Value) atomicValue2).longValue()) : ((DecimalValue) atomicValue).getDecimalValue().compareTo(((DecimalValue) atomicValue2).getDecimalValue());
        }
        if (charAt == 'X') {
            return Arrays.equals(((HexBinaryValue) atomicValue).getBinaryValue(), ((HexBinaryValue) atomicValue2).getBinaryValue()) ? 0 : Integer.MIN_VALUE;
        }
        if (charAt != 'Z') {
            if (charAt != 'A') {
                if (charAt == 'B') {
                    return atomicValue.equals(atomicValue2) ? 0 : Integer.MIN_VALUE;
                }
                switch (charAt) {
                    case 'F':
                        float floatValue = ((FloatValue) atomicValue).getFloatValue();
                        float floatValue2 = ((FloatValue) atomicValue2).getFloatValue();
                        if (floatValue == floatValue2) {
                            return 0;
                        }
                        return floatValue < floatValue2 ? -1 : 1;
                    case 'G':
                    case 'H':
                    case 'I':
                    case 'J':
                    case 'K':
                        break;
                    default:
                        switch (charAt) {
                            case 'M':
                                return ((DateTimeValue) atomicValue).getSchemaComparable().compareTo(((DateTimeValue) atomicValue2).getSchemaComparable());
                            case 'N':
                                return atomicValue.equals(atomicValue2) ? 0 : Integer.MIN_VALUE;
                            case 'O':
                                double doubleValue = ((DoubleValue) atomicValue).getDoubleValue();
                                double doubleValue2 = ((DoubleValue) atomicValue2).getDoubleValue();
                                if (doubleValue == doubleValue2) {
                                    return 0;
                                }
                                return doubleValue < doubleValue2 ? -1 : 1;
                            default:
                                switch (charAt) {
                                    case 'Q':
                                        return atomicValue.equals(atomicValue2) ? 0 : Integer.MIN_VALUE;
                                    case 'R':
                                        return ((DurationValue) atomicValue).getSchemaComparable().compareTo(((DurationValue) atomicValue2).getSchemaComparable());
                                    case 'S':
                                        break;
                                    case 'T':
                                        return ((TimeValue) atomicValue).getSchemaComparable().compareTo(((TimeValue) atomicValue2).getSchemaComparable());
                                    case 'U':
                                        return atomicValue.equals(atomicValue2) ? 0 : Integer.MIN_VALUE;
                                    default:
                                        throw new IllegalStateException();
                                }
                        }
                }
            }
            return ((GDateValue) atomicValue).getSchemaComparable().compareTo(((GDateValue) atomicValue2).getSchemaComparable());
        }
        return CodepointCollator.getInstance().compareStrings(atomicValue.getUnicodeStringValue(), atomicValue2.getUnicodeStringValue());
    }

    public int compareSequences(AtomicSequence atomicSequence, AtomicSequence atomicSequence2) {
        int compareItems;
        if (atomicSequence.getLength() == 1 && atomicSequence2.getLength() == 1) {
            return compareItems(atomicSequence.itemAt(0), atomicSequence2.itemAt(0));
        }
        AtomicIterator iterate = atomicSequence.iterate();
        AtomicIterator iterate2 = atomicSequence2.iterate();
        do {
            AtomicValue next = iterate.next();
            AtomicValue next2 = iterate2.next();
            if (next == null && next2 == null) {
                return 0;
            }
            if (next == null) {
                return -1;
            }
            if (next2 == null) {
                return 1;
            }
            compareItems = compareItems(next, next2);
        } while (compareItems == 0);
        return compareItems;
    }

    public boolean equalOrIdentical(AtomicSequence atomicSequence, AtomicSequence atomicSequence2) {
        if (atomicSequence.getLength() == 1 && atomicSequence2.getLength() == 1) {
            AtomicValue head = atomicSequence.head();
            AtomicValue head2 = atomicSequence2.head();
            return compareItems(head, head2) == 0 || (head.isNaN() && head2.isNaN());
        }
        AtomicIterator iterate = atomicSequence.iterate();
        AtomicIterator iterate2 = atomicSequence2.iterate();
        while (true) {
            AtomicValue next = iterate.next();
            AtomicValue next2 = iterate2.next();
            if (next == null && next2 == null) {
                return true;
            }
            if (next == null || next2 == null || (compareItems(next, next2) != 0 && (!next.isNaN() || !next2.isNaN()))) {
                break;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.sort.EqualityMatcher
    public boolean equal(AtomicSequence atomicSequence, AtomicSequence atomicSequence2) {
        return compareSequences(atomicSequence, atomicSequence2) == 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0038. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x003b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0079  */
    @Override // net.p110sf.saxon.expr.sort.EqualityMatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int hash(net.p110sf.saxon.om.AtomicSequence r5) {
        /*
            r4 = this;
            java.util.Iterator r4 = r5.iterator()
            r5 = 1451382402(0x56825682, float:7.165403E13)
        L7:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto Lc8
            java.lang.Object r0 = r4.next()
            net.sf.saxon.value.AtomicValue r0 = (net.p110sf.saxon.value.AtomicValue) r0
            net.sf.saxon.type.AtomicType r1 = r0.getItemType()
            java.lang.String r1 = r1.getBasicAlphaCode()
            r2 = 1
            char r1 = r1.charAt(r2)
            r3 = 50
            if (r1 == r3) goto Lba
            r3 = 68
            if (r1 == r3) goto Lb5
            r3 = 88
            if (r1 == r3) goto Laa
            r3 = 90
            if (r1 == r3) goto La1
            r3 = 65
            if (r1 == r3) goto L96
            r3 = 66
            if (r1 == r3) goto L8f
            switch(r1) {
                case 70: goto Lb5;
                case 71: goto L96;
                case 72: goto L96;
                case 73: goto L96;
                case 74: goto L96;
                case 75: goto L96;
                default: goto L3b;
            }
        L3b:
            switch(r1) {
                case 77: goto L84;
                case 78: goto L79;
                case 79: goto Lb5;
                default: goto L3e;
            }
        L3e:
            switch(r1) {
                case 81: goto L79;
                case 82: goto L6e;
                case 83: goto La1;
                case 84: goto L63;
                case 85: goto L58;
                default: goto L41;
            }
        L41:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r0 = "Alphacode "
            r5.append(r0)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L58:
            net.sf.saxon.value.AnyURIValue r0 = (net.p110sf.saxon.value.AnyURIValue) r0
            net.sf.saxon.str.UnicodeString r0 = r0.getUnicodeStringValue()
            int r0 = r0.hashCode()
            goto Lc4
        L63:
            net.sf.saxon.value.TimeValue r0 = (net.p110sf.saxon.value.TimeValue) r0
            net.sf.saxon.value.TimeValue$TimeComparable r0 = r0.getSchemaComparable()
            int r0 = r0.hashCode()
            goto Lc4
        L6e:
            net.sf.saxon.value.DurationValue r0 = (net.p110sf.saxon.value.DurationValue) r0
            net.sf.saxon.value.DurationValue$DurationComparable r0 = r0.getSchemaComparable()
            int r0 = r0.hashCode()
            goto Lc4
        L79:
            net.sf.saxon.value.QualifiedNameValue r0 = (net.p110sf.saxon.value.QualifiedNameValue) r0
            net.sf.saxon.om.StructuredQName r0 = r0.getStructuredQName()
            int r0 = r0.hashCode()
            goto Lc4
        L84:
            net.sf.saxon.value.DateTimeValue r0 = (net.p110sf.saxon.value.DateTimeValue) r0
            net.sf.saxon.value.DateTimeValue$DateTimeComparable r0 = r0.getSchemaComparable()
            int r0 = r0.hashCode()
            goto Lc4
        L8f:
            net.sf.saxon.value.BooleanValue r0 = (net.p110sf.saxon.value.BooleanValue) r0
            int r0 = r0.hashCode()
            goto Lc4
        L96:
            net.sf.saxon.value.GDateValue r0 = (net.p110sf.saxon.value.GDateValue) r0
            net.sf.saxon.value.GDateValue$GDateComparable r0 = r0.getSchemaComparable()
            int r0 = r0.hashCode()
            goto Lc4
        La1:
            net.sf.saxon.str.UnicodeString r0 = r0.getUnicodeStringValue()
            int r0 = r0.hashCode()
            goto Lc4
        Laa:
            net.sf.saxon.value.HexBinaryValue r0 = (net.p110sf.saxon.value.HexBinaryValue) r0
            byte[] r0 = r0.getBinaryValue()
            int r0 = java.util.Arrays.hashCode(r0)
            goto Lc4
        Lb5:
            int r0 = r0.hashCode()
            goto Lc4
        Lba:
            net.sf.saxon.value.Base64BinaryValue r0 = (net.p110sf.saxon.value.Base64BinaryValue) r0
            byte[] r0 = r0.getBinaryValue()
            int r0 = java.util.Arrays.hashCode(r0)
        Lc4:
            r5 = r5 ^ r0
            int r5 = r5 << r2
            goto L7
        Lc8:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.sort.SimpleTypeComparison.hash(net.sf.saxon.om.AtomicSequence):int");
    }
}
