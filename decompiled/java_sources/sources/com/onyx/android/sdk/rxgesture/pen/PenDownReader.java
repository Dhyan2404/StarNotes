package com.onyx.android.sdk.rxgesture.pen;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.data.TouchData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/pen/PenDownReader;", "Lcom/onyx/android/sdk/rxgesture/pen/PenReader;", "penGesture", "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;", "(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V", "onActivate", "", "onMove", "data", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "onUp", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PenDownReader extends PenReader {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PenDownReader(@NotNull RxPenGesture penGesture) {
        super(penGesture);
        Intrinsics.checkNotNullParameter(penGesture, "penGesture");
    }

    @Override // com.onyx.android.sdk.rxgesture.pen.PenReader
    public void onActivate() {
        super.onActivate();
        Debug.INSTANCE.m32035d(PenDownReader.class, "pen onDown", new Object[0]);
        getPenGesture().postEvent(PenStatus.DOWN);
    }

    @Override // com.onyx.android.sdk.rxgesture.pen.PenReader
    public void onMove(@NotNull TouchData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Debug.INSTANCE.m32035d(PenDownReader.class, "pen move", new Object[0]);
        getPenGesture().setActiveReader(2);
    }

    @Override // com.onyx.android.sdk.rxgesture.pen.PenReader
    public void onUp(@NotNull TouchData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        getPenGesture().setActiveReader(3);
    }
}
