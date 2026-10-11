package com.onyx.android.sdk.base.data;

import androidx.lifecycle.SavedStateHandle;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/MatrixValues;", "", SavedStateHandle.f7922f, "", "([F)V", "getValues", "()[F", "isEmpty", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MatrixValues {

    @Nullable
    private final float[] values;

    /* JADX WARN: Multi-variable type inference failed */
    public MatrixValues() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Nullable
    public final float[] getValues() {
        return this.values;
    }

    public final boolean isEmpty() {
        float[] fArr = this.values;
        return fArr == null || fArr.length == 0;
    }

    public MatrixValues(@Nullable float[] fArr) {
        this.values = fArr;
    }

    public /* synthetic */ MatrixValues(float[] fArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : fArr);
    }
}
