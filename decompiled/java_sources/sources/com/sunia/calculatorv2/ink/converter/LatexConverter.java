package com.sunia.calculatorv2.ink.converter;

import com.blankj.utilcode.util.LogUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.motion.MotionUtils;
import com.google.firebase.installations.local.IidStore;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.C13507b;
import com.sunia.HTREnginev2.C13509b1;
import com.sunia.HTREnginev2.C13751g0;
import com.sunia.HTREnginev2.C13962k0;
import com.sunia.HTREnginev2.C14219p1;
import com.sunia.HTREnginev2.hbk;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.calculatorv2.ink.converter.LatexConverter;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import com.sunia.calculatorv2.ink.model.C14809h;
import com.sunia.calculatorv2.ink.model.C14810i;
import com.sunia.calculatorv2.ink.model.C14811j;
import com.sunia.calculatorv2.ink.model.C14812k;
import com.sunia.calculatorv2.ink.model.C14813l;
import com.sunia.calculatorv2.ink.model.C14814m;
import com.sunia.calculatorv2.ink.model.C14815n;
import com.sunia.calculatorv2.ink.model.C14816o;
import com.sunia.calculatorv2.ink.model.C14817p;
import com.sunia.calculatorv2.ink.model.C14818q;
import com.sunia.calculatorv2.ink.model.C14819r;
import com.sunia.calculatorv2.ink.model.C14820s;
import com.sunia.calculatorv2.ink.model.C14821t;
import com.sunia.calculatorv2.ink.model.C14822u;
import com.sunia.calculatorv2.ink.model.C14823v;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.commons.collections4.IteratorUtils;
import org.scribe.model.ParameterList;

/* loaded from: classes10.dex */
public class LatexConverter {

    /* renamed from: a */
    public static final Map<String, String> f92390a = new HashMap();

    /* renamed from: b */
    public static final Map<String, String> f92391b = new HashMap();

    /* renamed from: c */
    public static final Map<String, String> f92392c = new HashMap();

    /* renamed from: d */
    public static final Map<String, String> f92393d = new HashMap();

    /* renamed from: e */
    public static final Map<String, String> f92394e = new HashMap();

    /* renamed from: f */
    public static final Map<String, String> f92395f = new HashMap();

    /* renamed from: g */
    public static final AbstractC14807f f92396g;

