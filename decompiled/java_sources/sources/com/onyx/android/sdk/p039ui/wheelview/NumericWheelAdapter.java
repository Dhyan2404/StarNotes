package com.onyx.android.sdk.p039ui.wheelview;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0016R\u0014\u0010\u000b\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;", "Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;", "", "", FirebaseAnalytics.Param.INDEX, "getItem", "getItemsCount", C4921e.f26528e, "indexOf", "a", "I", "minValue", "b", "maxValue", Constants.CONSTRUCTOR_NAME, "(II)V", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NumericWheelAdapter implements WheelAdapter<Object> {

    /* renamed from: a, reason: from kotlin metadata */
    public final int minValue;

    /* renamed from: b, reason: from kotlin metadata */
    public final int maxValue;

    public NumericWheelAdapter(int i, int i2) {
        this.minValue = i;
        this.maxValue = i2;
    }

    @Override // com.onyx.android.sdk.p039ui.wheelview.WheelAdapter
    @NotNull
    public Object getItem(int index) {
        if (index < 0 || index >= getItemsCount()) {
            return 0;
        }
        return Integer.valueOf(this.minValue + index);
    }

    @Override // com.onyx.android.sdk.p039ui.wheelview.WheelAdapter
    public int getItemsCount() {
        return (this.maxValue - this.minValue) + 1;
    }

    @Override // com.onyx.android.sdk.p039ui.wheelview.WheelAdapter
    public int indexOf(@NotNull Object o) {
        Intrinsics.checkNotNullParameter(o, "o");
        try {
            return ((Integer) o).intValue() - this.minValue;
        } catch (Exception unused) {
            return -1;
        }
    }
}
