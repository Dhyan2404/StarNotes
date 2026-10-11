package org.mozilla.universalchardet.prober.distributionanalysis;

/* loaded from: classes13.dex */
public abstract class CharDistributionAnalysis {
    public static final int ENOUGH_DATA_THRESHOLD = 1024;
    public static final int MINIMUM_DATA_THRESHOLD = 4;
    public static final float SURE_NO = 0.01f;
    public static final float SURE_YES = 0.99f;

    /* renamed from: a */
    public int f115591a;

    /* renamed from: b */
    public int f115592b;
    protected int[] charToFreqOrder;
    protected float typicalDistributionRatio;

    public CharDistributionAnalysis() {
        reset();
    }

    public float getConfidence() {
        int i;
        int i2 = this.f115592b;
        if (i2 <= 0 || (i = this.f115591a) <= 4) {
            return 0.01f;
        }
        if (i2 != i) {
            float f = i / ((i2 - i) * this.typicalDistributionRatio);
            if (f < 0.99f) {
                return f;
            }
        }
        return 0.99f;
    }

    public abstract int getOrder(byte[] bArr, int i);

    public boolean gotEnoughData() {
        return this.f115592b > 1024;
    }

    public void handleData(byte[] bArr, int i, int i2) {
    }

    public void handleOneChar(byte[] bArr, int i, int i2) {
        int order = i2 == 2 ? getOrder(bArr, i) : -1;
        if (order >= 0) {
            this.f115592b++;
            int[] iArr = this.charToFreqOrder;
            if (order >= iArr.length || 512 <= iArr[order]) {
                return;
            }
            this.f115591a++;
        }
    }

    public final void reset() {
        this.f115592b = 0;
        this.f115591a = 0;
    }

    public void setOption() {
    }
}
