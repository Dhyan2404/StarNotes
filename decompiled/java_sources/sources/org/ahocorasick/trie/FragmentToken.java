package org.ahocorasick.trie;

/* loaded from: classes11.dex */
public class FragmentToken extends Token {
    public FragmentToken(String str) {
        super(str);
    }

    @Override // org.ahocorasick.trie.Token
    public Emit getEmit() {
        return null;
    }

    @Override // org.ahocorasick.trie.Token
    public boolean isMatch() {
        return false;
    }
}
