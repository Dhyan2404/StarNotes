package org.apache.poi.ss.format;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.kum;
import java.awt.Color;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JLabel;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Chars;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.format.CellDateFormatter;
import org.apache.poi.util.CodepointsUtil;
import org.apache.poi.util.LocaleUtil;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes13.dex */
public class CellFormatPart {
    public static final int COLOR_GROUP;
    public static final Pattern COLOR_PAT;
    public static final int CONDITION_OPERATOR_GROUP;
    public static final Pattern CONDITION_PAT;
    public static final int CONDITION_VALUE_GROUP;
    public static final Pattern CURRENCY_PAT;
    public static final Pattern FORMAT_PAT;
    private static final Logger LOG = LogManager.getLogger((Class<?>) CellFormatPart.class);
    static final Map<String, Color> NAMED_COLORS = new TreeMap(String.CASE_INSENSITIVE_ORDER);
    public static final int SPECIFICATION_GROUP;
    public static final Pattern SPECIFICATION_PAT;
    private final Color color;
    private final CellFormatCondition condition;
    private final CellFormatter format;
    private final CellFormatType type;

    /* loaded from: classes13.dex */
    public interface PartHandler {
        String handlePart(Matcher matcher, String str, CellFormatType cellFormatType, StringBuffer stringBuffer);
    }

    static {
        for (HSSFColor.HSSFColorPredefined hSSFColorPredefined : HSSFColor.HSSFColorPredefined.values()) {
            String name = hSSFColorPredefined.name();
            short[] triplet = hSSFColorPredefined.getTriplet();
            Color color = new Color((int) triplet[0], (int) triplet[1], (int) triplet[2]);
            Map<String, Color> map = NAMED_COLORS;
            map.put(name, color);
            if (name.indexOf(95) > 0) {
                map.put(name.replace(NameUtil.USCORE, ' '), color);
            }
            if (name.indexOf("_PERCENT") > 0) {
                map.put(name.replace("_PERCENT", "%").replace(NameUtil.USCORE, ' '), color);
            }
        }
        String str = "\\\\.                     # Quoted single character\n|\"([^\\\\\"]|\\\\.)*\"         # Quoted string of characters (handles escaped quotes like \\\") \n|(\\[\\$.{0,3}(-[0-9a-f]{3,4})?])                   # Currency symbol in a given locale\n|_.                             # Space as wide as a given character\n|\\*.                           # Repeating fill character\n|@                              # Text: cell text\n|([0?\\#][0?\\#,]*)             # Number: digit + other digits and commas\n|e[-+]                          # Number: Scientific: Exponent\n|m{1,5}                         # Date: month or minute spec\n|d{1,4}                         # Date: day/date spec\n|y{2,4}                         # Date: year spec\n|h{1,2}                         # Date: hour spec\n|s{1,2}                         # Date: second spec\n|am?/pm?                        # Date: am/pm spec\n|\\[h{1,2}]                     # Elapsed time: hour spec\n|\\[m{1,2}]                     # Elapsed time: minute spec\n|\\[s{1,2}]                     # Elapsed time: second spec\n|[^;]                           # A character\n";
        COLOR_PAT = Pattern.compile("\\[(black|blue|cyan|green|magenta|red|white|yellow|color [0-9]+)]", 6);
        CONDITION_PAT = Pattern.compile("([<>=]=?|!=|<>)    # The operator\n  \\s*(-?([0-9]+(?:\\.[0-9]*)?)|(\\.[0-9]*))\\s*  # The constant to test against\n", 6);
        SPECIFICATION_PAT = Pattern.compile(str, 6);
        CURRENCY_PAT = Pattern.compile("(\\[\\$.{0,3}(-[0-9a-f]{3,4})?])", 6);
        Pattern compile = Pattern.compile("(?:\\[(black|blue|cyan|green|magenta|red|white|yellow|color [0-9]+)])?                 # Text color\n(?:\\[([<>=]=?|!=|<>)    # The operator\n  \\s*(-?([0-9]+(?:\\.[0-9]*)?)|(\\.[0-9]*))\\s*  # The constant to test against\n])?               # Condition\n(?:\\[\\$-[0-9a-fA-F]+])?                # Optional locale id, ignored currently\n((?:" + str + ")+)                        # Format spec\n", 6);
        FORMAT_PAT = compile;
        COLOR_GROUP = findGroup(compile, "[Blue]@", "Blue");
        CONDITION_OPERATOR_GROUP = findGroup(compile, "[>=1]@", ">=");
        CONDITION_VALUE_GROUP = findGroup(compile, "[>=1]@", "1");
        SPECIFICATION_GROUP = findGroup(compile, "[Blue][>1]\\a ?", "\\a ?");
    }

