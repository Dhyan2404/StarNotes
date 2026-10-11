package org.ahocorasick.trie;

/* loaded from: classes11.dex */
public abstract class Token {

    /* renamed from: a */
    public String f104553a;

    public Token(String str) {
        this.f104553a = str;
    }

    public abstract Emit getEmit();

    public String getFragment() {
        return this.f104553a;
    }

    public abstract boolean isMatch();
}
