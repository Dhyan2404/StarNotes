package org.apache.poi.ss.util;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Chars;
import org.apache.poi.util.LocaleID;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes13.dex */
public final class DateFormatConverter {
    private static final Logger LOG = LogManager.getLogger((Class<?>) DateFormatConverter.class);
    private static Map<String, String> tokenConversions = prepareTokenConversions();

    /* loaded from: classes13.dex */
    public static class DateFormatTokenizer {
        String format;
        int pos;

        public DateFormatTokenizer(String str) {
            this.format = str;
        }

        public static String[] tokenize(String str) {
            ArrayList arrayList = new ArrayList();
            DateFormatTokenizer dateFormatTokenizer = new DateFormatTokenizer(str);
            while (true) {
                String nextToken = dateFormatTokenizer.getNextToken();
                if (nextToken == null) {
                    return (String[]) arrayList.toArray(new String[0]);
                }
                arrayList.add(nextToken);
            }
        }

        public String getNextToken() {
            if (this.pos >= this.format.length()) {
                return null;
            }
            int i = this.pos;
            char charAt = this.format.charAt(i);
            this.pos++;
            if (charAt == '\'') {
                while (this.pos < this.format.length() && this.format.charAt(this.pos) != '\'') {
                    this.pos++;
                }
                if (this.pos < this.format.length()) {
                    this.pos++;
                }
            } else {
                while (this.pos < this.format.length() && this.format.charAt(this.pos) == charAt) {
                    this.pos++;
                }
            }
            return this.format.substring(i, this.pos);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            DateFormatTokenizer dateFormatTokenizer = new DateFormatTokenizer(this.format);
            while (true) {
                String nextToken = dateFormatTokenizer.getNextToken();
                if (nextToken == null) {
                    return sb.toString();
                }
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(IteratorUtils.f104923a);
                sb.append(nextToken);
                sb.append(IteratorUtils.f104924b);
            }
        }
    }

    private DateFormatConverter() {
    }

    public static String convert(Locale locale, DateFormat dateFormat) {
        return convert(locale, ((SimpleDateFormat) dateFormat).toPattern());
    }

    public static String getJavaDatePattern(int i, Locale locale) {
        DateFormat dateInstance = DateFormat.getDateInstance(i, locale);
        return dateInstance instanceof SimpleDateFormat ? ((SimpleDateFormat) dateInstance).toPattern() : i != 0 ? i != 1 ? i != 3 ? "MMM d, yyyy" : "d/MM/yy" : "MMMM d, yyyy" : "dddd, MMMM d, yyyy";
    }

    public static String getJavaDateTimePattern(int i, Locale locale) {
        DateFormat dateTimeInstance = DateFormat.getDateTimeInstance(i, i, locale);
        return dateTimeInstance instanceof SimpleDateFormat ? ((SimpleDateFormat) dateTimeInstance).toPattern() : i != 0 ? i != 1 ? i != 3 ? "MMM d, yyyy h:mm:ss a" : "M/d/yy h:mm a" : "MMMM d, yyyy h:mm:ss a" : "dddd, MMMM d, yyyy h:mm:ss a";
    }

    public static String getJavaTimePattern(int i, Locale locale) {
        DateFormat timeInstance = DateFormat.getTimeInstance(i, locale);
        return timeInstance instanceof SimpleDateFormat ? ((SimpleDateFormat) timeInstance).toPattern() : i != 3 ? "h:mm:ss a" : "h:mm a";
    }

    public static String getPrefixForLocale(Locale locale) {
        String languageTag = locale.toLanguageTag();
        if (Locale.ROOT.equals(locale) || "".equals(languageTag)) {
            return "";
        }
        LocaleID lookupByLanguageTag = LocaleID.lookupByLanguageTag(languageTag);
        if (lookupByLanguageTag == null) {
            String replace = languageTag.indexOf(95) > -1 ? languageTag.replace(NameUtil.USCORE, '-') : languageTag;
            int length = languageTag.length();
            while (lookupByLanguageTag == null) {
                length = replace.lastIndexOf(45, length - 1);
                if (length <= 0) {
                    break;
                }
                lookupByLanguageTag = LocaleID.lookupByLanguageTag(languageTag.substring(0, length));
            }
        }
        if (lookupByLanguageTag != null) {
            return String.format(Locale.ROOT, "[$-%04X]", Integer.valueOf(lookupByLanguageTag.getLcid()));
        }
        LOG.atError().log("Unable to find prefix for Locale '{}' or its parent locales.", languageTag);
        return "";
    }

    private static Map<String, String> prepareTokenConversions() {
        HashMap hashMap = new HashMap();
        hashMap.put("EEEE", "dddd");
        hashMap.put("EEE", "ddd");
        hashMap.put("EE", "ddd");
        hashMap.put("E", "d");
        hashMap.put(Constants.HASIDCALL_INDEX_SIG, "");
        hashMap.put("z", "");
        hashMap.put("a", "am/pm");
        hashMap.put("A", "AM/PM");
        hashMap.put("K", "H");
        hashMap.put("KK", "HH");
        hashMap.put(C4921e.f26537n, C6999h.f39688c);
        hashMap.put("kk", "hh");
        hashMap.put("S", "0");
        hashMap.put("SS", "00");
        hashMap.put("SSS", com.evernote.edam.type.Constants.CLASSIFICATION_RECIPE_USER_NON_RECIPE);
        hashMap.put("y", "yyyy");
        return hashMap;
    }

    public static String convert(Locale locale, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(getPrefixForLocale(locale));
        DateFormatTokenizer dateFormatTokenizer = new DateFormatTokenizer(str);
        while (true) {
            String nextToken = dateFormatTokenizer.getNextToken();
            if (nextToken != null) {
                if (nextToken.startsWith(CloudStorageConstants.SINGLE_QUOTES)) {
                    sb.append(nextToken.replace(Chars.QUOTE, '\"'));
                } else if (!Character.isLetter(nextToken.charAt(0))) {
                    sb.append(nextToken);
                } else {
                    String str2 = tokenConversions.get(nextToken);
                    if (str2 != null) {
                        nextToken = str2;
                    }
                    sb.append(nextToken);
                }
            } else {
                sb.append(";@");
                return sb.toString().trim();
            }
        }
    }
}
