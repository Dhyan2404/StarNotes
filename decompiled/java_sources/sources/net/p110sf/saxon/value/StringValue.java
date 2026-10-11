package net.p110sf.saxon.value;

import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.CodepointIterator;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UniStringConsumer;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;

/* loaded from: classes11.dex */
public class StringValue extends AtomicValue {
    protected UnicodeString content;
    public static final StringValue EMPTY_STRING = new StringValue(EmptyUnicodeString.getInstance());
    public static final StringValue SINGLE_SPACE = new StringValue(StringConstants.SINGLE_SPACE);
    public static final StringValue TRUE = new StringValue(StringConstants.TRUE);
    public static final StringValue FALSE = new StringValue(StringConstants.FALSE);
    public static final StringValue ZERO_LENGTH_UNTYPED = makeUntypedAtomic(EmptyUnicodeString.getInstance());

    /* loaded from: classes11.dex */
    public static final class Builder implements UniStringConsumer {

        /* renamed from: e */
        public UnicodeBuilder f102922e = new UnicodeBuilder();

        @Override // net.p110sf.saxon.str.UniStringConsumer
        public UniStringConsumer accept(UnicodeString unicodeString) {
            this.f102922e.accept(unicodeString);
            return this;
        }

        public UnicodeString getStringValue() {
            return this.f102922e.toUnicodeString();
        }
    }

    /* renamed from: net.sf.saxon.value.StringValue$a */
    /* loaded from: classes11.dex */
    public class C18572a implements XPathComparable {

        /* renamed from: e */
        public final /* synthetic */ StringCollator f102925e;

        public C18572a(StringCollator stringCollator) {
            this.f102925e = stringCollator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(XPathComparable xPathComparable) {
            if (xPathComparable instanceof StringValue) {
                return this.f102925e.compareStrings(StringValue.this.getContent(), ((StringValue) xPathComparable).content);
            }
            throw new ClassCastException("Cannot compare xs:string to " + xPathComparable.toString());
        }
    }

    public StringValue() {
        this.content = EmptyUnicodeString.getInstance();
        this.typeLabel = BuiltInAtomicType.STRING;
    }

    public static StringValue bmp(String str) {
        return new StringValue(BMPString.m63877of(str));
    }

    public static StringValue makeStringValue(CharSequence charSequence) {
        return (charSequence == null || charSequence.length() == 0) ? EMPTY_STRING : new StringValue(charSequence.toString());
    }

    public static StringValue makeUStringValue(UnicodeString unicodeString) {
        return (unicodeString == null || unicodeString.isEmpty()) ? EMPTY_STRING : new StringValue(unicodeString);
    }

    public static StringValue makeUntypedAtomic(UnicodeString unicodeString) {
        return new StringValue(unicodeString, BuiltInAtomicType.UNTYPED_ATOMIC);
    }

    public IntIterator codePoints() {
        return this.content.codePoints();
    }

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() {
        return !isEmpty();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean equals(Object obj) {
        if (obj instanceof StringValue) {
            return this.content.equals(((StringValue) obj).content);
        }
        return false;
    }

    public Base64BinaryValue getCodepointCollationKey() {
        int length32 = getContent().length32();
        byte[] bArr = new byte[length32 * 3];
        int i = 0;
        int i2 = 0;
        while (i < length32) {
            int codePointAt = getContent().codePointAt(i);
            int i3 = i2 + 1;
            bArr[i2] = (byte) (codePointAt >> 16);
            int i4 = i3 + 1;
            bArr[i3] = (byte) (codePointAt >> 8);
            bArr[i4] = (byte) codePointAt;
            i++;
            i2 = i4 + 1;
        }
        return new Base64BinaryValue(bArr);
    }

    public UnicodeString getContent() {
        return this.content;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        return this.content;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        AtomicType atomicType = this.typeLabel;
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.UNTYPED_ATOMIC;
        return atomicType == builtInAtomicType ? builtInAtomicType : BuiltInAtomicType.STRING;
    }

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return this.content;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) throws NoDynamicContextException {
        return new C18572a(stringCollator);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicMatchKey getXPathMatchKey(StringCollator stringCollator, int i) {
        return stringCollator.getCollationKey(getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        IntIterator codePoints = codePoints();
        int i = 0;
        int i2 = 0;
        while (codePoints.hasNext()) {
            i = (i * 31) + codePoints.next();
            i2++;
            if (i2 >= 100) {
                break;
            }
        }
        return i;
    }

    public boolean isEmpty() {
        return this.content.isEmpty();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean isIdentical(AtomicValue atomicValue) {
        return (atomicValue instanceof StringValue) && (this instanceof AnyURIValue) == (atomicValue instanceof AnyURIValue) && isUntypedAtomic() == atomicValue.isUntypedAtomic() && equals(atomicValue);
    }

    public synchronized AtomicIterator iterateCharacters() {
        return new CodepointIterator(codePoints());
    }

    public long length() {
        return this.content.length();
    }

    public int length32() {
        return this.content.length32();
    }

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public String toShortString() {
        String obj = this.content.toString();
        if (obj.length() > 40) {
            obj = obj.substring(0, 20) + " ... " + obj.substring(obj.length() - 20);
        }
        String str = "\"" + obj + '\"';
        if (this.typeLabel != BuiltInAtomicType.UNTYPED_ATOMIC) {
            return str;
        }
        return "u" + str;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public String toString() {
        return getContent().toString();
    }

    /* loaded from: classes11.dex */
    public static final class CharacterIterator implements AtomicIterator {

        /* renamed from: e */
        public int f102923e = 0;

        /* renamed from: f */
        public final CharSequence f102924f;

        public CharacterIterator(CharSequence charSequence) {
            this.f102924f = charSequence;
        }

        @Override // net.p110sf.saxon.tree.iter.AtomicIterator, net.p110sf.saxon.om.SequenceIterator
        public Int64Value next() {
            if (this.f102923e >= this.f102924f.length()) {
                return null;
            }
            CharSequence charSequence = this.f102924f;
            int i = this.f102923e;
            this.f102923e = i + 1;
            int charAt = charSequence.charAt(i);
            if (charAt >= 55296 && charAt <= 56319) {
                int i2 = (charAt - 55296) * 1024;
                try {
                    CharSequence charSequence2 = this.f102924f;
                    int i3 = this.f102923e;
                    this.f102923e = i3 + 1;
                    charAt = i2 + (charSequence2.charAt(i3) - 56320) + 65536;
                } catch (StringIndexOutOfBoundsException unused) {
                    throw new AssertionError("Invalid surrogate at end of string: " + StringTool.diagnosticDisplay(this.f102924f.toString()));
                }
            }
            return new Int64Value(charAt);
        }
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public StringValue copyAsSubType(AtomicType atomicType) {
        if (atomicType == this.typeLabel) {
            return this;
        }
        StringValue stringValue = new StringValue();
        stringValue.typeLabel = atomicType;
        stringValue.content = this.content;
        return stringValue;
    }

    public StringValue(UnicodeString unicodeString) {
        this(unicodeString, BuiltInAtomicType.STRING);
    }

    public StringValue(UnicodeString unicodeString, AtomicType atomicType) {
        this.content = unicodeString;
        this.typeLabel = atomicType;
    }

    public StringValue(String str) {
        this(str, BuiltInAtomicType.STRING);
    }

    public StringValue(String str, AtomicType atomicType) {
        this.content = StringView.m63901of(str).tidy();
        this.typeLabel = atomicType;
    }
}
