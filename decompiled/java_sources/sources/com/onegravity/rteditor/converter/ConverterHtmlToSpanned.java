package com.onegravity.rteditor.converter;

import android.annotation.SuppressLint;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.QuoteSpan;
import android.text.style.RelativeSizeSpan;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.api.format.RTHtml;
import com.onegravity.rteditor.api.format.RTSpanned;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.converter.tagsoup.HTMLSchema;
import com.onegravity.rteditor.converter.tagsoup.Parser;
import com.onegravity.rteditor.fonts.FontManager;
import com.onegravity.rteditor.fonts.RTTypeface;
import com.onegravity.rteditor.spans.AbsoluteSizeSpan;
import com.onegravity.rteditor.spans.AlignmentSpan;
import com.onegravity.rteditor.spans.BackgroundColorSpan;
import com.onegravity.rteditor.spans.BoldSpan;
import com.onegravity.rteditor.spans.ForegroundColorSpan;
import com.onegravity.rteditor.spans.ImageSpan;
import com.onegravity.rteditor.spans.ItalicSpan;
import com.onegravity.rteditor.spans.LinkSpan;
import com.onegravity.rteditor.spans.StrikethroughSpan;
import com.onegravity.rteditor.spans.SubscriptSpan;
import com.onegravity.rteditor.spans.SuperscriptSpan;
import com.onegravity.rteditor.spans.TypefaceSpan;
import com.onegravity.rteditor.spans.UnderlineSpan;
import com.onegravity.rteditor.utils.Helper;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.hwr.data.constant.HWRGestureType;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sunia.HTREnginev2.b7n;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.o6o;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.util.ExtUnits;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* loaded from: classes7.dex */
public class ConverterHtmlToSpanned implements ContentHandler {

    /* renamed from: k */
    public static final float[] f40145k = {1.5f, 1.4f, 1.3f, 1.2f, 1.1f, 1.0f};

    /* renamed from: l */
    public static final Set<String> f40146l;

    /* renamed from: m */
    public static final Pattern f40147m;

    /* renamed from: n */
    public static final Pattern f40148n;

    /* renamed from: o */
    public static HashMap<String, Integer> f40149o;

    /* renamed from: e */
    public String f40150e;

    /* renamed from: f */
    public RTMediaFactory<? extends RTImage, ? extends RTAudio, ? extends RTVideo> f40151f;

    /* renamed from: g */
    public Parser f40152g;

    /* renamed from: h */
    public SpannableStringBuilder f40153h;

    /* renamed from: i */
    public Stack<AccumulatedParagraphStyle> f40154i = new Stack<>();

