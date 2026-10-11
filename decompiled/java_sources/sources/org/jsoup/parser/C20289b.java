package org.jsoup.parser;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.parser.Token;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.jsoup.parser.b */
/* loaded from: classes13.dex */
public enum C20289b extends EnumC20262a {
    public C20289b(String str, int i) {
        super(str, i, null);
    }

    @Override // org.jsoup.parser.EnumC20262a
    /* renamed from: a */
    public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
        boolean m71332b;
        m71332b = EnumC20262a.m71332b(token);
        if (m71332b) {
            return true;
        }
        if (token.isComment()) {
            htmlTreeBuilder.m71221S(token.asComment());
        } else {
            if (!token.isDoctype()) {
                htmlTreeBuilder.m71206D0(EnumC20262a.f114210b);
                return htmlTreeBuilder.process(token);
            }
            Token.C20260d asDoctype = token.asDoctype();
            DocumentType documentType = new DocumentType(htmlTreeBuilder.settings.normalizeTag(asDoctype.m71310d()), asDoctype.m71312f(), asDoctype.m71313g());
            documentType.setPubSysKey(asDoctype.m71311e());
            htmlTreeBuilder.m71203C().appendChild(documentType);
            if (asDoctype.m71314h()) {
                htmlTreeBuilder.m71203C().quirksMode(Document.QuirksMode.quirks);
            }
            htmlTreeBuilder.m71206D0(EnumC20262a.f114210b);
        }
        return true;
    }
}
