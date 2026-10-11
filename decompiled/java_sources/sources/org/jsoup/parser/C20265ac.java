package org.jsoup.parser;

import org.jsoup.parser.Token;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.jsoup.parser.ac */
/* loaded from: classes13.dex */
public enum C20265ac extends EnumC20264ab {
    public C20265ac(String str, int i) {
        super(str, i, null);
    }

    @Override // org.jsoup.parser.EnumC20264ab
    /* renamed from: a */
    public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
        EnumC20264ab enumC20264ab;
        char current = characterReader.current();
        if (current == 0) {
            c20350r.m71379r(this);
            c20350r.m71364c(characterReader.m71178f());
            return;
        }
        if (current == '&') {
            enumC20264ab = EnumC20264ab.f114324b;
        } else {
            if (current != '<') {
                if (current != 65535) {
                    c20350r.m71365d(characterReader.m71179g());
                    return;
                } else {
                    c20350r.m71366e(new Token.C20261e());
                    return;
                }
            }
            enumC20264ab = EnumC20264ab.f114330h;
        }
        c20350r.m71375n(enumC20264ab);
    }
}
