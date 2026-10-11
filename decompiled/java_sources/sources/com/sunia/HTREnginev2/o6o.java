package com.sunia.HTREnginev2;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.webvtt.WebvttCssStyle;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ColorParser;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.android.material.motion.MotionUtils;
import com.google.common.base.Ascii;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.poi.util.ExtUnits;

/* loaded from: classes5.dex */
public final class o6o {

    /* renamed from: c */
    public static final String f79393c = "WebvttCssParser";

    /* renamed from: d */
    public static final String f79394d = "{";

    /* renamed from: e */
    public static final String f79395e = "}";

    /* renamed from: f */
    public static final String f79396f = "color";

    /* renamed from: g */
    public static final String f79397g = "background-color";

    /* renamed from: h */
    public static final String f79398h = "font-family";

    /* renamed from: i */
    public static final String f79399i = "font-weight";

    /* renamed from: j */
    public static final String f79400j = "font-size";

    /* renamed from: k */
    public static final String f79401k = "ruby-position";

    /* renamed from: l */
    public static final String f79402l = "over";

    /* renamed from: m */
    public static final String f79403m = "under";

    /* renamed from: n */
    public static final String f79404n = "text-combine-upright";

    /* renamed from: o */
    public static final String f79405o = "all";

    /* renamed from: p */
    public static final String f79406p = "digits";

    /* renamed from: q */
    public static final String f79407q = "text-decoration";

    /* renamed from: r */
    public static final String f79408r = "bold";

    /* renamed from: s */
    public static final String f79409s = "underline";

    /* renamed from: t */
    public static final String f79410t = "font-style";

    /* renamed from: u */
    public static final String f79411u = "italic";

    /* renamed from: v */
    public static final Pattern f79412v = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: w */
    public static final Pattern f79413w = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    /* renamed from: a */
    public final ParsableByteArray f79414a = new ParsableByteArray();

    /* renamed from: b */
    public final StringBuilder f79415b = new StringBuilder();

