package net.p110sf.saxon.value;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;

/* loaded from: classes11.dex */
public final class AnyURIValue extends StringValue {
    public static final AnyURIValue EMPTY_URI = new AnyURIValue(EmptyUnicodeString.getInstance());

    /* renamed from: e */
    public static final /* synthetic */ boolean f102837e = false;

    public AnyURIValue(UnicodeString unicodeString) {
        super(unicodeString == null ? EmptyUnicodeString.getInstance() : Whitespace.collapseWhitespace(unicodeString));
        this.typeLabel = BuiltInAtomicType.ANY_URI;
    }

    /* renamed from: a */
    public static byte m64647a(char c, char c2) {
        return (byte) ((m64648b(c) << 4) | m64648b(c2));
    }

    /* renamed from: b */
    public static int m64648b(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                return 0;
            }
        }
        return (c - c2) + 10;
    }

    public static String decode(String str) {
        int length;
        if (str == null || (length = str.length()) == 0 || str.indexOf(37) < 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(length);
        ByteBuffer allocate = ByteBuffer.allocate(length);
        Charset charset = StandardCharsets.UTF_8;
        char charAt = str.charAt(0);
        int i = 0;
        boolean z = false;
        while (i < length) {
            if (charAt == '[') {
                z = true;
            } else if (z && charAt == ']') {
                z = false;
            }
            if (charAt != '%' || z) {
                sb.append(charAt);
                i++;
                if (i >= length) {
                    break;
                }
                charAt = str.charAt(i);
            } else {
                allocate.clear();
                do {
                    int i2 = i + 1;
                    char charAt2 = str.charAt(i2);
                    int i3 = i2 + 1;
                    allocate.put(m64647a(charAt2, str.charAt(i3)));
                    i = i3 + 1;
                    if (i >= length) {
                        break;
                    }
                    charAt = str.charAt(i);
                } while (charAt == '%');
                allocate.flip();
                sb.append((CharSequence) charset.decode(allocate));
            }
        }
        return sb.toString();
    }

    public StringValue convertToString() {
        return new StringValue(getContent(), BuiltInAtomicType.STRING);
    }

    @Override // net.p110sf.saxon.value.StringValue, net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.ANY_URI;
    }

    public AnyURIValue(String str) {
        this(StringView.tidy(str));
    }

    @Override // net.p110sf.saxon.value.StringValue, net.p110sf.saxon.value.AtomicValue
    public AnyURIValue copyAsSubType(AtomicType atomicType) {
        AnyURIValue anyURIValue = new AnyURIValue(getUnicodeStringValue());
        anyURIValue.typeLabel = atomicType;
        return anyURIValue;
    }

    public AnyURIValue(UnicodeString unicodeString, AtomicType atomicType) {
        super(unicodeString == null ? "" : Whitespace.collapseWhitespace(unicodeString).toString(), atomicType);
    }
}
