package net.p110sf.saxon.om;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import javax.xml.namespace.QName;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class StructuredQName implements IdentityComparable {

    /* renamed from: e */
    public final char[] f100865e;

    /* renamed from: f */
    public final int f100866f;

    /* renamed from: g */
    public final int f100867g;

    /* renamed from: h */
    public int f100868h = -1;

    public StructuredQName(char[] cArr, int i, int i2) {
        this.f100865e = cArr;
        this.f100866f = i;
        this.f100867g = i2;
    }

    public static int computeHashCode(CharSequence charSequence, CharSequence charSequence2) {
        int length = charSequence2.length();
        int length2 = charSequence.length();
        int i = ((length + length2) ^ 1342480395) ^ length2;
        int i2 = 0;
        while (i2 < length) {
            i ^= charSequence2.charAt(i2) << (length2 & 31);
            i2++;
            length2++;
        }
        return i;
    }

    public static StructuredQName fromClarkName(String str) {
        String str2;
        if (str.startsWith("Q{")) {
            str = str.substring(1);
        }
        if (str.charAt(0) == '{') {
            int indexOf = str.indexOf(125);
            if (indexOf < 0) {
                throw new IllegalArgumentException("No closing '}' in Clark name");
            }
            str2 = str.substring(1, indexOf);
            if (indexOf == str.length()) {
                throw new IllegalArgumentException("Missing local part in Clark name");
            }
            str = str.substring(indexOf + 1);
        } else {
            str2 = "";
        }
        return new StructuredQName("", str2, str);
    }

    public static StructuredQName fromEQName(String str) {
        String trim = Whitespace.trim(str);
        if (trim.length() < 4 || !trim.startsWith("Q{")) {
            return new StructuredQName("", "", trim);
        }
        int indexOf = trim.indexOf(125);
        if (indexOf < 0) {
            throw new IllegalArgumentException("Invalid EQName: closing brace not found");
        }
        if (indexOf == trim.length() - 1) {
            throw new IllegalArgumentException("Invalid EQName: local part is missing");
        }
        String substring = trim.substring(2, indexOf);
        if (substring.indexOf(123) < 0) {
            return new StructuredQName("", substring, trim.substring(indexOf + 1));
        }
        throw new IllegalArgumentException("Invalid EQName: open brace in URI part");
    }

    public static StructuredQName fromLexicalQName(String str, boolean z, boolean z2, NamespaceResolver namespaceResolver) throws XPathException {
        String trim = Whitespace.trim(str);
        if (z2 && trim.length() >= 4 && trim.charAt(0) == 'Q' && trim.charAt(1) == '{') {
            int indexOf = trim.indexOf(125, 2);
            if (indexOf < 0) {
                throw new XPathException("Invalid EQName: closing brace not found", "FOCA0002");
            }
            if (indexOf == trim.length() - 1) {
                throw new XPathException("Invalid EQName: local part is missing", "FOCA0002");
            }
            String substring = trim.substring(2, indexOf);
            if (substring.indexOf(123, 0) >= 0) {
                throw new XPathException("Namespace URI must not contain '{'", "FOCA0002");
            }
            String substring2 = trim.substring(indexOf + 1, trim.length());
            if (NameChecker.isValidNCName(StringTool.codePoints(substring2))) {
                return new StructuredQName("", substring, substring2);
            }
            throw new XPathException("Invalid EQName: local part is not a valid NCName", "FOCA0002");
        }
        try {
            String[] qNameParts = NameChecker.getQNameParts(trim);
            String uRIForPrefix = namespaceResolver.getURIForPrefix(qNameParts[0], z);
            if (uRIForPrefix != null) {
                return new StructuredQName(qNameParts[0], uRIForPrefix, qNameParts[1]);
            }
            if (NameChecker.isValidNCName(qNameParts[0])) {
                XPathException xPathException = new XPathException("Namespace prefix '" + qNameParts[0] + "' has not been declared");
                xPathException.setErrorCode("FONS0004");
                throw xPathException;
            }
            XPathException xPathException2 = new XPathException("Invalid namespace prefix '" + qNameParts[0] + CloudStorageConstants.SINGLE_QUOTES);
            xPathException2.setErrorCode("FOCA0002");
            throw xPathException2;
        } catch (QNameException e) {
            throw new XPathException(e.getMessage(), "FOCA0002");
        }
    }

    public boolean equals(Object obj) {
        StructuredQName structuredQName;
        int i;
        int i2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StructuredQName) || (((i = (structuredQName = (StructuredQName) obj).f100868h) != -1 && i != hashCode()) || this.f100866f != structuredQName.f100866f || (i2 = this.f100867g) != structuredQName.f100867g)) {
            return false;
        }
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (this.f100865e[i3] != structuredQName.f100865e[i3]) {
                return false;
            }
        }
        return true;
    }

    public String getClarkName() {
        StringBuilder sb = new StringBuilder((this.f100865e.length - this.f100867g) + 2);
        if (this.f100866f > 0) {
            sb.append('{');
            sb.append(this.f100865e, 0, this.f100866f);
            sb.append('}');
        }
        char[] cArr = this.f100865e;
        int i = this.f100866f;
        sb.append(cArr, i, this.f100867g - i);
        return sb.toString();
    }

    public String getDisplayName() {
        int i = this.f100867g;
        char[] cArr = this.f100865e;
        if (i == cArr.length) {
            return getLocalPart();
        }
        StringBuilder sb = new StringBuilder((cArr.length - this.f100866f) + 1);
        char[] cArr2 = this.f100865e;
        int i2 = this.f100867g;
        sb.append(cArr2, i2, cArr2.length - i2);
        sb.append(':');
        char[] cArr3 = this.f100865e;
        int i3 = this.f100866f;
        sb.append(cArr3, i3, this.f100867g - i3);
        return sb.toString();
    }

    public String getEQName() {
        StringBuilder sb = new StringBuilder((this.f100865e.length - this.f100867g) + 2);
        sb.append("Q{");
        int i = this.f100866f;
        if (i > 0) {
            sb.append(this.f100865e, 0, i);
        }
        sb.append('}');
        char[] cArr = this.f100865e;
        int i2 = this.f100866f;
        sb.append(cArr, i2, this.f100867g - i2);
        return sb.toString();
    }

    public String getLocalPart() {
        char[] cArr = this.f100865e;
        int i = this.f100866f;
        return new String(cArr, i, this.f100867g - i);
    }

    public NamespaceBinding getNamespaceBinding() {
        return NamespaceBinding.makeNamespaceBinding(getPrefix(), getURI());
    }

    public String getPrefix() {
        char[] cArr = this.f100865e;
        int i = this.f100867g;
        return new String(cArr, i, cArr.length - i);
    }

    public StructuredQName getStructuredQName() {
        return this;
    }

    public String getURI() {
        int i = this.f100866f;
        return i == 0 ? "" : new String(this.f100865e, 0, i);
    }

    public boolean hasURI(String str) {
        if (this.f100866f != str.length()) {
            return false;
        }
        for (int i = this.f100866f - 1; i >= 0; i--) {
            if (this.f100865e[i] != str.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = this.f100868h;
        if (i == -1) {
            int i2 = 1342480395 ^ this.f100867g;
            int i3 = this.f100866f;
            i = i2 ^ i3;
            while (i3 < this.f100867g) {
                i ^= this.f100865e[i3] << (i3 & 31);
                i3++;
            }
            this.f100868h = i;
        }
        return i;
    }

    @Override // net.p110sf.saxon.om.IdentityComparable
    public int identityHashCode() {
        return getPrefix().hashCode() ^ hashCode();
    }

    @Override // net.p110sf.saxon.om.IdentityComparable
    public boolean isIdentical(IdentityComparable identityComparable) {
        return equals(identityComparable) && ((StructuredQName) identityComparable).getPrefix().equals(getPrefix());
    }

    public QName toJaxpQName() {
        return new QName(getURI(), getLocalPart(), getPrefix());
    }

    public String toString() {
        return getDisplayName();
    }

    public StructuredQName(String str, String str2, String str3) {
        str2 = str2 == null ? "" : str2;
        int length = str.length();
        int length2 = str2.length();
        int length3 = str3.length();
        this.f100866f = length2;
        int i = length2 + length3;
        this.f100867g = i;
        char[] cArr = new char[i + length];
        this.f100865e = cArr;
        str2.getChars(0, length2, cArr, 0);
        str3.getChars(0, length3, cArr, length2);
        str.getChars(0, length, cArr, i);
    }
}
