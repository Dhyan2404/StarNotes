package net.p110sf.saxon.regex.charclass;

import net.p110sf.saxon.p111z.IntComplementSet;
import net.p110sf.saxon.p111z.IntSet;

/* loaded from: classes11.dex */
public class InverseCharacterClass implements CharacterClass {

    /* renamed from: a */
    public final CharacterClass f101266a;

    public InverseCharacterClass(CharacterClass characterClass) {
        this.f101266a = characterClass;
    }

    public CharacterClass getComplement() {
        return this.f101266a;
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass
    public IntSet getIntSet() {
        if (this.f101266a.getIntSet() == null) {
            return null;
        }
        return new IntComplementSet(this.f101266a.getIntSet());
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass
    public boolean isDisjoint(CharacterClass characterClass) {
        return characterClass == this.f101266a;
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass, net.p110sf.saxon.p111z.IntPredicateProxy, java.util.function.IntPredicate
    public boolean test(int i) {
        return !this.f101266a.test(i);
    }
}