    static {
        m58790F("!", "!");
        m58790F("\\#", "#");
        m58790F("\\$", "$");
        m58790F("\\%", "%");
        m58790F("\\&", ParameterList.f115951c);
        m58790F(MotionUtils.f31761c, MotionUtils.f31761c);
        m58790F(MotionUtils.f31762d, MotionUtils.f31762d);
        m58790F("\\ast", "*");
        m58790F("+", "+");
        m58790F(",", ",");
        m58790F("-", "-");
        m58790F(".", ".");
        m58790F("/", "/");
        m58790F("0", "0");
        m58790F("1", "1");
        m58790F("2", "2");
        m58790F("3", "3");
        m58790F("4", "4");
        m58790F("5", "5");
        m58790F("6", "6");
        m58790F("7", "7");
        m58790F("8", "8");
        m58790F("9", "9");
        m58790F(":", ":");
        m58790F(AndroidTreeView.f47214k, AndroidTreeView.f47214k);
        m58790F("<", "<");
        m58790F("=", "=");
        m58790F(">", ">");
        m58790F("?", "?");
        m58790F("\\@", "@");
        m58790F("A", "A");
        m58790F("B", "B");
        m58790F(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY);
        m58790F(SardineUtil.DEFAULT_NAMESPACE_PREFIX, SardineUtil.DEFAULT_NAMESPACE_PREFIX);
        m58790F("E", "E");
        m58790F("F", "F");
        m58790F("G", "G");
        m58790F("H", "H");
        m58790F("I", "I");
        m58790F("J", "J");
        m58790F("K", "K");
        m58790F("L", "L");
        m58790F("M", "M");
        m58790F("N", "N");
        m58790F(BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION);
        m58790F("P", "P");
        m58790F("Q", "Q");
        m58790F("R", "R");
        m58790F("S", "S");
        m58790F("T", "T");
        m58790F("U", "U");
        m58790F("V", "V");
        m58790F("W", "W");
        m58790F("X", "X");
        m58790F("Y", "Y");
        m58790F(Constants.HASIDCALL_INDEX_SIG, Constants.HASIDCALL_INDEX_SIG);
        m58790F(IteratorUtils.f104923a, IteratorUtils.f104923a);
        m58790F("\\setminus", "\\");
        m58790F(IteratorUtils.f104924b, IteratorUtils.f104924b);
        m58790F("`", "`");
        m58790F("a", "a");
        m58790F("b", "b");
        m58790F("c", "c");
        m58790F("d", "d");
        m58790F("e", "e");
        m58790F(C6997f.f39671c, C6997f.f39671c);
        m58790F(C6998g.f39679a, C6998g.f39679a);
        m58790F(C6999h.f39688c, C6999h.f39688c);
        m58790F("i", "i");
        m58790F("j", "j");
        m58790F(C4921e.f26537n, C4921e.f26537n);
        m58790F("l", "l");
        m58790F("m", "m");
        m58790F(GoogleApiAvailabilityLight.f29016b, GoogleApiAvailabilityLight.f29016b);
        m58790F(C4921e.f26528e, C4921e.f26528e);
        m58790F("p", "p");
        m58790F("q", "q");
        m58790F("r", "r");
        m58790F("s", "s");
        m58790F("t", "t");
        m58790F("u", "u");
        m58790F("v", "v");
        m58790F("w", "w");
        m58790F("x", "x");
        m58790F("y", "y");
        m58790F("z", "z");
        m58790F("\\{", "{");
        m58790F(IidStore.f35940g, IidStore.f35940g);
        m58790F("\\}", "}");
        m58790F("\\yen", "¥");
        m58790F("\\S", "§");
        m58790F("\\copyright", "©");
        m58790F("\\neg", "¬");
        m58790F("\\circ", "°");
        m58790F("\\pm", "±");
        m58790F("\\times", "×");
        m58790F("\\ae", "æ");
        m58790F("\\div", "÷");
        m58790F("\\oe", "œ");
        m58790F("\\cup", "˘");
        m58790F("\\Gamma", "Γ");
        m58790F("\\Delta", "Δ");
        m58790F("\\Theta", "Θ");
        m58790F("\\Lambda", "Λ");
        m58790F("\\Xi", "Ξ");
        m58790F("\\Phi", "Φ");
        m58790F("\\Psi", "Ψ");
        m58790F("\\Omega", "Ω");
        m58790F("\\alpha", "α");
        m58790F("\\beta", "β");
        m58790F("\\gamma", "γ");
        m58790F("\\delta", "δ");
        m58790F("\\epsilon", "ε");
        m58790F("\\zeta", "ζ");
        m58790F("\\eta", "η");
        m58790F("\\theta", "θ");
        m58790F("\\iota", "ι");
        m58790F("\\kappa", "κ");
        m58790F("\\lambda", "λ");
        m58790F("\\mu", "μ");
        m58790F("\\nu", "ν");
        m58790F("\\xi", "ξ");
        m58790F("\\pi", "π");
        m58790F("\\rho", "ρ");
        m58790F("\\sigma", "σ");
        m58790F("\\tau", "τ");
        m58790F("\\upsilon", "υ");
        m58790F("\\phi", "φ");
        m58790F("\\chi", "χ");
        m58790F("\\psi", "ψ");
        m58790F("\\omega", "ω");
        m58790F("\\hslash", "ℏ");
        m58790F("\\aleph", "א");
        m58790F("\\dagger", "†");
        m58790F("\\ddagger", "‡");
        m58790F("\\wp", "℘");
        m58790F("\\leftarrow", "←");
        m58790F("\\uparrow", "↑");
        m58790F("\\rightarrow", "→");
        m58790F("\\downarrow", "↓");
        m58790F("\\leftrightarrow", "↔");
        m58790F("\\nwarrow", "↖");
        m58790F("\\nearrow", "↗");
        m58790F("\\searrow", "↘");
        m58790F("\\swarrow", "↙");
        m58790F("\\mapsto", "↦");
        m58790F("\\hookrightarrow", "↪");
        m58790F("\\Leftarrow", "⇐");
        m58790F("\\Uparrow", "⇑");
        m58790F("\\Rightarrow", "⇒");
        m58790F("\\Downarrow", "⇓");
        m58790F("\\Leftrightarrow", "⇔");
        m58790F("\\forall", "∀");
        m58790F("\\partial", "∂");
        m58790F("\\exists", "∃");
        m58790F("\\emptyset", "∅");
        m58790F("\\nabla", "∇");
        m58790F("\\in", "∈");
        m58790F("\\ni", "∋");
        m58790F("\\prod", "∏");
        m58790F("\\coprod", "∐");
        m58790F("\\sum", "∑");
        m58790F("\\mp", "∓");
        m58790F("\\sqrt", "√");
        m58790F("\\propto", "∝");
        m58790F("\\infty", "∞");
        m58790F("\\angle", "∠");
        m58790F("\\wedge", "∧");
        m58790F("\\vee", "∨");
        m58790F("\\cap", "∩");
        m58790F("\\cup", "∪");
        m58790F("\\int", "∫");
        m58790F("\\oint", "∮");
        m58790F("\\sim", "∼");
        m58790F("\\simeq", "≃");
        m58790F("\\cong", "≅");
        m58790F("\\approx", "≈");
        m58790F("\\doteqdot", "≑");
        m58790F("\\fallingdotseq", "≒");
        m58790F("\\equiv", "≡");
        m58790F("\\leq", "≤");
        m58790F("\\geq", "≥");
        m58790F("\\leqq", "≦");
        m58790F("\\geqq", "≧");
        m58790F("\\ll", "≪");
        m58790F("\\gg", "≫");
        m58790F("\\lessgtr", "≶");
        m58790F("\\gtrless", "≷");
        m58790F("\\prec", "≺");
        m58790F("\\succ", "≻");
        m58790F("\\preceq", "≼");
        m58790F("\\succeq", "≽");
        m58790F("\\subset", "⊂");
        m58790F("\\supset", "⊃");
        m58790F("\\subseteq", "⊆");
        m58790F("\\supseteq", "⊇");
        m58790F("\\subsetneq", "⊊");
        m58790F("\\supsetneq", "⊋");
        m58790F("\\oplus", "⊕");
        m58790F("\\ominus", "⊖");
        m58790F("\\otimes", "⊗");
        m58790F("\\vdash", "⊢");
        m58790F("\\dashv", "⊣");
        m58790F("\\perp", "⊥");
        m58790F("\\models", "⊧");
        m58790F("\\ltimes", "⋉");
        m58790F("\\rtimes", "⋊");
        m58790F("\\Subset", "⋐");
        m58790F("\\Supset", "⋑");
        m58790F("\\pitchfork", "⋔");
        m58790F("\\lceil", "⌈");
        m58790F("\\rceil", "⌉");
        m58790F("\\lfloor", "⌊");
        m58790F("\\rfloor", "⌋");
        m58790F("\\underbrace", "⏟");
        m58790F("\\ulcorner", LogUtils.f13802g);
        m58790F("\\urcorner", "┐");
        m58790F("\\llcorner", LogUtils.f13805j);
        m58790F("\\lrcorner", "┚");
        m58790F("\\blacksquare", "■");
        m58790F("\\square", "□");
        m58790F("\\triangle", "△");
        m58790F("\\triangleright", "▷");
        m58790F("\\triangleleft", "◁");
        m58790F("\\star", "★");
        m58790F("\\subseteqq", "⫅");
        m58790F("\\supseteqq", "⫆");
        m58790F("\\subsetneqq", "⫋");
        m58790F("\\supsetneqq", "⫌");
        m58790F("\\langle", "〈");
        m58790F("\\rangle", "〉");
        m58790F(CloudStorageConstants.SINGLE_QUOTES, CloudStorageConstants.SINGLE_QUOTES);
        m58790F("\\llbracket", "⟦");
        m58790F("\\rrbracket", "⟧");
        m58790F("\\mathsterling", "£");
        m58790F("\\checkmark", "✓");
        m58790F("\\textregistered", "®");
        m58790F("\\diamond", "⋄");
        m58790F("\\uplus", "⊎");
        m58790F("\\lightning", "↯");
        m58790F("\\odot", "⊙");
        m58790F("\\vdots", "⋮");
        m58790F("\\ddots", "⋱");
        m58790F("\\clubsuit", "♧");
        m58790F("\\heartsuit", "♡");
        m58790F("\\sphericalangle", "∢");
        m58790F("\\bowtie", "⋈");
        m58790F("\\trianglelefteq", "⊴");
        m58790F("\\blacktriangleright", "▶");
        m58790F("\\triangleq", "≜");
        m58790F("\\rightleftharpoons", "⇌");
        m58790F("\\rightharpoonup", "⇀");
        m58790F("\\upharpoonright", "↾");
        m58790F("\\mapsfrom", "↤");
        m58790F("\\circlearrowleft", "↺");
        m58790F("\\rightleftarrows", "⇄");
        m58790F("\\circlearrowright", "↻");
        m58790F("\\rightrightarrows", "⇉");
        m58790F("\\rightsquigarrow", "⇝");
        m58790F("\\curvearrowright", "↷");
        m58790F("\\twoheadrightarrow", "↠");
        m58790F("\\lesssim", "≲");
        m58790F("\\gtrsim", "≳");
        m58790F("\\wr", "≀");
        m58790F("\\circledcirc", "⊚");
        m58790F("\\boxdot", "⊡");
        m58790F("\\boxplus", "⊞");
        m58790F("\\boxtimes", "⊠");
        m58790F("\\circledast", "⊛");
        m58790F("\\parr", "⅋");
        m58790F("\\fint", "⨏");
        m58790F("\\oiint", "∯");
        m58790F("\\asymp", "≍");
        m58790F("\\frown", "⌢");
        m58790F("\\doteq", "≐");
        m58790F("\\backsim", "∽");
        m58790F("\\multimap", "⊸");
        m58790F("\\therefore", "∴");
        m58790F("\\because", "∵");
        m58790F("\\iddots", "⋰");
        m58790F("\\between", "≬");
        m58790F("\\AE", "Æ");
        m58790F("\\female", "♀");
        m58790F("\\male", "♂");
        m58790F("\\sun", "☼");
        m58790F("\\leftmoon", "☾");
        m58790F("\\texteuro", "€");
        m58790F("\\textwon", "₩");
        m58790F("\\textcent", "¢");
        m58790F("\\textperthousand", "‰");
        m58790F("\\updownarrow", "↕");
        m58790F("\\leftharpoonup", "↼");
        m58790F("\\leftharpoondown", "↽");
        m58790F("\\rightharpoondown", "⇁");
        m58790F("\\leftrightharpoons", "⇋");
        m58790F("\\Updownarrow", "⇕");
        m58790F("\\oiiint", "∰");
        m58790F("\\cdot", "·");
        m58790F("\\not =", "≠");
        m58790F("\\not |", "∤");
        m58790F("\\not \\cong", "≇");
        m58790F("\\not \\equiv", "≢");
        m58790F("\\not \\exists", "∄");
        m58790F("\\not \\geq", "≱");
        m58790F("\\not \\in", "∉");
        m58790F("\\not \\leq", "≰");
        m58790F("\\not \\models", "⊭");
        m58790F("\\not \\rightarrow", "↛");
        m58790F("\\not \\Rightarrow", "⇏");
        m58790F("\\not \\simeq", "≄");
        m58790F("\\not \\subset", "⊄");
        m58790F("\\not \\subseteq", "⊈");
        m58790F("\\not \\supset", "⊅");
        m58790F("\\not <", "≮");
        m58790F("\\not >", "≯");
        m58790F("\\not \\ni", "∌");
        m58790F("\\not \\supseteq", "⊉");
        m58788D("\\dot", "˙");
        m58788D("\\ddot", "¨");
        m58788D("\\overline", "‾");
        m58788D("\\tilde", "~");
        m58788D("\\widetilde", "~");
        m58788D("\\hat", "ˆ");
        m58788D("\\widehat", "ˆ");
        m58788D("\\check", "ˇ");
        m58788D("\\acute", "´");
        m58788D("\\grave", "`");
        m58788D("\\breve", "˘");
        m58788D("\\vec", "→");
        m58788D("\\overrightarrow", "→");
        m58788D("\\mathring", "˚");
        m58788D("\\overbrace", "⏞");
        m58823z("\\underline", "_");
        m58823z("\\underbrace", "⏟");
        f92396g = new C14814m(Collections.emptyList());
    }

