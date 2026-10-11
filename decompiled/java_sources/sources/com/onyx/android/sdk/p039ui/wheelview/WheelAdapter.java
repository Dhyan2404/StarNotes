package com.onyx.android.sdk.p039ui.wheelview;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0015\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0005H&¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0005H&J\u0015\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00028\u0000H&¢\u0006\u0002\u0010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;", "T", "", "getItem", FirebaseAnalytics.Param.INDEX, "", "(I)Ljava/lang/Object;", "getItemsCount", "indexOf", C4921e.f26528e, "(Ljava/lang/Object;)I", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface WheelAdapter<T> {
    T getItem(int index);

    int getItemsCount();

    int indexOf(T o);
}
