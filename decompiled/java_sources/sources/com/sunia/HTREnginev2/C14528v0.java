package com.sunia.HTREnginev2;

import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import com.sunia.calculatorv2.ink.model.C14809h;
import com.sunia.calculatorv2.ink.model.C14811j;
import com.sunia.calculatorv2.ink.model.C14815n;
import com.sunia.calculatorv2.ink.model.C14816o;
import com.sunia.calculatorv2.ink.model.C14817p;
import com.sunia.calculatorv2.ink.model.C14818q;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Iterator;

/* renamed from: com.sunia.HTREnginev2.v0 */
/* loaded from: classes10.dex */
public class C14528v0 {
    /* renamed from: a */
    public static String m57726a(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        StringWriter stringWriter = new StringWriter();
        try {
            m57727b(abstractC14807f, stringWriter);
        } catch (IOException e) {
            LogUtil.m57658w("PlainTextConverter", e);
        }
        stringWriter.flush();
        return stringWriter.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static void m57727b(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, Writer writer) {
        if (abstractC14807f instanceof InterfaceC13597d0) {
            writer.write(((InterfaceC13597d0) abstractC14807f).mo53565a());
            return;
        }
        if (abstractC14807f instanceof C14809h) {
            writer.write(40);
            C14809h c14809h = (C14809h) abstractC14807f;
            m57727b(c14809h.m58863n(), writer);
            writer.write(")/(");
            m57727b(c14809h.m58861l(), writer);
            writer.write(41);
            return;
        }
        if (abstractC14807f instanceof C14815n) {
            writer.write("√(");
            m57727b(((C14815n) abstractC14807f).m58881m(), writer);
            writer.write(41);
            return;
        }
        if (abstractC14807f instanceof C14811j) {
            writer.write(40);
            C14811j c14811j = (C14811j) abstractC14807f;
            m57727b(c14811j.m58865l(), writer);
            writer.write(")√(");
            m57727b(c14811j.m58867n(), writer);
            writer.write(41);
            return;
        }
        if (abstractC14807f instanceof C14816o) {
            C14816o c14816o = (C14816o) abstractC14807f;
            m57727b(c14816o.m58882l(), writer);
            writer.write("_(");
            m57727b(c14816o.m58883m(), writer);
            writer.write(41);
            return;
        }
        if (abstractC14807f instanceof C14818q) {
            C14818q c14818q = (C14818q) abstractC14807f;
            m57727b(c14818q.m58891l(), writer);
            writer.write("^(");
            m57727b(c14818q.m58892m(), writer);
            writer.write(41);
            return;
        }
        if (!(abstractC14807f instanceof C14817p)) {
            Iterator it2 = abstractC14807f.mo58831f().iterator();
            while (it2.hasNext()) {
                m57727b((AbstractC14807f) it2.next(), writer);
            }
            return;
        }
        C14817p c14817p = (C14817p) abstractC14807f;
        m57727b(c14817p.m58886l(), writer);
        writer.write("_(");
        m57727b(c14817p.m58887m(), writer);
        writer.write(")^(");
        m57727b(c14817p.m58888n(), writer);
        writer.write(41);
    }
}
