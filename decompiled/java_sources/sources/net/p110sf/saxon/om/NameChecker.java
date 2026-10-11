package net.p110sf.saxon.om;

import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.serialize.charcode.XMLCharacterData;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class NameChecker {
    public static String[] checkQNameParts(String str) throws XPathException {
        try {
            String[] qNameParts = getQNameParts(str);
            if (qNameParts[0].length() > 0 && !isValidNCName(qNameParts[0])) {
                throw new XPathException("Invalid QName prefix " + Err.wrap(qNameParts[0]));
            }
            return qNameParts;
        } catch (QNameException e) {
            XPathException xPathException = new XPathException(e.getMessage());
            xPathException.setErrorCode("FORG0001");
            throw xPathException;
        }
    }

    public static String getPrefix(String str) {
        int indexOf = str.indexOf(58);
        return indexOf < 0 ? "" : str.substring(0, indexOf);
    }

    public static String[] getQNameParts(String str) throws QNameException {
        String[] strArr = new String[2];
        int length = str.length();
        int indexOf = str.indexOf(58, 0);
        if (indexOf < 0) {
            strArr[0] = "";
            strArr[1] = str;
            if (!isValidNCName(StringTool.codePoints(str))) {
                throw new QNameException("Invalid QName " + Err.wrap(str));
            }
        } else {
            if (indexOf == 0) {
                throw new QNameException("QName cannot start with colon: " + Err.wrap(str));
            }
            if (indexOf == length - 1) {
                throw new QNameException("QName cannot end with colon: " + Err.wrap(str));
            }
            strArr[0] = str.substring(0, indexOf);
            String substring = str.substring(indexOf + 1);
            strArr[1] = substring;
            if (!isValidNCName(substring)) {
                if (isValidNCName(strArr[0])) {
                    throw new QNameException("Invalid QName local part " + Err.wrap(strArr[1]));
                }
                throw new QNameException("Both the prefix " + Err.wrap(strArr[0]) + " and the local part " + Err.wrap(strArr[1]) + " are invalid");
            }
        }
        return strArr;
    }

    public static boolean isNCNameChar(int i) {
        return XMLCharacterData.isNCName11(i);
    }

    public static boolean isNCNameStartChar(int i) {
        return XMLCharacterData.isNCNameStart11(i);
    }

    public static boolean isQName(IntIterator intIterator) {
        boolean z = true;
        boolean z2 = false;
        while (intIterator.hasNext()) {
            int next = intIterator.next();
            if (next == 58) {
                if (z || z2) {
                    return false;
                }
                z = true;
                z2 = true;
            } else if (z) {
                if (!isNCNameStartChar(next)) {
                    return false;
                }
                z = false;
            } else if (!isNCNameChar(next)) {
                return false;
            }
        }
        return !z;
    }

    public static boolean isValidNCName(IntIterator intIterator) {
        boolean z = true;
        while (intIterator.hasNext()) {
            int next = intIterator.next();
            if (z) {
                if (!isNCNameStartChar(next)) {
                    return false;
                }
                z = false;
            } else if (!isNCNameChar(next)) {
                return false;
            }
        }
        return !z;
    }

    public static boolean isValidNmtoken(UnicodeString unicodeString) {
        IntIterator codePoints = unicodeString.codePoints();
        boolean z = true;
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (next != 58 && !isNCNameChar(next)) {
                return false;
            }
            z = false;
        }
        return !z;
    }

    public static boolean isValidNCName(String str) {
        return isValidNCName(StringTool.codePoints(str));
    }
}
