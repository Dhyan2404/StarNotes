package org.apache.commons.io.input;

import java.io.Reader;
import java.util.function.IntPredicate;
import org.apache.commons.io.input.CharacterFilterReader;

/* loaded from: classes12.dex */
public class CharacterFilterReader extends AbstractCharacterFilterReader {
    public CharacterFilterReader(Reader reader, final int i) {
        super(reader, new IntPredicate() { // from class: com.sunia.HTREnginev2.crd
            @Override // java.util.function.IntPredicate
            public final boolean test(int i2) {
                boolean lambda$new$0;
                lambda$new$0 = CharacterFilterReader.lambda$new$0(i, i2);
                return lambda$new$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$0(int i, int i2) {
        return i2 == i;
    }

    public CharacterFilterReader(Reader reader, IntPredicate intPredicate) {
        super(reader, intPredicate);
    }
}
