package net.p110sf.saxon.regex.charclass;

import net.p110sf.saxon.p111z.IntSet;

/* loaded from: classes11.dex */
public class IntSetCharacterClass implements CharacterClass {

    /* renamed from: a */
    public final IntSet f101265a;

    public IntSetCharacterClass(IntSet intSet) {
        this.f101265a = intSet;
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass
    public IntSet getIntSet() {
        return this.f101265a;
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass
    public boolean isDisjoint(CharacterClass characterClass) {
        if (characterClass instanceof IntSetCharacterClass) {
            return this.f101265a.intersect(((IntSetCharacterClass) characterClass).f101265a).isEmpty();
        }
        if (characterClass instanceof InverseCharacterClass) {
            return characterClass.isDisjoint(this);
        }
        return false;
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass, net.p110sf.saxon.p111z.IntPredicateProxy, java.util.function.IntPredicate
    public boolean test(int i) {
        return this.f101265a.contains(i);
    }
}
