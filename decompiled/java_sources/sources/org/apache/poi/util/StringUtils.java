package org.apache.poi.util;

import com.google.android.material.motion.MotionUtils;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.lang.Character;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.poi.convert.htmlgen.Constants;

/* loaded from: classes13.dex */
public class StringUtils {
    public static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static void appendTextToLastItem(List<String> list, String str) {
        if (list.isEmpty()) {
            list.add(str);
            return;
        }
        list.set(list.size() - 1, list.get(list.size() - 1) + str);
    }

    public static int calculateSpaceNumForString(String str) {
        if (str == null || !str.contains(" ")) {
            return 0;
        }
        if (str.split(" ").length > 0) {
            return r3.length - 1;
        }
        return 0;
    }

    public static String computeMd5(String str) {
        if (isNullOrEmpty(str)) {
            return null;
        }
        return computeMd5(str.getBytes(StandardCharsets.UTF_8));
    }

    public static String copyTitle(String str, int i) {
        return str + MotionUtils.f31761c + i + MotionUtils.f31762d;
    }

    public static String deleteNewlineSymbol(String str) {
        return !isNullOrEmpty(str) ? str.replaceAll("\r\n", " ").replaceAll("\n", " ") : str;
    }

    public static String encodeHeaderValue(String str) {
        if (isNullOrEmpty(str)) {
            return "";
        }
        String replace = str.replace("\n", "");
        try {
            return URLEncoder.encode(replace, "UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
            return replace;
        }
    }

    public static String fullTrim(String str) {
        return rightTrim(leftTrim(str));
    }

    public static String getBlankStr(String str) {
        return isNullOrEmpty(str) ? "" : str;
    }

    public static String getHtmlFormatString(String str) {
        if (str == null) {
            return null;
        }
        return str.replaceAll("\\<.*?>|\\n", "");
    }

    public static int getLength(String str) {
        if (isNullOrEmpty(str)) {
            return 0;
        }
        return str.length();
    }

    public static String hexToString(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i << 1;
            char[] cArr2 = HEX_DIGITS;
            byte b = bArr[i];
            cArr[i2] = cArr2[(b >> 4) & 15];
            cArr[i2 + 1] = cArr2[b & 15];
        }
        return String.valueOf(cArr);
    }

    public static String hidePartEmail(String str) {
        return str.replaceAll("(\\w?)(\\w+)(\\w)(@\\w+\\.[a-z]+(\\.[a-z]+)?)", "$1****$3$4");
    }

    public static String hidePartPhone(String str) {
        return str.replaceAll("(\\d{3})\\d{4}(\\d{4})", "$1****$2");
    }

    public static boolean isAlpha(char c) {
        return ('A' <= c && c <= 'z') || (192 <= c && c <= 214) || ((216 <= c && c <= 246) || ((248 <= c && c <= 255) || ((256 <= c && c <= 383) || ((384 <= c && c <= 591) || 902 == c || ((904 <= c && c <= 1023) || ((1024 <= c && c <= 1153) || ((1162 <= c && c <= 1279) || ((1280 <= c && c <= 1327) || (7680 <= c && c <= 7935)))))))));
    }

    public static boolean isChinese(char c) {
        Character.UnicodeBlock of = Character.UnicodeBlock.of(c);
        return of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || of == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || of == Character.UnicodeBlock.GENERAL_PUNCTUATION || of == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || of == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS;
    }

    public static boolean isEmail(String str) {
        if (isNullOrEmpty(str)) {
            return false;
        }
        return Pattern.compile("^([a-zA-Z0-9_+\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9_\\-]+\\.)+))([a-zA-Z0-9_\\-]+)(\\]?)$").matcher(str).matches();
    }

    public static boolean isEquals(String str, String str2) {
        return Objects.equals(str, str2);
    }

