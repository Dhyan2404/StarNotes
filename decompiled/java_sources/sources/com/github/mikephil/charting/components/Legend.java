package com.github.mikephil.charting.components;

import android.graphics.DashPathEffect;
import android.graphics.Paint;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.github.mikephil.charting.utils.FSize;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class Legend extends ComponentBase {

    /* renamed from: a */
    public LegendEntry[] f21538a;

    /* renamed from: b */
    public LegendEntry[] f21539b;

    /* renamed from: c */
    public boolean f21540c;

    /* renamed from: d */
    public LegendHorizontalAlignment f21541d;

    /* renamed from: e */
    public LegendVerticalAlignment f21542e;

    /* renamed from: f */
    public LegendOrientation f21543f;

    /* renamed from: g */
    public boolean f21544g;

    /* renamed from: h */
    public LegendDirection f21545h;

    /* renamed from: i */
    public LegendForm f21546i;

    /* renamed from: j */
    public float f21547j;

    /* renamed from: k */
    public float f21548k;

    /* renamed from: l */
    public DashPathEffect f21549l;

    /* renamed from: m */
    public float f21550m;
    public float mNeededHeight;
    public float mNeededWidth;
    public float mTextHeightMax;
    public float mTextWidthMax;

    /* renamed from: n */
    public float f21551n;

    /* renamed from: o */
    public float f21552o;

    /* renamed from: p */
    public float f21553p;

    /* renamed from: q */
    public float f21554q;

    /* renamed from: r */
    public boolean f21555r;

    /* renamed from: s */
    public List<FSize> f21556s;

    /* renamed from: t */
    public List<Boolean> f21557t;

    /* renamed from: u */
    public List<FSize> f21558u;

    /* loaded from: classes4.dex */
    public enum LegendDirection {
        LEFT_TO_RIGHT,
        RIGHT_TO_LEFT
    }

    /* loaded from: classes4.dex */
    public enum LegendForm {
        NONE,
        EMPTY,
        DEFAULT,
        SQUARE,
        CIRCLE,
        LINE
    }

    /* loaded from: classes4.dex */
    public enum LegendHorizontalAlignment {
        LEFT,
        CENTER,
        RIGHT
    }

    /* loaded from: classes4.dex */
    public enum LegendOrientation {
        HORIZONTAL,
        VERTICAL
    }

    @Deprecated
    /* loaded from: classes4.dex */
    public enum LegendPosition {
        RIGHT_OF_CHART,
        RIGHT_OF_CHART_CENTER,
        RIGHT_OF_CHART_INSIDE,
        LEFT_OF_CHART,
        LEFT_OF_CHART_CENTER,
        LEFT_OF_CHART_INSIDE,
        BELOW_CHART_LEFT,
        BELOW_CHART_RIGHT,
        BELOW_CHART_CENTER,
        ABOVE_CHART_LEFT,
        ABOVE_CHART_RIGHT,
        ABOVE_CHART_CENTER,
        PIECHART_CENTER
    }

    /* loaded from: classes4.dex */
    public enum LegendVerticalAlignment {
        TOP,
        CENTER,
        BOTTOM
    }

    /* renamed from: com.github.mikephil.charting.components.Legend$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4592a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f21559a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f21560b;

        static {
            int[] iArr = new int[LegendOrientation.values().length];
            f21560b = iArr;
            try {
                iArr[LegendOrientation.VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21560b[LegendOrientation.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[LegendPosition.values().length];
            f21559a = iArr2;
            try {
                iArr2[LegendPosition.LEFT_OF_CHART.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f21559a[LegendPosition.LEFT_OF_CHART_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f21559a[LegendPosition.LEFT_OF_CHART_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f21559a[LegendPosition.RIGHT_OF_CHART.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f21559a[LegendPosition.RIGHT_OF_CHART_INSIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f21559a[LegendPosition.RIGHT_OF_CHART_CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f21559a[LegendPosition.ABOVE_CHART_LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f21559a[LegendPosition.ABOVE_CHART_CENTER.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f21559a[LegendPosition.ABOVE_CHART_RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f21559a[LegendPosition.BELOW_CHART_LEFT.ordinal()] = 10;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f21559a[LegendPosition.BELOW_CHART_CENTER.ordinal()] = 11;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f21559a[LegendPosition.BELOW_CHART_RIGHT.ordinal()] = 12;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f21559a[LegendPosition.PIECHART_CENTER.ordinal()] = 13;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public Legend() {
        this.f21538a = new LegendEntry[0];
        this.f21540c = false;
        this.f21541d = LegendHorizontalAlignment.LEFT;
        this.f21542e = LegendVerticalAlignment.BOTTOM;
        this.f21543f = LegendOrientation.HORIZONTAL;
        this.f21544g = false;
        this.f21545h = LegendDirection.LEFT_TO_RIGHT;
        this.f21546i = LegendForm.SQUARE;
        this.f21547j = 8.0f;
        this.f21548k = 3.0f;
        this.f21549l = null;
        this.f21550m = 6.0f;
        this.f21551n = 0.0f;
        this.f21552o = 5.0f;
        this.f21553p = 3.0f;
        this.f21554q = 0.95f;
        this.mNeededWidth = 0.0f;
        this.mNeededHeight = 0.0f;
        this.mTextHeightMax = 0.0f;
        this.mTextWidthMax = 0.0f;
        this.f21555r = false;
        this.f21556s = new ArrayList(16);
        this.f21557t = new ArrayList(16);
        this.f21558u = new ArrayList(16);
        this.mTextSize = Utils.convertDpToPixel(10.0f);
        this.mXOffset = Utils.convertDpToPixel(5.0f);
        this.mYOffset = Utils.convertDpToPixel(3.0f);
    }

    public void calculateDimensions(Paint paint, ViewPortHandler viewPortHandler) {
        float f;
        float f2;
        float f3;
        float convertDpToPixel = Utils.convertDpToPixel(this.f21547j);
        float convertDpToPixel2 = Utils.convertDpToPixel(this.f21553p);
        float convertDpToPixel3 = Utils.convertDpToPixel(this.f21552o);
        float convertDpToPixel4 = Utils.convertDpToPixel(this.f21550m);
        float convertDpToPixel5 = Utils.convertDpToPixel(this.f21551n);
        boolean z = this.f21555r;
        LegendEntry[] legendEntryArr = this.f21538a;
        int length = legendEntryArr.length;
        this.mTextWidthMax = getMaximumEntryWidth(paint);
        this.mTextHeightMax = getMaximumEntryHeight(paint);
        int i = C4592a.f21560b[this.f21543f.ordinal()];
        if (i == 1) {
            float lineHeight = Utils.getLineHeight(paint);
            float f4 = 0.0f;
            float f5 = 0.0f;
            float f6 = 0.0f;
            boolean z2 = false;
            for (int i2 = 0; i2 < length; i2++) {
                LegendEntry legendEntry = legendEntryArr[i2];
                boolean z3 = legendEntry.form != LegendForm.NONE;
                float convertDpToPixel6 = Float.isNaN(legendEntry.formSize) ? convertDpToPixel : Utils.convertDpToPixel(legendEntry.formSize);
                String str = legendEntry.label;
                if (!z2) {
                    f6 = 0.0f;
                }
                if (z3) {
                    if (z2) {
                        f6 += convertDpToPixel2;
                    }
                    f6 += convertDpToPixel6;
                }
                if (str != null) {
                    if (z3 && !z2) {
                        f6 += convertDpToPixel3;
                    } else if (z2) {
                        f4 = Math.max(f4, f6);
                        f5 += lineHeight + convertDpToPixel5;
                        f6 = 0.0f;
                        z2 = false;
                    }
                    f6 += Utils.calcTextWidth(paint, str);
                    if (i2 < length - 1) {
                        f5 += lineHeight + convertDpToPixel5;
                    }
                } else {
                    f6 += convertDpToPixel6;
                    if (i2 < length - 1) {
                        f6 += convertDpToPixel2;
                    }
                    z2 = true;
                }
                f4 = Math.max(f4, f6);
            }
            this.mNeededWidth = f4;
            this.mNeededHeight = f5;
        } else if (i == 2) {
            float lineHeight2 = Utils.getLineHeight(paint);
            float lineSpacing = Utils.getLineSpacing(paint) + convertDpToPixel5;
            float contentWidth = viewPortHandler.contentWidth() * this.f21554q;
            this.f21557t.clear();
            this.f21556s.clear();
            this.f21558u.clear();
            int i3 = 0;
            float f7 = 0.0f;
            int i4 = -1;
            float f8 = 0.0f;
            float f9 = 0.0f;
            while (i3 < length) {
                LegendEntry legendEntry2 = legendEntryArr[i3];
                float f10 = convertDpToPixel;
                float f11 = convertDpToPixel4;
                boolean z4 = legendEntry2.form != LegendForm.NONE;
                float convertDpToPixel7 = Float.isNaN(legendEntry2.formSize) ? f10 : Utils.convertDpToPixel(legendEntry2.formSize);
                String str2 = legendEntry2.label;
                LegendEntry[] legendEntryArr2 = legendEntryArr;
                float f12 = lineSpacing;
                this.f21557t.add(Boolean.FALSE);
                float f13 = i4 == -1 ? 0.0f : f8 + convertDpToPixel2;
                if (str2 != null) {
                    f = convertDpToPixel2;
                    this.f21556s.add(Utils.calcTextSize(paint, str2));
                    f2 = f13 + (z4 ? convertDpToPixel3 + convertDpToPixel7 : 0.0f) + this.f21556s.get(i3).width;
                } else {
                    f = convertDpToPixel2;
                    float f14 = convertDpToPixel7;
                    this.f21556s.add(FSize.getInstance(0.0f, 0.0f));
                    f2 = f13 + (z4 ? f14 : 0.0f);
                    if (i4 == -1) {
                        i4 = i3;
                    }
                }
                if (str2 != null || i3 == length - 1) {
                    float f15 = f9;
                    float f16 = f15 == 0.0f ? 0.0f : f11;
                    if (!z || f15 == 0.0f || contentWidth - f15 >= f16 + f2) {
                        f3 = f15 + f16 + f2;
                    } else {
                        this.f21558u.add(FSize.getInstance(f15, lineHeight2));
                        float max = Math.max(f7, f15);
                        this.f21557t.set(i4 > -1 ? i4 : i3, Boolean.TRUE);
                        f7 = max;
                        f3 = f2;
                    }
                    if (i3 == length - 1) {
                        this.f21558u.add(FSize.getInstance(f3, lineHeight2));
                        f7 = Math.max(f7, f3);
                    }
                    f9 = f3;
                }
                if (str2 != null) {
                    i4 = -1;
                }
                i3++;
                convertDpToPixel2 = f;
                convertDpToPixel = f10;
                convertDpToPixel4 = f11;
                lineSpacing = f12;
                f8 = f2;
                legendEntryArr = legendEntryArr2;
            }
            float f17 = lineSpacing;
            this.mNeededWidth = f7;
            this.mNeededHeight = (lineHeight2 * this.f21558u.size()) + (f17 * (this.f21558u.size() == 0 ? 0 : this.f21558u.size() - 1));
        }
        this.mNeededHeight += this.mYOffset;
        this.mNeededWidth += this.mXOffset;
    }

    public List<Boolean> getCalculatedLabelBreakPoints() {
        return this.f21557t;
    }

    public List<FSize> getCalculatedLabelSizes() {
        return this.f21556s;
    }

    public List<FSize> getCalculatedLineSizes() {
        return this.f21558u;
    }

    @Deprecated
    public int[] getColors() {
        int[] iArr = new int[this.f21538a.length];
        int i = 0;
        while (true) {
            LegendEntry[] legendEntryArr = this.f21538a;
            if (i >= legendEntryArr.length) {
                return iArr;
            }
            LegendEntry legendEntry = legendEntryArr[i];
            LegendForm legendForm = legendEntry.form;
            iArr[i] = legendForm == LegendForm.NONE ? ColorTemplate.COLOR_SKIP : legendForm == LegendForm.EMPTY ? ColorTemplate.COLOR_NONE : legendEntry.formColor;
            i++;
        }
    }

    public LegendDirection getDirection() {
        return this.f21545h;
    }

    public LegendEntry[] getEntries() {
        return this.f21538a;
    }

    @Deprecated
    public int[] getExtraColors() {
        int[] iArr = new int[this.f21539b.length];
        int i = 0;
        while (true) {
            LegendEntry[] legendEntryArr = this.f21539b;
            if (i >= legendEntryArr.length) {
                return iArr;
            }
            LegendEntry legendEntry = legendEntryArr[i];
            LegendForm legendForm = legendEntry.form;
            iArr[i] = legendForm == LegendForm.NONE ? ColorTemplate.COLOR_SKIP : legendForm == LegendForm.EMPTY ? ColorTemplate.COLOR_NONE : legendEntry.formColor;
            i++;
        }
    }

    public LegendEntry[] getExtraEntries() {
        return this.f21539b;
    }

    @Deprecated
    public String[] getExtraLabels() {
        String[] strArr = new String[this.f21539b.length];
        int i = 0;
        while (true) {
            LegendEntry[] legendEntryArr = this.f21539b;
            if (i >= legendEntryArr.length) {
                return strArr;
            }
            strArr[i] = legendEntryArr[i].label;
            i++;
        }
    }

    public LegendForm getForm() {
        return this.f21546i;
    }

    public DashPathEffect getFormLineDashEffect() {
        return this.f21549l;
    }

    public float getFormLineWidth() {
        return this.f21548k;
    }

    public float getFormSize() {
        return this.f21547j;
    }

    public float getFormToTextSpace() {
        return this.f21552o;
    }

    public LegendHorizontalAlignment getHorizontalAlignment() {
        return this.f21541d;
    }

    @Deprecated
    public String[] getLabels() {
        String[] strArr = new String[this.f21538a.length];
        int i = 0;
        while (true) {
            LegendEntry[] legendEntryArr = this.f21538a;
            if (i >= legendEntryArr.length) {
                return strArr;
            }
            strArr[i] = legendEntryArr[i].label;
            i++;
        }
    }

    public float getMaxSizePercent() {
        return this.f21554q;
    }

    public float getMaximumEntryHeight(Paint paint) {
        float f = 0.0f;
        for (LegendEntry legendEntry : this.f21538a) {
            String str = legendEntry.label;
            if (str != null) {
                float calcTextHeight = Utils.calcTextHeight(paint, str);
                if (calcTextHeight > f) {
                    f = calcTextHeight;
                }
            }
        }
        return f;
    }

    public float getMaximumEntryWidth(Paint paint) {
        float convertDpToPixel = Utils.convertDpToPixel(this.f21552o);
        float f = 0.0f;
        float f2 = 0.0f;
        for (LegendEntry legendEntry : this.f21538a) {
            float convertDpToPixel2 = Utils.convertDpToPixel(Float.isNaN(legendEntry.formSize) ? this.f21547j : legendEntry.formSize);
            if (convertDpToPixel2 > f2) {
                f2 = convertDpToPixel2;
            }
            String str = legendEntry.label;
            if (str != null) {
                float calcTextWidth = Utils.calcTextWidth(paint, str);
                if (calcTextWidth > f) {
                    f = calcTextWidth;
                }
            }
        }
        return f + f2 + convertDpToPixel;
    }

    public LegendOrientation getOrientation() {
        return this.f21543f;
    }

    @Deprecated
    public LegendPosition getPosition() {
        LegendOrientation legendOrientation = this.f21543f;
        if (legendOrientation == LegendOrientation.VERTICAL && this.f21541d == LegendHorizontalAlignment.CENTER && this.f21542e == LegendVerticalAlignment.CENTER) {
            return LegendPosition.PIECHART_CENTER;
        }
        if (legendOrientation == LegendOrientation.HORIZONTAL) {
            if (this.f21542e == LegendVerticalAlignment.TOP) {
                LegendHorizontalAlignment legendHorizontalAlignment = this.f21541d;
                return legendHorizontalAlignment == LegendHorizontalAlignment.LEFT ? LegendPosition.ABOVE_CHART_LEFT : legendHorizontalAlignment == LegendHorizontalAlignment.RIGHT ? LegendPosition.ABOVE_CHART_RIGHT : LegendPosition.ABOVE_CHART_CENTER;
            }
            LegendHorizontalAlignment legendHorizontalAlignment2 = this.f21541d;
            return legendHorizontalAlignment2 == LegendHorizontalAlignment.LEFT ? LegendPosition.BELOW_CHART_LEFT : legendHorizontalAlignment2 == LegendHorizontalAlignment.RIGHT ? LegendPosition.BELOW_CHART_RIGHT : LegendPosition.BELOW_CHART_CENTER;
        }
        if (this.f21541d == LegendHorizontalAlignment.LEFT) {
            LegendVerticalAlignment legendVerticalAlignment = this.f21542e;
            return (legendVerticalAlignment == LegendVerticalAlignment.TOP && this.f21544g) ? LegendPosition.LEFT_OF_CHART_INSIDE : legendVerticalAlignment == LegendVerticalAlignment.CENTER ? LegendPosition.LEFT_OF_CHART_CENTER : LegendPosition.LEFT_OF_CHART;
        }
        LegendVerticalAlignment legendVerticalAlignment2 = this.f21542e;
        return (legendVerticalAlignment2 == LegendVerticalAlignment.TOP && this.f21544g) ? LegendPosition.RIGHT_OF_CHART_INSIDE : legendVerticalAlignment2 == LegendVerticalAlignment.CENTER ? LegendPosition.RIGHT_OF_CHART_CENTER : LegendPosition.RIGHT_OF_CHART;
    }

    public float getStackSpace() {
        return this.f21553p;
    }

    public LegendVerticalAlignment getVerticalAlignment() {
        return this.f21542e;
    }

    public float getXEntrySpace() {
        return this.f21550m;
    }

    public float getYEntrySpace() {
        return this.f21551n;
    }

    public boolean isDrawInsideEnabled() {
        return this.f21544g;
    }

    public boolean isLegendCustom() {
        return this.f21540c;
    }

    public boolean isWordWrapEnabled() {
        return this.f21555r;
    }

    public void resetCustom() {
        this.f21540c = false;
    }

    public void setCustom(LegendEntry[] legendEntryArr) {
        this.f21538a = legendEntryArr;
        this.f21540c = true;
    }

    public void setDirection(LegendDirection legendDirection) {
        this.f21545h = legendDirection;
    }

    public void setDrawInside(boolean z) {
        this.f21544g = z;
    }

    public void setEntries(List<LegendEntry> list) {
        this.f21538a = (LegendEntry[]) list.toArray(new LegendEntry[list.size()]);
    }

    public void setExtra(List<LegendEntry> list) {
        this.f21539b = (LegendEntry[]) list.toArray(new LegendEntry[list.size()]);
    }

    public void setForm(LegendForm legendForm) {
        this.f21546i = legendForm;
    }

    public void setFormLineDashEffect(DashPathEffect dashPathEffect) {
        this.f21549l = dashPathEffect;
    }

    public void setFormLineWidth(float f) {
        this.f21548k = f;
    }

    public void setFormSize(float f) {
        this.f21547j = f;
    }

    public void setFormToTextSpace(float f) {
        this.f21552o = f;
    }

    public void setHorizontalAlignment(LegendHorizontalAlignment legendHorizontalAlignment) {
        this.f21541d = legendHorizontalAlignment;
    }

    public void setMaxSizePercent(float f) {
        this.f21554q = f;
    }

    public void setOrientation(LegendOrientation legendOrientation) {
        this.f21543f = legendOrientation;
    }

    @Deprecated
    public void setPosition(LegendPosition legendPosition) {
        switch (C4592a.f21559a[legendPosition.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f21541d = LegendHorizontalAlignment.LEFT;
                this.f21542e = legendPosition == LegendPosition.LEFT_OF_CHART_CENTER ? LegendVerticalAlignment.CENTER : LegendVerticalAlignment.TOP;
                this.f21543f = LegendOrientation.VERTICAL;
                break;
            case 4:
            case 5:
            case 6:
                this.f21541d = LegendHorizontalAlignment.RIGHT;
                this.f21542e = legendPosition == LegendPosition.RIGHT_OF_CHART_CENTER ? LegendVerticalAlignment.CENTER : LegendVerticalAlignment.TOP;
                this.f21543f = LegendOrientation.VERTICAL;
                break;
            case 7:
            case 8:
            case 9:
                this.f21541d = legendPosition == LegendPosition.ABOVE_CHART_LEFT ? LegendHorizontalAlignment.LEFT : legendPosition == LegendPosition.ABOVE_CHART_RIGHT ? LegendHorizontalAlignment.RIGHT : LegendHorizontalAlignment.CENTER;
                this.f21542e = LegendVerticalAlignment.TOP;
                this.f21543f = LegendOrientation.HORIZONTAL;
                break;
            case 10:
            case 11:
            case 12:
                this.f21541d = legendPosition == LegendPosition.BELOW_CHART_LEFT ? LegendHorizontalAlignment.LEFT : legendPosition == LegendPosition.BELOW_CHART_RIGHT ? LegendHorizontalAlignment.RIGHT : LegendHorizontalAlignment.CENTER;
                this.f21542e = LegendVerticalAlignment.BOTTOM;
                this.f21543f = LegendOrientation.HORIZONTAL;
                break;
            case 13:
                this.f21541d = LegendHorizontalAlignment.CENTER;
                this.f21542e = LegendVerticalAlignment.CENTER;
                this.f21543f = LegendOrientation.VERTICAL;
                break;
        }
        this.f21544g = legendPosition == LegendPosition.LEFT_OF_CHART_INSIDE || legendPosition == LegendPosition.RIGHT_OF_CHART_INSIDE;
    }

    public void setStackSpace(float f) {
        this.f21553p = f;
    }

    public void setVerticalAlignment(LegendVerticalAlignment legendVerticalAlignment) {
        this.f21542e = legendVerticalAlignment;
    }

    public void setWordWrapEnabled(boolean z) {
        this.f21555r = z;
    }

    public void setXEntrySpace(float f) {
        this.f21550m = f;
    }

    public void setYEntrySpace(float f) {
        this.f21551n = f;
    }

    public void setExtra(LegendEntry[] legendEntryArr) {
        if (legendEntryArr == null) {
            legendEntryArr = new LegendEntry[0];
        }
        this.f21539b = legendEntryArr;
    }

    public void setCustom(List<LegendEntry> list) {
        this.f21538a = (LegendEntry[]) list.toArray(new LegendEntry[list.size()]);
        this.f21540c = true;
    }

    @Deprecated
    public void setExtra(List<Integer> list, List<String> list2) {
        setExtra(Utils.convertIntegers(list), Utils.convertStrings(list2));
    }

    public void setExtra(int[] iArr, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Math.min(iArr.length, strArr.length); i++) {
            LegendEntry legendEntry = new LegendEntry();
            int i2 = iArr[i];
            legendEntry.formColor = i2;
            legendEntry.label = strArr[i];
            if (i2 == 1122868 || i2 == 0) {
                legendEntry.form = LegendForm.NONE;
            } else if (i2 == 1122867) {
                legendEntry.form = LegendForm.EMPTY;
            }
            arrayList.add(legendEntry);
        }
        this.f21539b = (LegendEntry[]) arrayList.toArray(new LegendEntry[arrayList.size()]);
    }

    public Legend(LegendEntry[] legendEntryArr) {
        this();
        if (legendEntryArr != null) {
            this.f21538a = legendEntryArr;
            return;
        }
        throw new IllegalArgumentException("entries array is NULL");
    }

    @Deprecated
    public Legend(int[] iArr, String[] strArr) {
        this();
        if (iArr != null && strArr != null) {
            if (iArr.length == strArr.length) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < Math.min(iArr.length, strArr.length); i++) {
                    LegendEntry legendEntry = new LegendEntry();
                    int i2 = iArr[i];
                    legendEntry.formColor = i2;
                    legendEntry.label = strArr[i];
                    if (i2 == 1122868) {
                        legendEntry.form = LegendForm.NONE;
                    } else if (i2 == 1122867 || i2 == 0) {
                        legendEntry.form = LegendForm.EMPTY;
                    }
                    arrayList.add(legendEntry);
                }
                this.f21538a = (LegendEntry[]) arrayList.toArray(new LegendEntry[arrayList.size()]);
                return;
            }
            throw new IllegalArgumentException("colors array and labels array need to be of same size");
        }
        throw new IllegalArgumentException("colors array or labels array is NULL");
    }

    @Deprecated
    public Legend(List<Integer> list, List<String> list2) {
        this(Utils.convertIntegers(list), Utils.convertStrings(list2));
    }
}
