package javax.lang.model;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes5.dex */
public enum SourceVersion {
    RELEASE_0,
    RELEASE_1,
    RELEASE_2,
    RELEASE_3,
    RELEASE_4,
    RELEASE_5,
    RELEASE_6,
    RELEASE_7,
    RELEASE_8;

    private static final Set<String> keywords;
    private static final SourceVersion latestSupported = getLatestSupported();

    static {
        HashSet hashSet = new HashSet();
        String[] strArr = {"abstract", "continue", "for", "new", "switch", "assert", "default", Constants.ELEMNAME_IF_STRING, "package", "synchronized", "boolean", "do", "goto", "private", "this", "break", "double", "implements", "protected", "throw", "byte", "else", Constants.ELEMNAME_IMPORT_STRING, "public", "throws", "case", "enum", "instanceof", "return", "transient", "catch", "extends", "int", "short", "try", "char", "final", "interface", "static", "void", "class", "finally", "long", "strictfp", "volatile", "const", "float", "native", "super", "while", "null", "true", "false"};
        for (int i = 0; i < 53; i++) {
            hashSet.add(strArr[i]);
        }
        keywords = Collections.unmodifiableSet(hashSet);
    }

    private static SourceVersion getLatestSupported() {
        String property;
        try {
            property = System.getProperty("java.specification.version");
        } catch (SecurityException unused) {
        }
        if ("1.8".equals(property)) {
            return RELEASE_8;
        }
        if ("1.7".equals(property)) {
            return RELEASE_7;
        }
        if ("1.6".equals(property)) {
            return RELEASE_6;
        }
        return RELEASE_5;
    }

    public static boolean isIdentifier(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        if (charSequence2.length() == 0) {
            return false;
        }
        int codePointAt = charSequence2.codePointAt(0);
        if (!Character.isJavaIdentifierStart(codePointAt)) {
            return false;
        }
        int charCount = Character.charCount(codePointAt);
        while (charCount < charSequence2.length()) {
            int codePointAt2 = charSequence2.codePointAt(charCount);
            if (!Character.isJavaIdentifierPart(codePointAt2)) {
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    public static boolean isKeyword(CharSequence charSequence) {
        return keywords.contains(charSequence.toString());
    }

    public static boolean isName(CharSequence charSequence) {
        for (String str : charSequence.toString().split("\\.", -1)) {
            if (!isIdentifier(str) || isKeyword(str)) {
                return false;
            }
        }
        return true;
    }

    public static SourceVersion latest() {
        return RELEASE_8;
    }

    public static SourceVersion latestSupported() {
        return latestSupported;
    }
}
