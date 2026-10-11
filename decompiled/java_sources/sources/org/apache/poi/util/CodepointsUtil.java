package org.apache.poi.util;

import java.util.Iterator;
import java.util.function.IntFunction;
import org.apache.poi.util.CodepointsUtil;

@Internal
/* loaded from: classes13.dex */
public class CodepointsUtil {
    public static Iterator<String> iteratorFor(String str) {
        return str.codePoints().mapToObj(new IntFunction() { // from class: com.sunia.HTREnginev2.qwd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String lambda$iteratorFor$0;
                lambda$iteratorFor$0 = CodepointsUtil.lambda$iteratorFor$0(i);
                return lambda$iteratorFor$0;
            }
        }).iterator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$iteratorFor$0(int i) {
        return new String(Character.toChars(i));
    }
}
