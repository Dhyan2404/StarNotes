package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.C0619b;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.HashMap;
import java.util.Map;
import org.apache.poi.util.ExtUnits;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;

/* loaded from: classes13.dex */
public class Tag implements Cloneable {

    /* renamed from: n */
    public static final Map<String, Tag> f114169n = new HashMap();

    /* renamed from: o */
    public static final String[] f114170o;

    /* renamed from: p */
    public static final String[] f114171p;

    /* renamed from: q */
    public static final String[] f114172q;

    /* renamed from: r */
    public static final String[] f114173r;

    /* renamed from: s */
    public static final String[] f114174s;

    /* renamed from: t */
    public static final String[] f114175t;

    /* renamed from: u */
    public static final String[] f114176u;

    /* renamed from: e */
    public String f114177e;

    /* renamed from: f */
    public String f114178f;

    /* renamed from: g */
    public boolean f114179g = true;

    /* renamed from: h */
    public boolean f114180h = true;

    /* renamed from: i */
    public boolean f114181i = false;

    /* renamed from: j */
    public boolean f114182j = false;

    /* renamed from: k */
    public boolean f114183k = false;

    /* renamed from: l */
    public boolean f114184l = false;

    /* renamed from: m */
    public boolean f114185m = false;

    static {
        String[] strArr = {"html", gon.f71289o, "body", "frameset", Constants.ELEMNAME_SCRIPT_STRING, "noscript", "style", "meta", "link", "title", TypedValues.AttributesType.S_FRAME, "noframes", "section", "nav", "aside", "hgroup", org.apache.poi.convert.htmlgen.Constants.NAME_HEADER, org.apache.poi.convert.htmlgen.Constants.NAME_FOOTER, "p", "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", gon.f71293q, "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", "audio", IStyleSheet.CLASS_CANVAS, "details", "menu", "plaintext", "template", "article", "main", FileTypeConstant.SVG, "math", "center"};
        f114170o = strArr;
        f114171p = new String[]{"object", gon.f71271X, "font", gon.f71287n, "i", "b", "u", "big", "small", ExtUnits.UNIT_EM, "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", WebvttCueParser.f27242v, "rp", "a", "img", "br", "wbr", Constant.MAP_TAG, "q", "sub", "sup", "bdo", "iframe", "embed", gon.f71297s, "input", "select", "textarea", C0619b.f5199k, "button", "optgroup", "option", "legend", "datalist", "keygen", Constants.ELEMNAME_OUTPUT_STRING, "progress", "meter", "area", Constants.ELEMNAME_PARAMVARIABLE_STRING, "source", "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", Constants.ELEMNAME_PARAMVARIABLE_STRING, "source", "track", "data", "bdi", "s", "font"};
        f114172q = new String[]{"meta", "link", gon.f71271X, TypedValues.AttributesType.S_FRAME, "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", Constants.ELEMNAME_PARAMVARIABLE_STRING, "source", "track"};
        f114173r = new String[]{"title", "a", "p", "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", Constants.ELEMNAME_SCRIPT_STRING, "style", "ins", "del", "s"};
        f114174s = new String[]{"pre", "plaintext", "title", "textarea"};
        f114175t = new String[]{"button", "fieldset", "input", "keygen", "object", Constants.ELEMNAME_OUTPUT_STRING, "select", "textarea"};
        f114176u = new String[]{"input", "keygen", "object", "select", "textarea"};
        for (String str : strArr) {
            m71284a(new Tag(str));
        }
        for (String str2 : f114171p) {
            Tag tag = new Tag(str2);
            tag.f114179g = false;
            tag.f114180h = false;
            m71284a(tag);
        }
        for (String str3 : f114172q) {
            Tag tag2 = f114169n.get(str3);
            Validate.notNull(tag2);
            tag2.f114181i = true;
        }
        for (String str4 : f114173r) {
            Tag tag3 = f114169n.get(str4);
            Validate.notNull(tag3);
            tag3.f114180h = false;
        }
        for (String str5 : f114174s) {
            Tag tag4 = f114169n.get(str5);
            Validate.notNull(tag4);
            tag4.f114183k = true;
        }
        for (String str6 : f114175t) {
            Tag tag5 = f114169n.get(str6);
            Validate.notNull(tag5);
            tag5.f114184l = true;
        }
        for (String str7 : f114176u) {
            Tag tag6 = f114169n.get(str7);
            Validate.notNull(tag6);
            tag6.f114185m = true;
        }
    }

    public Tag(String str) {
        this.f114177e = str;
        this.f114178f = Normalizer.lowerCase(str);
    }

    /* renamed from: a */
    public static void m71284a(Tag tag) {
        f114169n.put(tag.f114177e, tag);
    }

    public static Tag valueOf(String str) {
        return valueOf(str, ParseSettings.preserveCase);
    }

    /* renamed from: b */
    public Tag m71285b() {
        this.f114182j = true;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Tag)) {
            return false;
        }
        Tag tag = (Tag) obj;
        return this.f114177e.equals(tag.f114177e) && this.f114181i == tag.f114181i && this.f114180h == tag.f114180h && this.f114179g == tag.f114179g && this.f114183k == tag.f114183k && this.f114182j == tag.f114182j && this.f114184l == tag.f114184l && this.f114185m == tag.f114185m;
    }

    public boolean formatAsBlock() {
        return this.f114180h;
    }

    public String getName() {
        return this.f114177e;
    }

    public int hashCode() {
        return (((((((((((((this.f114177e.hashCode() * 31) + (this.f114179g ? 1 : 0)) * 31) + (this.f114180h ? 1 : 0)) * 31) + (this.f114181i ? 1 : 0)) * 31) + (this.f114182j ? 1 : 0)) * 31) + (this.f114183k ? 1 : 0)) * 31) + (this.f114184l ? 1 : 0)) * 31) + (this.f114185m ? 1 : 0);
    }

    public boolean isBlock() {
        return this.f114179g;
    }

    public boolean isEmpty() {
        return this.f114181i;
    }

    public boolean isFormListed() {
        return this.f114184l;
    }

    public boolean isFormSubmittable() {
        return this.f114185m;
    }

    public boolean isInline() {
        return !this.f114179g;
    }

    public boolean isKnownTag() {
        return f114169n.containsKey(this.f114177e);
    }

    public boolean isSelfClosing() {
        return this.f114181i || this.f114182j;
    }

    public String normalName() {
        return this.f114178f;
    }

    public boolean preserveWhitespace() {
        return this.f114183k;
    }

    public String toString() {
        return this.f114177e;
    }

    public static boolean isKnownTag(String str) {
        return f114169n.containsKey(str);
    }

    public static Tag valueOf(String str, ParseSettings parseSettings) {
        Validate.notNull(str);
        Map<String, Tag> map = f114169n;
        Tag tag = map.get(str);
        if (tag != null) {
            return tag;
        }
        String normalizeTag = parseSettings.normalizeTag(str);
        Validate.notEmpty(normalizeTag);
        String lowerCase = Normalizer.lowerCase(normalizeTag);
        Tag tag2 = map.get(lowerCase);
        if (tag2 == null) {
            Tag tag3 = new Tag(normalizeTag);
            tag3.f114179g = false;
            return tag3;
        }
        if (!parseSettings.preserveTagCase() || normalizeTag.equals(lowerCase)) {
            return tag2;
        }
        Tag clone = tag2.clone();
        clone.f114177e = normalizeTag;
        return clone;
    }

    public Tag clone() {
        try {
            return (Tag) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
