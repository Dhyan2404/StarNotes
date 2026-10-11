package com.onyx.android.sdk.reader.plugins.images;

import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.reader.api.DrawArgs;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0007H&¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/images/ImagesWrapper;", "", "closeAll", "", "drawImage", "", "imagePath", "", "drawArgs", "Lcom/onyx/android/sdk/reader/api/DrawArgs;", "imageSize", "Lcom/onyx/android/sdk/base/data/Size;", "path", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ImagesWrapper {
    void closeAll();

    boolean drawImage(@NotNull String imagePath, @NotNull DrawArgs drawArgs);

    @NotNull
    Size imageSize(@NotNull String path);
}
