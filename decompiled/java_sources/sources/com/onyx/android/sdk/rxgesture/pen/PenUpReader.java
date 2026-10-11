package com.onyx.android.sdk.rxgesture.pen;

import com.onyx.android.sdk.base.utils.Debug;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/pen/PenUpReader;", "Lcom/onyx/android/sdk/rxgesture/pen/PenReader;", "penGesture", "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;", "(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V", "onActivate", "", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PenUpReader extends PenReader {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PenUpReader(@NotNull RxPenGesture penGesture) {
        super(penGesture);
        Intrinsics.checkNotNullParameter(penGesture, "penGesture");
    }

    @Override // com.onyx.android.sdk.rxgesture.pen.PenReader
    public void onActivate() {
        super.onActivate();
        Debug.INSTANCE.m32035d(PenUpReader.class, "pen onUp", new Object[0]);
        penStatusBean().setPenStatus(PenStatus.f46570UP);
        getPenGesture().postEvent();
        getPenGesture().setActiveReader(0);
    }
}
