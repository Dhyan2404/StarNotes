package net.p110sf.saxon.regex.charclass;

import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.p111z.IntSingletonSet;

/* loaded from: classes11.dex */
public class SingletonCharacterClass implements CharacterClass {

    /* renamed from: a */
    public final int f101268a;

    public SingletonCharacterClass(int i) {
        this.f101268a = i;
    }

    public int getCodepoint() {
        return this.f101268a;
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass
    public IntSet getIntSet() {
        return new IntSingletonSet(this.f101268a);
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass
    public boolean isDisjoint(CharacterClass characterClass) {
        return !characterClass.test(this.f101268a);
    }

    @Override // net.p110sf.saxon.regex.charclass.CharacterClass, net.p110sf.saxon.p111z.IntPredicateProxy, java.util.function.IntPredicate
    public boolean test(int i) {
        return i == this.f101268a;
    }
}
