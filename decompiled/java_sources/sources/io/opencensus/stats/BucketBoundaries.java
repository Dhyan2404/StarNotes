package io.opencensus.stats;

import com.sunia.HTREnginev2.C14197oj;
import io.opencensus.internal.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class BucketBoundaries {

    /* renamed from: a */
    public static final Logger f94761a = Logger.getLogger(BucketBoundaries.class.getName());

    /* renamed from: a */
    public static List<Double> m61015a(List<Double> list) {
        int i = 0;
        int i2 = 0;
        for (Double d : list) {
            if (d.doubleValue() > 0.0d) {
                break;
            }
            if (d.doubleValue() == 0.0d) {
                i2++;
            } else {
                i++;
            }
        }
        if (i > 0) {
            f94761a.log(Level.WARNING, "Dropping " + i + " negative bucket boundaries, the values must be strictly > 0.");
        }
        return list.subList(i + i2, list.size());
    }

    public static final BucketBoundaries create(List<Double> list) {
        Utils.checkNotNull(list, "bucketBoundaries");
        ArrayList arrayList = new ArrayList(list);
        if (arrayList.size() > 1) {
            double doubleValue = ((Double) arrayList.get(0)).doubleValue();
            int i = 1;
            while (i < arrayList.size()) {
                double doubleValue2 = ((Double) arrayList.get(i)).doubleValue();
                Utils.checkArgument(doubleValue < doubleValue2, "Bucket boundaries not sorted.");
                i++;
                doubleValue = doubleValue2;
            }
        }
        return new C14197oj(Collections.unmodifiableList(m61015a(arrayList)));
    }

    public abstract List<Double> getBoundaries();
}