    /* renamed from: A */
    public static void m58785A(String str, String str2, Map<String, String> map, Map<String, String> map2) {
        map.put(str, str2);
        map2.put(str2, str);
    }

    /* renamed from: B */
    public static /* synthetic */ boolean m58786B(Map map, C13507b c13507b) {
        return map.containsKey(c13507b.m53113b());
    }

    /* renamed from: C */
    public static /* synthetic */ C13507b m58787C(Map map, C13507b c13507b) {
        return new C13507b((String) C13962k0.m55096a(map, c13507b.m53113b(), c13507b.m53113b()), c13507b.getConfidence());
    }

    /* renamed from: D */
    public static void m58788D(String str, String str2) {
        m58785A(str, str2, f92392c, f92393d);
    }

    /* renamed from: E */
    public static void m58789E(LinkedList<AbstractC14807f> linkedList) {
        Iterator<AbstractC14807f> it2 = linkedList.iterator();
        int i = 0;
        while (it2.hasNext()) {
            AbstractC14807f next = it2.next();
            if ((next instanceof C14820s) || (next instanceof C14822u)) {
                break;
            } else {
                i++;
            }
        }
        List<AbstractC14807f> subList = linkedList.subList(0, i);
        AbstractC14807f m58805h = m58805h(new LinkedList(subList));
        subList.clear();
        linkedList.addFirst(new C14820s(m58805h));
    }