    /* renamed from: j */
    public boolean f40155j;

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$b */
    /* loaded from: classes7.dex */
    public static class C7035b {
        public C7035b() {
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$c */
    /* loaded from: classes7.dex */
    public static class C7036c {
        public C7036c() {
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$d */
    /* loaded from: classes7.dex */
    public static class C7037d {
        public C7037d() {
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$e */
    /* loaded from: classes7.dex */
    public static class C7038e {

        /* renamed from: a */
        public String f40156a;

        public C7038e(String str) {
            this.f40156a = "left";
            if (str != null) {
                this.f40156a = str;
            }
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$f */
    /* loaded from: classes7.dex */
    public static class C7039f {

        /* renamed from: a */
        public int f40157a;

        /* renamed from: b */
        public String f40158b;

        /* renamed from: c */
        public String f40159c;

        /* renamed from: d */
        public String f40160d;

        public C7039f() {
            this.f40157a = Integer.MIN_VALUE;
        }

        /* renamed from: b */
        public boolean m31592b() {
            return !TextUtils.isEmpty(this.f40159c);
        }

        /* renamed from: c */
        public boolean m31593c() {
            return !TextUtils.isEmpty(this.f40158b);
        }

        /* renamed from: d */
        public boolean m31594d() {
            return !TextUtils.isEmpty(this.f40160d);
        }

        /* renamed from: e */
        public boolean m31595e() {
            return this.f40157a > 0;
        }

        /* renamed from: f */
        public C7039f m31596f(String str) {
            this.f40159c = str;
            return this;
        }

        /* renamed from: g */
        public C7039f m31597g(String str) {
            this.f40158b = str;
            return this;
        }

        /* renamed from: h */
        public final C7039f m31598h(String str) {
            this.f40160d = str;
            return this;
        }

        /* renamed from: i */
        public C7039f m31599i(int i) {
            this.f40157a = i;
            return this;
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$g */
    /* loaded from: classes7.dex */
    public static class C7040g {

        /* renamed from: a */
        public int f40161a;

        public C7040g(int i) {
            this.f40161a = i;
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$h */
    /* loaded from: classes7.dex */
    public static class C7041h {

        /* renamed from: a */
        public String f40162a;

        public C7041h(String str) {
            this.f40162a = str;
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$i */
    /* loaded from: classes7.dex */
    public static class C7042i {

        /* renamed from: a */
        public static final HTMLSchema f40163a = new HTMLSchema();
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$j */
    /* loaded from: classes7.dex */
    public static class C7043j {
        public C7043j() {
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$k */
    /* loaded from: classes7.dex */
    public static abstract class AbstractC7044k {

        /* renamed from: a */
        public int f40164a;

        /* renamed from: b */
        public boolean f40165b;

        public AbstractC7044k(int i, boolean z) {
            this.f40164a = i;
            this.f40165b = z;
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$l */
    /* loaded from: classes7.dex */
    public static class C7045l {
        public C7045l() {
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$m */
    /* loaded from: classes7.dex */
    public static class C7046m extends AbstractC7044k {
        public C7046m(int i, boolean z) {
            super(i, z);
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$n */
    /* loaded from: classes7.dex */
    public static class C7047n {
        public C7047n() {
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$o */
    /* loaded from: classes7.dex */
    public static class C7048o {
        public C7048o() {
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$p */
    /* loaded from: classes7.dex */
    public static class C7049p {
        public C7049p() {
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$q */
    /* loaded from: classes7.dex */
    public static class C7050q {
        public C7050q() {
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$r */
    /* loaded from: classes7.dex */
    public static class C7051r {

        /* renamed from: a */
        public Object f40166a;

        public C7051r(Object obj) {
            this.f40166a = obj;
        }

        /* renamed from: a */
        public void m31601a(SpannableStringBuilder spannableStringBuilder) {
            int spanStart = spannableStringBuilder.getSpanStart(this);
            int spanEnd = spannableStringBuilder.getSpanEnd(this);
            spannableStringBuilder.removeSpan(this);
            if (spanStart < 0 || spanEnd <= spanStart || spanEnd > spannableStringBuilder.length()) {
                return;
            }
            spannableStringBuilder.setSpan(this.f40166a, spanStart, spanEnd, 34);
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$s */
    /* loaded from: classes7.dex */
    public static class C7052s extends AbstractC7044k {
        public C7052s(int i, boolean z) {
            super(i, z);
        }
    }

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToSpanned$t */
    /* loaded from: classes7.dex */
    public static class C7053t {
        public C7053t() {
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f40146l = hashSet;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("hello");
        spannableStringBuilder.append(spannableStringBuilder.subSequence(0, spannableStringBuilder.length()));
        hashSet.add(Constants.NAME_HEADER);
        hashSet.add("style");
        hashSet.add("meta");
        f40147m = Pattern.compile("\\d+");
        f40148n = Pattern.compile("#[a-f0-9]+");
        HashMap<String, Integer> hashMap = new HashMap<>();
        f40149o = hashMap;
        hashMap.put("aqua", 65535);
        f40149o.put("black", 0);
        f40149o.put("blue", 255);
        f40149o.put("fuchsia", 16711935);
        f40149o.put("green", 32768);
        f40149o.put("grey", 8421504);
        f40149o.put("lime", 65280);
        f40149o.put("maroon", 8388608);
        f40149o.put("navy", 128);
        f40149o.put("olive", 8421376);
        f40149o.put("purple", 8388736);
        f40149o.put("red", 16711680);
        f40149o.put("silver", 12632256);
        f40149o.put("teal", Integer.valueOf(b7n.f65484e));
        f40149o.put("white", 16777215);
        f40149o.put("yellow", 16776960);
    }

    /* renamed from: b */
    public static final int m31561b(CharSequence charSequence, int i) {
        int i2;
        int i3;
        if (charSequence == null) {
            return i;
        }
        String charSequence2 = charSequence.toString();
        if (charSequence2.startsWith("#")) {
            return ColorKt.parseColorValueSafety(charSequence2);
        }
        int length = charSequence2.length();
        if ('-' == charSequence2.charAt(0)) {
            i3 = -1;
            i2 = 1;
        } else {
            i2 = 0;
            i3 = 1;
        }
        int i4 = 16;
        if ('0' == charSequence2.charAt(i2)) {
            if (i2 == length - 1) {
                return 0;
            }
            int i5 = i2 + 1;
            char charAt = charSequence2.charAt(i5);
            if ('x' == charAt || 'X' == charAt) {
                i2 += 2;
            } else {
                i2 = i5;
                i4 = 8;
            }
        } else if ('#' == charSequence2.charAt(i2)) {
            i2++;
        } else {
            i4 = 10;
        }
        return Integer.parseInt(charSequence2.substring(i2), i4) * i3;
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: l */
    public static int m31562l(String str) {
        Integer num = f40149o.get(str.toLowerCase());
        if (num != null) {
            return num.intValue();
        }
        try {
            return m31561b(str, 0);
        } catch (NumberFormatException e) {
            Debug.INSTANCE.m32044e(ConverterHtmlToSpanned.class, "parse color failed, color: " + str, new Object[0]);
            Debug.INSTANCE.m32048e(e);
            return 0;
        }
    }

    /* renamed from: A */
    public final void m31563A(Attributes attributes) {
        Object c7052s;
        if (this.f40154i.isEmpty()) {
            c7052s = new C7052s(0, false);
        } else {
            AccumulatedParagraphStyle peek = this.f40154i.peek();
            ParagraphType type = peek.getType();
            int absoluteIndent = peek.getAbsoluteIndent();
            c7052s = (type.isIndentation() || m31583s(attributes)) ? new C7052s(absoluteIndent, true) : type.isNumbering() ? new C7046m(absoluteIndent, false) : type.isBullet() ? new C7052s(absoluteIndent, false) : null;
        }
        if (c7052s != null) {
            m31585u(c7052s);
        }
    }

    /* renamed from: B */
    public final void m31564B(boolean z, Attributes attributes) {
        boolean m31583s = m31583s(attributes);
        ParagraphType paragraphType = (m31583s && z) ? ParagraphType.INDENTATION_OL : (!m31583s || z) ? z ? ParagraphType.NUMBERING : ParagraphType.BULLET : ParagraphType.INDENTATION_UL;
        AccumulatedParagraphStyle peek = this.f40154i.isEmpty() ? null : this.f40154i.peek();
        if (peek == null) {
            this.f40154i.push(new AccumulatedParagraphStyle(paragraphType, 1, 1));
        } else if (peek.getType() != paragraphType) {
            this.f40154i.push(new AccumulatedParagraphStyle(paragraphType, peek.getAbsoluteIndent() + 1, 1));
        } else {
            peek.setAbsoluteIndent(peek.getAbsoluteIndent() + 1);
            peek.setRelativeIndent(peek.getRelativeIndent() + 1);
        }
    }

    /* renamed from: C */
    public final void m31565C(Attributes attributes) {
        String str;
        String value = attributes.getValue("", "style");
        if (value == null || value.isEmpty()) {
            m31581q();
            return;
        }
        String[] split = value.toLowerCase(Locale.ENGLISH).split(AndroidTreeView.f47214k);
        int length = split.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                str = null;
                break;
            }
            String trim = split[i].trim();
            if (trim.startsWith("text-align")) {
                str = trim.replace("text-align:", "").trim();
                break;
            }
            i++;
        }
        int length2 = this.f40153h.length();
        this.f40153h.setSpan(new C7038e(str), length2, length2, 17);
    }

    /* renamed from: D */
    public final void m31566D(Attributes attributes) {
    }

    /* renamed from: a */
    public final boolean m31567a(SpannableStringBuilder spannableStringBuilder, int i, Class<?> cls) {
        Object[] spans = spannableStringBuilder.getSpans(i, i, cls);
        if (spans != null && spans.length > 0) {
            for (Object obj : spans) {
                if (spannableStringBuilder.getSpanStart(obj) == i) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: c */
    public final void m31568c(Class<? extends Object> cls, Object obj) {
        int length = this.f40153h.length();
        Object m31578n = m31578n(cls);
        int spanStart = this.f40153h.getSpanStart(m31578n);
        this.f40153h.removeSpan(m31578n);
        if (spanStart != length) {
            this.f40153h.setSpan(new C7051r(obj), spanStart, length, 33);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        char charAt;
        if (this.f40155j) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i3 + i];
            if (c == ' ' || c == '\n') {
                int length = sb.length();
                if (length == 0) {
                    int length2 = this.f40153h.length();
                    charAt = length2 == 0 ? '\n' : this.f40153h.charAt(length2 - 1);
                } else {
                    charAt = sb.charAt(length - 1);
                }
                if (charAt != ' ' && charAt != '\n') {
                    sb.append(' ');
                }
            } else {
                sb.append(c);
            }
        }
        this.f40153h.append((CharSequence) sb);
    }

    public RTSpanned convert(RTHtml<? extends RTImage, ? extends RTAudio, ? extends RTVideo> rTHtml, RTMediaFactory<? extends RTImage, ? extends RTAudio, ? extends RTVideo> rTMediaFactory) {
        this.f40150e = rTHtml.getText();
        this.f40151f = rTMediaFactory;
        Parser parser = new Parser();
        this.f40152g = parser;
        try {
            parser.setProperty(Parser.schemaProperty, C7042i.f40163a);
            this.f40153h = new SpannableStringBuilder();
            this.f40155j = false;
            this.f40154i.clear();
            this.f40152g.setContentHandler(this);
            try {
                this.f40152g.parse(new InputSource(new StringReader(this.f40150e)));
                m31584t();
                SpannableStringBuilder spannableStringBuilder = this.f40153h;
                for (C7051r c7051r : (C7051r[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), C7051r.class)) {
                    c7051r.m31601a(this.f40153h);
                }
                return new RTSpanned(this.f40153h);
            } catch (IOException e) {
                throw new RuntimeException(e);
            } catch (SAXException e2) {
                throw new RuntimeException(e2);
            }
        } catch (SAXNotRecognizedException e3) {
            throw new RuntimeException(e3);
        } catch (SAXNotSupportedException e4) {
            throw new RuntimeException(e4);
        }
    }

    /* renamed from: d */
    public final void m31569d() {
        int length = this.f40153h.length();
        Object m31578n = m31578n(C7041h.class);
        int spanStart = this.f40153h.getSpanStart(m31578n);
        this.f40153h.removeSpan(m31578n);
        if (spanStart != length) {
            C7041h c7041h = (C7041h) m31578n;
            if (c7041h.f40162a != null) {
                this.f40153h.setSpan(new LinkSpan(c7041h.f40162a), spanStart, length, 33);
            }
        }
    }

    /* renamed from: e */
    public final void m31570e() {
        int length = this.f40153h.length();
        Object m31577m = m31577m(this.f40153h, C7038e.class);
        int spanStart = this.f40153h.getSpanStart(m31577m);
        this.f40153h.removeSpan(m31577m);
        C7038e c7038e = (C7038e) m31577m;
        if (c7038e == null || m31567a(this.f40153h, spanStart, AlignmentSpan.class)) {
            return;
        }
        Layout.Alignment m31576k = m31576k(c7038e);
        if (spanStart == length || this.f40153h.charAt(length - 1) != '\n') {
            this.f40153h.append('\n');
        }
        this.f40153h.setSpan(new AlignmentSpan(m31576k, Helper.isRTL(this.f40153h, spanStart, length)), spanStart, length, 33);
    }

    @Override // org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
    }

    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        m31580p(str2);
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
    }

    /* renamed from: f */
    public final void m31571f() {
        RTTypeface typeface;
        int length = this.f40153h.length();
        Object m31578n = m31578n(C7039f.class);
        int spanStart = this.f40153h.getSpanStart(m31578n);
        this.f40153h.removeSpan(m31578n);
        if (spanStart != length) {
            C7039f c7039f = (C7039f) m31578n;
            if (c7039f.m31594d() && (typeface = FontManager.getTypeface(c7039f.f40160d)) != null) {
                this.f40153h.setSpan(new C7051r(new TypefaceSpan(typeface)), spanStart, length, 33);
            }
            if (c7039f.m31595e()) {
                this.f40153h.setSpan(new C7051r(new AbsoluteSizeSpan(c7039f.f40157a)), spanStart, length, 33);
            }
            if (c7039f.m31593c()) {
                this.f40153h.setSpan(new C7051r(new ForegroundColorSpan(m31562l(c7039f.f40158b))), spanStart, length, 33);
            }
            if (c7039f.m31592b()) {
                this.f40153h.setSpan(new C7051r(new BackgroundColorSpan(m31562l(c7039f.f40159c))), spanStart, length, 33);
            }
        }
    }

    /* renamed from: g */
    public final void m31572g() {
        int length = this.f40153h.length();
        Object m31578n = m31578n(C7040g.class);
        int spanStart = this.f40153h.getSpanStart(m31578n);
        this.f40153h.removeSpan(m31578n);
        while (length > spanStart && this.f40153h.charAt(length - 1) == '\n') {
            length--;
        }
        if (spanStart != length) {
            this.f40153h.setSpan(new RelativeSizeSpan(f40145k[((C7040g) m31578n).f40161a]), spanStart, length, 33);
            this.f40153h.setSpan(new BoldSpan(), spanStart, length, 33);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0020, code lost:
    
        if (r1.charAt(r1.length() - 1) != '\n') goto L8;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m31573h() {
        /*
            r14 = this;
            java.lang.Class<com.onegravity.rteditor.converter.ConverterHtmlToSpanned$k> r0 = com.onegravity.rteditor.converter.ConverterHtmlToSpanned.AbstractC7044k.class
            java.lang.Object r0 = r14.m31578n(r0)
            com.onegravity.rteditor.converter.ConverterHtmlToSpanned$k r0 = (com.onegravity.rteditor.converter.ConverterHtmlToSpanned.AbstractC7044k) r0
            if (r0 == 0) goto L7e
            android.text.SpannableStringBuilder r1 = r14.f40153h
            int r1 = r1.length()
            r2 = 10
            r3 = 1
            if (r1 == 0) goto L22
            android.text.SpannableStringBuilder r1 = r14.f40153h
            int r4 = r1.length()
            int r4 = r4 - r3
            char r1 = r1.charAt(r4)
            if (r1 == r2) goto L27
        L22:
            android.text.SpannableStringBuilder r1 = r14.f40153h
            r1.append(r2)
        L27:
            android.text.SpannableStringBuilder r1 = r14.f40153h
            int r1 = r1.getSpanStart(r0)
            android.text.SpannableStringBuilder r2 = r14.f40153h
            int r2 = r2.length()
            int r4 = r0.f40164a
            boolean r5 = r0.f40165b
            r6 = 33
            r7 = 0
            if (r5 != 0) goto L64
            int r4 = r4 + (-1)
            int r10 = com.onegravity.rteditor.utils.Helper.getLeadingMarging()
            boolean r5 = r0 instanceof com.onegravity.rteditor.converter.ConverterHtmlToSpanned.C7052s
            if (r5 == 0) goto L51
            com.onegravity.rteditor.spans.BulletSpan r5 = new com.onegravity.rteditor.spans.BulletSpan
            if (r1 != r2) goto L4c
            r8 = r3
            goto L4d
        L4c:
            r8 = r7
        L4d:
            r5.<init>(r10, r8, r7, r7)
            goto L5f
        L51:
            com.onegravity.rteditor.spans.NumberSpan r5 = new com.onegravity.rteditor.spans.NumberSpan
            r9 = 1
            if (r1 != r2) goto L58
            r11 = r3
            goto L59
        L58:
            r11 = r7
        L59:
            r12 = 0
            r13 = 0
            r8 = r5
            r8.<init>(r9, r10, r11, r12, r13)
        L5f:
            android.text.SpannableStringBuilder r8 = r14.f40153h
            r8.setSpan(r5, r1, r2, r6)
        L64:
            if (r4 <= 0) goto L79
            int r5 = com.onegravity.rteditor.utils.Helper.getLeadingMarging()
            int r4 = r4 * r5
            com.onegravity.rteditor.spans.IndentationSpan r5 = new com.onegravity.rteditor.spans.IndentationSpan
            if (r1 != r2) goto L70
            goto L71
        L70:
            r3 = r7
        L71:
            r5.<init>(r4, r3, r7, r7)
            android.text.SpannableStringBuilder r3 = r14.f40153h
            r3.setSpan(r5, r1, r2, r6)
        L79:
            android.text.SpannableStringBuilder r14 = r14.f40153h
            r14.removeSpan(r0)
        L7e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onegravity.rteditor.converter.ConverterHtmlToSpanned.m31573h():void");
    }

    /* renamed from: i */
    public final void m31574i(boolean z) {
        if (this.f40154i.isEmpty()) {
            return;
        }
        AccumulatedParagraphStyle peek = this.f40154i.peek();
        ParagraphType type = peek.getType();
        if (!(z && (type.isNumbering() || type == ParagraphType.INDENTATION_OL)) && (z || !(type.isBullet() || type == ParagraphType.INDENTATION_UL))) {
            this.f40154i.pop();
            m31574i(z);
            return;
        }
        int relativeIndent = peek.getRelativeIndent();
        if (relativeIndent <= 1) {
            this.f40154i.pop();
        } else {
            peek.setRelativeIndent(relativeIndent - 1);
            peek.setAbsoluteIndent(peek.getAbsoluteIndent() - 1);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
    }

    /* renamed from: j */
    public final void m31575j() {
        if (m31577m(this.f40153h, C7038e.class) != null) {
            m31570e();
        } else {
            m31581q();
        }
    }

    /* renamed from: k */
    public final Layout.Alignment m31576k(C7038e c7038e) {
        char c;
        String lowerCase = c7038e.f40156a.toLowerCase();
        int hashCode = lowerCase.hashCode();
        if (hashCode == -1364013995) {
            if (lowerCase.equals("center")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode != 3317767) {
            if (hashCode == 108511772 && lowerCase.equals(gon.f71288n0)) {
                c = 1;
            }
            c = 65535;
        } else {
            if (lowerCase.equals("left")) {
                c = 2;
            }
            c = 65535;
        }
        return c != 0 ? c != 1 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER;
    }

    /* renamed from: m */
    public final Object m31577m(Spanned spanned, Class<?> cls) {
        Object[] spans = spanned.getSpans(0, spanned.length(), cls);
        if (spans.length == 0) {
            return null;
        }
        return spans[spans.length - 1];
    }

    /* renamed from: n */
    public final Object m31578n(Class<? extends Object> cls) {
        SpannableStringBuilder spannableStringBuilder = this.f40153h;
        Object[] spans = spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), cls);
        if (spans.length == 0) {
            return null;
        }
        return spans[spans.length - 1];
    }

    /* renamed from: o */
    public final void m31579o() {
        this.f40153h.append((CharSequence) "\n");
    }

    /* renamed from: p */
    public final void m31580p(String str) {
        if (str.equalsIgnoreCase("br")) {
            m31579o();
            return;
        }
        if (str.equalsIgnoreCase("p")) {
            m31575j();
            return;
        }
        if (str.equalsIgnoreCase(gon.f71293q)) {
            m31570e();
            return;
        }
        if (str.equalsIgnoreCase("ul")) {
            m31574i(false);
            return;
        }
        if (str.equalsIgnoreCase("ol")) {
            m31574i(true);
            return;
        }
        if (str.equalsIgnoreCase("li")) {
            m31573h();
            return;
        }
        if (str.equalsIgnoreCase("strong")) {
            m31568c(C7037d.class, new BoldSpan());
            return;
        }
        if (str.equalsIgnoreCase("b")) {
            m31568c(C7037d.class, new BoldSpan());
            return;
        }
        if (str.equalsIgnoreCase(ExtUnits.UNIT_EM)) {
            m31568c(C7043j.class, new ItalicSpan());
            return;
        }
        if (str.equalsIgnoreCase("cite")) {
            m31568c(C7043j.class, new ItalicSpan());
            return;
        }
        if (str.equalsIgnoreCase("dfn")) {
            m31568c(C7043j.class, new ItalicSpan());
            return;
        }
        if (str.equalsIgnoreCase("i")) {
            m31568c(C7043j.class, new ItalicSpan());
            return;
        }
        if (str.equalsIgnoreCase(HWRGestureType.STRIKE)) {
            m31568c(C7048o.class, new StrikethroughSpan());
            return;
        }
        if (str.equalsIgnoreCase("del")) {
            m31568c(C7048o.class, new StrikethroughSpan());
            return;
        }
        if (str.equalsIgnoreCase("big")) {
            m31568c(C7035b.class, new AbsoluteSizeSpan(Helper.convertPxToSp(32)));
            return;
        }
        if (str.equalsIgnoreCase("small")) {
            m31568c(C7047n.class, new AbsoluteSizeSpan(Helper.convertPxToSp(14)));
            return;
        }
        if (str.equalsIgnoreCase(gon.f71297s)) {
            m31571f();
            return;
        }
        if (str.equalsIgnoreCase("font")) {
            m31571f();
            return;
        }
        if (str.equalsIgnoreCase("blockquote")) {
            m31581q();
            m31568c(C7036c.class, new QuoteSpan());
            return;
        }
        if (str.equalsIgnoreCase("a")) {
            m31569d();
            return;
        }
        if (str.equalsIgnoreCase("u")) {
            m31568c(C7053t.class, new UnderlineSpan());
            return;
        }
        if (str.equalsIgnoreCase("sup")) {
            m31568c(C7050q.class, new SuperscriptSpan());
            return;
        }
        if (str.equalsIgnoreCase("sub")) {
            m31568c(C7049p.class, new SubscriptSpan());
            return;
        }
        if (str.length() == 2 && Character.toLowerCase(str.charAt(0)) == 'h' && str.charAt(1) >= '1' && str.charAt(1) <= '6') {
            m31581q();
            m31572g();
        } else if (f40146l.contains(str.toLowerCase(Locale.getDefault()))) {
            this.f40155j = false;
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
    }

    /* renamed from: q */
    public final void m31581q() {
        int length = this.f40153h.length();
        if (length < 1 || this.f40153h.charAt(length - 1) != '\n') {
            if (length != 0) {
                this.f40153h.append((CharSequence) "\n\n");
            }
        } else if (length < 2 || this.f40153h.charAt(length - 2) != '\n') {
            this.f40153h.append((CharSequence) "\n");
        }
    }

    /* renamed from: r */
    public final void m31582r(String str, Attributes attributes) {
        if (str.equalsIgnoreCase("br")) {
            return;
        }
        if (str.equalsIgnoreCase("p")) {
            m31565C(attributes);
            return;
        }
        if (str.equalsIgnoreCase(gon.f71293q)) {
            m31588x(attributes);
            return;
        }
        if (str.equalsIgnoreCase("ul")) {
            m31564B(false, attributes);
            return;
        }
        if (str.equalsIgnoreCase("ol")) {
            m31564B(true, attributes);
            return;
        }
        if (str.equalsIgnoreCase("li")) {
            m31563A(attributes);
            return;
        }
        if (str.equalsIgnoreCase("strong")) {
            m31585u(new C7037d());
            return;
        }
        if (str.equalsIgnoreCase("b")) {
            m31585u(new C7037d());
            return;
        }
        if (str.equalsIgnoreCase(ExtUnits.UNIT_EM)) {
            m31585u(new C7043j());
            return;
        }
        if (str.equalsIgnoreCase("cite")) {
            m31585u(new C7043j());
            return;
        }
        if (str.equalsIgnoreCase("dfn")) {
            m31585u(new C7043j());
            return;
        }
        if (str.equalsIgnoreCase("i")) {
            m31585u(new C7043j());
            return;
        }
        if (str.equalsIgnoreCase(HWRGestureType.STRIKE)) {
            m31585u(new C7048o());
            return;
        }
        if (str.equalsIgnoreCase("del")) {
            m31585u(new C7048o());
            return;
        }
        if (str.equalsIgnoreCase("big")) {
            m31585u(new C7035b());
            return;
        }
        if (str.equalsIgnoreCase("small")) {
            m31585u(new C7047n());
            return;
        }
        if (str.equalsIgnoreCase(gon.f71297s)) {
            m31589y(attributes);
            return;
        }
        if (str.equalsIgnoreCase("font")) {
            m31589y(attributes);
            return;
        }
        if (str.equalsIgnoreCase("blockquote")) {
            m31581q();
            m31585u(new C7036c());
            return;
        }
        if (str.equalsIgnoreCase(gon.f71287n)) {
            m31585u(new C7045l());
            return;
        }
        if (str.equalsIgnoreCase("a")) {
            m31586v(attributes);
            return;
        }
        if (str.equalsIgnoreCase("u")) {
            m31585u(new C7053t());
            return;
        }
        if (str.equalsIgnoreCase("sup")) {
            m31585u(new C7050q());
            return;
        }
        if (str.equalsIgnoreCase("sub")) {
            m31585u(new C7049p());
            return;
        }
        if (str.length() == 2 && Character.toLowerCase(str.charAt(0)) == 'h' && str.charAt(1) >= '1' && str.charAt(1) <= '6') {
            m31581q();
            m31585u(new C7040g(str.charAt(1) - '1'));
            return;
        }
        if (str.equalsIgnoreCase("img")) {
            m31590z(attributes);
            return;
        }
        if (str.equalsIgnoreCase("video")) {
            m31566D(attributes);
        } else if (str.equalsIgnoreCase("embed")) {
            m31587w(attributes);
        } else if (f40146l.contains(str.toLowerCase(Locale.getDefault()))) {
            this.f40155j = true;
        }
    }

    /* renamed from: s */
    public final boolean m31583s(Attributes attributes) {
        String value = attributes.getValue("style");
        return value != null && value.toLowerCase(Locale.US).contains("list-style-type:none");
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) throws SAXException {
    }

    @Override // org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        m31582r(str2, attributes);
    }

    @Override // org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) throws SAXException {
    }

    /* renamed from: t */
    public final void m31584t() {
        int length = this.f40153h.length();
        while (length > 0 && this.f40153h.charAt(length - 1) == '\n') {
            length--;
        }
        if (length < this.f40153h.length()) {
            this.f40153h = SpannableStringBuilder.valueOf(this.f40153h.subSequence(0, length));
        }
    }

    /* renamed from: u */
    public final void m31585u(Object obj) {
        int length = this.f40153h.length();
        this.f40153h.setSpan(obj, length, length, 17);
    }

    /* renamed from: v */
    public final void m31586v(Attributes attributes) {
        String value = attributes.getValue("", "href");
        int length = this.f40153h.length();
        this.f40153h.setSpan(new C7041h(value), length, length, 17);
    }

    /* renamed from: w */
    public final void m31587w(Attributes attributes) {
    }

    /* renamed from: x */
    public final void m31588x(Attributes attributes) {
        String value = attributes.getValue("align");
        int length = this.f40153h.length();
        this.f40153h.setSpan(new C7038e(value), length, length, 17);
    }

    /* renamed from: y */
    public final void m31589y(Attributes attributes) {
        String str;
        String str2;
        String str3;
        String value = attributes.getValue("", "style");
        int i = Integer.MIN_VALUE;
        if (value != null) {
            str = null;
            str2 = null;
            str3 = null;
            for (String str4 : value.toLowerCase(Locale.ENGLISH).split(AndroidTreeView.f47214k)) {
                String trim = str4.trim();
                if (trim.startsWith(o6o.f79400j)) {
                    Matcher matcher = f40147m.matcher(trim);
                    if (matcher.find(0)) {
                        try {
                            i = Integer.parseInt(trim.substring(matcher.start(), matcher.end()));
                        } catch (NumberFormatException unused) {
                        }
                    }
                } else if (trim.startsWith("color")) {
                    Matcher matcher2 = f40148n.matcher(trim);
                    if (matcher2.find(0)) {
                        str2 = trim.substring(matcher2.start(), matcher2.end());
                    }
                } else if (trim.startsWith(o6o.f79397g)) {
                    Matcher matcher3 = f40148n.matcher(trim);
                    if (matcher3.find(0)) {
                        str3 = trim.substring(matcher3.start(), matcher3.end());
                    }
                } else if (trim.startsWith(o6o.f79398h)) {
                    str = trim.replace("font-family:", "").trim();
                }
            }
        } else {
            str = null;
            str2 = null;
            str3 = null;
        }
        if (str == null || str.isEmpty()) {
            str = attributes.getValue("", OptionalModuleUtils.FACE);
        }
        String value2 = attributes.getValue("", com.onegravity.rteditor.utils.Constants.TAG_FONT_SIZE_COMPAT);
        int dip2px = (value2 == null || value2.length() < 3) ? DimenUtils.INSTANCE.dip2px(ResManager.INSTANCE.getAppContext(), i) : Math.round(Float.parseFloat(value2.replace(ExtUnits.UNIT_PX, "")));
        int length = this.f40153h.length();
        this.f40153h.setSpan(new C7039f().m31599i(dip2px).m31597g(str2).m31596f(str3).m31598h(str), length, length, 17);
    }

    /* renamed from: z */
    public final void m31590z(Attributes attributes) {
        int length = this.f40153h.length();
        RTImage createImage = this.f40151f.createImage(attributes.getValue("", Constant.SRC_TAG));
        if (createImage == null || !createImage.exists() || new File(createImage.getFilePath(RTFormat.SPANNED)).isDirectory()) {
            return;
        }
        this.f40153h.append((CharSequence) "￼");
        this.f40153h.setSpan(new ImageSpan(createImage, true), length, length + 1, 33);
    }
}
