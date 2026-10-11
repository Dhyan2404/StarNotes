package net.p110sf.saxon.serialize;

import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.str.WhitespaceString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class CharacterMap {

    /* renamed from: a */
    public StructuredQName f101493a;

    /* renamed from: b */
    public final IntHashMap<String> f101494b;

    /* renamed from: c */
    public int f101495c;

    /* renamed from: d */
    public int f101496d;

    /* renamed from: e */
    public boolean f101497e;

    public CharacterMap(StructuredQName structuredQName, IntHashMap<String> intHashMap) {
        this.f101495c = Integer.MAX_VALUE;
        this.f101496d = 0;
        this.f101497e = false;
        this.f101493a = structuredQName;
        this.f101494b = intHashMap;
        m63818a();
    }

    /* renamed from: a */
    public final void m63818a() {
        IntIterator keyIterator = this.f101494b.keyIterator();
        while (keyIterator.hasNext()) {
            int next = keyIterator.next();
            if (next < this.f101495c) {
                this.f101495c = next;
            }
            if (next > this.f101496d) {
                this.f101496d = next;
            }
            if (!this.f101497e && Whitespace.isWhite(next)) {
                this.f101497e = true;
            }
        }
        if (this.f101495c > 55296) {
            this.f101495c = 55296;
        }
    }

    public void export(ExpressionPresenter expressionPresenter) {
        expressionPresenter.startElement("charMap");
        expressionPresenter.emitAttribute("name", this.f101493a);
        IntIterator keyIterator = this.f101494b.keyIterator();
        while (keyIterator.hasNext()) {
            int next = keyIterator.next();
            String str = this.f101494b.get(next);
            expressionPresenter.startElement("m");
            expressionPresenter.emitAttribute("c", next + "");
            expressionPresenter.emitAttribute("s", str);
            expressionPresenter.endElement();
        }
        expressionPresenter.endElement();
    }

    public IntHashMap<String> getMap() {
        return this.f101494b;
    }

    public StructuredQName getName() {
        return this.f101493a;
    }

    public UnicodeString map(UnicodeString unicodeString, boolean z) {
        boolean z2;
        if (!this.f101497e && (unicodeString instanceof WhitespaceString)) {
            return unicodeString;
        }
        IntIterator codePoints = unicodeString.codePoints();
        while (true) {
            if (!codePoints.hasNext()) {
                z2 = false;
                break;
            }
            int next = codePoints.next();
            if (next >= this.f101495c && next <= this.f101496d) {
                z2 = true;
                break;
            }
        }
        if (!z2) {
            return unicodeString;
        }
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        IntIterator codePoints2 = unicodeString.codePoints();
        while (codePoints2.hasNext()) {
            int next2 = codePoints2.next();
            if (next2 < this.f101495c || next2 > this.f101496d) {
                unicodeBuilder.append(next2);
            } else {
                String str = this.f101494b.get(next2);
                if (str == null) {
                    unicodeBuilder.append(next2);
                } else if (z) {
                    unicodeBuilder.append((char) 0);
                    unicodeBuilder.append(str);
                    unicodeBuilder.append((char) 0);
                } else {
                    unicodeBuilder.append(str);
                }
            }
        }
        return unicodeBuilder.toUnicodeString();
    }

    public CharacterMap(Iterable<CharacterMap> iterable) {
        this.f101495c = Integer.MAX_VALUE;
        this.f101496d = 0;
        this.f101497e = false;
        this.f101494b = new IntHashMap<>(64);
        for (CharacterMap characterMap : iterable) {
            IntIterator keyIterator = characterMap.f101494b.keyIterator();
            while (keyIterator.hasNext()) {
                int next = keyIterator.next();
                this.f101494b.put(next, characterMap.f101494b.get(next));
            }
        }
        m63818a();
    }
}
