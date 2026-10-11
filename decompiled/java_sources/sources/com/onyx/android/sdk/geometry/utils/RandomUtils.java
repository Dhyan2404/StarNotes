package com.onyx.android.sdk.geometry.utils;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import kotlin.Metadata;
import kotlin.random.Random;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/utils/RandomUtils;", "", "()V", "randomPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "randomRectF", "Landroid/graphics/RectF;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class RandomUtils {

    @NotNull
    public static final RandomUtils INSTANCE = new RandomUtils();

    @NotNull
    public final TouchPoint randomPoint() {
        Random.Companion companion = Random.INSTANCE;
        return new TouchPoint(companion.nextFloat(), companion.nextFloat(), companion.nextInt(0, 1024), 0.0f, 0, 0, 0L, 120, null);
    }

    @NotNull
    public final RectF randomRectF() {
        Random.Companion companion = Random.INSTANCE;
        float nextFloat = companion.nextFloat();
        float nextFloat2 = companion.nextFloat();
        return new RectF(nextFloat, nextFloat2, companion.nextFloat() + nextFloat, companion.nextFloat() + nextFloat2);
    }
}
