package com.caverock.androidsvg;

import android.util.Log;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGParser;
import com.google.android.material.motion.MotionUtils;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import com.sunia.HTREnginev2.kni;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes3.dex */
public class CSSParser {

    /* renamed from: d */
    public static final String f15747d = "CSSParser";

    /* renamed from: e */
    public static final String f15748e = "text/css";

    /* renamed from: f */
    public static final String f15749f = "id";

    /* renamed from: g */
    public static final String f15750g = "class";

    /* renamed from: h */
    public static final int f15751h = 1000000;

    /* renamed from: i */
    public static final int f15752i = 1000;

    /* renamed from: j */
    public static final int f15753j = 1;

    /* renamed from: a */
    public MediaType f15754a;

    /* renamed from: b */
    public Source f15755b;

    /* renamed from: c */
    public boolean f15756c;

    /* loaded from: classes3.dex */
    public enum AttribOp {
        EXISTS,
        EQUALS,
        INCLUDES,
        DASHMATCH
    }

    /* loaded from: classes3.dex */
    public enum Combinator {
        DESCENDANT,
        CHILD,
        FOLLOWS
    }

    /* loaded from: classes3.dex */
    public enum MediaType {
        all,
        aural,
        braille,
        embossed,
        handheld,
        print,
        projection,
        screen,
        speech,
        tty,
        tv
    }

    /* loaded from: classes3.dex */
    public enum PseudoClassIdents {
        target,
        root,
        nth_child,
        nth_last_child,
        nth_of_type,
        nth_last_of_type,
        first_child,
        last_child,
        first_of_type,
        last_of_type,
        only_child,
        only_of_type,
        empty,
        not,
        lang,
        link,
        visited,
        hover,
        active,
        focus,
        enabled,
        disabled,
        checked,
        indeterminate,
        UNSUPPORTED;

        private static final Map<String, PseudoClassIdents> cache = new HashMap();

        static {
            for (PseudoClassIdents pseudoClassIdents : values()) {
                if (pseudoClassIdents != UNSUPPORTED) {
                    cache.put(pseudoClassIdents.name().replace(NameUtil.USCORE, '-'), pseudoClassIdents);
                }
            }
        }

        public static PseudoClassIdents fromString(String str) {
            PseudoClassIdents pseudoClassIdents = cache.get(str);
            return pseudoClassIdents != null ? pseudoClassIdents : UNSUPPORTED;
        }
    }

    /* loaded from: classes3.dex */
    public enum Source {
        Document,
        RenderOptions
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C2056a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f15758a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f15759b;