    public static boolean isInteger(String str) {
        if (isNullOrEmpty(str)) {
            return false;
        }
        if (str.charAt(0) == '-') {
            if (str.length() <= 1) {
                return false;
            }
            str = str.substring(1, str.length() - 1);
        }
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isLetter(char c) {
        return Character.isLowerCase(c) || Character.isUpperCase(c);
    }

    public static boolean isNotBlank(String str) {
        return (str == null || str.isEmpty()) ? false : true;
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.isEmpty();
    }

    public static boolean isNumberStr(String str) {
        return Pattern.compile("[0-9]*").matcher(str).matches();
    }

    public static boolean isPhoneNumber(String str) {
        if (isNullOrEmpty(str)) {
            return false;
        }
        return Pattern.compile("^[0-9]{7,11}$").matcher(str).matches();
    }

    public static String join(Iterable<?> iterable, String str) {
        StringBuilder sb = new StringBuilder();
        for (Object obj : iterable) {
            if (sb.length() > 0) {
                sb.append(str);
            }
            sb.append(obj);
        }
        return sb.toString();
    }

    public static String leftTrim(String str) {
        if (isNullOrEmpty(str)) {
            return str;
        }
        int length = str.length() - 1;
        int i = 0;
        while (i <= length && str.charAt(i) <= ' ') {
            i++;
        }
        return i == 0 ? str : str.substring(i, length + 1);
    }

    public static String nonBlankValue(String str, String str2) {
        return isNotBlank(str) ? str : str2;
    }

    public static String normalSpace(String str) {
        return isNotBlank(str) ? str.replaceAll(Constants.UNICODECHAR_NO_BREAK_SPACE, " ").replaceAll("\u3000", " ") : str;
    }

    public static boolean parseBoolean(String str) {
        try {
            return Boolean.parseBoolean(str);
        } catch (Exception unused) {
            return false;
        }
    }

    public static String readLine(String str) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(str), 256);
        try {
            return bufferedReader.readLine();
        } finally {
            bufferedReader.close();
        }
    }

    public static String removeNewlineSymbol(String str) {
        return isNotBlank(str) ? str.replaceAll("\r\n", "").replaceAll("\n", "") : str;
    }

    public static String rightTrim(String str) {
        if (isNullOrEmpty(str)) {
            return str;
        }
        int length = str.length() - 1;
        int i = length;
        while (i >= 0 && str.charAt(i) <= ' ') {
            i--;
        }
        return i == length ? str : str.substring(0, i + 1);
    }

    public static boolean safelyContains(String str, String str2) {
        if (isNullOrEmpty(str)) {
            return false;
        }
        return str.contains(str2);
    }

    public static boolean safelyEquals(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }

    public static String safelyGetStr(String str) {
        return isNullOrEmpty(str) ? "" : str;
    }

    public static List<String> split(String str, String str2) {
        return isNullOrEmpty(str) ? new ArrayList() : Arrays.asList(str.split(str2));
    }

    public static List<String> splitLetterAndNumber(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile("([^0-9]*)([0-9]{0,10})").matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            if (isNotBlank(group)) {
                arrayList.add(group);
            }
            String group2 = matcher.group(2);
            if (isNotBlank(group2)) {
                arrayList.add(group2);
            }
        }
        return arrayList;
    }

    public static boolean startsWithIgnoreCase(String str, String str2) {
        if (isNullOrEmpty(str) || isNullOrEmpty(str2)) {
            return false;
        }
        return str2.regionMatches(true, 0, str, 0, str2.length());
    }

    public static String subString(String str, int i) {
        return isNullOrEmpty(str) ? "" : i >= str.length() ? str : substring(str, 0, i);
    }

    public static String substring(String str, int i, int i2) {
        if (isNullOrEmpty(str) || i2 > str.codePointCount(0, str.length())) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (i < i2) {
            sb.appendCodePoint(str.codePointAt(i));
            i++;
        }
        return sb.toString();
    }

    public static String toLowerCaseLocaleInsensitive(String str) {
        return isNullOrEmpty(str) ? str : str.toLowerCase(Locale.ROOT);
    }

    public static String toStringSafely(Object obj) {
        return obj == null ? "" : obj.toString();
    }

    public static String toUpperCaseLocaleInsensitive(String str) {
        return isNullOrEmpty(str) ? str : str.toUpperCase(Locale.ROOT);
    }

    public static String trim(String str) {
        return isNotBlank(str) ? str.trim().replace("\u0000", "").replace("\\u0000", "").replaceAll("\\u0000", "").replaceAll("\\\\u0000", "") : str;
    }

    public static CharSequence trimNewline(CharSequence charSequence) {
        if (!isNotBlank(charSequence)) {
            return charSequence;
        }
        int length = charSequence.length();
        int i = 0;
        while (i < length && (charSequence.charAt(i) == '\r' || charSequence.charAt(i) == '\n')) {
            i++;
        }
        while (i < length) {
            int i2 = length - 1;
            if (charSequence.charAt(i2) != '\r' && charSequence.charAt(i2) != '\n') {
                break;
            }
            length--;
        }
        return (i > 0 || length < charSequence.length()) ? charSequence.subSequence(i, length) : charSequence;
    }

    public static boolean isAlpha(String str) {
        if (isNullOrEmpty(str)) {
            return false;
        }
        return isAlpha(str.charAt(0));
    }

    public static boolean isNotBlank(CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 0;
    }

    public static String computeMd5(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr, 0, bArr.length);
            return hexToString(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean isChinese(String str) {
        if (isNullOrEmpty(str)) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            if (isChinese(str.charAt(i))) {
                return true;
            }
        }
        return false;
    }
}
