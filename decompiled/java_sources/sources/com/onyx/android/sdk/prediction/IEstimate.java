package com.onyx.android.sdk.prediction;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.data.TouchPoint;
import java.util.ArrayList;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J$\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH&J\b\u0010\u000e\u001a\u00020\u000bH\u0016J\b\u0010\u000f\u001a\u00020\u0003H&¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/prediction/IEstimate;", "", "destory", "", "estimate", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "Lkotlin/collections/ArrayList;", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "init", "", "optView", "Landroid/view/View;", "preInit", "release", "sdk-prediction_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface IEstimate {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static boolean preInit(@NotNull IEstimate iEstimate) {
            return true;
        }
    }

    void destory();

    @Nullable
    ArrayList<TouchPoint> estimate(@NotNull MotionEvent event);

    boolean init(@NotNull View optView);

    boolean preInit();

    void release();
}
