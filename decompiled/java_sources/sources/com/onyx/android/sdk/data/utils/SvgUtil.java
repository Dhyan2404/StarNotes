package com.onyx.android.sdk.data.utils;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import androidx.annotation.WorkerThread;
import com.caverock.androidsvg.SVG;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.data.C7373R;
import java.io.Closeable;
import java.io.FileInputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0012\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\b\u001a\u00020\tH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\tH\u0007J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0007J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\t2\b\b\u0002\u0010\u0010\u001a\u00020\u00152\b\b\u0002\u0010\u0011\u001a\u00020\u0015H\u0007J\u000e\u0010\u0016\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\n\u0010\u0017\u001a\u00020\u0018*\u00020\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/SvgUtil;", "", "()V", "DEFAULT_HEIGHT", "", "DEFAULT_WIDTH", "decodeSize", "", "path", "", "originSize", "Lcom/onyx/android/sdk/base/data/Size;", "decodeSvg", "Lcom/caverock/androidsvg/SVG;", "decodeSvgAsBitmap", "Landroid/graphics/Bitmap;", "width", "height", "decodeSvgDrawable", "Landroid/graphics/drawable/PictureDrawable;", "file", "", "isSvgImage", "toBitmapDrawable", "Landroid/graphics/drawable/BitmapDrawable;", "Landroid/graphics/drawable/Drawable;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SvgUtil {
    private static final int DEFAULT_HEIGHT;
    private static final int DEFAULT_WIDTH;

    @NotNull
    public static final SvgUtil INSTANCE = new SvgUtil();

    static {
        ResManager resManager = ResManager.INSTANCE;
        DEFAULT_WIDTH = resManager.getDimens(C7373R.dimen.svg_default_decode_width);
        DEFAULT_HEIGHT = resManager.getDimens(C7373R.dimen.svg_default_decode_height);
    }

    private SvgUtil() {
    }

    public static /* synthetic */ PictureDrawable decodeSvgDrawable$default(SvgUtil svgUtil, String str, Number number, Number number2, int i, Object obj) {
        if ((i & 2) != 0) {
            number = Integer.MIN_VALUE;
        }
        if ((i & 4) != 0) {
            number2 = Integer.MIN_VALUE;
        }
        return svgUtil.decodeSvgDrawable(str, number, number2);
    }

    @WorkerThread
    public final boolean decodeSize(@NotNull String path, @NotNull Size originSize) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(originSize, "originSize");
        SVG decodeSvg = decodeSvg(path);
        if (decodeSvg == null) {
            return false;
        }
        int documentWidth = (int) decodeSvg.getDocumentWidth();
        int documentHeight = (int) decodeSvg.getDocumentHeight();
        if (documentWidth <= 0) {
            documentWidth = DEFAULT_WIDTH;
        }
        originSize.m72172setWidth(documentWidth);
        if (documentHeight <= 0) {
            documentHeight = DEFAULT_HEIGHT;
        }
        originSize.m72171setHeight(documentHeight);
        return true;
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [boolean] */
    @WorkerThread
    @Nullable
    public final SVG decodeSvg(@NotNull String path) {
        ?? startsWith$default;
        FileInputStream fileInputStream;
        String replaceFirst$default;
        Intrinsics.checkNotNullParameter(path, "path");
        Closeable closeable = null;
        if (!isSvgImage(path)) {
            return null;
        }
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(path, UriUtils.PATH_ASSET_URI_PREFIX, false, 2, null);
        try {
            if (startsWith$default != 0) {
                AssetManager assets = ResManager.INSTANCE.getAppContext().getAssets();
                replaceFirst$default = StringsKt__StringsJVMKt.replaceFirst$default(path, UriUtils.PATH_ASSET_URI_PREFIX, "", false, 4, (Object) null);
                return SVG.getFromAsset(assets, replaceFirst$default);
            }
            try {
                fileInputStream = new FileInputStream(path);
                try {
                    SVG fromInputStream = SVG.getFromInputStream(fileInputStream);
                    FileUtils.INSTANCE.closeQuietly(fileInputStream);
                    return fromInputStream;
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    FileUtils.INSTANCE.closeQuietly(fileInputStream);
                    return null;
                }
            } catch (Exception e2) {
                e = e2;
                fileInputStream = null;
            } catch (Throwable th) {
                th = th;
                FileUtils.INSTANCE.closeQuietly(closeable);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            closeable = startsWith$default;
        }
    }

    @WorkerThread
    @NotNull
    public final Bitmap decodeSvgAsBitmap(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return decodeSvgAsBitmap(path, DEFAULT_WIDTH, DEFAULT_HEIGHT);
    }

    @WorkerThread
    @NotNull
    public final PictureDrawable decodeSvgDrawable(@NotNull String file, @NotNull Number width, @NotNull Number height) {
        boolean startsWith$default;
        SVG fromInputStream;
        String replaceFirst$default;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(width, "width");
        Intrinsics.checkNotNullParameter(height, "height");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(file, UriUtils.PATH_ASSET_URI_PREFIX, false, 2, null);
        if (startsWith$default) {
            AssetManager assets = ResManager.INSTANCE.getAppContext().getAssets();
            replaceFirst$default = StringsKt__StringsJVMKt.replaceFirst$default(file, UriUtils.PATH_ASSET_URI_PREFIX, "", false, 4, (Object) null);
            fromInputStream = SVG.getFromAsset(assets, replaceFirst$default);
        } else {
            fromInputStream = SVG.getFromInputStream(new FileInputStream(file));
        }
        if (!Intrinsics.areEqual((Object) width, (Object) Integer.MIN_VALUE)) {
            fromInputStream.setDocumentWidth(width.floatValue());
        }
        if (!Intrinsics.areEqual((Object) height, (Object) Integer.MIN_VALUE)) {
            fromInputStream.setDocumentHeight(height.floatValue());
        }
        return new PictureDrawable(fromInputStream.renderToPicture());
    }

    public final boolean isSvgImage(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (!StringUtils.isBlank(path)) {
            return StringUtils.endsWithIgnoreCase(path, ".svg");
        }
        Debug.INSTANCE.m32044e(SvgUtil.class, "decode svg with invalid path : " + path, new Object[0]);
        return false;
    }

    @NotNull
    public final BitmapDrawable toBitmapDrawable(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "<this>");
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        drawable.draw(new Canvas(createBitmap));
        return new BitmapDrawable(ResManager.INSTANCE.getAppContext().getResources(), createBitmap);
    }

    @WorkerThread
    @NotNull
    public final Bitmap decodeSvgAsBitmap(@NotNull String path, int width, int height) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (width > 0 && height > 0) {
            Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
            if (!isSvgImage(path)) {
                Debug.INSTANCE.m32044e(SvgUtil.class, "decode svg with error format file : " + path, new Object[0]);
                return createBitmap;
            }
            SVG decodeSvg = decodeSvg(path);
            if (decodeSvg == null) {
                Debug.INSTANCE.m32044e(SvgUtil.class, "decode svg failed : " + path, new Object[0]);
                return createBitmap;
            }
            decodeSvg.setDocumentWidth(width);
            decodeSvg.setDocumentHeight(height);
            decodeSvg.renderToCanvas(new Canvas(createBitmap));
            return createBitmap;
        }
        Bitmap createBitmap2 = Bitmap.createBitmap(DEFAULT_WIDTH, DEFAULT_HEIGHT, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap2, "createBitmap(...)");
        return createBitmap2;
    }
}
