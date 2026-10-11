package net.p110sf.saxon.regex.charclass;

import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.p111z.IntSet;

/* loaded from: classes11.dex */
public interface CharacterClass extends IntPredicateProxy {
    IntSet getIntSet();

    boolean isDisjoint(CharacterClass characterClass);

    @Override // net.p110sf.saxon.p111z.IntPredicateProxy, java.util.function.IntPredicate
    boolean test(int i);
}
