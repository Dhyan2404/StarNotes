package org.apache.commons.text;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.apache.commons.lang3.Validate;
import org.apache.commons.text.lookup.StringLookup;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.apache.commons.text.matcher.StringMatcher;
import org.apache.commons.text.matcher.StringMatcherFactory;

/* loaded from: classes12.dex */
public class StringSubstitutor {
    public static final char DEFAULT_ESCAPE = '$';
    public static final StringMatcher DEFAULT_PREFIX;
    public static final StringMatcher DEFAULT_SUFFIX;
    public static final StringMatcher DEFAULT_VALUE_DELIMITER;

    /* renamed from: a */
    public char f109998a;

    /* renamed from: b */
    public StringMatcher f109999b;

    /* renamed from: c */
    public StringMatcher f110000c;

    /* renamed from: d */
    public StringMatcher f110001d;

    /* renamed from: e */
    public StringLookup f110002e;

    /* renamed from: f */
    public boolean f110003f;

    /* renamed from: g */
    public boolean f110004g;

    /* renamed from: h */
    public boolean f110005h;

    static {
        StringMatcherFactory stringMatcherFactory = StringMatcherFactory.INSTANCE;
        DEFAULT_PREFIX = stringMatcherFactory.stringMatcher("${");
        DEFAULT_SUFFIX = stringMatcherFactory.stringMatcher("}");
        DEFAULT_VALUE_DELIMITER = stringMatcherFactory.stringMatcher(":-");
    }

