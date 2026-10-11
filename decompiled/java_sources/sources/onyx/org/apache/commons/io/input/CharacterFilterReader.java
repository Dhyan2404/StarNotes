package onyx.org.apache.commons.io.input;

import java.io.Reader;
import java.util.function.IntPredicate;
import onyx.org.apache.commons.io.input.CharacterFilterReader;

/* loaded from: classes11.dex */
public class CharacterFilterReader extends AbstractCharacterFilterReader {
    public CharacterFilterReader(Reader reader, final int i) {
        super(reader, new IntPredicate() { // from class: com.sunia.HTREnginev2.drd
            @Override // java.util.function.IntPredicate
            public final boolean test(int i2) {
                boolean m65434H;
                m65434H = CharacterFilterReader.m65434H(i, i2);
                return m65434H;
            }
        });
    }

    /* renamed from: H */
    public static /* synthetic */ boolean m65434H(int i, int i2) {
        return i2 == i;
    }

    public CharacterFilterReader(Reader reader, IntPredicate intPredicate) {
        super(reader, intPredicate);
    }
}
