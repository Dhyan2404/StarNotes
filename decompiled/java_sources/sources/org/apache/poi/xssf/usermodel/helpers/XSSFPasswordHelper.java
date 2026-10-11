package org.apache.poi.xssf.usermodel.helpers;

import java.util.Arrays;
import java.util.Base64;
import java.util.Locale;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.CryptoFunctions;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.util.Internal;
import org.apache.poi.util.RandomSingleton;
import org.apache.poi.util.StringUtil;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;

@Internal(since = "3.15 beta 3")
/* loaded from: classes13.dex */
public final class XSSFPasswordHelper {
    private XSSFPasswordHelper() {
    }

    private static QName getAttrName(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return new QName(str2);
        }
        return new QName(str + StringUtil.toUpperCase(str2.charAt(0)) + str2.substring(1));
    }

    public static void setPassword(XmlObject xmlObject, String str, HashAlgorithm hashAlgorithm, String str2) {
        XmlCursor newCursor = xmlObject.newCursor();
        try {
            if (str == null) {
                newCursor.removeAttribute(getAttrName(str2, "password"));
                newCursor.removeAttribute(getAttrName(str2, "algorithmName"));
                newCursor.removeAttribute(getAttrName(str2, "hashValue"));
                newCursor.removeAttribute(getAttrName(str2, "saltValue"));
                newCursor.removeAttribute(getAttrName(str2, "spinCount"));
                newCursor.close();
                return;
            }
            newCursor.toFirstContentToken();
            if (hashAlgorithm == null) {
                int createXorVerifier1 = CryptoFunctions.createXorVerifier1(str);
                QName attrName = getAttrName(str2, "password");
                Locale locale = Locale.ROOT;
                newCursor.insertAttributeWithValue(attrName, String.format(locale, "%04X", Integer.valueOf(createXorVerifier1)).toUpperCase(locale));
            } else {
                byte[] generateSeed = RandomSingleton.getInstance().generateSeed(16);
                byte[] hashPassword = CryptoFunctions.hashPassword(str, hashAlgorithm, generateSeed, 100000, false);
                Base64.Encoder encoder = Base64.getEncoder();
                newCursor.insertAttributeWithValue(getAttrName(str2, "algorithmName"), hashAlgorithm.jceId);
                newCursor.insertAttributeWithValue(getAttrName(str2, "hashValue"), encoder.encodeToString(hashPassword));
                newCursor.insertAttributeWithValue(getAttrName(str2, "saltValue"), encoder.encodeToString(generateSeed));
                newCursor.insertAttributeWithValue(getAttrName(str2, "spinCount"), "100000");
            }
            newCursor.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public static boolean validatePassword(XmlObject xmlObject, String str, String str2) {
        if (str == null) {
            return false;
        }
        XmlCursor newCursor = xmlObject.newCursor();
        try {
            String attributeText = newCursor.getAttributeText(getAttrName(str2, "password"));
            String attributeText2 = newCursor.getAttributeText(getAttrName(str2, "algorithmName"));
            String attributeText3 = newCursor.getAttributeText(getAttrName(str2, "hashValue"));
            String attributeText4 = newCursor.getAttributeText(getAttrName(str2, "saltValue"));
            String attributeText5 = newCursor.getAttributeText(getAttrName(str2, "spinCount"));
            if (attributeText != null) {
                boolean z = Integer.parseInt(attributeText, 16) == CryptoFunctions.createXorVerifier1(str);
                newCursor.close();
                return z;
            }
            if (attributeText3 == null || attributeText2 == null || attributeText4 == null || attributeText5 == null) {
                newCursor.close();
                return false;
            }
            Base64.Decoder decoder = Base64.getDecoder();
            boolean equals = Arrays.equals(decoder.decode(attributeText3), CryptoFunctions.hashPassword(str, HashAlgorithm.fromString(attributeText2), decoder.decode(attributeText4), Integer.parseInt(attributeText5), false));
            newCursor.close();
            return equals;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }
}