    /* renamed from: b */
    public static boolean m55906b(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        byte[] data = parsableByteArray.getData();
        if (position + 2 > limit) {
            return false;
        }
        int i = position + 1;
        if (data[position] != 47) {
            return false;
        }
        int i2 = i + 1;
        if (data[i] != 42) {
            return false;
        }
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= limit) {
                parsableByteArray.skipBytes(limit - parsableByteArray.getPosition());
                return true;
            }
            if (((char) data[i2]) == '*' && ((char) data[i3]) == '/') {
                i2 = i3 + 1;
                limit = i2;
            } else {
                i2 = i3;
            }
        }
    }

    /* renamed from: c */
    public static boolean m55907c(ParsableByteArray parsableByteArray) {
        char m55914k = m55914k(parsableByteArray, parsableByteArray.getPosition());
        if (m55914k != '\t' && m55914k != '\n' && m55914k != '\f' && m55914k != '\r' && m55914k != ' ') {
            return false;
        }
        parsableByteArray.skipBytes(1);
        return true;
    }

    /* renamed from: e */
    public static void m55908e(String str, WebvttCssStyle webvttCssStyle) {
        Matcher matcher = f79413w.matcher(Ascii.toLowerCase(str));
        if (!matcher.matches()) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
            sb.append("Invalid font-size: '");
            sb.append(str);
            sb.append("'.");
            Log.m21493w(f79393c, sb.toString());
            return;
        }
        String str2 = (String) Assertions.checkNotNull(matcher.group(2));
        str2.hashCode();
        char c = 65535;
        switch (str2.hashCode()) {
            case 37:
                if (str2.equals("%")) {
                    c = 0;
                    break;
                }
                break;
            case 3240:
                if (str2.equals(ExtUnits.UNIT_EM)) {
                    c = 1;
                    break;
                }
                break;
            case 3592:
                if (str2.equals(ExtUnits.UNIT_PX)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                webvttCssStyle.setFontSizeUnit(3);
                break;
            case 1:
                webvttCssStyle.setFontSizeUnit(2);
                break;
            case 2:
                webvttCssStyle.setFontSizeUnit(1);
                break;
            default:
                throw new IllegalStateException();
        }
        webvttCssStyle.setFontSize(Float.parseFloat((String) Assertions.checkNotNull(matcher.group(1))));
    }

    /* renamed from: f */
    public static String m55909f(ParsableByteArray parsableByteArray, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        while (position < limit && !z) {
            char c = (char) parsableByteArray.getData()[position];
            if ((c < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_'))) {
                z = true;
            } else {
                position++;
                sb.append(c);
            }
        }
        parsableByteArray.skipBytes(position - parsableByteArray.getPosition());
        return sb.toString();
    }

    @Nullable
    /* renamed from: g */
    public static String m55910g(ParsableByteArray parsableByteArray, StringBuilder sb) {
        m55917n(parsableByteArray);
        if (parsableByteArray.bytesLeft() == 0) {
            return null;
        }
        String m55909f = m55909f(parsableByteArray, sb);
        if (!"".equals(m55909f)) {
            return m55909f;
        }
        char readUnsignedByte = (char) parsableByteArray.readUnsignedByte();
        StringBuilder sb2 = new StringBuilder(1);
        sb2.append(readUnsignedByte);
        return sb2.toString();
    }

    @Nullable
    /* renamed from: h */
    public static String m55911h(ParsableByteArray parsableByteArray, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int position = parsableByteArray.getPosition();
            String m55910g = m55910g(parsableByteArray, sb);
            if (m55910g == null) {
                return null;
            }
            if ("}".equals(m55910g) || AndroidTreeView.f47214k.equals(m55910g)) {
                parsableByteArray.setPosition(position);
                z = true;
            } else {
                sb2.append(m55910g);
            }
        }
        return sb2.toString();
    }

    @Nullable
    /* renamed from: i */
    public static String m55912i(ParsableByteArray parsableByteArray, StringBuilder sb) {
        m55917n(parsableByteArray);
        if (parsableByteArray.bytesLeft() < 5 || !"::cue".equals(parsableByteArray.readString(5))) {
            return null;
        }
        int position = parsableByteArray.getPosition();
        String m55910g = m55910g(parsableByteArray, sb);
        if (m55910g == null) {
            return null;
        }
        if ("{".equals(m55910g)) {
            parsableByteArray.setPosition(position);
            return "";
        }
        String m55915l = MotionUtils.f31761c.equals(m55910g) ? m55915l(parsableByteArray) : null;
        if (MotionUtils.f31762d.equals(m55910g(parsableByteArray, sb))) {
            return m55915l;
        }
        return null;
    }

    /* renamed from: j */
    public static void m55913j(ParsableByteArray parsableByteArray, WebvttCssStyle webvttCssStyle, StringBuilder sb) {
        m55917n(parsableByteArray);
        String m55909f = m55909f(parsableByteArray, sb);
        if (!"".equals(m55909f) && ":".equals(m55910g(parsableByteArray, sb))) {
            m55917n(parsableByteArray);
            String m55911h = m55911h(parsableByteArray, sb);
            if (m55911h == null || "".equals(m55911h)) {
                return;
            }
            int position = parsableByteArray.getPosition();
            String m55910g = m55910g(parsableByteArray, sb);
            if (!AndroidTreeView.f47214k.equals(m55910g)) {
                if (!"}".equals(m55910g)) {
                    return;
                } else {
                    parsableByteArray.setPosition(position);
                }
            }
            if ("color".equals(m55909f)) {
                webvttCssStyle.setFontColor(ColorParser.parseCssColor(m55911h));
                return;
            }
            if (f79397g.equals(m55909f)) {
                webvttCssStyle.setBackgroundColor(ColorParser.parseCssColor(m55911h));
                return;
            }
            boolean z = true;
            if (f79401k.equals(m55909f)) {
                if (f79402l.equals(m55911h)) {
                    webvttCssStyle.setRubyPosition(1);
                    return;
                } else {
                    if (f79403m.equals(m55911h)) {
                        webvttCssStyle.setRubyPosition(2);
                        return;
                    }
                    return;
                }
            }
            if (f79404n.equals(m55909f)) {
                if (!"all".equals(m55911h) && !m55911h.startsWith(f79406p)) {
                    z = false;
                }
                webvttCssStyle.setCombineUpright(z);
                return;
            }
            if (f79407q.equals(m55909f)) {
                if ("underline".equals(m55911h)) {
                    webvttCssStyle.setUnderline(true);
                    return;
                }
                return;
            }
            if (f79398h.equals(m55909f)) {
                webvttCssStyle.setFontFamily(m55911h);
                return;
            }
            if (f79399i.equals(m55909f)) {
                if ("bold".equals(m55911h)) {
                    webvttCssStyle.setBold(true);
                }
            } else if (f79410t.equals(m55909f)) {
                if ("italic".equals(m55911h)) {
                    webvttCssStyle.setItalic(true);
                }
            } else if (f79400j.equals(m55909f)) {
                m55908e(m55911h, webvttCssStyle);
            }
        }
    }

    /* renamed from: k */
    public static char m55914k(ParsableByteArray parsableByteArray, int i) {
        return (char) parsableByteArray.getData()[i];
    }

    /* renamed from: l */
    public static String m55915l(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        boolean z = false;
        while (position < limit && !z) {
            int i = position + 1;
            z = ((char) parsableByteArray.getData()[position]) == ')';
            position = i;
        }
        return parsableByteArray.readString((position - 1) - parsableByteArray.getPosition()).trim();
    }

    /* renamed from: m */
    public static void m55916m(ParsableByteArray parsableByteArray) {
        do {
        } while (!TextUtils.isEmpty(parsableByteArray.readLine()));
    }

    /* renamed from: n */
    public static void m55917n(ParsableByteArray parsableByteArray) {
        while (true) {
            for (boolean z = true; parsableByteArray.bytesLeft() > 0 && z; z = false) {
                if (!m55907c(parsableByteArray) && !m55906b(parsableByteArray)) {
                }
            }
            return;
        }
    }

    /* renamed from: a */
    public final void m55918a(WebvttCssStyle webvttCssStyle, String str) {
        if ("".equals(str)) {
            return;
        }
        int indexOf = str.indexOf(91);
        if (indexOf != -1) {
            Matcher matcher = f79412v.matcher(str.substring(indexOf));
            if (matcher.matches()) {
                webvttCssStyle.setTargetVoice((String) Assertions.checkNotNull(matcher.group(1)));
            }
            str = str.substring(0, indexOf);
        }
        String[] split = Util.split(str, "\\.");
        String str2 = split[0];
        int indexOf2 = str2.indexOf(35);
        if (indexOf2 != -1) {
            webvttCssStyle.setTargetTagName(str2.substring(0, indexOf2));
            webvttCssStyle.setTargetId(str2.substring(indexOf2 + 1));
        } else {
            webvttCssStyle.setTargetTagName(str2);
        }
        if (split.length > 1) {
            webvttCssStyle.setTargetClasses((String[]) Util.nullSafeArrayCopyOfRange(split, 1, split.length));
        }
    }

    /* renamed from: d */
    public List<WebvttCssStyle> m55919d(ParsableByteArray parsableByteArray) {
        this.f79415b.setLength(0);
        int position = parsableByteArray.getPosition();
        m55916m(parsableByteArray);
        this.f79414a.reset(parsableByteArray.getData(), parsableByteArray.getPosition());
        this.f79414a.setPosition(position);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String m55912i = m55912i(this.f79414a, this.f79415b);
            if (m55912i == null || !"{".equals(m55910g(this.f79414a, this.f79415b))) {
                return arrayList;
            }
            WebvttCssStyle webvttCssStyle = new WebvttCssStyle();
            m55918a(webvttCssStyle, m55912i);
            String str = null;
            boolean z = false;
            while (!z) {
                int position2 = this.f79414a.getPosition();
                String m55910g = m55910g(this.f79414a, this.f79415b);
                boolean z2 = m55910g == null || "}".equals(m55910g);
                if (!z2) {
                    this.f79414a.setPosition(position2);
                    m55913j(this.f79414a, webvttCssStyle, this.f79415b);
                }
                str = m55910g;
                z = z2;
            }
            if ("}".equals(str)) {
                arrayList.add(webvttCssStyle);
            }
        }
    }
}
