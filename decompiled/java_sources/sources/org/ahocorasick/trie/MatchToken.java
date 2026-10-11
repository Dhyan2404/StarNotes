package org.ahocorasick.trie;

/* loaded from: classes11.dex */
public class MatchToken extends Token {

    /* renamed from: b */
    public Emit f104547b;

    public MatchToken(String str, Emit emit) {
        super(str);
        this.f104547b = emit;
    }

    @Override // org.ahocorasick.trie.Token
    public Emit getEmit() {
        return this.f104547b;
    }

    @Override // org.ahocorasick.trie.Token
    public boolean isMatch() {
        return true;
    }
}