    public StringSubstitutor() {
        this((StringLookup) null, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    public static <V> String replace(Object obj, Map<String, V> map) {
        return new StringSubstitutor(map).replace(obj);
    }

    public static String replaceSystemProperties(Object obj) {
        return new StringSubstitutor(StringLookupFactory.INSTANCE.systemPropertyStringLookup()).replace(obj);
    }

    /* renamed from: a */
    public final void m68251a(String str, List<String> list) {
        if (list.contains(str)) {
            TextStringBuilder textStringBuilder = new TextStringBuilder(256);
            textStringBuilder.append("Infinite loop in property interpolation of ");
            textStringBuilder.append(list.remove(0));
            textStringBuilder.append(": ");
            textStringBuilder.appendWithSeparators(list, "->");
            throw new IllegalStateException(textStringBuilder.toString());
        }
    }

    /* renamed from: b */
    public final int m68252b(TextStringBuilder textStringBuilder, int i, int i2, List<String> list) {
        StringMatcher stringMatcher;
        StringMatcher stringMatcher2;
        char c;
        boolean z;
        int i3;
        String str;
        int i4;
        StringMatcher variablePrefixMatcher = getVariablePrefixMatcher();
        StringMatcher variableSuffixMatcher = getVariableSuffixMatcher();
        char escapeChar = getEscapeChar();
        StringMatcher valueDelimiterMatcher = getValueDelimiterMatcher();
        boolean isEnableSubstitutionInVariables = isEnableSubstitutionInVariables();
        boolean isDisableSubstitutionInValues = isDisableSubstitutionInValues();
        boolean z2 = list == null;
        int i5 = i;
        int i6 = i + i2;
        int i7 = 0;
        int i8 = 0;
        char[] cArr = textStringBuilder.buffer;
        List<String> list2 = list;
        while (i5 < i6) {
            int isMatch = variablePrefixMatcher.isMatch(cArr, i5, i, i6);
            if (isMatch != 0) {
                if (i5 > i) {
                    int i9 = i5 - 1;
                    z = z2;
                    if (cArr[i9] == escapeChar) {
                        if (this.f110004g) {
                            i5++;
                            z2 = z;
                        } else {
                            textStringBuilder.deleteCharAt(i9);
                            i7--;
                            i6--;
                            stringMatcher = variablePrefixMatcher;
                            stringMatcher2 = variableSuffixMatcher;
                            c = escapeChar;
                            cArr = textStringBuilder.buffer;
                            i8 = 1;
                        }
                    }
                } else {
                    z = z2;
                }
                int i10 = i5 + isMatch;
                int i11 = i10;
                int i12 = 0;
                while (true) {
                    if (i11 >= i6) {
                        stringMatcher = variablePrefixMatcher;
                        stringMatcher2 = variableSuffixMatcher;
                        c = escapeChar;
                        i5 = i11;
                        break;
                    }
                    if (!isEnableSubstitutionInVariables || variablePrefixMatcher.isMatch(cArr, i11, i, i6) == 0) {
                        int isMatch2 = variableSuffixMatcher.isMatch(cArr, i11, i, i6);
                        if (isMatch2 == 0) {
                            i11++;
                        } else if (i12 == 0) {
                            stringMatcher2 = variableSuffixMatcher;
                            c = escapeChar;
                            String str2 = new String(cArr, i10, (i11 - i5) - isMatch);
                            if (isEnableSubstitutionInVariables) {
                                TextStringBuilder textStringBuilder2 = new TextStringBuilder(str2);
                                substitute(textStringBuilder2, 0, textStringBuilder2.length());
                                str2 = textStringBuilder2.toString();
                            }
                            int i13 = i11 + isMatch2;
                            if (valueDelimiterMatcher != null) {
                                char[] charArray = str2.toCharArray();
                                i3 = i6;
                                int i14 = 0;
                                while (i14 < charArray.length && (isEnableSubstitutionInVariables || variablePrefixMatcher.isMatch(charArray, i14, i14, charArray.length) == 0)) {
                                    stringMatcher = variablePrefixMatcher;
                                    i4 = 0;
                                    if (valueDelimiterMatcher.isMatch(charArray, i14, 0, charArray.length) != 0) {
                                        int isMatch3 = valueDelimiterMatcher.isMatch(charArray, i14, 0, charArray.length);
                                        String substring = str2.substring(0, i14);
                                        str = str2.substring(i14 + isMatch3);
                                        str2 = substring;
                                        break;
                                    }
                                    i14++;
                                    variablePrefixMatcher = stringMatcher;
                                }
                                stringMatcher = variablePrefixMatcher;
                            } else {
                                stringMatcher = variablePrefixMatcher;
                                i3 = i6;
                            }
                            i4 = 0;
                            str = null;
                            if (list2 == null) {
                                list2 = new ArrayList<>();
                                list2.add(new String(cArr, i, i2));
                            }
                            m68251a(str2, list2);
                            list2.add(str2);
                            String resolveVariable = resolveVariable(str2, textStringBuilder, i5, i13);
                            if (resolveVariable != null) {
                                str = resolveVariable;
                            }
                            if (str != null) {
                                int length = str.length();
                                textStringBuilder.replace(i5, i13, str);
                                int m68252b = ((!isDisableSubstitutionInValues ? m68252b(textStringBuilder, i5, length, list2) : i4) + length) - (i13 - i5);
                                i6 = i3 + m68252b;
                                i7 += m68252b;
                                cArr = textStringBuilder.buffer;
                                i5 = i13 + m68252b;
                                i8 = 1;
                            } else {
                                i6 = i3;
                                i5 = i13;
                            }
                            list2.remove(list2.size() - 1);
                        } else {
                            i12--;
                            i11 += isMatch2;
                            escapeChar = escapeChar;
                            variablePrefixMatcher = variablePrefixMatcher;
                        }
                    } else {
                        i12++;
                        i11 += variablePrefixMatcher.isMatch(cArr, i11, i, i6);
                    }
                }
            } else {
                i5++;
                stringMatcher = variablePrefixMatcher;
                stringMatcher2 = variableSuffixMatcher;
                c = escapeChar;
                z = z2;
            }
            z2 = z;
            variableSuffixMatcher = stringMatcher2;
            escapeChar = c;
            variablePrefixMatcher = stringMatcher;
        }
        return z2 ? i8 : i7;
    }

    public char getEscapeChar() {
        return this.f109998a;
    }

    public StringLookup getStringLookup() {
        return this.f110002e;
    }

    public StringMatcher getValueDelimiterMatcher() {
        return this.f110001d;
    }

    public StringMatcher getVariablePrefixMatcher() {
        return this.f109999b;
    }

    public StringMatcher getVariableSuffixMatcher() {
        return this.f110000c;
    }

    public boolean isDisableSubstitutionInValues() {
        return this.f110005h;
    }

    public boolean isEnableSubstitutionInVariables() {
        return this.f110003f;
    }

    public boolean isPreserveEscapes() {
        return this.f110004g;
    }

    public boolean replaceIn(TextStringBuilder textStringBuilder) {
        if (textStringBuilder == null) {
            return false;
        }
        return substitute(textStringBuilder, 0, textStringBuilder.length());
    }

    public String resolveVariable(String str, TextStringBuilder textStringBuilder, int i, int i2) {
        StringLookup stringLookup = getStringLookup();
        if (stringLookup == null) {
            return null;
        }
        return stringLookup.lookup(str);
    }

    public StringSubstitutor setDisableSubstitutionInValues(boolean z) {
        this.f110005h = z;
        return this;
    }

    public StringSubstitutor setEnableSubstitutionInVariables(boolean z) {
        this.f110003f = z;
        return this;
    }

    public StringSubstitutor setEscapeChar(char c) {
        this.f109998a = c;
        return this;
    }

    public StringSubstitutor setPreserveEscapes(boolean z) {
        this.f110004g = z;
        return this;
    }

    public StringSubstitutor setValueDelimiter(char c) {
        return setValueDelimiterMatcher(StringMatcherFactory.INSTANCE.charMatcher(c));
    }

    public StringSubstitutor setValueDelimiterMatcher(StringMatcher stringMatcher) {
        this.f110001d = stringMatcher;
        return this;
    }

    public StringSubstitutor setVariablePrefix(char c) {
        return setVariablePrefixMatcher(StringMatcherFactory.INSTANCE.charMatcher(c));
    }

    public StringSubstitutor setVariablePrefixMatcher(StringMatcher stringMatcher) {
        Validate.isTrue(stringMatcher != null, "Variable prefix matcher must not be null!", new Object[0]);
        this.f109999b = stringMatcher;
        return this;
    }

    public StringSubstitutor setVariableResolver(StringLookup stringLookup) {
        this.f110002e = stringLookup;
        return this;
    }

    public StringSubstitutor setVariableSuffix(char c) {
        return setVariableSuffixMatcher(StringMatcherFactory.INSTANCE.charMatcher(c));
    }

    public StringSubstitutor setVariableSuffixMatcher(StringMatcher stringMatcher) {
        Validate.isTrue(stringMatcher != null, "Variable suffix matcher must not be null!", new Object[0]);
        this.f110000c = stringMatcher;
        return this;
    }

    public boolean substitute(TextStringBuilder textStringBuilder, int i, int i2) {
        return m68252b(textStringBuilder, i, i2, null) > 0;
    }

    public <V> StringSubstitutor(Map<String, V> map) {
        this(StringLookupFactory.INSTANCE.mapStringLookup(map), DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    public static <V> String replace(Object obj, Map<String, V> map, String str, String str2) {
        return new StringSubstitutor(map, str, str2).replace(obj);
    }

    public boolean replaceIn(TextStringBuilder textStringBuilder, int i, int i2) {
        if (textStringBuilder == null) {
            return false;
        }
        return substitute(textStringBuilder, i, i2);
    }

    public StringSubstitutor setValueDelimiter(String str) {
        if (str != null && str.length() != 0) {
            return setValueDelimiterMatcher(StringMatcherFactory.INSTANCE.stringMatcher(str));
        }
        setValueDelimiterMatcher(null);
        return this;
    }

    public StringSubstitutor setVariablePrefix(String str) {
        Validate.isTrue(str != null, "Variable prefix must not be null!", new Object[0]);
        return setVariablePrefixMatcher(StringMatcherFactory.INSTANCE.stringMatcher(str));
    }

    public StringSubstitutor setVariableSuffix(String str) {
        Validate.isTrue(str != null, "Variable suffix must not be null!", new Object[0]);
        return setVariableSuffixMatcher(StringMatcherFactory.INSTANCE.stringMatcher(str));
    }

    public <V> StringSubstitutor(Map<String, V> map, String str, String str2) {
        this(StringLookupFactory.INSTANCE.mapStringLookup(map), str, str2, '$');
    }

    public static String replace(Object obj, Properties properties) {
        if (properties == null) {
            return obj.toString();
        }
        HashMap hashMap = new HashMap();
        Enumeration<?> propertyNames = properties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            String str = (String) propertyNames.nextElement();
            hashMap.put(str, properties.getProperty(str));
        }
        return replace(obj, hashMap);
    }

    public boolean replaceIn(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return false;
        }
        return replaceIn(stringBuffer, 0, stringBuffer.length());
    }

    public <V> StringSubstitutor(Map<String, V> map, String str, String str2, char c) {
        this(StringLookupFactory.INSTANCE.mapStringLookup(map), str, str2, c);
    }

    public boolean replaceIn(StringBuffer stringBuffer, int i, int i2) {
        if (stringBuffer == null) {
            return false;
        }
        TextStringBuilder append = new TextStringBuilder(i2).append(stringBuffer, i, i2);
        if (!substitute(append, 0, i2)) {
            return false;
        }
        stringBuffer.replace(i, i2 + i, append.toString());
        return true;
    }

    public <V> StringSubstitutor(Map<String, V> map, String str, String str2, char c, String str3) {
        this(StringLookupFactory.INSTANCE.mapStringLookup(map), str, str2, c, str3);
    }

    public StringSubstitutor(StringLookup stringLookup) {
        this(stringLookup, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    public StringSubstitutor(StringLookup stringLookup, String str, String str2, char c) {
        this.f110004g = false;
        setVariableResolver(stringLookup);
        setVariablePrefix(str);
        setVariableSuffix(str2);
        setEscapeChar(c);
        setValueDelimiterMatcher(DEFAULT_VALUE_DELIMITER);
    }

    public boolean replaceIn(StringBuilder sb) {
        if (sb == null) {
            return false;
        }
        return replaceIn(sb, 0, sb.length());
    }

    public boolean replaceIn(StringBuilder sb, int i, int i2) {
        if (sb == null) {
            return false;
        }
        TextStringBuilder append = new TextStringBuilder(i2).append(sb, i, i2);
        if (!substitute(append, 0, i2)) {
            return false;
        }
        sb.replace(i, i2 + i, append.toString());
        return true;
    }

    public String replace(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        TextStringBuilder append = new TextStringBuilder(cArr.length).append(cArr);
        substitute(append, 0, cArr.length);
        return append.toString();
    }

    public StringSubstitutor(StringLookup stringLookup, String str, String str2, char c, String str3) {
        this.f110004g = false;
        setVariableResolver(stringLookup);
        setVariablePrefix(str);
        setVariableSuffix(str2);
        setEscapeChar(c);
        setValueDelimiter(str3);
    }

    public String replace(char[] cArr, int i, int i2) {
        if (cArr == null) {
            return null;
        }
        TextStringBuilder append = new TextStringBuilder(i2).append(cArr, i, i2);
        substitute(append, 0, i2);
        return append.toString();
    }

    public String replace(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return replace(charSequence, 0, charSequence.length());
    }

    public String replace(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            return null;
        }
        TextStringBuilder append = new TextStringBuilder(i2).append(charSequence, i, i2);
        substitute(append, 0, i2);
        return append.toString();
    }

    public StringSubstitutor(StringLookup stringLookup, StringMatcher stringMatcher, StringMatcher stringMatcher2, char c) {
        this(stringLookup, stringMatcher, stringMatcher2, c, DEFAULT_VALUE_DELIMITER);
    }

    public String replace(Object obj) {
        if (obj == null) {
            return null;
        }
        TextStringBuilder append = new TextStringBuilder().append(obj);
        substitute(append, 0, append.length());
        return append.toString();
    }

    public StringSubstitutor(StringLookup stringLookup, StringMatcher stringMatcher, StringMatcher stringMatcher2, char c, StringMatcher stringMatcher3) {
        this.f110004g = false;
        setVariableResolver(stringLookup);
        setVariablePrefixMatcher(stringMatcher);
        setVariableSuffixMatcher(stringMatcher2);
        setEscapeChar(c);
        setValueDelimiterMatcher(stringMatcher3);
    }

    public String replace(TextStringBuilder textStringBuilder) {
        if (textStringBuilder == null) {
            return null;
        }
        TextStringBuilder append = new TextStringBuilder(textStringBuilder.length()).append(textStringBuilder);
        substitute(append, 0, append.length());
        return append.toString();
    }

    public String replace(TextStringBuilder textStringBuilder, int i, int i2) {
        if (textStringBuilder == null) {
            return null;
        }
        TextStringBuilder append = new TextStringBuilder(i2).append(textStringBuilder, i, i2);
        substitute(append, 0, i2);
        return append.toString();
    }

    public String replace(String str) {
        if (str == null) {
            return null;
        }
        TextStringBuilder textStringBuilder = new TextStringBuilder(str);
        return !substitute(textStringBuilder, 0, str.length()) ? str : textStringBuilder.toString();
    }

    public String replace(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        TextStringBuilder append = new TextStringBuilder(i2).append(str, i, i2);
        if (!substitute(append, 0, i2)) {
            return str.substring(i, i2 + i);
        }
        return append.toString();
    }

    public String replace(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return null;
        }
        TextStringBuilder append = new TextStringBuilder(stringBuffer.length()).append(stringBuffer);
        substitute(append, 0, append.length());
        return append.toString();
    }

    public String replace(StringBuffer stringBuffer, int i, int i2) {
        if (stringBuffer == null) {
            return null;
        }
        TextStringBuilder append = new TextStringBuilder(i2).append(stringBuffer, i, i2);
        substitute(append, 0, i2);
        return append.toString();
    }
}
