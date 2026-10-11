package org.apache.commons.math3.util;

import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.math3.exception.NullArgumentException;

/* loaded from: classes12.dex */
public class KthSelector implements Serializable {
    private static final int MIN_SELECT_SIZE = 15;
    private static final long serialVersionUID = 20140713;
    private final PivotingStrategyInterface pivotingStrategy;

    public KthSelector() {
        this.pivotingStrategy = new MedianOf3PivotingStrategy();
    }

    private int partition(double[] dArr, int i, int i2, int i3) {
        double d = dArr[i3];
        dArr[i3] = dArr[i];
        int i4 = i + 1;
        int i5 = i2 - 1;
        while (i4 < i5) {
            while (i4 < i5 && dArr[i5] > d) {
                i5--;
            }
            while (i4 < i5 && dArr[i4] < d) {
                i4++;
            }
            if (i4 < i5) {
                double d2 = dArr[i4];
                dArr[i4] = dArr[i5];
                dArr[i5] = d2;
                i5--;
                i4++;
            }
        }
        if (i4 >= i2 || dArr[i4] > d) {
            i4--;
        }
        dArr[i] = dArr[i4];
        dArr[i4] = d;
        return i4;
    }

    public PivotingStrategyInterface getPivotingStrategy() {
        return this.pivotingStrategy;
    }

    public double select(double[] dArr, int[] iArr, int i) {
        int partition;
        int length = dArr.length;
        int i2 = 0;
        boolean z = iArr != null;
        int i3 = 0;
        while (length - i2 > 15) {
            if (!z || i3 >= iArr.length || (partition = iArr[i3]) < 0) {
                partition = partition(dArr, i2, length, this.pivotingStrategy.pivotIndex(dArr, i2, length));
                if (z && i3 < iArr.length) {
                    iArr[i3] = partition;
                }
            }
            if (i == partition) {
                return dArr[i];
            }
            if (i < partition) {
                i3 = FastMath.min((i3 * 2) + 1, z ? iArr.length : partition);
                length = partition;
            } else {
                int i4 = partition + 1;
                i3 = FastMath.min((i3 * 2) + 2, z ? iArr.length : length);
                i2 = i4;
            }
        }
        Arrays.sort(dArr, i2, length);
        return dArr[i];
    }

    public KthSelector(PivotingStrategyInterface pivotingStrategyInterface) throws NullArgumentException {
        MathUtils.checkNotNull(pivotingStrategyInterface);
        this.pivotingStrategy = pivotingStrategyInterface;
    }
}