    public CellFormatPart(String str) {
        this(LocaleUtil.getUserLocale(), str);
    }

    public static String expandChar(String str) {
        ArrayList arrayList = new ArrayList();
        CodepointsUtil.iteratorFor(str).forEachRemaining(new kum(arrayList));
        if (arrayList.size() < 2) {
            throw new IllegalArgumentException("Expected part string to have at least 2 chars");
        }
        String str2 = (String) arrayList.get(1);
        return str2 + str2 + str2;
    }

    private static int findGroup(Pattern pattern, String str, String str2) {
        Matcher matcher = pattern.matcher(str);
        if (!matcher.find()) {
            throw new IllegalArgumentException("Pattern \"" + pattern.pattern() + "\" doesn't match \"" + str + "\"");
        }
        for (int i = 1; i <= matcher.groupCount(); i++) {
            String group = matcher.group(i);
            if (group != null && group.equals(str2)) {
                return i;
            }
        }
        throw new IllegalArgumentException("\"" + str2 + "\" not found in \"" + pattern.pattern() + "\"");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0112, code lost:
    
        switch(r11) {
            case 0: goto L121;
            case 1: goto L120;
            case 2: goto L121;
            case 3: goto L119;
            case 4: goto L118;
            case 5: goto L117;
            case 6: goto L117;
            case 7: goto L117;
            case 8: goto L118;
            case 9: goto L116;
            case 10: goto L118;
            case 11: goto L117;
            case 12: goto L117;
            case 13: goto L117;
            case 14: goto L118;
            default: goto L124;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x011b, code lost:
    
        if (com.miui.penengine.p015e.C6999h.f39688c.equals(r4) != false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0121, code lost:
    
        if ("m".equals(r4) != false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0127, code lost:
    
        if ("s".equals(r4) == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0130, code lost:
    
        if ("$".equals(r4) == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0134, code lost:
    
        return org.apache.poi.ss.format.CellFormatType.NUMBER;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x015b, code lost:
    
        throw new java.lang.IllegalArgumentException("Unsupported [] format block '" + r3 + "' in '" + r12 + "' with c2: " + r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x015e, code lost:
    
        return org.apache.poi.ss.format.CellFormatType.ELAPSED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x015f, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0164, code lost:
    
        return org.apache.poi.ss.format.CellFormatType.DATE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0167, code lost:
    
        return org.apache.poi.ss.format.CellFormatType.TEXT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0168, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x016d, code lost:
    
        return org.apache.poi.ss.format.CellFormatType.NUMBER;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.apache.poi.ss.format.CellFormatType formatType(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.format.CellFormatPart.formatType(java.lang.String):org.apache.poi.ss.format.CellFormatType");
    }

    private CellFormatType getCellFormatType(Matcher matcher) {
        return formatType(matcher.group(SPECIFICATION_GROUP));
    }

    private static Color getColor(Matcher matcher) {
        String group = matcher.group(COLOR_GROUP);
        if (group == null || group.length() == 0) {
            return null;
        }
        Color color = NAMED_COLORS.get(group);
        if (color == null) {
            LOG.warn("Unknown color: " + CellFormatter.quote(group));
        }
        return color;
    }

    private CellFormatCondition getCondition(Matcher matcher) {
        int i = CONDITION_OPERATOR_GROUP;
        String group = matcher.group(i);
        if (group == null || group.length() == 0) {
            return null;
        }
        return CellFormatCondition.getInstance(matcher.group(i), matcher.group(CONDITION_VALUE_GROUP));
    }

    private CellFormatter getFormatter(Locale locale, Matcher matcher) {
        String group = matcher.group(SPECIFICATION_GROUP);
        Matcher matcher2 = CURRENCY_PAT.matcher(group);
        if (matcher2.find()) {
            String group2 = matcher2.group(1);
            group = group.replace(group2, group2.startsWith("[$-") ? "$" : !group2.contains("-") ? group2.substring(2, group2.indexOf(IteratorUtils.f104924b)) : group2.substring(2, group2.lastIndexOf(45)));
        }
        return this.type.formatter(locale, group);
    }

    public static String group(Matcher matcher, int i) {
        String group = matcher.group(i);
        return group == null ? "" : group;
    }

    public static StringBuffer parseFormat(String str, CellFormatType cellFormatType, PartHandler partHandler) {
        int i;
        Matcher matcher = SPECIFICATION_PAT.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            i = 0;
            if (!matcher.find()) {
                break;
            }
            String group = group(matcher, 0);
            if (group.length() > 0) {
                String handlePart = partHandler.handlePart(matcher, group, cellFormatType, stringBuffer);
                if (handlePart == null) {
                    char charAt = group.charAt(0);
                    if (charAt == '\"') {
                        group = quoteSpecial(group.substring(1, group.length() - 1), cellFormatType);
                    } else if (charAt == '*') {
                        group = expandChar(group);
                    } else if (charAt == '\\') {
                        group = quoteSpecial(group.substring(1), cellFormatType);
                    } else if (charAt == '_') {
                        group = " ";
                    }
                } else {
                    group = handlePart;
                }
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(group));
            }
        }
        matcher.appendTail(stringBuffer);
        if (cellFormatType.isSpecial(Chars.QUOTE)) {
            int i2 = 0;
            while (true) {
                i2 = stringBuffer.indexOf("''", i2);
                if (i2 < 0) {
                    break;
                }
                stringBuffer.delete(i2, i2 + 2);
                if (partHandler instanceof CellDateFormatter.DatePartHandler) {
                    ((CellDateFormatter.DatePartHandler) partHandler).updatePositions(i2, -2);
                }
            }
            while (true) {
                i = stringBuffer.indexOf("\u0000", i);
                if (i < 0) {
                    break;
                }
                stringBuffer.replace(i, i + 1, "''");
                if (partHandler instanceof CellDateFormatter.DatePartHandler) {
                    ((CellDateFormatter.DatePartHandler) partHandler).updatePositions(i, 1);
                }
            }
        }
        return stringBuffer;
    }

    public static String quoteSpecial(String str, CellFormatType cellFormatType) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> iteratorFor = CodepointsUtil.iteratorFor(str);
        while (iteratorFor.hasNext()) {
            String next = iteratorFor.next();
            if (CloudStorageConstants.SINGLE_QUOTES.equals(next) && cellFormatType.isSpecial(Chars.QUOTE)) {
                sb.append((char) 0);
            } else {
                boolean isSpecial = cellFormatType.isSpecial(next.charAt(0));
                if (isSpecial) {
                    sb.append(Chars.QUOTE);
                }
                sb.append(next);
                if (isSpecial) {
                    sb.append(Chars.QUOTE);
                }
            }
        }
        return sb.toString();
    }

    public boolean applies(Object obj) {
        CellFormatCondition cellFormatCondition = this.condition;
        if (cellFormatCondition != null && (obj instanceof Number)) {
            return cellFormatCondition.pass(((Number) obj).doubleValue());
        }
        if (obj != null) {
            return true;
        }
        throw new NullPointerException("valueObject");
    }

    public CellFormatResult apply(Object obj) {
        String simpleFormat;
        Color color;
        boolean applies = applies(obj);
        if (applies) {
            simpleFormat = this.format.format(obj);
            color = this.color;
        } else {
            simpleFormat = this.format.simpleFormat(obj);
            color = null;
        }
        return new CellFormatResult(applies, simpleFormat, color);
    }

    public boolean hasCondition() {
        return this.condition != null;
    }

    public String toString() {
        return this.format.format;
    }

    public CellFormatPart(Locale locale, String str) {
        Matcher matcher = FORMAT_PAT.matcher(str);
        if (matcher.matches()) {
            this.color = getColor(matcher);
            this.condition = getCondition(matcher);
            this.type = getCellFormatType(matcher);
            this.format = getFormatter(locale, matcher);
            return;
        }
        throw new IllegalArgumentException("Unrecognized format: " + CellFormatter.quote(str));
    }

    public CellFormatType getCellFormatType() {
        return this.type;
    }

    public CellFormatResult apply(JLabel jLabel, Object obj) {
        CellFormatResult apply = apply(obj);
        jLabel.setText(apply.text);
        Color color = apply.textColor;
        if (color != null) {
            jLabel.setForeground(color);
        }
        return apply;
    }
}
