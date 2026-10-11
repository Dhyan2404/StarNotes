package org.apache.poi.xslf.draw.chart;

import com.github.mikephil.charting.components.ComponentBase;
import com.github.mikephil.charting.data.CandleDataSet;
import com.github.mikephil.charting.utils.Utils;
import java.lang.reflect.Field;

/* loaded from: classes13.dex */
public class ChartUtils {
    public static void setBarSpace(CandleDataSet candleDataSet, float f) {
        if (Float.compare(f, 0.45f) <= 0 && Float.compare(f, 0.0f) >= 0) {
            candleDataSet.setBarSpace(f);
        } else {
            if (setFieldValue(CandleDataSet.class, candleDataSet, "mBarSpace", Float.valueOf(f))) {
                return;
            }
            candleDataSet.setBarSpace(f);
        }
    }

    public static boolean setFieldValue(Class cls, Object obj, String str, Object obj2) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(obj, obj2);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void setTextSize(ComponentBase componentBase, float f) {
        if (Float.compare(f, 24.0f) <= 0 && Float.compare(f, 6.0f) >= 0) {
            componentBase.setTextSize(f);
        } else {
            if (setFieldValue(ComponentBase.class, componentBase, "mTextSize", Float.valueOf(Utils.convertDpToPixel(f)))) {
                return;
            }
            componentBase.setTextSize(f);
        }
    }
}
