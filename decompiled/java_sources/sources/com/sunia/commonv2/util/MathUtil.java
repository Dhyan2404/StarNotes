package com.sunia.commonv2.util;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public class MathUtil {
    public static final Map<String, String> REPLACE_LATEX;

    static {
        HashMap hashMap = new HashMap();
        REPLACE_LATEX = hashMap;
        hashMap.put("\\fint", "⨏");
        hashMap.put("\\oiint", "∯");
        hashMap.put("\\sun", "☼");
        hashMap.put("\\leftmoon", "☾");
        hashMap.put("\\female", "♀");
        hashMap.put("\\male", "♂");
        hashMap.put("\\iddots", "⋰");
        hashMap.put("\\textwon", "₩");
        hashMap.put("\\textcent", "¢");
        hashMap.put("\\oiiint", "\\mbox{∰}");
        hashMap.put("\\otimes", "\\varotimes");
        hashMap.put("\\leftrightharpoons", "\\mbox{⇋}");
        hashMap.put("\\rightleftharpoons", "\\mbox{⇌}");
        hashMap.put("\\rightleftharpoons", "\\mbox{⇌}");
        hashMap.put("\\parallelogram", "▱");
        hashMap.put("\\textreferencemark", "※");
    }

    public static String convertMath(String str) {
        return HWRUtil.isEmpty(str) ? str : escape(replaceNotSupportedLatex(str, REPLACE_LATEX));
    }

    public static String escape(String str) {
        if (HWRUtil.isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (!str.contains("\n")) {
            return str;
        }
        String replaceAll = str.replaceAll("\n", "\\\\\\\\");
        sb.append("\\begin{matrix}");
        sb.append(replaceAll);
        sb.append("\\end{matrix}");
        return sb.toString();
    }

    public static String replaceNotSupportedLatex(String str, Map<String, String> map) {
        if (HWRUtil.isEmpty(str)) {
            return str;
        }
        for (String str2 : map.keySet()) {
            while (str.contains(str2)) {
                str = str2.length() < str.trim().length() ? str.replace(str2, map.get(str2)) : map.get(str2) + " ";
            }
        }
        return str;
    }
}
