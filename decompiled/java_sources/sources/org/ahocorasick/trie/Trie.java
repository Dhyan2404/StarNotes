package org.ahocorasick.trie;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import org.ahocorasick.interval.IntervalTree;
import org.ahocorasick.trie.handler.DefaultEmitHandler;
import org.ahocorasick.trie.handler.EmitHandler;

/* loaded from: classes11.dex */
public class Trie {

    /* renamed from: a */
    public TrieConfig f104554a;

    /* renamed from: b */
    public State f104555b;

    /* loaded from: classes11.dex */
    public static class TrieBuilder {

        /* renamed from: a */
        public TrieConfig f104556a;

        /* renamed from: b */
        public Trie f104557b;

        public TrieBuilder addKeyword(String str) {
            this.f104557b.m65689d(str);
            return this;
        }

        public Trie build() {
            this.f104557b.m65690e();
            return this.f104557b;
        }

        public TrieBuilder caseInsensitive() {
            this.f104556a.setCaseInsensitive(true);
            return this;
        }

        public TrieBuilder onlyWholeWords() {
            this.f104556a.setOnlyWholeWords(true);
            return this;
        }

        public TrieBuilder onlyWholeWordsWhiteSpaceSeparated() {
            this.f104556a.setOnlyWholeWordsWhiteSpaceSeparated(true);
            return this;
        }

        public TrieBuilder removeOverlaps() {
            this.f104556a.setAllowOverlaps(false);
            return this;
        }

        public TrieBuilder stopOnHit() {
            this.f104557b.f104554a.setStopOnHit(true);
            return this;
        }

        public TrieBuilder() {
            TrieConfig trieConfig = new TrieConfig();
            this.f104556a = trieConfig;
            this.f104557b = new Trie(trieConfig);
        }
    }

    public static TrieBuilder builder() {
        return new TrieBuilder();
    }

    public boolean containsMatch(CharSequence charSequence) {
        return firstMatch(charSequence) != null;
    }

    /* renamed from: d */
    public final void m65689d(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        State state = this.f104555b;
        for (char c : str.toCharArray()) {
            Character valueOf = Character.valueOf(c);
            if (this.f104554a.isCaseInsensitive()) {
                valueOf = Character.valueOf(Character.toLowerCase(valueOf.charValue()));
            }
            state = state.addState(valueOf);
        }
        if (this.f104554a.isCaseInsensitive()) {
            str = str.toLowerCase();
        }
        state.addEmit(str);
    }

    /* renamed from: e */
    public final void m65690e() {
        LinkedBlockingDeque linkedBlockingDeque = new LinkedBlockingDeque();
        for (State state : this.f104555b.getStates()) {
            state.setFailure(this.f104555b);
            linkedBlockingDeque.add(state);
        }
        while (!linkedBlockingDeque.isEmpty()) {
            State state2 = (State) linkedBlockingDeque.remove();
            for (Character ch : state2.getTransitions()) {
                State nextState = state2.nextState(ch);
                linkedBlockingDeque.add(nextState);
                State failure = state2.failure();
                while (failure.nextState(ch) == null) {
                    failure = failure.failure();
                }
                State nextState2 = failure.nextState(ch);
                nextState.setFailure(nextState2);
                nextState.addEmit(nextState2.emit());
            }
        }
    }

    /* renamed from: f */
    public final Token m65691f(Emit emit, String str, int i) {
        return new FragmentToken(str.substring(i + 1, emit == null ? str.length() : emit.getStart()));
    }

