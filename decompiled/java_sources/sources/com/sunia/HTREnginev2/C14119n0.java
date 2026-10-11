package com.sunia.HTREnginev2;

import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import com.sunia.ref.jlatexmath.Atom;
import com.sunia.ref.jlatexmath.ColorAtom;
import com.sunia.ref.jlatexmath.SymbolAtom;
import com.sunia.ref.jlatexmath.awt.Color;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.sunia.HTREnginev2.n0 */
/* loaded from: classes10.dex */
public class C14119n0 {

    /* renamed from: a */
    public static final Color f78158a = Color.yellow;

    /* renamed from: b */
    public static final Map<String, String> f78159b;

    static {
        HashMap hashMap = new HashMap();
        f78159b = hashMap;
        hashMap.put("\\fint", "⨏");
        hashMap.put("\\oiint", "∯");
        hashMap.put("\\sun", "☼");
        hashMap.put("\\leftmoon", "☾");
        hashMap.put("\\female", "♀");
        hashMap.put("\\male", "♂");
        hashMap.put("\\iddots", "⋰");
        hashMap.put("\\textwon", "₩");
        hashMap.put("\\textcent", "¢");
        hashMap.put("\\oiiint", "∰");
        hashMap.put("\\otimes", "\\varotimes");
        hashMap.put("\\Omega", "\\mbox{Ω}");
        hashMap.put("\\leftrightharpoons", "\\mbox{⇋}");
        hashMap.put("\\rightleftharpoons", "\\mbox{⇌}");
        hashMap.put("sin", "\\sin");
        hashMap.put("cos", "\\cos");
        hashMap.put("tan", "\\tan");
        hashMap.put("lim", "\\lim");
        hashMap.put("ln", "\\ln");
        hashMap.put("lg", "\\lg");
        hashMap.put("log", "\\log");
    }

    /* renamed from: a */
    public static Atom m55697a(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, double d, Color color) {
        throw null;
    }

    /* renamed from: b */
    public static SymbolAtom m55698b(Atom atom) {
        if (!(atom instanceof SymbolAtom)) {
            atom = ((ColorAtom) atom).element;
        }
        return (SymbolAtom) atom;
    }
}
