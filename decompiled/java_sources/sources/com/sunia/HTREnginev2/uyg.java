package com.sunia.HTREnginev2;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
import com.google.zxing.oned.rss.expanded.decoders.CurrentParsingState;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.logging.log4j.util.Chars;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes4.dex */
public final class uyg {

    /* renamed from: a */
    public final BitArray f86966a;

    /* renamed from: b */
    public final CurrentParsingState f86967b = new CurrentParsingState();

    /* renamed from: c */
    public final StringBuilder f86968c = new StringBuilder();

    public uyg(BitArray bitArray) {
        this.f86966a = bitArray;
    }

    /* renamed from: g */
    public static int m57707g(BitArray bitArray, int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            if (bitArray.get(i + i4)) {
                i3 |= 1 << ((i2 - i4) - 1);
            }
        }
        return i3;
    }

    /* renamed from: a */
    public String m57708a(StringBuilder sb, int i) throws NotFoundException, FormatException {
        String str = null;
        while (true) {
            tve m57710c = m57710c(i, str);
            String m54437a = hag.m54437a(m57710c.m57461b());
            if (m54437a != null) {
                sb.append(m54437a);
            }
            String valueOf = m57710c.m57463d() ? String.valueOf(m57710c.m57462c()) : null;
            if (i == m57710c.m57892a()) {
                return sb.toString();
            }
            i = m57710c.m57892a();
            str = valueOf;
        }
    }

    /* renamed from: b */
    public final sve m57709b(int i) {
        char c;
        int m57713f = m57713f(i, 5);
        if (m57713f == 15) {
            return new sve(i + 5, '$');
        }
        if (m57713f >= 5 && m57713f < 15) {
            return new sve(i + 5, (char) ((m57713f + 48) - 5));
        }
        int m57713f2 = m57713f(i, 6);
        if (m57713f2 >= 32 && m57713f2 < 58) {
            return new sve(i + 6, (char) (m57713f2 + 33));
        }
        switch (m57713f2) {
            case 58:
                c = '*';
                break;
            case 59:
                c = ',';
                break;
            case 60:
                c = '-';
                break;
            case 61:
                c = '.';
                break;
            case 62:
                c = '/';
                break;
            default:
                throw new IllegalStateException("Decoding invalid alphanumeric value: " + m57713f2);
        }
        return new sve(i + 6, c);
    }

    /* renamed from: c */
    public tve m57710c(int i, String str) throws FormatException {
        this.f86968c.setLength(0);
        if (str != null) {
            this.f86968c.append(str);
        }
        this.f86967b.m30683i(i);
        tve m57721o = m57721o();
        return (m57721o == null || !m57721o.m57463d()) ? new tve(this.f86967b.m30675a(), this.f86968c.toString()) : new tve(this.f86967b.m30675a(), this.f86968c.toString(), m57721o.m57462c());
    }

    /* renamed from: d */
    public final sve m57711d(int i) throws FormatException {
        char c;
        int m57713f = m57713f(i, 5);
        if (m57713f == 15) {
            return new sve(i + 5, '$');
        }
        if (m57713f >= 5 && m57713f < 15) {
            return new sve(i + 5, (char) ((m57713f + 48) - 5));
        }
        int m57713f2 = m57713f(i, 7);
        if (m57713f2 >= 64 && m57713f2 < 90) {
            return new sve(i + 7, (char) (m57713f2 + 1));
        }
        if (m57713f2 >= 90 && m57713f2 < 116) {
            return new sve(i + 7, (char) (m57713f2 + 7));
        }
        switch (m57713f(i, 8)) {
            case 232:
                c = PublicSuffixDatabase.f103895g;
                break;
            case 233:
                c = '\"';
                break;
            case 234:
                c = '%';
                break;
            case 235:
                c = '&';
                break;
            case 236:
                c = Chars.QUOTE;
                break;
            case 237:
                c = '(';
                break;
            case 238:
                c = ')';
                break;
            case 239:
                c = '*';
                break;
            case 240:
                c = PhoneNumberUtil.f36455s;
                break;
            case 241:
                c = ',';
                break;
            case DataBinderMapperImpl.f53038H3 /* 242 */:
                c = '-';
                break;
            case 243:
                c = '.';
                break;
            case 244:
                c = '/';
                break;
            case 245:
                c = ':';
                break;
            case 246:
                c = ';';
                break;
            case DataBinderMapperImpl.f53073M3 /* 247 */:
                c = '<';
                break;
            case 248:
                c = '=';
                break;
            case 249:
                c = '>';
                break;
            case 250:
                c = '?';
                break;
            case 251:
                c = NameUtil.USCORE;
                break;
            case 252:
                c = ' ';
                break;
            default:
                throw FormatException.getFormatInstance();
        }
        return new sve(i + 8, c);
    }

    /* renamed from: e */
    public final uve m57712e(int i) throws FormatException {
        int i2 = i + 7;
        if (i2 > this.f86966a.getSize()) {
            int m57713f = m57713f(i, 4);
            return m57713f == 0 ? new uve(this.f86966a.getSize(), 10, 10) : new uve(this.f86966a.getSize(), m57713f - 1, 10);
        }
        int m57713f2 = m57713f(i, 7) - 8;
        return new uve(i2, m57713f2 / 11, m57713f2 % 11);
    }

    /* renamed from: f */
    public int m57713f(int i, int i2) {
        return m57707g(this.f86966a, i, i2);
    }

    /* renamed from: h */
    public final boolean m57714h(int i) {
        int i2 = i + 3;
        if (i2 > this.f86966a.getSize()) {
            return false;
        }
        while (i < i2) {
            if (this.f86966a.get(i)) {
                return false;
            }
            i++;
        }
        return true;
    }

    /* renamed from: i */
    public final boolean m57715i(int i) {
        int i2;
        if (i + 1 > this.f86966a.getSize()) {
            return false;
        }
        for (int i3 = 0; i3 < 5 && (i2 = i3 + i) < this.f86966a.getSize(); i3++) {
            if (i3 == 2) {
                if (!this.f86966a.get(i + 2)) {
                    return false;
                }
            } else if (this.f86966a.get(i2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: j */
    public final boolean m57716j(int i) {
        int i2;
        if (i + 1 > this.f86966a.getSize()) {
            return false;
        }
        for (int i3 = 0; i3 < 4 && (i2 = i3 + i) < this.f86966a.getSize(); i3++) {
            if (this.f86966a.get(i2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: k */
    public final boolean m57717k(int i) {
        int m57713f;
        if (i + 5 > this.f86966a.getSize()) {
            return false;
        }
        int m57713f2 = m57713f(i, 5);
        if (m57713f2 < 5 || m57713f2 >= 16) {
            return i + 6 <= this.f86966a.getSize() && (m57713f = m57713f(i, 6)) >= 16 && m57713f < 63;
        }
        return true;
    }

    /* renamed from: l */
    public final boolean m57718l(int i) {
        int m57713f;
        if (i + 5 > this.f86966a.getSize()) {
            return false;
        }
        int m57713f2 = m57713f(i, 5);
        if (m57713f2 >= 5 && m57713f2 < 16) {
            return true;
        }
        if (i + 7 > this.f86966a.getSize()) {
            return false;
        }
        int m57713f3 = m57713f(i, 7);
        if (m57713f3 < 64 || m57713f3 >= 116) {
            return i + 8 <= this.f86966a.getSize() && (m57713f = m57713f(i, 8)) >= 232 && m57713f < 253;
        }
        return true;
    }

    /* renamed from: m */
    public final boolean m57719m(int i) {
        if (i + 7 > this.f86966a.getSize()) {
            return i + 4 <= this.f86966a.getSize();
        }
        int i2 = i;
        while (true) {
            int i3 = i + 3;
            if (i2 >= i3) {
                return this.f86966a.get(i3);
            }
            if (this.f86966a.get(i2)) {
                return true;
            }
            i2++;
        }
    }

    /* renamed from: n */
    public final C14620ws m57720n() {
        while (m57717k(this.f86967b.m30675a())) {
            sve m57709b = m57709b(this.f86967b.m30675a());
            this.f86967b.m30683i(m57709b.m57892a());
            if (m57709b.m57267c()) {
                return new C14620ws(new tve(this.f86967b.m30675a(), this.f86968c.toString()), true);
            }
            this.f86968c.append(m57709b.m57266b());
        }
        if (m57714h(this.f86967b.m30675a())) {
            this.f86967b.m30676b(3);
            this.f86967b.m30682h();
        } else if (m57715i(this.f86967b.m30675a())) {
            if (this.f86967b.m30675a() + 5 < this.f86966a.getSize()) {
                this.f86967b.m30676b(5);
            } else {
                this.f86967b.m30683i(this.f86966a.getSize());
            }
            this.f86967b.m30681g();
        }
        return new C14620ws(false);
    }

    /* renamed from: o */
    public final tve m57721o() throws FormatException {
        C14620ws m57723q;
        boolean m58134b;
        do {
            int m30675a = this.f86967b.m30675a();
            if (this.f86967b.m30677c()) {
                m57723q = m57720n();
                m58134b = m57723q.m58134b();
            } else if (this.f86967b.m30678d()) {
                m57723q = m57722p();
                m58134b = m57723q.m58134b();
            } else {
                m57723q = m57723q();
                m58134b = m57723q.m58134b();
            }
            if (!(m30675a != this.f86967b.m30675a()) && !m58134b) {
                break;
            }
        } while (!m58134b);
        return m57723q.m58133a();
    }

    /* renamed from: p */
    public final C14620ws m57722p() throws FormatException {
        while (m57718l(this.f86967b.m30675a())) {
            sve m57711d = m57711d(this.f86967b.m30675a());
            this.f86967b.m30683i(m57711d.m57892a());
            if (m57711d.m57267c()) {
                return new C14620ws(new tve(this.f86967b.m30675a(), this.f86968c.toString()), true);
            }
            this.f86968c.append(m57711d.m57266b());
        }
        if (m57714h(this.f86967b.m30675a())) {
            this.f86967b.m30676b(3);
            this.f86967b.m30682h();
        } else if (m57715i(this.f86967b.m30675a())) {
            if (this.f86967b.m30675a() + 5 < this.f86966a.getSize()) {
                this.f86967b.m30676b(5);
            } else {
                this.f86967b.m30683i(this.f86966a.getSize());
            }
            this.f86967b.m30680f();
        }
        return new C14620ws(false);
    }

    /* renamed from: q */
    public final C14620ws m57723q() throws FormatException {
        while (m57719m(this.f86967b.m30675a())) {
            uve m57712e = m57712e(this.f86967b.m30675a());
            this.f86967b.m30683i(m57712e.m57892a());
            if (m57712e.m57667f()) {
                return new C14620ws(m57712e.m57668g() ? new tve(this.f86967b.m30675a(), this.f86968c.toString()) : new tve(this.f86967b.m30675a(), this.f86968c.toString(), m57712e.m57664c()), true);
            }
            this.f86968c.append(m57712e.m57663b());
            if (m57712e.m57668g()) {
                return new C14620ws(new tve(this.f86967b.m30675a(), this.f86968c.toString()), true);
            }
            this.f86968c.append(m57712e.m57664c());
        }
        if (m57716j(this.f86967b.m30675a())) {
            this.f86967b.m30680f();
            this.f86967b.m30676b(4);
        }
        return new C14620ws(false);
    }
}
