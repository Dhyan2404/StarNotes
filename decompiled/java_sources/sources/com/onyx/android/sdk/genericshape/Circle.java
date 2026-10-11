package com.onyx.android.sdk.genericshape;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Circle;", "Lcom/onyx/android/sdk/genericshape/Oval;", "multiPoint", "Lcom/onyx/android/sdk/genericshape/MultiPoint;", "(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class Circle extends Oval {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Circle(@NotNull MultiPoint multiPoint) {
        super(multiPoint);
        Intrinsics.checkNotNullParameter(multiPoint, "multiPoint");
        getProperties().setSubType("Circle");
    }
}
