package com.onyx.android.sdk.reader.plugins.images;

import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.ImageRender;
import com.onyx.android.sdk.base.utils.ImageSizeManager;
import com.onyx.android.sdk.reader.api.DrawArgs;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/images/ImagesAndroidWrapper;", "Lcom/onyx/android/sdk/reader/plugins/images/ImagesWrapper;", "", "path", "Lcom/onyx/android/sdk/base/data/Size;", "imageSize", "imagePath", "Lcom/onyx/android/sdk/reader/api/DrawArgs;", "drawArgs", "", "drawImage", "", "closeAll", "Lcom/onyx/android/sdk/base/utils/ImageSizeManager;", "a", "Lcom/onyx/android/sdk/base/utils/ImageSizeManager;", "imageSizeManager", Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ImagesAndroidWrapper implements ImagesWrapper {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public ImageSizeManager imageSizeManager = new ImageSizeManager();

    @Override // com.onyx.android.sdk.reader.plugins.images.ImagesWrapper
    public void closeAll() {
        this.imageSizeManager.clear();
    }

    @Override // com.onyx.android.sdk.reader.plugins.images.ImagesWrapper
    public boolean drawImage(@NotNull String imagePath, @NotNull DrawArgs drawArgs) {
        Intrinsics.checkNotNullParameter(imagePath, "imagePath");
        Intrinsics.checkNotNullParameter(drawArgs, "drawArgs");
        try {
            return new ImageRender().drawImage(new ImageRender.RenderArgs(imagePath, drawArgs.getBitmap(), drawArgs.getDisplayRect(), drawArgs.getScale(), 0.0f, null, 48, null));
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // com.onyx.android.sdk.reader.plugins.images.ImagesWrapper
    @NotNull
    public Size imageSize(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return this.imageSizeManager.loadImageSize(path);
    }
}
