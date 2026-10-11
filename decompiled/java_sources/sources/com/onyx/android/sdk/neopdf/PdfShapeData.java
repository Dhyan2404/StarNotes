package com.onyx.android.sdk.neopdf;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfShapeData;", "Ljava/io/Serializable;", "()V", "data", "", "getData", "()[B", "setData", "([B)V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PdfShapeData implements Serializable {

    @Nullable
    private byte[] data;

    @Nullable
    public final byte[] getData() {
        return this.data;
    }

    /* renamed from: setData, reason: collision with other method in class */
    public final void m72291setData(@Nullable byte[] bArr) {
        this.data = bArr;
    }

    @NotNull
    public final PdfShapeData setData(@NotNull byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
        return this;
    }
}