    public Emit firstMatch(CharSequence charSequence) {
        if (!this.f104554a.isAllowOverlaps()) {
            Collection<Emit> parseText = parseText(charSequence);
            if (parseText == null || parseText.isEmpty()) {
                return null;
            }
            return parseText.iterator().next();
        }
        State state = this.f104555b;
        for (int i = 0; i < charSequence.length(); i++) {
            Character valueOf = Character.valueOf(charSequence.charAt(i));
            if (this.f104554a.isCaseInsensitive()) {
                valueOf = Character.valueOf(Character.toLowerCase(valueOf.charValue()));
            }
            state = m65693h(state, valueOf);
            Collection<String> emit = state.emit();
            if (emit != null && !emit.isEmpty()) {
                for (String str : emit) {
                    Emit emit2 = new Emit((i - str.length()) + 1, i, str);
                    if (!this.f104554a.isOnlyWholeWords() || !m65694i(charSequence, emit2)) {
                        return emit2;
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: g */
    public final Token m65692g(Emit emit, String str) {
        return new MatchToken(str.substring(emit.getStart(), emit.getEnd() + 1), emit);
    }

    /* renamed from: h */
    public final State m65693h(State state, Character ch) {
        State nextState = state.nextState(ch);
        while (nextState == null) {
            state = state.failure();
            nextState = state.nextState(ch);
        }
        return nextState;
    }

    /* renamed from: i */
    public final boolean m65694i(CharSequence charSequence, Emit emit) {
        if (emit.getStart() == 0 || !Character.isAlphabetic(charSequence.charAt(emit.getStart() - 1))) {
            return emit.getEnd() + 1 != charSequence.length() && Character.isAlphabetic(charSequence.charAt(emit.getEnd() + 1));
        }
        return true;
    }

    /* renamed from: j */
    public final void m65695j(CharSequence charSequence, List<Emit> list) {
        ArrayList arrayList = new ArrayList();
        for (Emit emit : list) {
            if (m65694i(charSequence, emit)) {
                arrayList.add(emit);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            list.remove((Emit) it2.next());
        }
    }

    /* renamed from: k */
    public final void m65696k(CharSequence charSequence, List<Emit> list) {
        long length = charSequence.length();
        ArrayList arrayList = new ArrayList();
        for (Emit emit : list) {
            if ((emit.getStart() != 0 && !Character.isWhitespace(charSequence.charAt(emit.getStart() - 1))) || (emit.getEnd() + 1 != length && !Character.isWhitespace(charSequence.charAt(emit.getEnd() + 1)))) {
                arrayList.add(emit);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            list.remove((Emit) it2.next());
        }
    }

    /* renamed from: l */
    public final boolean m65697l(int i, State state, EmitHandler emitHandler) {
        Collection<String> emit = state.emit();
        boolean z = false;
        if (emit != null && !emit.isEmpty()) {
            for (String str : emit) {
                emitHandler.emit(new Emit((i - str.length()) + 1, i, str));
                z = true;
            }
        }
        return z;
    }

    public Collection<Emit> parseText(CharSequence charSequence) {
        DefaultEmitHandler defaultEmitHandler = new DefaultEmitHandler();
        parseText(charSequence, defaultEmitHandler);
        List<Emit> emits = defaultEmitHandler.getEmits();
        if (this.f104554a.isOnlyWholeWords()) {
            m65695j(charSequence, emits);
        }
        if (this.f104554a.isOnlyWholeWordsWhiteSpaceSeparated()) {
            m65696k(charSequence, emits);
        }
        if (!this.f104554a.isAllowOverlaps()) {
            new IntervalTree(emits).removeOverlaps(emits);
        }
        return emits;
    }

    public Collection<Token> tokenize(String str) {
        ArrayList arrayList = new ArrayList();
        int i = -1;
        for (Emit emit : parseText(str)) {
            if (emit.getStart() - i > 1) {
                arrayList.add(m65691f(emit, str, i));
            }
            arrayList.add(m65692g(emit, str));
            i = emit.getEnd();
        }
        if (str.length() - i > 1) {
            arrayList.add(m65691f(null, str, i));
        }
        return arrayList;
    }

    public Trie(TrieConfig trieConfig) {
        this.f104554a = trieConfig;
        this.f104555b = new State();
    }

    public void parseText(CharSequence charSequence, EmitHandler emitHandler) {
        State state = this.f104555b;
        for (int i = 0; i < charSequence.length(); i++) {
            Character valueOf = Character.valueOf(charSequence.charAt(i));
            if (this.f104554a.isCaseInsensitive()) {
                valueOf = Character.valueOf(Character.toLowerCase(valueOf.charValue()));
            }
            state = m65693h(state, valueOf);
            if (m65697l(i, state, emitHandler) && this.f104554a.isStopOnHit()) {
                return;
            }
        }
    }
}
