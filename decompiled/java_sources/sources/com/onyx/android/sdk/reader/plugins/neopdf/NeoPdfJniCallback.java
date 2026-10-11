package com.onyx.android.sdk.reader.plugins.neopdf;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.api.ReaderSentence;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniCallback;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/reader/api/ReaderSentence;", "selection", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "nextPosition", "", "endOfScreen", "", "endOfDocument", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NeoPdfJniCallback {

    @NotNull
    public static final NeoPdfJniCallback INSTANCE = new NeoPdfJniCallback();

    @NotNull
    public final ReaderSentence create(@NotNull ReaderSelection selection, int nextPosition, boolean endOfScreen, boolean endOfDocument) {
        Intrinsics.checkNotNullParameter(selection, "selection");
        return new ReaderSentence(selection, new ReaderPositionImpl().fromInteger(nextPosition), endOfScreen, endOfDocument);
    }
}