    /* renamed from: F */
    public static void m58790F(String str, String str2) {
        m58785A(str, str2, f92390a, f92391b);
    }

    /* renamed from: G */
    public static void m58791G(LinkedList<AbstractC14807f> linkedList) {
        Iterator<AbstractC14807f> it2 = linkedList.iterator();
        int i = 0;
        while (it2.hasNext() && !(it2.next() instanceof C14822u)) {
            i++;
        }
        List<AbstractC14807f> subList = linkedList.subList(0, i);
        C14822u c14822u = new C14822u((List) subList.stream().map(new Function() { // from class: com.sunia.HTREnginev2.ovi
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                AbstractC14807f m58804g;
                m58804g = LatexConverter.m58804g((AbstractC14807f) obj);
                return m58804g;
            }
        }).collect(Collectors.toCollection(new hbk())));
        subList.clear();
        linkedList.addFirst(c14822u);
    }

    public static String encode(AbstractC14807f abstractC14807f) {
        ArrayList arrayList = new ArrayList();
        m58808k(abstractC14807f, arrayList);
        return (String) arrayList.stream().collect(Collectors.joining(" "));
    }

    /* renamed from: f */
    public static /* synthetic */ C13507b m58803f(C13507b c13507b, C13507b c13507b2) {
        return new C13507b(c13507b.m53113b() + " " + c13507b2.m53113b(), c13507b.getConfidence() * c13507b2.getConfidence());
    }

    /* renamed from: g */
    public static /* synthetic */ AbstractC14807f m58804g(AbstractC14807f abstractC14807f) {
        return abstractC14807f instanceof C14820s ? ((C14820s) abstractC14807f).m58898l() : abstractC14807f;
    }

    /* renamed from: h */
    public static AbstractC14807f m58805h(LinkedList<AbstractC14807f> linkedList) {
        return C14814m.m58872b(linkedList);
    }

    /* renamed from: i */
    public static List<C13507b> m58806i(List<C13507b> list, final Map<String, String> map, boolean z) {
        Stream<C13507b> stream = list.stream();
        if (z) {
            stream = stream.filter(new Predicate() { // from class: com.sunia.HTREnginev2.mvi
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m58786B;
                    m58786B = LatexConverter.m58786B(map, (C13507b) obj);
                    return m58786B;
                }
            });
        }
        return (List) stream.map(new Function() { // from class: com.sunia.HTREnginev2.nvi
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                C13507b m58787C;
                m58787C = LatexConverter.m58787C(map, (C13507b) obj);
                return m58787C;
            }
        }).collect(Collectors.toList());
    }

    /* renamed from: j */
    public static /* synthetic */ Stream m58807j(AbstractC14807f abstractC14807f, final C13507b c13507b) {
        return ((C14819r) abstractC14807f).getCandidates().stream().map(new Function() { // from class: com.sunia.HTREnginev2.lvi
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                C13507b m58803f;
                m58803f = LatexConverter.m58803f(C13507b.this, (C13507b) obj);
                return m58803f;
            }
        });
    }

    /* renamed from: k */
    public static void m58808k(AbstractC14807f abstractC14807f, List<String> list) {
        if (abstractC14807f instanceof C14819r) {
            m58819v((C14819r) abstractC14807f, list);
            return;
        }
        if (abstractC14807f instanceof C14814m) {
            m58814q((C14814m) abstractC14807f, list);
            return;
        }
        if (abstractC14807f instanceof C14809h) {
            m58809l((C14809h) abstractC14807f, list);
            return;
        }
        if (abstractC14807f instanceof C14815n) {
            m58815r((C14815n) abstractC14807f, list);
            return;
        }
        if (abstractC14807f instanceof C14811j) {
            m58811n((C14811j) abstractC14807f, list);
            return;
        }
        if (abstractC14807f instanceof C14816o) {
            m58816s((C14816o) abstractC14807f, list);
            return;
        }
        if (abstractC14807f instanceof C14818q) {
            m58818u((C14818q) abstractC14807f, list);
            return;
        }
        if (abstractC14807f instanceof C14817p) {
            m58817t((C14817p) abstractC14807f, list);
            return;
        }
        if (abstractC14807f instanceof C14823v) {
            m58822y((C14823v) abstractC14807f, list);
            return;
        }
        if (abstractC14807f instanceof C14813l) {
            m58813p((C14813l) abstractC14807f, list);
            return;
        }
        if (abstractC14807f instanceof C14822u) {
            m58821x((C14822u) abstractC14807f, list);
            return;
        }
        if (abstractC14807f instanceof C14821t) {
            m58820w((C14821t) abstractC14807f, list);
            return;
        }
        if (abstractC14807f instanceof C14812k) {
            m58812o((C14812k) abstractC14807f, list);
            return;
        }
        if (abstractC14807f instanceof C14810i) {
            m58810m((C14810i) abstractC14807f, list);
            return;
        }
        LogUtil.m57657w("LatexConverter", abstractC14807f.mo54389j() + " is not supported");
    }

    /* renamed from: l */
    public static void m58809l(C14809h c14809h, List<String> list) {
        list.add("\\frac");
        list.add("{");
        m58808k(c14809h.m58863n(), list);
        list.add("}");
        list.add("{");
        m58808k(c14809h.m58861l(), list);
        list.add("}");
    }

    /* renamed from: m */
    public static void m58810m(C14810i c14810i, List<String> list) {
        list.add("\\hl");
        list.add("{");
        m58808k(c14810i.m58864l(), list);
        list.add("}");
    }

    /* renamed from: n */
    public static void m58811n(C14811j c14811j, List<String> list) {
        list.add("\\sqrt");
        list.add(IteratorUtils.f104923a);
        m58808k(c14811j.m58865l(), list);
        list.add(IteratorUtils.f104924b);
        list.add("{");
        m58808k(c14811j.m58867n(), list);
        list.add("}");
    }

    /* renamed from: o */
    public static void m58812o(C14812k c14812k, List<String> list) {
        list.add("\\mathop");
        list.add("{");
        m58808k(c14812k.m58868l(), list);
        list.add("}");
    }

    /* renamed from: p */
    public static void m58813p(C14813l c14813l, List<String> list) {
        String m58869a = c14813l.m58869a();
        list.add((String) C13962k0.m55096a(f92393d, m58869a, m58869a));
        list.add("{");
        m58808k(c14813l.m58871m(), list);
        list.add("}");
    }

    /* renamed from: q */
    public static void m58814q(C14814m c14814m, List<String> list) {
        int size = list.size();
        int i = 0;
        int i2 = 0;
        for (AbstractC14807f abstractC14807f : c14814m.mo58831f()) {
            if (abstractC14807f instanceof C14819r) {
                String mo53565a = ((C14819r) abstractC14807f).mo53565a();
                String str = (String) C13962k0.m55096a(f92391b, mo53565a, mo53565a);
                if (C14819r.m58896b(mo53565a)) {
                    i2++;
                    list.add("\\left " + str);
                } else if (C14819r.m58895a(mo53565a)) {
                    if (i2 == 0) {
                        i++;
                    } else {
                        i2--;
                    }
                    list.add("\\right " + str);
                } else {
                    list.add(str);
                }
            } else {
                m58808k(abstractC14807f, list);
            }
        }
        while (i > 0) {
            list.add(size, "\\left .");
            i--;
        }
        while (i2 > 0) {
            list.add("\\right .");
            i2--;
        }
    }

    /* renamed from: r */
    public static void m58815r(C14815n c14815n, List<String> list) {
        list.add("\\sqrt");
        list.add("{");
        m58808k(c14815n.m58881m(), list);
        list.add("}");
    }

    /* renamed from: s */
    public static void m58816s(C14816o c14816o, List<String> list) {
        m58808k(c14816o.m58882l(), list);
        list.add("_");
        list.add("{");
        m58808k(c14816o.m58883m(), list);
        list.add("}");
    }

    /* renamed from: t */
    public static void m58817t(C14817p c14817p, List<String> list) {
        m58808k(c14817p.m58886l(), list);
        list.add("_");
        list.add("{");
        m58808k(c14817p.m58887m(), list);
        list.add("}");
        list.add("^");
        list.add("{");
        m58808k(c14817p.m58888n(), list);
        list.add("}");
    }

    /* renamed from: u */
    public static void m58818u(C14818q c14818q, List<String> list) {
        m58808k(c14818q.m58891l(), list);
        list.add("^");
        list.add("{");
        m58808k(c14818q.m58892m(), list);
        list.add("}");
    }

    /* renamed from: v */
    public static void m58819v(C14819r c14819r, List<String> list) {
        String mo53565a = c14819r.mo53565a();
        list.add((String) C13962k0.m55096a(f92391b, mo53565a, mo53565a));
    }

    /* renamed from: w */
    public static void m58820w(C14821t c14821t, List<String> list) {
        list.add("\\begin{matrix}");
        boolean z = true;
        for (C14822u c14822u : c14821t.mo58831f()) {
            if (z) {
                z = false;
            } else {
                list.add("\\\\");
            }
            m58808k(c14822u, list);
        }
        list.add("\\end{matrix}");
    }

    /* renamed from: x */
    public static void m58821x(C14822u c14822u, List<String> list) {
        boolean z = true;
        for (AbstractC14807f abstractC14807f : c14822u.mo58831f()) {
            if (z) {
                z = false;
            } else {
                list.add(ParameterList.f115951c);
            }
            m58808k(abstractC14807f, list);
        }
    }

    /* renamed from: y */
    public static void m58822y(C14823v c14823v, List<String> list) {
        String m58899a = c14823v.m58899a();
        list.add((String) C13962k0.m55096a(f92395f, m58899a, m58899a));
        list.add("{");
        m58808k(c14823v.m58901m(), list);
        list.add("}");
    }

    /* renamed from: z */
    public static void m58823z(String str, String str2) {
        m58785A(str, str2, f92394e, f92395f);
    }

    /* renamed from: a */
    public static AbstractC14807f m58793a(String str) {
        List<String> m58802e = m58802e(str);
        ArrayList arrayList = new ArrayList(m58802e.size());
        ArrayList arrayList2 = new ArrayList(m58802e.size());
        Iterator<String> it2 = m58802e.iterator();
        while (it2.hasNext()) {
            arrayList.add(C13751g0.m54216a(new C13507b(it2.next(), 1.0d)));
            arrayList2.add(C13751g0.m54216a(new C14219p1[0]));
        }
        return m58792a(new C13509b1(arrayList, arrayList2, 1.0d, "math_generic"));
    }

    /* renamed from: b */
    public static String m58795b(String str) {
        return (String) C13962k0.m55096a(f92395f, str, str);
    }

    /* renamed from: c */
    public static String m58798c(String str) {
        return (String) C13962k0.m55096a(f92393d, str, str);
    }

    /* renamed from: d */
    public static String m58800d(String str) {
        return (String) C13962k0.m55096a(f92391b, str, str);
    }

    /* renamed from: e */
    public static List<String> m58802e(String str) {
        String replace = str.replace("\\begin{matrix}", "\\beginmatrix ").replace("\\end{matrix}", "\\endmatrix ");
        ArrayList arrayList = new ArrayList();
        int i = -1;
        int i2 = 0;
        while (true) {
            if (i < 0 && i2 >= replace.length()) {
                break;
            }
            if (i < 0) {
                int i3 = i2 + 1;
                char charAt = replace.charAt(i2);
                i2 = i3;
                i = charAt;
            }
            if (!Character.isWhitespace(i)) {
                if (i == 92) {
                    int i4 = i2 + 1;
                    int charAt2 = replace.charAt(i2);
                    if (Character.isLetter(charAt2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.appendCodePoint(i);
                        i = charAt2;
                        i2 = i4;
                        while (Character.isLetter(i)) {
                            sb.appendCodePoint(i);
                            if (i2 < replace.length()) {
                                int i5 = i2 + 1;
                                char charAt3 = replace.charAt(i2);
                                i2 = i5;
                                i = charAt3;
                            } else {
                                i = -1;
                            }
                        }
                        arrayList.add(sb.toString());
                    } else {
                        arrayList.add(new String(new int[]{i, charAt2}, 0, 2));
                        i = -1;
                        i2 = i4;
                    }
                } else {
                    arrayList.add(replace.substring(i2 - 1, i2));
                }
            }
            i = -1;
        }
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            String str2 = (String) arrayList.get(i6);
            if ("\\beginmatrix".equals(str2)) {
                arrayList.set(i6, "\\begin{matrix}");
            } else if ("\\endmatrix".equals(str2)) {
                arrayList.set(i6, "\\end{matrix}");
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x03a3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0310  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.sunia.calculatorv2.ink.model.AbstractC14807f m58792a(com.sunia.HTREnginev2.C13509b1 r12) {
        /*
            Method dump skipped, instructions count: 1080
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.calculatorv2.ink.converter.LatexConverter.m58792a(com.sunia.HTREnginev2.b1):com.sunia.calculatorv2.ink.model.f");
    }
}
