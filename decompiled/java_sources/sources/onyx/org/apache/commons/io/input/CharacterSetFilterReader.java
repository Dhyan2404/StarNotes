package onyx.org.apache.commons.io.input;

import java.io.Reader;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.function.IntPredicate;
import onyx.org.apache.commons.io.input.CharacterSetFilterReader;

/* loaded from: classes11.dex */
public class CharacterSetFilterReader extends AbstractCharacterFilterReader {
    public CharacterSetFilterReader(Reader reader, Integer... numArr) {
        this(reader, new HashSet(Arrays.asList(numArr)));
    }

    /* renamed from: H */
    public static /* synthetic */ boolean m65436H(Set set, int i) {
        return set.contains(Integer.valueOf(i));
    }

    /* renamed from: I */
    public static IntPredicate m65437I(Set<Integer> set) {
        if (set == null) {
            return AbstractCharacterFilterReader.SKIP_NONE;
        }
        final Set unmodifiableSet = Collections.unmodifiableSet(set);
        return new IntPredicate() { // from class: com.sunia.HTREnginev2.grd
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m65436H;
                m65436H = CharacterSetFilterReader.m65436H(unmodifiableSet, i);
                return m65436H;
            }
        };
    }

    public CharacterSetFilterReader(Reader reader, Set<Integer> set) {
        super(reader, m65437I(set));
    }
}
