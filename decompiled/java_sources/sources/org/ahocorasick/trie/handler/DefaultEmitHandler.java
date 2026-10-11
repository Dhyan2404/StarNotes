package org.ahocorasick.trie.handler;

import java.util.ArrayList;
import java.util.List;
import org.ahocorasick.trie.Emit;

/* loaded from: classes11.dex */
public class DefaultEmitHandler implements EmitHandler {

    /* renamed from: a */
    public List<Emit> f104563a = new ArrayList();

    @Override // org.ahocorasick.trie.handler.EmitHandler
    public void emit(Emit emit) {
        this.f104563a.add(emit);
    }

    public List<Emit> getEmits() {
        return this.f104563a;
    }
}
