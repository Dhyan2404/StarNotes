package com.onyx.android.sdk.reader.plugins.template;

import android.graphics.Canvas;
import android.graphics.RectF;
import com.onyx.android.sdk.base.lite.extension.RectFKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.genericshape.DrawContext;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.PageMargins;
import com.onyx.android.sdk.reader.api.DrawArgs;
import com.onyx.android.sdk.reader.api.ReaderPluginOptions;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;", "", "()V", "close", "", "drawGeoLayout", "", "drawArgs", "Lcom/onyx/android/sdk/reader/api/DrawArgs;", gon.f71305w, "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "pluginOptions", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TemplateReaderWrapper {
    public final void close() {
    }

    public final boolean drawGeoLayout(@NotNull DrawArgs drawArgs, @Nullable GeoLayout layout, @NotNull ReaderPluginOptions pluginOptions) {
        PageMargins pageMargins;
        Intrinsics.checkNotNullParameter(drawArgs, "drawArgs");
        Intrinsics.checkNotNullParameter(pluginOptions, "pluginOptions");
        if (layout == null || (pageMargins = layout.getProperties().getPageMargins()) == null) {
            return false;
        }
        pageMargins.setLayoutRect(RectFKt.rotated$default(new RectF(drawArgs.getVisibleRect()), -drawArgs.getRotation(), 0.0f, 0.0f, 6, null));
        layout.draw(new DrawContext(new Canvas(drawArgs.getBitmap()), BitmapUtils.INSTANCE.calculateRotationMatrix(pageMargins.getLayoutRect(), drawArgs.getDisplayRect(), drawArgs.getRotation()), pluginOptions.getResDirs(), false, false, false, drawArgs.getRotation(), 56, null));
        return true;
    }
}
