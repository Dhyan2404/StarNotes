package org.apache.poi.xslf.draw.formatter;

import com.github.mikephil.charting.formatter.IAxisValueFormatter;
import com.github.mikephil.charting.formatter.IValueFormatter;
import java.util.List;

/* loaded from: classes13.dex */
public abstract class AxisFormatter implements IAxisValueFormatter, IValueFormatter {
    protected final String TAG;
    protected List<String> data;
    protected FormatType formatType;

    /* renamed from: org.apache.poi.xslf.draw.formatter.AxisFormatter$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198891 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xslf$draw$formatter$FormatType;

        static {
            int[] iArr = new int[FormatType.values().length];
            $SwitchMap$org$apache$poi$xslf$draw$formatter$FormatType = iArr;
            try {
                iArr[FormatType.DATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$xslf$draw$formatter$FormatType[FormatType.PERCENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public AxisFormatter(FormatType formatType) {
        this(null, formatType);
    }

    public static AxisFormatter create(FormatType formatType) {
        return create(null, formatType);
    }

    public AxisFormatter(List<String> list, FormatType formatType) {
        this.TAG = getClass().getSimpleName();
        this.data = list;
        this.formatType = formatType;
    }

    public static AxisFormatter create(List<String> list, FormatType formatType) {
        int i = C198891.$SwitchMap$org$apache$poi$xslf$draw$formatter$FormatType[formatType.ordinal()];
        if (i == 1) {
            return new DateAxisFormatter(list, formatType);
        }
        if (i != 2) {
            return new NormalAxisFormatter(list, formatType);
        }
        return new PercentAxisFormatter(list, formatType);
    }
}
