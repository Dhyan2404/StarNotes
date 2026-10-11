package net.p110sf.saxon.regex.charclass;

import java.util.function.IntPredicate;
import net.p110sf.saxon.p111z.IntSet;

/* loaded from: classes11.dex */
public class PredicateCharacterClass implements CharacterClass {

    /* renamed from: a */
    public final IntPredicate f101267a;

    public PredicateCharacterClass(IntPredicate intPredicate) {
        this.f101267a = intPredicate;
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass
    public IntSet getIntSet() {
        return null;
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass
    public boolean isDisjoint(CharacterClass characterClass) {
        return (characterClass instanceof InverseCharacterClass) && characterClass.isDisjoint(this);
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass, net.p110sf.saxon.p111z.IntPredicateProxy, java.util.function.IntPredicate
    public boolean test(int i) {
        return this.f101267a.test(i);
    }
}
