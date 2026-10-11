package com.onyx.android.sdk.rxgesture.pen;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.rxgesture.pen.PenMoveReader;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/pen/PenLongPressReader;", "Lcom/onyx/android/sdk/rxgesture/pen/PenReader;", "", "onActivate", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "data", "onMove", "onUp", "Lcom/onyx/android/sdk/base/data/TouchPoint;", C6997f.f39671c, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "pausePoint", "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;", "penGesture", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PenLongPressReader extends PenReader {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public TouchPoint pausePoint;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PenLongPressReader(@NotNull RxPenGesture penGesture) {
        super(penGesture);
        Intrinsics.checkNotNullParameter(penGesture, "penGesture");
    }

    @Override // com.onyx.android.sdk.rxgesture.pen.PenReader
    public void onActivate() {
        super.onActivate();
        Debug.INSTANCE.m32035d(PenLongPressReader.class, "pen long pressure", new Object[0]);
        this.pausePoint = null;
        getPenGesture().postEvent(PenStatus.LONG_PRESS);
    }

    @Override // com.onyx.android.sdk.rxgesture.pen.PenReader
    public void onMove(@NotNull TouchData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (this.pausePoint == null) {
            this.pausePoint = data.getTouchPoint().copy();
        }
        PenMoveReader.Companion companion = PenMoveReader.INSTANCE;
        TouchPoint touchPoint = this.pausePoint;
        Intrinsics.checkNotNull(touchPoint);
        if (companion.isMoving(touchPoint, data.getTouchPoint(), 6)) {
            getPenGesture().setActiveReader(2);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.pen.PenReader
    public void onUp(@NotNull TouchData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        getPenGesture().setActiveReader(3);
    }
}