        static {
            int[] iArr = new int[PseudoClassIdents.values().length];
            f15759b = iArr;
            try {
                iArr[PseudoClassIdents.first_child.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15759b[PseudoClassIdents.last_child.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15759b[PseudoClassIdents.only_child.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15759b[PseudoClassIdents.first_of_type.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15759b[PseudoClassIdents.last_of_type.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15759b[PseudoClassIdents.only_of_type.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15759b[PseudoClassIdents.root.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15759b[PseudoClassIdents.empty.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15759b[PseudoClassIdents.nth_child.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15759b[PseudoClassIdents.nth_last_child.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15759b[PseudoClassIdents.nth_of_type.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f15759b[PseudoClassIdents.nth_last_of_type.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f15759b[PseudoClassIdents.not.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f15759b[PseudoClassIdents.target.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f15759b[PseudoClassIdents.lang.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f15759b[PseudoClassIdents.link.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f15759b[PseudoClassIdents.visited.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f15759b[PseudoClassIdents.hover.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f15759b[PseudoClassIdents.active.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f15759b[PseudoClassIdents.focus.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f15759b[PseudoClassIdents.enabled.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f15759b[PseudoClassIdents.disabled.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f15759b[PseudoClassIdents.checked.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f15759b[PseudoClassIdents.indeterminate.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            int[] iArr2 = new int[AttribOp.values().length];
            f15758a = iArr2;
            try {
                iArr2[AttribOp.EQUALS.ordinal()] = 1;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f15758a[AttribOp.INCLUDES.ordinal()] = 2;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f15758a[AttribOp.DASHMATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$b */
    /* loaded from: classes3.dex */
    public static class C2057b {

        /* renamed from: a */
        public final String f15760a;

        /* renamed from: b */
        public final AttribOp f15761b;

        /* renamed from: c */
        public final String f15762c;

        public C2057b(String str, AttribOp attribOp, String str2) {
            this.f15760a = str;
            this.f15761b = attribOp;
            this.f15762c = str2;
        }
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$c */
    /* loaded from: classes3.dex */
    public static class C2058c extends SVGParser.C2137g {

        /* renamed from: com.caverock.androidsvg.CSSParser$c$a */
        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a */
            public int f15763a;

            /* renamed from: b */
            public int f15764b;

            public a(int i, int i2) {
                this.f15763a = i;
                this.f15764b = i2;
            }
        }

        public C2058c(String str) {
            super(str.replaceAll("(?s)/\\*.*?\\*/", ""));
        }

        /* renamed from: C */
        public final int m9313C(int i) {
            if (i >= 48 && i <= 57) {
                return i - 48;
            }
            int i2 = 65;
            if (i < 65 || i > 70) {
                i2 = 97;
                if (i < 97 || i > 102) {
                    return -1;
                }
            }
            return (i - i2) + 10;
        }

        /* renamed from: D */
        public final a m9314D() throws CSSParseException {
            kni kniVar;
            a aVar;
            if (m9536h()) {
                return null;
            }
            int i = this.f16089b;
            if (!m9534f('(')) {
                return null;
            }
            m9528A();
            int i2 = 1;
            if (m9535g("odd")) {
                aVar = new a(2, 1);
            } else {
                if (m9535g("even")) {
                    aVar = new a(2, 0);
                } else {
                    int i3 = (!m9534f(PhoneNumberUtil.f36455s) && m9534f('-')) ? -1 : 1;
                    kni m55251c = kni.m55251c(this.f16088a, this.f16089b, this.f16090c, false);
                    if (m55251c != null) {
                        this.f16089b = m55251c.m55252a();
                    }
                    if (m9534f('n') || m9534f('N')) {
                        if (m55251c == null) {
                            m55251c = new kni(1L, this.f16089b);
                        }
                        m9528A();
                        boolean m9534f = m9534f(PhoneNumberUtil.f36455s);
                        if (!m9534f && (m9534f = m9534f('-'))) {
                            i2 = -1;
                        }
                        if (m9534f) {
                            m9528A();
                            kniVar = kni.m55251c(this.f16088a, this.f16089b, this.f16090c, false);
                            if (kniVar == null) {
                                this.f16089b = i;
                                return null;
                            }
                            this.f16089b = kniVar.m55252a();
                        } else {
                            kniVar = null;
                        }
                        int i4 = i2;
                        i2 = i3;
                        i3 = i4;
                    } else {
                        kniVar = m55251c;
                        m55251c = null;
                    }
                    aVar = new a(m55251c == null ? 0 : i2 * m55251c.m55253d(), kniVar != null ? i3 * kniVar.m55253d() : 0);
                }
            }
            m9528A();
            if (m9534f(')')) {
                return aVar;
            }
            this.f16089b = i;
            return null;
        }

        /* renamed from: E */
        public final String m9315E() {
            if (m9536h()) {
                return null;
            }
            String m9545q = m9545q();
            return m9545q != null ? m9545q : m9318H();
        }

        /* renamed from: F */
        public String m9316F() {
            int m9313C;
            if (m9536h()) {
                return null;
            }
            char charAt = this.f16088a.charAt(this.f16089b);
            if (charAt != '\'' && charAt != '\"') {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            this.f16089b++;
            int intValue = m9540l().intValue();
            while (intValue != -1 && intValue != charAt) {
                if (intValue == 92) {
                    intValue = m9540l().intValue();
                    if (intValue != -1) {
                        if (intValue == 10 || intValue == 13 || intValue == 12) {
                            intValue = m9540l().intValue();
                        } else {
                            int m9313C2 = m9313C(intValue);
                            if (m9313C2 != -1) {
                                for (int i = 1; i <= 5 && (m9313C = m9313C((intValue = m9540l().intValue()))) != -1; i++) {
                                    m9313C2 = (m9313C2 * 16) + m9313C;
                                }
                                sb.append((char) m9313C2);
                            }
                        }
                    }
                }
                sb.append((char) intValue);
                intValue = m9540l().intValue();
            }
            return sb.toString();
        }

        /* renamed from: G */
        public final List<String> m9317G() throws CSSParseException {
            if (m9536h()) {
                return null;
            }
            int i = this.f16089b;
            if (!m9534f('(')) {
                return null;
            }
            m9528A();
            ArrayList arrayList = null;
            do {
                String m9318H = m9318H();
                if (m9318H == null) {
                    this.f16089b = i;
                    return null;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(m9318H);
                m9528A();
            } while (m9554z());
            if (m9534f(')')) {
                return arrayList;
            }
            this.f16089b = i;
            return null;
        }

        /* renamed from: H */
        public String m9318H() {
            int m9326P = m9326P();
            int i = this.f16089b;
            if (m9326P == i) {
                return null;
            }
            String substring = this.f16088a.substring(i, m9326P);
            this.f16089b = m9326P;
            return substring;
        }

        /* renamed from: I */
        public String m9319I() {
            char charAt;
            int m9313C;
            StringBuilder sb = new StringBuilder();
            while (!m9536h() && (charAt = this.f16088a.charAt(this.f16089b)) != '\'' && charAt != '\"' && charAt != '(' && charAt != ')' && !m9539k(charAt) && !Character.isISOControl((int) charAt)) {
                this.f16089b++;
                if (charAt == '\\') {
                    if (!m9536h()) {
                        String str = this.f16088a;
                        int i = this.f16089b;
                        this.f16089b = i + 1;
                        charAt = str.charAt(i);
                        if (charAt != '\n' && charAt != '\r' && charAt != '\f') {
                            int m9313C2 = m9313C(charAt);
                            if (m9313C2 != -1) {
                                for (int i2 = 1; i2 <= 5 && !m9536h() && (m9313C = m9313C(this.f16088a.charAt(this.f16089b))) != -1; i2++) {
                                    this.f16089b++;
                                    m9313C2 = (m9313C2 * 16) + m9313C;
                                }
                                sb.append((char) m9313C2);
                            }
                        }
                    }
                }
                sb.append(charAt);
            }
            if (sb.length() == 0) {
                return null;
            }
            return sb.toString();
        }

        /* renamed from: J */
        public String m9320J() {
            if (m9536h()) {
                return null;
            }
            int i = this.f16089b;
            int charAt = this.f16088a.charAt(i);
            int i2 = i;
            while (charAt != -1 && charAt != 59 && charAt != 125 && charAt != 33 && !m9538j(charAt)) {
                if (!m9539k(charAt)) {
                    i2 = this.f16089b + 1;
                }
                charAt = m9529a();
            }
            if (this.f16089b > i) {
                return this.f16088a.substring(i, i2);
            }
            this.f16089b = i;
            return null;
        }

        /* renamed from: K */
        public final List<C2070o> m9321K() throws CSSParseException {
            List<C2071p> list;
            List<InterfaceC2059d> list2;
            if (m9536h()) {
                return null;
            }
            int i = this.f16089b;
            if (!m9534f('(')) {
                return null;
            }
            m9528A();
            List<C2070o> m9322L = m9322L();
            if (m9322L == null) {
                this.f16089b = i;
                return null;
            }
            if (!m9534f(')')) {
                this.f16089b = i;
                return null;
            }
            Iterator<C2070o> it2 = m9322L.iterator();
            while (it2.hasNext() && (list = it2.next().f15779a) != null) {
                Iterator<C2071p> it3 = list.iterator();
                while (it3.hasNext() && (list2 = it3.next().f15784d) != null) {
                    Iterator<InterfaceC2059d> it4 = list2.iterator();
                    while (it4.hasNext()) {
                        if (it4.next() instanceof C2062g) {
                            return null;
                        }
                    }
                }
            }
            return m9322L;
        }

        /* renamed from: L */
        public final List<C2070o> m9322L() throws CSSParseException {
            C2056a c2056a = null;
            if (m9536h()) {
                return null;
            }
            ArrayList arrayList = new ArrayList(1);
            C2070o c2070o = new C2070o(c2056a);
            while (!m9536h() && m9323M(c2070o)) {
                if (m9554z()) {
                    arrayList.add(c2070o);
                    c2070o = new C2070o(c2056a);
                }
            }
            if (!c2070o.m9340f()) {
                arrayList.add(c2070o);
            }
            return arrayList;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x012e  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0133  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x003c  */
        /* renamed from: M */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean m9323M(com.caverock.androidsvg.CSSParser.C2070o r11) throws com.caverock.androidsvg.CSSParseException {
            /*
                Method dump skipped, instructions count: 310
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.CSSParser.C2058c.m9323M(com.caverock.androidsvg.CSSParser$o):boolean");
        }

        /* renamed from: N */
        public String m9324N() {
            if (m9536h()) {
                return null;
            }
            int i = this.f16089b;
            if (!m9535g("url(")) {
                return null;
            }
            m9528A();
            String m9316F = m9316F();
            if (m9316F == null) {
                m9316F = m9319I();
            }
            if (m9316F == null) {
                this.f16089b = i;
                return null;
            }
            m9528A();
            if (m9536h() || m9535g(MotionUtils.f31762d)) {
                return m9316F;
            }
            this.f16089b = i;
            return null;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0017. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: O */
        public final void m9325O(C2070o c2070o, C2071p c2071p) throws CSSParseException {
            InterfaceC2059d c2060e;
            C2060e c2060e2;
            String m9318H = m9318H();
            if (m9318H == null) {
                throw new CSSParseException("Invalid pseudo class");
            }
            PseudoClassIdents fromString = PseudoClassIdents.fromString(m9318H);
            C2056a c2056a = null;
            switch (C2056a.f15759b[fromString.ordinal()]) {
                case 1:
                    c2060e = new C2060e(0, 1, true, false, null);
                    c2070o.m9336b();
                    c2071p.m9343b(c2060e);
                    return;
                case 2:
                    c2060e = new C2060e(0, 1, false, false, null);
                    c2070o.m9336b();
                    c2071p.m9343b(c2060e);
                    return;
                case 3:
                    c2060e = new C2064i(false, null);
                    c2070o.m9336b();
                    c2071p.m9343b(c2060e);
                    return;
                case 4:
                    c2060e = new C2060e(0, 1, true, true, c2071p.f15782b);
                    c2070o.m9336b();
                    c2071p.m9343b(c2060e);
                    return;
                case 5:
                    c2060e = new C2060e(0, 1, false, true, c2071p.f15782b);
                    c2070o.m9336b();
                    c2071p.m9343b(c2060e);
                    return;
                case 6:
                    c2060e = new C2064i(true, c2071p.f15782b);
                    c2070o.m9336b();
                    c2071p.m9343b(c2060e);
                    return;
                case 7:
                    c2060e = new C2065j(c2056a);
                    c2070o.m9336b();
                    c2071p.m9343b(c2060e);
                    return;
                case 8:
                    c2060e = new C2061f(c2056a);
                    c2070o.m9336b();
                    c2071p.m9343b(c2060e);
                    return;
                case 9:
                case 10:
                case 11:
                case 12:
                    boolean z = fromString == PseudoClassIdents.nth_child || fromString == PseudoClassIdents.nth_of_type;
                    boolean z2 = fromString == PseudoClassIdents.nth_of_type || fromString == PseudoClassIdents.nth_last_of_type;
                    a m9314D = m9314D();
                    if (m9314D == null) {
                        throw new CSSParseException("Invalid or missing parameter section for pseudo class: " + m9318H);
                    }
                    C2060e c2060e3 = new C2060e(m9314D.f15763a, m9314D.f15764b, z, z2, c2071p.f15782b);
                    c2070o.m9336b();
                    c2060e2 = c2060e3;
                    c2060e = c2060e2;
                    c2071p.m9343b(c2060e);
                    return;
                case 13:
                    List<C2070o> m9321K = m9321K();
                    if (m9321K == null) {
                        throw new CSSParseException("Invalid or missing parameter section for pseudo class: " + m9318H);
                    }
                    C2062g c2062g = new C2062g(m9321K);
                    c2070o.f15780b = c2062g.m9328b();
                    c2060e2 = c2062g;
                    c2060e = c2060e2;
                    c2071p.m9343b(c2060e);
                    return;
                case 14:
                    c2060e = new C2066k(c2056a);
                    c2070o.m9336b();
                    c2071p.m9343b(c2060e);
                    return;
                case 15:
                    m9317G();
                    c2060e = new C2063h(m9318H);
                    c2070o.m9336b();
                    c2071p.m9343b(c2060e);
                    return;
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                    c2060e = new C2063h(m9318H);
                    c2070o.m9336b();
                    c2071p.m9343b(c2060e);
                    return;
                default:
                    throw new CSSParseException("Unsupported pseudo class: " + m9318H);
            }
        }

        /* renamed from: P */
        public final int m9326P() {
            int i;
            if (m9536h()) {
                return this.f16089b;
            }
            int i2 = this.f16089b;
            int charAt = this.f16088a.charAt(i2);
            if (charAt == 45) {
                charAt = m9529a();
            }
            if ((charAt < 65 || charAt > 90) && ((charAt < 97 || charAt > 122) && charAt != 95)) {
                i = i2;
            } else {
                int m9529a = m9529a();
                while (true) {
                    if ((m9529a < 65 || m9529a > 90) && ((m9529a < 97 || m9529a > 122) && !((m9529a >= 48 && m9529a <= 57) || m9529a == 45 || m9529a == 95))) {
                        break;
                    }
                    m9529a = m9529a();
                }
                i = this.f16089b;
            }
            this.f16089b = i2;
            return i;
        }
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$d */
    /* loaded from: classes3.dex */
    public interface InterfaceC2059d {
        /* renamed from: a */
        boolean mo9327a(C2068m c2068m, SVG.AbstractC2095j0 abstractC2095j0);
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$e */
    /* loaded from: classes3.dex */
    public static class C2060e implements InterfaceC2059d {

        /* renamed from: a */
        public int f15765a;

        /* renamed from: b */
        public int f15766b;

        /* renamed from: c */
        public boolean f15767c;

        /* renamed from: d */
        public boolean f15768d;

        /* renamed from: e */
        public String f15769e;

        public C2060e(int i, int i2, boolean z, boolean z2, String str) {
            this.f15765a = i;
            this.f15766b = i2;
            this.f15767c = z;
            this.f15768d = z2;
            this.f15769e = str;
        }

        @Override // com.caverock.androidsvg.CSSParser.InterfaceC2059d
        /* renamed from: a */
        public boolean mo9327a(C2068m c2068m, SVG.AbstractC2095j0 abstractC2095j0) {
            int i;
            int i2;
            String mo9363n = (this.f15768d && this.f15769e == null) ? abstractC2095j0.mo9363n() : this.f15769e;
            SVG.InterfaceC2091h0 interfaceC2091h0 = abstractC2095j0.f15965b;
            if (interfaceC2091h0 != null) {
                Iterator<SVG.C2099l0> it2 = interfaceC2091h0.getChildren().iterator();
                i = 0;
                i2 = 0;
                while (it2.hasNext()) {
                    SVG.AbstractC2095j0 abstractC2095j02 = (SVG.AbstractC2095j0) it2.next();
                    if (abstractC2095j02 == abstractC2095j0) {
                        i = i2;
                    }
                    if (mo9363n == null || abstractC2095j02.mo9363n().equals(mo9363n)) {
                        i2++;
                    }
                }
            } else {
                i = 0;
                i2 = 1;
            }
            int i3 = this.f15767c ? i + 1 : i2 - i;
            int i4 = this.f15765a;
            if (i4 == 0) {
                return i3 == this.f15766b;
            }
            int i5 = this.f15766b;
            if ((i3 - i5) % i4 == 0) {
                return Integer.signum(i3 - i5) == 0 || Integer.signum(i3 - this.f15766b) == Integer.signum(this.f15765a);
            }
            return false;
        }

        public String toString() {
            String str = this.f15767c ? "" : "last-";
            return this.f15768d ? String.format("nth-%schild(%dn%+d of type <%s>)", str, Integer.valueOf(this.f15765a), Integer.valueOf(this.f15766b), this.f15769e) : String.format("nth-%schild(%dn%+d)", str, Integer.valueOf(this.f15765a), Integer.valueOf(this.f15766b));
        }
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$f */
    /* loaded from: classes3.dex */
    public static class C2061f implements InterfaceC2059d {
        public C2061f() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.caverock.androidsvg.CSSParser.InterfaceC2059d
        /* renamed from: a */
        public boolean mo9327a(C2068m c2068m, SVG.AbstractC2095j0 abstractC2095j0) {
            return !(abstractC2095j0 instanceof SVG.InterfaceC2091h0) || ((SVG.InterfaceC2091h0) abstractC2095j0).getChildren().size() == 0;
        }

        public String toString() {
            return Constants.ELEMNAME_EMPTY_STRING;
        }

        public /* synthetic */ C2061f(C2056a c2056a) {
            this();
        }
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$g */
    /* loaded from: classes3.dex */
    public static class C2062g implements InterfaceC2059d {

        /* renamed from: a */
        public List<C2070o> f15770a;

        public C2062g(List<C2070o> list) {
            this.f15770a = list;
        }

        @Override // com.caverock.androidsvg.CSSParser.InterfaceC2059d
        /* renamed from: a */
        public boolean mo9327a(C2068m c2068m, SVG.AbstractC2095j0 abstractC2095j0) {
            Iterator<C2070o> it2 = this.f15770a.iterator();
            while (it2.hasNext()) {
                if (CSSParser.m9302l(c2068m, it2.next(), abstractC2095j0)) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: b */
        public int m9328b() {
            Iterator<C2070o> it2 = this.f15770a.iterator();
            int i = Integer.MIN_VALUE;
            while (it2.hasNext()) {
                int i2 = it2.next().f15780b;
                if (i2 > i) {
                    i = i2;
                }
            }
            return i;
        }

        public String toString() {
            return "not(" + this.f15770a + MotionUtils.f31762d;
        }
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$h */
    /* loaded from: classes3.dex */
    public static class C2063h implements InterfaceC2059d {

        /* renamed from: a */
        public String f15771a;

        public C2063h(String str) {
            this.f15771a = str;
        }

        @Override // com.caverock.androidsvg.CSSParser.InterfaceC2059d
        /* renamed from: a */
        public boolean mo9327a(C2068m c2068m, SVG.AbstractC2095j0 abstractC2095j0) {
            return false;
        }

        public String toString() {
            return this.f15771a;
        }
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$i */
    /* loaded from: classes3.dex */
    public static class C2064i implements InterfaceC2059d {

        /* renamed from: a */
        public boolean f15772a;

        /* renamed from: b */
        public String f15773b;

        public C2064i(boolean z, String str) {
            this.f15772a = z;
            this.f15773b = str;
        }

        @Override // com.caverock.androidsvg.CSSParser.InterfaceC2059d
        /* renamed from: a */
        public boolean mo9327a(C2068m c2068m, SVG.AbstractC2095j0 abstractC2095j0) {
            int i;
            String mo9363n = (this.f15772a && this.f15773b == null) ? abstractC2095j0.mo9363n() : this.f15773b;
            SVG.InterfaceC2091h0 interfaceC2091h0 = abstractC2095j0.f15965b;
            if (interfaceC2091h0 != null) {
                Iterator<SVG.C2099l0> it2 = interfaceC2091h0.getChildren().iterator();
                i = 0;
                while (it2.hasNext()) {
                    SVG.AbstractC2095j0 abstractC2095j02 = (SVG.AbstractC2095j0) it2.next();
                    if (mo9363n == null || abstractC2095j02.mo9363n().equals(mo9363n)) {
                        i++;
                    }
                }
            } else {
                i = 1;
            }
            return i == 1;
        }

        public String toString() {
            return this.f15772a ? String.format("only-of-type <%s>", this.f15773b) : String.format("only-child", new Object[0]);
        }
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$j */
    /* loaded from: classes3.dex */
    public static class C2065j implements InterfaceC2059d {
        public C2065j() {
        }

        @Override // com.caverock.androidsvg.CSSParser.InterfaceC2059d
        /* renamed from: a */
        public boolean mo9327a(C2068m c2068m, SVG.AbstractC2095j0 abstractC2095j0) {
            return abstractC2095j0.f15965b == null;
        }

        public String toString() {
            return "root";
        }

        public /* synthetic */ C2065j(C2056a c2056a) {
            this();
        }
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$k */
    /* loaded from: classes3.dex */
    public static class C2066k implements InterfaceC2059d {
        public C2066k() {
        }

        @Override // com.caverock.androidsvg.CSSParser.InterfaceC2059d
        /* renamed from: a */
        public boolean mo9327a(C2068m c2068m, SVG.AbstractC2095j0 abstractC2095j0) {
            return c2068m != null && abstractC2095j0 == c2068m.f15777a;
        }

        public String toString() {
            return "target";
        }

        public /* synthetic */ C2066k(C2056a c2056a) {
            this();
        }
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$l */
    /* loaded from: classes3.dex */
    public static class C2067l {

        /* renamed from: a */
        public C2070o f15774a;

        /* renamed from: b */
        public SVG.Style f15775b;

        /* renamed from: c */
        public Source f15776c;

        public C2067l(C2070o c2070o, SVG.Style style, Source source) {
            this.f15774a = c2070o;
            this.f15775b = style;
            this.f15776c = source;
        }

        public String toString() {
            return String.valueOf(this.f15774a) + " {...} (src=" + this.f15776c + MotionUtils.f31762d;
        }
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$m */
    /* loaded from: classes3.dex */
    public static class C2068m {

        /* renamed from: a */
        public SVG.AbstractC2095j0 f15777a;

        public String toString() {
            SVG.AbstractC2095j0 abstractC2095j0 = this.f15777a;
            return abstractC2095j0 != null ? String.format("<%s id=\"%s\">", abstractC2095j0.mo9363n(), this.f15777a.f15953c) : "";
        }
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$n */
    /* loaded from: classes3.dex */
    public static class C2069n {

        /* renamed from: a */
        public List<C2067l> f15778a = null;

        /* renamed from: a */
        public void m9329a(C2067l c2067l) {
            if (this.f15778a == null) {
                this.f15778a = new ArrayList();
            }
            for (int i = 0; i < this.f15778a.size(); i++) {
                if (this.f15778a.get(i).f15774a.f15780b > c2067l.f15774a.f15780b) {
                    this.f15778a.add(i, c2067l);
                    return;
                }
            }
            this.f15778a.add(c2067l);
        }

        /* renamed from: b */
        public void m9330b(C2069n c2069n) {
            if (c2069n.f15778a == null) {
                return;
            }
            if (this.f15778a == null) {
                this.f15778a = new ArrayList(c2069n.f15778a.size());
            }
            Iterator<C2067l> it2 = c2069n.f15778a.iterator();
            while (it2.hasNext()) {
                m9329a(it2.next());
            }
        }

        /* renamed from: c */
        public List<C2067l> m9331c() {
            return this.f15778a;
        }

        /* renamed from: d */
        public boolean m9332d() {
            List<C2067l> list = this.f15778a;
            return list == null || list.isEmpty();
        }

        /* renamed from: e */
        public void m9333e(Source source) {
            List<C2067l> list = this.f15778a;
            if (list == null) {
                return;
            }
            Iterator<C2067l> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next().f15776c == source) {
                    it2.remove();
                }
            }
        }

        /* renamed from: f */
        public int m9334f() {
            List<C2067l> list = this.f15778a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        public String toString() {
            if (this.f15778a == null) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            Iterator<C2067l> it2 = this.f15778a.iterator();
            while (it2.hasNext()) {
                sb.append(it2.next().toString());
                sb.append('\n');
            }
            return sb.toString();
        }
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$p */
    /* loaded from: classes3.dex */
    public static class C2071p {

        /* renamed from: a */
        public Combinator f15781a;

        /* renamed from: b */
        public String f15782b;

        /* renamed from: c */
        public List<C2057b> f15783c = null;

        /* renamed from: d */
        public List<InterfaceC2059d> f15784d = null;

        public C2071p(Combinator combinator, String str) {
            this.f15781a = null;
            this.f15782b = null;
            this.f15781a = combinator == null ? Combinator.DESCENDANT : combinator;
            this.f15782b = str;
        }

        /* renamed from: a */
        public void m9342a(String str, AttribOp attribOp, String str2) {
            if (this.f15783c == null) {
                this.f15783c = new ArrayList();
            }
            this.f15783c.add(new C2057b(str, attribOp, str2));
        }

        /* renamed from: b */
        public void m9343b(InterfaceC2059d interfaceC2059d) {
            if (this.f15784d == null) {
                this.f15784d = new ArrayList();
            }
            this.f15784d.add(interfaceC2059d);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Combinator combinator = this.f15781a;
            if (combinator == Combinator.CHILD) {
                sb.append("> ");
            } else if (combinator == Combinator.FOLLOWS) {
                sb.append("+ ");
            }
            String str = this.f15782b;
            if (str == null) {
                str = "*";
            }
            sb.append(str);
            List<C2057b> list = this.f15783c;
            if (list != null) {
                for (C2057b c2057b : list) {
                    sb.append('[');
                    sb.append(c2057b.f15760a);
                    int i = C2056a.f15758a[c2057b.f15761b.ordinal()];
                    if (i == 1) {
                        sb.append('=');
                        sb.append(c2057b.f15762c);
                    } else if (i == 2) {
                        sb.append("~=");
                        sb.append(c2057b.f15762c);
                    } else if (i == 3) {
                        sb.append("|=");
                        sb.append(c2057b.f15762c);
                    }
                    sb.append(']');
                }
            }
            List<InterfaceC2059d> list2 = this.f15784d;
            if (list2 != null) {
                for (InterfaceC2059d interfaceC2059d : list2) {
                    sb.append(':');
                    sb.append(interfaceC2059d);
                }
            }
            return sb.toString();
        }
    }

    public CSSParser() {
        this(MediaType.screen, Source.Document);
    }

    /* renamed from: a */
    public static int m9296a(List<SVG.InterfaceC2091h0> list, int i, SVG.AbstractC2095j0 abstractC2095j0) {
        int i2 = 0;
        if (i < 0) {
            return 0;
        }
        SVG.InterfaceC2091h0 interfaceC2091h0 = list.get(i);
        SVG.InterfaceC2091h0 interfaceC2091h02 = abstractC2095j0.f15965b;
        if (interfaceC2091h0 != interfaceC2091h02) {
            return -1;
        }
        Iterator<SVG.C2099l0> it2 = interfaceC2091h02.getChildren().iterator();
        while (it2.hasNext()) {
            if (it2.next() == abstractC2095j0) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    /* renamed from: b */
    public static boolean m9297b(String str, MediaType mediaType) {
        C2058c c2058c = new C2058c(str);
        c2058c.m9528A();
        return m9298c(m9300h(c2058c), mediaType);
    }

    /* renamed from: c */
    public static boolean m9298c(List<MediaType> list, MediaType mediaType) {
        for (MediaType mediaType2 : list) {
            if (mediaType2 == MediaType.all || mediaType2 == mediaType) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public static List<String> m9299f(String str) {
        C2058c c2058c = new C2058c(str);
        ArrayList arrayList = null;
        while (!c2058c.m9536h()) {
            String m9546r = c2058c.m9546r();
            if (m9546r != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(m9546r);
                c2058c.m9528A();
            }
        }
        return arrayList;
    }

    /* renamed from: h */
    public static List<MediaType> m9300h(C2058c c2058c) {
        String m9551w;
        ArrayList arrayList = new ArrayList();
        while (!c2058c.m9536h() && (m9551w = c2058c.m9551w()) != null) {
            try {
                arrayList.add(MediaType.valueOf(m9551w));
            } catch (IllegalArgumentException unused) {
            }
            if (!c2058c.m9554z()) {
                break;
            }
        }
        return arrayList;
    }

    /* renamed from: k */
    public static boolean m9301k(C2068m c2068m, C2070o c2070o, int i, List<SVG.InterfaceC2091h0> list, int i2, SVG.AbstractC2095j0 abstractC2095j0) {
        C2071p m9339e = c2070o.m9339e(i);
        if (!m9304n(c2068m, m9339e, list, i2, abstractC2095j0)) {
            return false;
        }
        Combinator combinator = m9339e.f15781a;
        if (combinator == Combinator.DESCENDANT) {
            if (i == 0) {
                return true;
            }
            while (i2 >= 0) {
                if (m9303m(c2068m, c2070o, i - 1, list, i2)) {
                    return true;
                }
                i2--;
            }
            return false;
        }
        if (combinator == Combinator.CHILD) {
            return m9303m(c2068m, c2070o, i - 1, list, i2);
        }
        int m9296a = m9296a(list, i2, abstractC2095j0);
        if (m9296a <= 0) {
            return false;
        }
        return m9301k(c2068m, c2070o, i - 1, list, i2, (SVG.AbstractC2095j0) abstractC2095j0.f15965b.getChildren().get(m9296a - 1));
    }

    /* renamed from: l */
    public static boolean m9302l(C2068m c2068m, C2070o c2070o, SVG.AbstractC2095j0 abstractC2095j0) {
        ArrayList arrayList = new ArrayList();
        for (Object obj = abstractC2095j0.f15965b; obj != null; obj = ((SVG.C2099l0) obj).f15965b) {
            arrayList.add(0, obj);
        }
        int size = arrayList.size() - 1;
        return c2070o.m9341g() == 1 ? m9304n(c2068m, c2070o.m9339e(0), arrayList, size, abstractC2095j0) : m9301k(c2068m, c2070o, c2070o.m9341g() - 1, arrayList, size, abstractC2095j0);
    }

    /* renamed from: m */
    public static boolean m9303m(C2068m c2068m, C2070o c2070o, int i, List<SVG.InterfaceC2091h0> list, int i2) {
        C2071p m9339e = c2070o.m9339e(i);
        SVG.AbstractC2095j0 abstractC2095j0 = (SVG.AbstractC2095j0) list.get(i2);
        if (!m9304n(c2068m, m9339e, list, i2, abstractC2095j0)) {
            return false;
        }
        Combinator combinator = m9339e.f15781a;
        if (combinator == Combinator.DESCENDANT) {
            if (i == 0) {
                return true;
            }
            while (i2 > 0) {
                i2--;
                if (m9303m(c2068m, c2070o, i - 1, list, i2)) {
                    return true;
                }
            }
            return false;
        }
        if (combinator == Combinator.CHILD) {
            return m9303m(c2068m, c2070o, i - 1, list, i2 - 1);
        }
        int m9296a = m9296a(list, i2, abstractC2095j0);
        if (m9296a <= 0) {
            return false;
        }
        return m9301k(c2068m, c2070o, i - 1, list, i2, (SVG.AbstractC2095j0) abstractC2095j0.f15965b.getChildren().get(m9296a - 1));
    }

    /* renamed from: n */
    public static boolean m9304n(C2068m c2068m, C2071p c2071p, List<SVG.InterfaceC2091h0> list, int i, SVG.AbstractC2095j0 abstractC2095j0) {
        List<String> list2;
        String str = c2071p.f15782b;
        if (str != null && !str.equals(abstractC2095j0.mo9363n().toLowerCase(Locale.US))) {
            return false;
        }
        List<C2057b> list3 = c2071p.f15783c;
        if (list3 != null) {
            for (C2057b c2057b : list3) {
                String str2 = c2057b.f15760a;
                str2.hashCode();
                if (str2.equals("id")) {
                    if (!c2057b.f15762c.equals(abstractC2095j0.f15953c)) {
                        return false;
                    }
                } else if (!str2.equals("class") || (list2 = abstractC2095j0.f15957g) == null || !list2.contains(c2057b.f15762c)) {
                    return false;
                }
            }
        }
        List<InterfaceC2059d> list4 = c2071p.f15784d;
        if (list4 == null) {
            return true;
        }
        Iterator<InterfaceC2059d> it2 = list4.iterator();
        while (it2.hasNext()) {
            if (!it2.next().mo9327a(c2068m, abstractC2095j0)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: p */
    public static void m9305p(String str, Object... objArr) {
        Log.w(f15747d, String.format(str, objArr));
    }

    /* renamed from: d */
    public C2069n m9306d(String str) {
        C2058c c2058c = new C2058c(str);
        c2058c.m9528A();
        return m9310j(c2058c);
    }

    /* renamed from: e */
    public final void m9307e(C2069n c2069n, C2058c c2058c) throws CSSParseException {
        String m9318H = c2058c.m9318H();
        c2058c.m9528A();
        if (m9318H == null) {
            throw new CSSParseException("Invalid '@' rule");
        }
        if (!this.f15756c && m9318H.equals(SVGParser.f16046r)) {
            List<MediaType> m9300h = m9300h(c2058c);
            if (!c2058c.m9534f('{')) {
                throw new CSSParseException("Invalid @media rule: missing rule set");
            }
            c2058c.m9528A();
            if (m9298c(m9300h, this.f15754a)) {
                this.f15756c = true;
                c2069n.m9330b(m9310j(c2058c));
                this.f15756c = false;
            } else {
                m9310j(c2058c);
            }
            if (!c2058c.m9536h() && !c2058c.m9534f('}')) {
                throw new CSSParseException("Invalid @media rule: expected '}' at end of rule set");
            }
        } else if (this.f15756c || !m9318H.equals(Constants.ELEMNAME_IMPORT_STRING)) {
            m9305p("Ignoring @%s rule", m9318H);
            m9311o(c2058c);
        } else {
            String m9324N = c2058c.m9324N();
            if (m9324N == null) {
                m9324N = c2058c.m9316F();
            }
            if (m9324N == null) {
                throw new CSSParseException("Invalid @import rule: expected string or url()");
            }
            c2058c.m9528A();
            List<MediaType> m9300h2 = m9300h(c2058c);
            if (!c2058c.m9536h() && !c2058c.m9534f(';')) {
                throw new CSSParseException("Invalid @media rule: expected '}' at end of rule set");
            }
            if (SVG.m9345j() != null && m9298c(m9300h2, this.f15754a)) {
                String resolveCSSStyleSheet = SVG.m9345j().resolveCSSStyleSheet(m9324N);
                if (resolveCSSStyleSheet == null) {
                    return;
                } else {
                    c2069n.m9330b(m9306d(resolveCSSStyleSheet));
                }
            }
        }
        c2058c.m9528A();
    }

    /* renamed from: g */
    public final SVG.Style m9308g(C2058c c2058c) throws CSSParseException {
        SVG.Style style = new SVG.Style();
        do {
            String m9318H = c2058c.m9318H();
            c2058c.m9528A();
            if (!c2058c.m9534f(':')) {
                throw new CSSParseException("Expected ':'");
            }
            c2058c.m9528A();
            String m9320J = c2058c.m9320J();
            if (m9320J == null) {
                throw new CSSParseException("Expected property value");
            }
            c2058c.m9528A();
            if (c2058c.m9534f(PublicSuffixDatabase.f103895g)) {
                c2058c.m9528A();
                if (!c2058c.m9535g("important")) {
                    throw new CSSParseException("Malformed rule set: found unexpected '!'");
                }
                c2058c.m9528A();
            }
            c2058c.m9534f(';');
            SVGParser.m9420T0(style, m9318H, m9320J);
            c2058c.m9528A();
            if (c2058c.m9536h()) {
                break;
            }
        } while (!c2058c.m9534f('}'));
        return style;
    }

    /* renamed from: i */
    public final boolean m9309i(C2069n c2069n, C2058c c2058c) throws CSSParseException {
        List m9322L = c2058c.m9322L();
        if (m9322L == null || m9322L.isEmpty()) {
            return false;
        }
        if (!c2058c.m9534f('{')) {
            throw new CSSParseException("Malformed rule block: expected '{'");
        }
        c2058c.m9528A();
        SVG.Style m9308g = m9308g(c2058c);
        c2058c.m9528A();
        Iterator it2 = m9322L.iterator();
        while (it2.hasNext()) {
            c2069n.m9329a(new C2067l((C2070o) it2.next(), m9308g, this.f15755b));
        }
        return true;
    }

    /* renamed from: j */
    public final C2069n m9310j(C2058c c2058c) {
        C2069n c2069n = new C2069n();
        while (!c2058c.m9536h()) {
            try {
                if (!c2058c.m9535g(XMLStreamWriterImpl.START_COMMENT) && !c2058c.m9535g(XMLStreamWriterImpl.END_COMMENT)) {
                    if (!c2058c.m9534f('@')) {
                        if (!m9309i(c2069n, c2058c)) {
                            break;
                        }
                    } else {
                        m9307e(c2069n, c2058c);
                    }
                }
            } catch (CSSParseException e) {
                Log.e(f15747d, "CSS parser terminated early due to error: " + e.getMessage());
            }
        }
        return c2069n;
    }

    /* renamed from: o */
    public final void m9311o(C2058c c2058c) {
        int i = 0;
        while (!c2058c.m9536h()) {
            int intValue = c2058c.m9540l().intValue();
            if (intValue == 59 && i == 0) {
                return;
            }
            if (intValue == 123) {
                i++;
            } else if (intValue == 125 && i > 0 && i - 1 == 0) {
                return;
            }
        }
    }

    public CSSParser(Source source) {
        this(MediaType.screen, source);
    }

    /* renamed from: com.caverock.androidsvg.CSSParser$o */
    /* loaded from: classes3.dex */
    public static class C2070o {

        /* renamed from: a */
        public List<C2071p> f15779a;

        /* renamed from: b */
        public int f15780b;

        public C2070o() {
            this.f15779a = null;
            this.f15780b = 0;
        }

        /* renamed from: a */
        public void m9335a(C2071p c2071p) {
            if (this.f15779a == null) {
                this.f15779a = new ArrayList();
            }
            this.f15779a.add(c2071p);
        }

        /* renamed from: b */
        public void m9336b() {
            this.f15780b += 1000;
        }

        /* renamed from: c */
        public void m9337c() {
            this.f15780b++;
        }

        /* renamed from: d */
        public void m9338d() {
            this.f15780b += 1000000;
        }

        /* renamed from: e */
        public C2071p m9339e(int i) {
            return this.f15779a.get(i);
        }

        /* renamed from: f */
        public boolean m9340f() {
            List<C2071p> list = this.f15779a;
            return list == null || list.isEmpty();
        }

        /* renamed from: g */
        public int m9341g() {
            List<C2071p> list = this.f15779a;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Iterator<C2071p> it2 = this.f15779a.iterator();
            while (it2.hasNext()) {
                sb.append(it2.next());
                sb.append(' ');
            }
            sb.append('[');
            sb.append(this.f15780b);
            sb.append(']');
            return sb.toString();
        }

        public /* synthetic */ C2070o(C2056a c2056a) {
            this();
        }
    }

    public CSSParser(MediaType mediaType, Source source) {
        this.f15756c = false;
        this.f15754a = mediaType;
        this.f15755b = source;
    }
}
