package org.apache.poi.ss.formula;

import org.apache.poi.ss.formula.IStabilityClassifier;

/* loaded from: classes13.dex */
public interface IStabilityClassifier {
    public static final IStabilityClassifier TOTALLY_IMMUTABLE = new IStabilityClassifier() { // from class: com.sunia.HTREnginev2.agi
        @Override // org.apache.poi.ss.formula.IStabilityClassifier
        public final boolean isCellFinal(int i, int i2, int i3) {
            boolean lambda$static$0;
            lambda$static$0 = IStabilityClassifier.lambda$static$0(i, i2, i3);
            return lambda$static$0;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ boolean lambda$static$0(int i, int i2, int i3) {
        return true;
    }

    boolean isCellFinal(int i, int i2, int i3);
}
