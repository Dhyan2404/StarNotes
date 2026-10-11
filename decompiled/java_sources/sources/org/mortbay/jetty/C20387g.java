package org.mortbay.jetty;

import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.mortbay.util.QuotedStringTokenizer;

/* renamed from: org.mortbay.jetty.g */
/* loaded from: classes13.dex */
public class C20387g implements Enumeration {

    /* renamed from: e */
    public QuotedStringTokenizer f114864e = null;

    /* renamed from: f */
    public final /* synthetic */ Enumeration f114865f;

    /* renamed from: g */
    public final /* synthetic */ String f114866g;

    /* renamed from: h */
    public final /* synthetic */ HttpFields f114867h;

    public C20387g(HttpFields httpFields, Enumeration enumeration, String str) {
        this.f114867h = httpFields;
        this.f114865f = enumeration;
        this.f114866g = str;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        QuotedStringTokenizer quotedStringTokenizer = this.f114864e;
        if (quotedStringTokenizer != null && quotedStringTokenizer.hasMoreElements()) {
            return true;
        }
        while (this.f114865f.hasMoreElements()) {
            QuotedStringTokenizer quotedStringTokenizer2 = new QuotedStringTokenizer((String) this.f114865f.nextElement(), this.f114866g, false, false);
            this.f114864e = quotedStringTokenizer2;
            if (quotedStringTokenizer2.hasMoreElements()) {
                return true;
            }
        }
        this.f114864e = null;
        return false;
    }

    @Override // java.util.Enumeration
    public Object nextElement() throws NoSuchElementException {
        if (!hasMoreElements()) {
            throw new NoSuchElementException();
        }
        String str = (String) this.f114864e.nextElement();
        return str != null ? str.trim() : str;
    }
}
