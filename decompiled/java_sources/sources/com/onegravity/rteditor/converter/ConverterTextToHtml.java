package com.onegravity.rteditor.converter;

import android.text.TextUtils;
import android.util.Patterns;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.api.format.RTHtml;
import com.onegravity.rteditor.api.format.RTPlainText;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes7.dex */
public class ConverterTextToHtml {

    /* renamed from: a */
    public static final int f40181a = 512;

    /* renamed from: b */
    public static final String f40182b = "bitcoin:[1-9a-km-zA-HJ-NP-Z]{27,34}(\\?[a-zA-Z0-9$\\-_.+!*'(),%:@&=]*)?";

    /* renamed from: c */
    public static final boolean f40183c = false;

    /* renamed from: a */
    public static void m31614a(String str, StringBuffer stringBuffer) {
        Matcher matcher = Patterns.WEB_URL.matcher(m31615b(str, f40182b, "<a href=\"$0\">$0</a>"));
        while (matcher.find()) {
            int start = matcher.start();
            if (start != 0 && (start == 0 || str.charAt(start - 1) == '@')) {
                matcher.appendReplacement(stringBuffer, "$0");
            } else if (matcher.group().indexOf(58) > 0) {
                matcher.appendReplacement(stringBuffer, "<a href=\"$0\">$0</a>");
            } else {
                matcher.appendReplacement(stringBuffer, "<a href=\"http://$0\">$0</a>");
            }
        }
        matcher.appendTail(stringBuffer);
    }

    /* renamed from: b */
    public static String m31615b(String str, String str2, String str3) {
        Matcher matcher = Pattern.compile(str2).matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = false;
        while (matcher.find()) {
            matcher.appendReplacement(stringBuffer, str3);
            z = true;
        }
        if (!z) {
            return str;
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public static RTHtml<RTImage, RTAudio, RTVideo> convert(RTPlainText rTPlainText) {
        return new RTHtml<>(RTFormat.HTML, convert(rTPlainText.getText()));
    }

    public static String convert(String str) {
        String htmlEncode = str == null ? "" : TextUtils.htmlEncode(str);
        StringBuffer stringBuffer = new StringBuffer(htmlEncode.length() + 512);
        m31614a(htmlEncode, stringBuffer);
        return stringBuffer.toString().replace("\n", "<br>\n").replace("&apos;", "&#39;");
    }
}
