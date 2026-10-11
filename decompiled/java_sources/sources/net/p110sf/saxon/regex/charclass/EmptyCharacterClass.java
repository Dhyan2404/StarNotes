package net.p110sf.saxon.regex.charclass;

import net.p110sf.saxon.p111z.IntEmptySet;
import net.p110sf.saxon.p111z.IntSet;

/* loaded from: classes11.dex */
public class EmptyCharacterClass implements CharacterClass {

    /* renamed from: a */
    public static final EmptyCharacterClass f101263a;

    /* renamed from: b */
    public static final InverseCharacterClass f101264b;

    static {
        EmptyCharacterClass emptyCharacterClass = new EmptyCharacterClass();
        f101263a = emptyCharacterClass;
        f101264b = new InverseCharacterClass(emptyCharacterClass);
    }

    public static CharacterClass getComplement() {
        return f101264b;
    }

    public static EmptyCharacterClass getInstance() {
        return f101263a;
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass
    public IntSet getIntSet() {
        return IntEmptySet.getInstance();
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass
    public boolean isDisjoint(CharacterClass characterClass) {
        return true;
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass, net.p110sf.saxon.p111z.IntPredicateProxy, java.util.function.IntPredicate
    public boolean test(int i) {
        return false;
    }
}
