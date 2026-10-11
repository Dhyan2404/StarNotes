package org.apache.commons.io.input;

import java.io.Reader;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.function.IntPredicate;
import org.apache.commons.io.input.CharacterSetFilterReader;

/* loaded from: classes12.dex */
public class CharacterSetFilterReader extends AbstractCharacterFilterReader {
    public CharacterSetFilterReader(Reader reader, Integer... numArr) {
        this(reader, new HashSet(Arrays.asList(numArr)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$toIntPredicate$0(Set set, int i) {
        return set.contains(Integer.valueOf(i));
    }

    private static IntPredicate toIntPredicate(Set<Integer> set) {
        if (set == null) {
            return AbstractCharacterFilterReader.SKIP_NONE;
        }
        final Set unmodifiableSet = Collections.unmodifiableSet(set);
        return new IntPredicate() { // from class: com.sunia.HTREnginev2.frd
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean lambda$toIntPredicate$0;
                lambda$toIntPredicate$0 = CharacterSetFilterReader.lambda$toIntPredicate$0(unmodifiableSet, i);
                return lambda$toIntPredicate$0;
            }
        };
    }

    public CharacterSetFilterReader(Reader reader, Set<Integer> set) {
        super(reader, toIntPredicate(set));
    }
}
