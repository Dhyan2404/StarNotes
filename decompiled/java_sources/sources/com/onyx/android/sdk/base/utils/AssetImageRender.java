package com.onyx.android.sdk.base.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.ImageRender;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/AssetImageRender;", "Lcom/onyx/android/sdk/base/utils/ImageRender;", "()V", "drawFullImageToTargetBitmap", "", "targetBitmap", "Landroid/graphics/Bitmap;", "renderArgs", "Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;", "pathInputStream", "Ljava/io/InputStream;", "path", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nAssetImageRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetImageRender.kt\ncom/onyx/android/sdk/base/utils/AssetImageRender\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,35:1\n344#2,3:36\n*S KotlinDebug\n*F\n+ 1 AssetImageRender.kt\ncom/onyx/android/sdk/base/utils/AssetImageRender\n*L\n24#1:36,3\n*E\n"})
/* loaded from: classes7.dex */
public final class AssetImageRender extends ImageRender {
    @Override // com.onyx.android.sdk.base.utils.ImageRender
    public boolean drawFullImageToTargetBitmap(@NotNull Bitmap targetBitmap, @NotNull ImageRender.RenderArgs renderArgs) {
        Intrinsics.checkNotNullParameter(targetBitmap, "targetBitmap");
        Intrinsics.checkNotNullParameter(renderArgs, "renderArgs");
        try {
            String path = renderArgs.getPath();
            RectF displayRect = renderArgs.getDisplayRect();
            BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
            Context appContext = ResManager.INSTANCE.getAppContext();
            String fileName = FileUtils.INSTANCE.getFileName(path);
            Rect rect = new Rect();
            displayRect.roundOut(rect);
            Bitmap decodeAssetResToBitmap = bitmapUtils.decodeAssetResToBitmap(appContext, fileName, rect);
            if (decodeAssetResToBitmap == null) {
                return true;
            }
            renderToTargetBitmap(renderArgs, targetBitmap, decodeAssetResToBitmap);
            return true;
        } catch (Throwable th) {
            Log.w(AnyKt.toSimpleNameString(this), th);
            return false;
        }
    }

    @Override // com.onyx.android.sdk.base.utils.ImageRender
    @NotNull
    public InputStream pathInputStream(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        InputStream open = ResManager.INSTANCE.getAppContext().getAssets().open(FileUtils.INSTANCE.getFileName(path));
        Intrinsics.checkNotNullExpressionValue(open, "open(...)");
        return open;
    }
}
