package org.apache.poi.xssf.util;

import java.util.Comparator;
import org.apache.poi.xssf.util.CTColComparator;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCol;

/* loaded from: classes13.dex */
public class CTColComparator {
    public static final Comparator<CTCol> BY_MAX = new Comparator() { // from class: com.sunia.HTREnginev2.ey1
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int lambda$static$0;
            lambda$static$0 = CTColComparator.lambda$static$0((CTCol) obj, (CTCol) obj2);
            return lambda$static$0;
        }
    };
    public static final Comparator<CTCol> BY_MIN_MAX = new Comparator() { // from class: com.sunia.HTREnginev2.fy1
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int lambda$static$1;
            lambda$static$1 = CTColComparator.lambda$static$1((CTCol) obj, (CTCol) obj2);
            return lambda$static$1;
        }
    };

    private CTColComparator() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$0(CTCol cTCol, CTCol cTCol2) {
        return Long.compare(cTCol.getMax(), cTCol2.getMax());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$1(CTCol cTCol, CTCol cTCol2) {
        long min = cTCol.getMin();
        long min2 = cTCol2.getMin();
        if (min < min2) {
            return -1;
        }
        if (min > min2) {
            return 1;
        }
        return BY_MAX.compare(cTCol, cTCol2);
    }
}
