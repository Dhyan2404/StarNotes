package com.onyx.android.sdk.genericshape;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import com.alibaba.fastjson2.annotation.JSONField;
import com.blankj.utilcode.util.ScreenUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.caverock.androidsvg.SVG;
import com.onyx.android.sdk.base.data.ColorTransformMode;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CanvasKt;
import com.onyx.android.sdk.base.extension.FloatKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.AssetImageRender;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ImageRender;
import com.onyx.android.sdk.base.utils.ImageSizeManager;
import com.onyx.android.sdk.base.utils.RawResourceUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.glide.FileKey;
import com.onyx.android.sdk.data.utils.SvgUtil;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.io.File;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u0000 ]2\u00020\u0001:\u0002\\]B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0014\u001a\u00020\u0015J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J,\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002J,\u0010!\u001a\u0004\u0018\u00010\u001c2\b\u0010\"\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002J.\u0010#\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\b\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002J(\u0010&\u001a\u00020\u00152\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00172\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0002J\u0018\u0010.\u001a\u00020\u00152\u0006\u0010'\u001a\u00020(2\b\u0010$\u001a\u0004\u0018\u00010%J*\u0010/\u001a\u00020\u00152\u0006\u0010'\u001a\u00020(2\b\u0010$\u001a\u0004\u0018\u00010%2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000201H\u0002J0\u00103\u001a\u0002012\u0006\u0010'\u001a\u00020(2\u0006\u00104\u001a\u00020\u000f2\u0006\u00105\u001a\u00020\u001f2\u0006\u00106\u001a\u00020+2\u0006\u00107\u001a\u00020+H\u0002J\"\u00108\u001a\u00020\u00152\u0006\u0010'\u001a\u00020(2\b\u0010$\u001a\u0004\u0018\u00010%2\u0006\u00100\u001a\u000201H\u0002J\"\u00109\u001a\u00020\u00152\u0006\u0010'\u001a\u00020(2\b\u0010$\u001a\u0004\u0018\u00010%2\u0006\u00100\u001a\u000201H\u0002J\u0018\u0010:\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020<H\u0002J \u0010=\u001a\u00020\u00152\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00172\u0006\u0010,\u001a\u00020-H\u0002J \u0010>\u001a\u00020\u00152\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00172\u0006\u0010?\u001a\u00020\u001fH\u0002J\u0018\u0010@\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020<H\u0002J\u0018\u0010A\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020<H\u0002J*\u0010B\u001a\u00020\u001c2\u0006\u0010C\u001a\u00020\u00132\b\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002J\"\u0010D\u001a\u00020\u00152\u0006\u0010'\u001a\u00020(2\b\u0010$\u001a\u0004\u0018\u00010%2\u0006\u00100\u001a\u000201H\u0002J\u0016\u0010E\u001a\u00020+2\u0006\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u00020+J\u0016\u0010H\u001a\u00020+2\u0006\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u00020+J\n\u0010I\u001a\u0004\u0018\u00010JH\u0002J\u000f\u0010K\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0002\u0010LJ\u0006\u0010M\u001a\u00020+J\b\u0010N\u001a\u000201H\u0002J \u0010O\u001a\u00020\u001c2\u0006\u0010P\u001a\u00020\u000f2\u0006\u0010Q\u001a\u00020\u00112\u0006\u0010R\u001a\u00020\u0011H\u0002J\u0006\u0010S\u001a\u00020\u0015J\u0018\u0010T\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010U\u001a\u00020\u000fH\u0002J\u0018\u0010V\u001a\u00020+2\u0006\u0010W\u001a\u00020+2\u0006\u0010X\u001a\u00020+H\u0002J\u0010\u0010Y\u001a\u00020\u00152\u0006\u0010Z\u001a\u00020\u0017H\u0002J\u0010\u0010[\u001a\u00020\u00152\u0006\u0010Z\u001a\u00020\u0017H\u0002R\u0012\u0010\u0003\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00110\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00130\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006^"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayout;", "Lcom/onyx/android/sdk/genericshape/Feature;", "()V", "bitmapCache", "Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;", "geoLayoutDrawer", "Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;", "getGeoLayoutDrawer", "()Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;", "setGeoLayoutDrawer", "(Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;)V", "imageSizeManager", "Lcom/onyx/android/sdk/base/utils/ImageSizeManager;", "resFileNameMap", "", "", "resIdMap", "", "svgMap", "Lcom/caverock/androidsvg/SVG;", "clearMargins", "", "colorFilterPaint", "Landroid/graphics/Paint;", "draw", "drawContext", "Lcom/onyx/android/sdk/genericshape/DrawContext;", "drawAssetPicture", "Landroid/graphics/Bitmap;", HuaweiYunQueryArgs.FILE_NAME, "originRectF", "Landroid/graphics/RectF;", "viewport", "drawAssetResource", "resName", "drawAssetSvg", "matrix", "Landroid/graphics/Matrix;", "drawCircle", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "paint", "radius", "", "pts", "", "drawDivider", "drawDotted", "adaptiveSpacing", "", "useShader", "drawGlideImage", "imagePath", "displayRect", "scale", "rotation", "drawGrid", "drawHorizontalLine", "drawImage", "pageMargins", "Lcom/onyx/android/sdk/genericshape/PageMargins;", "drawLine", "drawRect", "rectF", "drawResVector", "drawSvg", "drawSvgBitmap", FileTypeConstant.SVG, "drawVerticalLine", "getAlignOffsetX", "visibleRect", "adaptiveSpace", "getAlignOffsetY", "getAlignPoint", "Landroid/graphics/PointF;", "getFillColor", "()Ljava/lang/Integer;", "getSpacing", "isLowScreenDpiXDevice", "loadBitmapByGlide", "filePath", "width", "height", "recycle", "resAbsolutePath", "resRelativePath", "spaceAdaptive", "space", "total", "strokeColorAdaptive", "strokePaint", "strokeWidthAdaptive", "BitmapCacheData", "Companion", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayout.kt\ncom/onyx/android/sdk/genericshape/GeoLayout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,708:1\n1#2:709\n*E\n"})
/* loaded from: classes7.dex */
public final class GeoLayout extends Feature {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final float HDPI_DIP_X = 240.0f;
    public static final float STROKE_MIN_WIDTH = 1.0f;

    @JSONField(serialize = false)
    @NotNull
    private transient BitmapCacheData bitmapCache;

    @NotNull
    private transient IGeoLayoutDrawer geoLayoutDrawer;

    @NotNull
    private ImageSizeManager imageSizeManager;

    @NotNull
    private Map<String, String> resFileNameMap;

    @NotNull
    private Map<String, Integer> resIdMap;

    @NotNull
    private Map<String, SVG> svgMap;

    @Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018J\u0016\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u001c\u001a\u00020\u001dR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;", "", "()V", "bitmap", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "displayRectF", "Landroid/graphics/RectF;", "getDisplayRectF", "()Landroid/graphics/RectF;", "setDisplayRectF", "(Landroid/graphics/RectF;)V", "rotation", "", "getRotation", "()F", "setRotation", "(F)V", "isBitmapValid", "", "bitmapWidth", "", "bitmapHeight", "isDisplayChanged", "displayRect", Constants.RESET, "", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class BitmapCacheData {

        @Nullable
        private Bitmap bitmap;

        @Nullable
        private RectF displayRectF;
        private float rotation;

        @Nullable
        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        @Nullable
        public final RectF getDisplayRectF() {
            return this.displayRectF;
        }

        public final float getRotation() {
            return this.rotation;
        }

        public final boolean isBitmapValid(int bitmapWidth, int bitmapHeight) {
            return BitmapKt.isValid(this.bitmap) && !BitmapKt.isSizeChanged(this.bitmap, bitmapWidth, bitmapHeight);
        }

        public final boolean isDisplayChanged(@NotNull RectF displayRect, float rotation) {
            Intrinsics.checkNotNullParameter(displayRect, "displayRect");
            if (Intrinsics.areEqual(this.displayRectF, displayRect)) {
                return !((this.rotation > rotation ? 1 : (this.rotation == rotation ? 0 : -1)) == 0);
            }
            return true;
        }

        public final void reset() {
            Bitmap bitmap = this.bitmap;
            if (bitmap != null) {
                bitmap.recycle();
            }
            this.bitmap = null;
            this.displayRectF = null;
        }

        public final void setBitmap(@Nullable Bitmap bitmap) {
            this.bitmap = bitmap;
        }

        public final void setDisplayRectF(@Nullable RectF rectF) {
            this.displayRectF = rectF;
        }

        public final void setRotation(float f) {
            this.rotation = f;
        }
    }

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\tJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;", "", "()V", "HDPI_DIP_X", "", "STROKE_MIN_WIDTH", "createImageGeoLayout", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "relativePath", "", "createResVectorGeoLayout", "resName", "createVectorGeoLayout", "loadDynamicLayoutFromFile", "filePath", "loadDynamicLayoutFromRes", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nGeoLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayout.kt\ncom/onyx/android/sdk/genericshape/GeoLayout$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,708:1\n1#2:709\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final GeoLayout createImageGeoLayout(@NotNull String relativePath) {
            Intrinsics.checkNotNullParameter(relativePath, "relativePath");
            GeoLayout geoLayout = new GeoLayout();
            geoLayout.getProperties().setPageMargins(new PageMargins());
            Properties properties = geoLayout.getProperties();
            ImageAttr imageAttr = new ImageAttr();
            imageAttr.setRelativePath(relativePath);
            properties.setImageAttr(imageAttr);
            geoLayout.getProperties().setLayoutType(GeoConstant.LayoutImage);
            return geoLayout;
        }

        @NotNull
        public final GeoLayout createResVectorGeoLayout(@NotNull String resName) {
            Intrinsics.checkNotNullParameter(resName, "resName");
            GeoLayout geoLayout = new GeoLayout();
            geoLayout.getProperties().setPageMargins(new PageMargins());
            Properties properties = geoLayout.getProperties();
            ResourceAttr resourceAttr = new ResourceAttr();
            resourceAttr.setResName(resName);
            properties.setResourceAttr(resourceAttr);
            geoLayout.getProperties().setLayoutType(GeoConstant.LayoutResVector);
            return geoLayout;
        }

        @NotNull
        public final GeoLayout createVectorGeoLayout(@NotNull String relativePath) {
            Intrinsics.checkNotNullParameter(relativePath, "relativePath");
            GeoLayout geoLayout = new GeoLayout();
            geoLayout.getProperties().setPageMargins(new PageMargins());
            Properties properties = geoLayout.getProperties();
            ImageAttr imageAttr = new ImageAttr();
            imageAttr.setRelativePath(relativePath);
            properties.setImageAttr(imageAttr);
            geoLayout.getProperties().setLayoutType(GeoConstant.LayoutVector);
            return geoLayout;
        }

        @Nullable
        public final GeoLayout loadDynamicLayoutFromFile(@NotNull String filePath) {
            Intrinsics.checkNotNullParameter(filePath, "filePath");
            return GeoFactory.INSTANCE.parseGeoLayout(FileUtils.INSTANCE.readContentOfFile(filePath));
        }

        @Nullable
        public final GeoLayout loadDynamicLayoutFromRes(@NotNull String resName) {
            Intrinsics.checkNotNullParameter(resName, "resName");
            ResManager resManager = ResManager.INSTANCE;
            String contentOfRawResource = RawResourceUtil.INSTANCE.contentOfRawResource(resManager.getAppContext(), resManager.getRawIdentifier(resName));
            if (contentOfRawResource == null) {
                return null;
            }
            return GeoFactory.INSTANCE.parseGeoLayout(contentOfRawResource);
        }

        private Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DividerOffsetStroke.values().length];
            try {
                iArr[DividerOffsetStroke.LEFT_OR_TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DividerOffsetStroke.RIGHT_OR_BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public GeoLayout() {
        getProperties().setSubType(GeoConstant.Layout);
        this.bitmapCache = new BitmapCacheData();
        this.imageSizeManager = new ImageSizeManager();
        this.svgMap = new LinkedHashMap();
        this.resFileNameMap = new LinkedHashMap();
        this.resIdMap = new LinkedHashMap();
        this.geoLayoutDrawer = new GeoLayoutDrawer(this);
    }

    private final Paint colorFilterPaint() {
        ColorTransformMode colorTransformMode = ColorTransformMode.INSTANCE;
        StrokeAttr strokeAttr = getProperties().getStrokeAttr();
        ColorFilter loadColorFilter = colorTransformMode.loadColorFilter(strokeAttr != null ? Integer.valueOf(strokeAttr.getColorTransformMode()) : null);
        if (loadColorFilter == null) {
            return null;
        }
        Paint paint = new Paint();
        paint.setColorFilter(loadColorFilter);
        return paint;
    }

    private final Bitmap drawAssetPicture(String fileName, DrawContext drawContext, RectF originRectF, RectF viewport) {
        String path;
        if ((fileName == null || fileName.length() == 0) || (path = UriUtils.INSTANCE.assetFileUri(fileName).getPath()) == null) {
            return null;
        }
        Size size = new Size(0, 0, 3, null);
        BitmapUtils.INSTANCE.decodeAssetResBitmapSize(fileName, size);
        RectF copy = RectFKt.copy(originRectF);
        Matrix matrix = drawContext.getMatrix();
        if (matrix != null) {
            matrix.mapRect(copy);
        }
        float width = com.onyx.android.sdk.base.lite.extension.RectFKt.rotated$default(copy, -drawContext.getRotation(), 0.0f, 0.0f, 6, null).width() / size.getWidth();
        Bitmap createBitmap = Bitmap.createBitmap((int) viewport.width(), (int) viewport.height(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        new AssetImageRender().drawImage(new ImageRender.RenderArgs(path, createBitmap, copy, width, drawContext.getRotation(), size));
        return createBitmap;
    }

    private final Bitmap drawAssetResource(final String resName, DrawContext drawContext, RectF originRectF, RectF viewport) {
        if (resName == null) {
            return null;
        }
        Map<String, String> map = this.resFileNameMap;
        final Function1<String, String> function1 = new Function1<String, String>() { // from class: com.onyx.android.sdk.genericshape.GeoLayout$drawAssetResource$fileName$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return FileUtils.fileNameInAssets$default(FileUtils.INSTANCE, ResManager.INSTANCE.getAppContext(), resName, null, 4, null);
            }
        };
        String computeIfAbsent = map.computeIfAbsent(resName, new Function() { // from class: com.sunia.HTREnginev2.q1h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String drawAssetResource$lambda$3;
                drawAssetResource$lambda$3 = GeoLayout.drawAssetResource$lambda$3(Function1.this, obj);
                return drawAssetResource$lambda$3;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        String str = computeIfAbsent;
        if (str.length() == 0) {
            return null;
        }
        if (!FileExtensionUtils.INSTANCE.isSvgFile(str)) {
            return drawAssetPicture(str, drawContext, originRectF, viewport);
        }
        RectF copy = RectFKt.copy(originRectF);
        Matrix matrix = drawContext.getMatrix();
        if (matrix != null) {
            matrix.mapRect(copy);
        }
        return drawAssetSvg(str, BitmapUtils.INSTANCE.calculateRotationMatrix(RectKt.toSizeF(originRectF), copy, drawContext.getRotation()), originRectF, viewport);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String drawAssetResource$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (String) tmp0.invoke(obj);
    }

    private final Bitmap drawAssetSvg(String fileName, Matrix matrix, RectF originRectF, RectF viewport) {
        if (fileName == null || fileName.length() == 0) {
            return null;
        }
        AssetManager assets = ResManager.INSTANCE.getAppContext().getAssets();
        Intrinsics.checkNotNullExpressionValue(assets, "getAssets(...)");
        String path = UriUtils.INSTANCE.assetFileUri(fileName).getPath();
        if (path == null) {
            return null;
        }
        SVG svg = this.svgMap.get(path);
        if (svg == null && (svg = SVG.getFromAsset(assets, fileName)) == null) {
            return null;
        }
        this.svgMap.put(path, svg);
        return drawSvgBitmap(svg, matrix, originRectF, viewport);
    }

    private final void drawCircle(Canvas canvas, Paint paint, float radius, float[] pts) {
        this.geoLayoutDrawer.drawCircle(canvas, paint, radius, pts);
    }

    private final void drawDotted(Canvas canvas, Matrix matrix, boolean adaptiveSpacing, boolean useShader) {
        this.geoLayoutDrawer.drawDotted(canvas, matrix, adaptiveSpacing, useShader);
    }

    private final boolean drawGlideImage(Canvas canvas, String imagePath, RectF displayRect, float scale, float rotation) {
        Size size = new Size(0, 0, 3, null);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(imagePath, options);
        size.m72172setWidth(options.outWidth);
        size.m72171setHeight(options.outHeight);
        try {
            Bitmap loadBitmapByGlide = loadBitmapByGlide(imagePath, scale < 1.0f ? (int) (size.getWidth() * scale) : size.getWidth(), scale < 1.0f ? (int) (size.getHeight() * scale) : size.getHeight());
            canvas.drawBitmap(loadBitmapByGlide, BitmapUtils.INSTANCE.calculateRotationMatrix(loadBitmapByGlide, displayRect, rotation), null);
            return true;
        } catch (Exception unused) {
            Debug.INSTANCE.m32044e(GeoLayout.class, "error in drawGlideImage: " + imagePath + ", " + FileUtils.INSTANCE.getFileSize(imagePath), new Object[0]);
            return false;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:49:0x0122 */
    /* JADX WARN: Incorrect condition in loop: B:64:0x0163 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void drawGrid(android.graphics.Canvas r20, android.graphics.Matrix r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.genericshape.GeoLayout.drawGrid(android.graphics.Canvas, android.graphics.Matrix, boolean):void");
    }

    /* JADX WARN: Incorrect condition in loop: B:38:0x00c3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void drawHorizontalLine(android.graphics.Canvas r13, android.graphics.Matrix r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.genericshape.GeoLayout.drawHorizontalLine(android.graphics.Canvas, android.graphics.Matrix, boolean):void");
    }

    private final void drawImage(DrawContext drawContext, PageMargins pageMargins) {
        String relativePath;
        boolean endsWith;
        Canvas canvas = drawContext.getCanvas();
        if (canvas == null) {
            return;
        }
        Matrix matrix = drawContext.getMatrix();
        RectF copy = RectFKt.copy(pageMargins.getLayoutRect());
        ImageAttr imageAttr = getProperties().getImageAttr();
        if (imageAttr == null || (relativePath = imageAttr.getRelativePath()) == null) {
            return;
        }
        String resAbsolutePath = resAbsolutePath(drawContext, relativePath);
        Size loadImageSize = this.imageSizeManager.loadImageSize(resAbsolutePath);
        RectF rectF = loadImageSize.toRectF();
        if (rectF.isEmpty()) {
            return;
        }
        float rotation = drawContext.getRotation();
        RectF boundingRectF = CanvasKt.boundingRectF(canvas);
        RectF copy2 = RectFKt.copy(copy);
        if (matrix != null) {
            matrix.mapRect(copy2);
        }
        int width = (int) boundingRectF.width();
        int height = (int) boundingRectF.height();
        float width2 = com.onyx.android.sdk.base.lite.extension.RectFKt.rotated$default(copy2, -rotation, 0.0f, 0.0f, 6, null).width() / rectF.width();
        endsWith = StringsKt__StringsJVMKt.endsWith(resAbsolutePath, FileTypeConstant.BMP_SUFFIX, true);
        if (endsWith) {
            drawGlideImage(canvas, resAbsolutePath, copy2, width2, rotation);
            return;
        }
        if (!this.bitmapCache.isBitmapValid(width, height) || this.bitmapCache.isDisplayChanged(copy2, drawContext.getRotation())) {
            Bitmap bitmap = this.bitmapCache.getBitmap();
            if (bitmap != null) {
                bitmap.recycle();
            }
            Bitmap createBitmap = Bitmap.createBitmap((int) boundingRectF.width(), (int) boundingRectF.height(), Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
            new ImageRender().drawImage(new ImageRender.RenderArgs(resAbsolutePath, createBitmap, copy2, width2, rotation, loadImageSize));
            this.bitmapCache.setBitmap(createBitmap);
            this.bitmapCache.setDisplayRectF(RectFKt.copy(copy2));
            this.bitmapCache.setRotation(drawContext.getRotation());
        }
        Bitmap bitmap2 = this.bitmapCache.getBitmap();
        if (bitmap2 == null) {
            return;
        }
        canvas.drawBitmap(bitmap2, 0.0f, 0.0f, (Paint) null);
    }

    private final void drawLine(Canvas canvas, Paint paint, float[] pts) {
        this.geoLayoutDrawer.drawLine(canvas, paint, pts);
    }

    private final void drawRect(Canvas canvas, Paint paint, RectF rectF) {
        this.geoLayoutDrawer.drawRect(canvas, paint, rectF);
    }

    private final void drawResVector(DrawContext drawContext, PageMargins pageMargins) {
        final ResourceAttr resourceAttr;
        Bitmap bitmapFromVectorDrawableBySize;
        Canvas canvas = drawContext.getCanvas();
        if (canvas == null || (resourceAttr = getProperties().getResourceAttr()) == null) {
            return;
        }
        float rotation = drawContext.getRotation();
        Matrix matrix = drawContext.getMatrix();
        RectF layoutRect = pageMargins.getLayoutRect();
        RectF copy = drawContext.getIgnoreCanvasSize() ? RectFKt.copy(pageMargins.getLayoutRect()) : CanvasKt.boundingRectF(canvas);
        RectF copy2 = RectFKt.copy(layoutRect);
        if (matrix != null) {
            matrix.mapRect(copy2);
        }
        if (!this.bitmapCache.isBitmapValid((int) copy.width(), (int) copy.height()) || this.bitmapCache.isDisplayChanged(copy2, drawContext.getRotation())) {
            Bitmap bitmap = this.bitmapCache.getBitmap();
            if (bitmap != null) {
                bitmap.recycle();
            }
            Map<String, Integer> map = this.resIdMap;
            String resName = resourceAttr.getResName();
            if (resName == null) {
                resName = "";
            }
            final Function1<String, Integer> function1 = new Function1<String, Integer>() { // from class: com.onyx.android.sdk.genericshape.GeoLayout$drawResVector$resId$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Integer invoke(@NotNull String it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Integer.valueOf(ResManager.INSTANCE.getDrawableResId(ResourceAttr.this.getResName()));
                }
            };
            Integer computeIfAbsent = map.computeIfAbsent(resName, new Function() { // from class: com.sunia.HTREnginev2.r1h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Integer drawResVector$lambda$1;
                    drawResVector$lambda$1 = GeoLayout.drawResVector$lambda$1(Function1.this, obj);
                    return drawResVector$lambda$1;
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
            int intValue = computeIfAbsent.intValue();
            this.bitmapCache.setRotation(drawContext.getRotation());
            BitmapCacheData bitmapCacheData = this.bitmapCache;
            if (intValue <= 0) {
                bitmapFromVectorDrawableBySize = drawAssetResource(resourceAttr.getResName(), drawContext, layoutRect, copy);
            } else {
                BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
                bitmapFromVectorDrawableBySize = bitmapUtils.getBitmapFromVectorDrawableBySize(ResManager.INSTANCE.getAppContext(), intValue, layoutRect, copy, bitmapUtils.calculateRotationMatrix(RectKt.toSizeF(layoutRect), copy2, rotation), null);
                if (bitmapFromVectorDrawableBySize == null) {
                    return;
                }
            }
            bitmapCacheData.setBitmap(bitmapFromVectorDrawableBySize);
            this.bitmapCache.setDisplayRectF(RectFKt.copy(copy2));
        }
        Bitmap bitmap2 = this.bitmapCache.getBitmap();
        if (bitmap2 == null) {
            return;
        }
        canvas.drawBitmap(bitmap2, 0.0f, 0.0f, colorFilterPaint());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer drawResVector$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Integer) tmp0.invoke(obj);
    }

    private final void drawSvg(DrawContext drawContext, PageMargins pageMargins) {
        ImageAttr imageAttr;
        String relativePath;
        Canvas canvas = drawContext.getCanvas();
        if (canvas == null || (imageAttr = getProperties().getImageAttr()) == null || (relativePath = imageAttr.getRelativePath()) == null) {
            return;
        }
        String resAbsolutePath = resAbsolutePath(drawContext, relativePath);
        Matrix matrix = drawContext.getMatrix();
        float rotation = drawContext.getRotation();
        RectF layoutRect = pageMargins.getLayoutRect();
        RectF copy = drawContext.getIgnoreCanvasSize() ? RectFKt.copy(pageMargins.getLayoutRect()) : CanvasKt.boundingRectF(canvas);
        RectF copy2 = RectFKt.copy(layoutRect);
        if (matrix != null) {
            matrix.mapRect(copy2);
        }
        if (!this.bitmapCache.isBitmapValid((int) copy.width(), (int) copy.height()) || this.bitmapCache.isDisplayChanged(copy2, drawContext.getRotation())) {
            BitmapKt.recycle(this.bitmapCache.getBitmap());
            SVG svg = this.svgMap.get(resAbsolutePath);
            if (svg == null && (svg = SvgUtil.INSTANCE.decodeSvg(resAbsolutePath)) == null) {
                return;
            }
            this.svgMap.put(resAbsolutePath, svg);
            Matrix calculateRotationMatrix = BitmapUtils.INSTANCE.calculateRotationMatrix(RectKt.toSizeF(layoutRect), copy2, rotation);
            this.bitmapCache.setRotation(drawContext.getRotation());
            this.bitmapCache.setBitmap(drawSvgBitmap(svg, calculateRotationMatrix, layoutRect, copy));
            this.bitmapCache.setDisplayRectF(RectFKt.copy(copy2));
        }
        Bitmap bitmap = this.bitmapCache.getBitmap();
        if (bitmap == null) {
            return;
        }
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, colorFilterPaint());
    }

    private final Bitmap drawSvgBitmap(SVG svg, Matrix matrix, RectF originRectF, RectF viewport) {
        Bitmap createBitmap = Bitmap.createBitmap((int) viewport.width(), (int) viewport.height(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        svg.setDocumentWidth(originRectF.width());
        svg.setDocumentHeight(originRectF.height());
        Canvas canvas = new Canvas(createBitmap);
        canvas.setMatrix(matrix);
        svg.renderToCanvas(canvas);
        return createBitmap;
    }

    /* JADX WARN: Incorrect condition in loop: B:38:0x00c2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void drawVerticalLine(android.graphics.Canvas r13, android.graphics.Matrix r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.genericshape.GeoLayout.drawVerticalLine(android.graphics.Canvas, android.graphics.Matrix, boolean):void");
    }

    private final PointF getAlignPoint() {
        AlignmentAttr alignmentAttr = getProperties().getAlignmentAttr();
        if (alignmentAttr == null) {
            return null;
        }
        if (alignmentAttr.getAlignOriginX() == -1.0f) {
            if (alignmentAttr.getAlignOriginY() == -1.0f) {
                return null;
            }
        }
        return new PointF(alignmentAttr.getAlignOriginX(), alignmentAttr.getAlignOriginY());
    }

    private final boolean isLowScreenDpiXDevice() {
        return ScreenUtils.getScreenXDpi() < 240.0f;
    }

    private final Bitmap loadBitmapByGlide(String filePath, int width, int height) throws IOException {
        Bitmap bitmap = Glide.with(ResManager.INSTANCE.getAppContext()).asBitmap().load(filePath).apply((BaseRequestOptions<?>) new RequestOptions().signature(new FileKey(new File(filePath)))).submit(width, height).get();
        Intrinsics.checkNotNullExpressionValue(bitmap, "get(...)");
        return bitmap;
    }

    private final String resAbsolutePath(DrawContext drawContext, String resRelativePath) {
        return TemplatePaths.INSTANCE.templatePathByDirList(drawContext.getResDirs(), resRelativePath);
    }

    private final float spaceAdaptive(float space, float total) {
        return this.geoLayoutDrawer.spaceAdaptive(space, total);
    }

    private final void strokeColorAdaptive(Paint strokePaint) {
        this.geoLayoutDrawer.strokeColorAdaptive(strokePaint);
    }

    private final void strokeWidthAdaptive(Paint strokePaint) {
        if (isLowScreenDpiXDevice()) {
            strokePaint.setStrokeWidth(Math.max(1.0f, strokePaint.getStrokeWidth()));
        }
    }

    public final void clearMargins() {
        PageMargins pageMargins = getProperties().getPageMargins();
        if (pageMargins != null) {
            pageMargins.applyPadding(0.0f);
            pageMargins.getPagePaddingRect().setEmpty();
        }
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void draw(@NotNull DrawContext drawContext) {
        Intrinsics.checkNotNullParameter(drawContext, "drawContext");
        Canvas canvas = drawContext.getCanvas();
        if (canvas == null) {
            return;
        }
        Matrix matrix = drawContext.getMatrix();
        PageMargins pageMargins = getProperties().getPageMargins();
        if (pageMargins == null) {
            return;
        }
        if (drawContext.getNeedToFill()) {
            Paint loadFillPaint = loadFillPaint(matrix);
            RectF rectF = new RectF(pageMargins.getLayoutRect());
            if (matrix != null) {
                matrix.mapRect(rectF);
            }
            float f = rectF.left;
            if (!(f == 0.0f)) {
                rectF.left = FloatKt.floor(f);
            }
            float f2 = rectF.top;
            if (!(f2 == 0.0f)) {
                rectF.top = FloatKt.floor(f2);
            }
            rectF.right = FloatKt.roundToIntFloat(rectF.right);
            rectF.bottom = FloatKt.roundToIntFloat(rectF.bottom);
            if (loadFillPaint != null) {
                drawRect(canvas, loadFillPaint, rectF);
            }
        }
        String layoutType = getProperties().getLayoutType();
        if (layoutType != null) {
            switch (layoutType.hashCode()) {
                case -2073748558:
                    if (layoutType.equals(GeoConstant.LayoutFittedGrid)) {
                        drawGrid(canvas, matrix, true);
                        return;
                    }
                    return;
                case -1960234576:
                    if (layoutType.equals(GeoConstant.LayoutGrid)) {
                        drawGrid(canvas, matrix, false);
                        return;
                    }
                    return;
                case -1585849233:
                    if (layoutType.equals(GeoConstant.LayoutDivider)) {
                        drawDivider(canvas, matrix);
                        return;
                    }
                    return;
                case -826136542:
                    if (layoutType.equals(GeoConstant.LayoutHorizontalLine)) {
                        drawHorizontalLine(canvas, matrix, false);
                        return;
                    }
                    return;
                case -719553292:
                    if (layoutType.equals(GeoConstant.LayoutVerticalLine)) {
                        drawVerticalLine(canvas, matrix, false);
                        return;
                    }
                    return;
                case -636039119:
                    if (layoutType.equals(GeoConstant.LayoutImage)) {
                        drawImage(drawContext, pageMargins);
                        return;
                    }
                    return;
                case -409183783:
                    if (layoutType.equals(GeoConstant.LayoutResVector)) {
                        drawResVector(drawContext, pageMargins);
                        return;
                    }
                    return;
                case -278202460:
                    if (layoutType.equals(GeoConstant.LayoutFittedHorizontalLine)) {
                        drawHorizontalLine(canvas, matrix, true);
                        return;
                    }
                    return;
                case -95850602:
                    if (layoutType.equals(GeoConstant.LayoutFittedDotted)) {
                        drawDotted(canvas, matrix, true, drawContext.getAllowUseShader());
                        return;
                    }
                    return;
                case 425149686:
                    if (layoutType.equals(GeoConstant.LayoutFittedVerticalLine)) {
                        drawVerticalLine(canvas, matrix, true);
                        return;
                    }
                    return;
                case 1616903700:
                    if (layoutType.equals(GeoConstant.LayoutDotted)) {
                        drawDotted(canvas, matrix, false, drawContext.getAllowUseShader());
                        return;
                    }
                    return;
                case 2122487085:
                    if (layoutType.equals(GeoConstant.LayoutVector)) {
                        drawSvg(drawContext, pageMargins);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drawDivider(@org.jetbrains.annotations.NotNull android.graphics.Canvas r19, @org.jetbrains.annotations.Nullable android.graphics.Matrix r20) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.genericshape.GeoLayout.drawDivider(android.graphics.Canvas, android.graphics.Matrix):void");
    }

    public final float getAlignOffsetX(@NotNull RectF visibleRect, float adaptiveSpace) {
        Intrinsics.checkNotNullParameter(visibleRect, "visibleRect");
        PointF alignPoint = getAlignPoint();
        if (alignPoint == null) {
            return 0.0f;
        }
        float f = (alignPoint.x - visibleRect.left) % adaptiveSpace;
        return f < -0.1f ? f + adaptiveSpace : f;
    }

    public final float getAlignOffsetY(@NotNull RectF visibleRect, float adaptiveSpace) {
        Intrinsics.checkNotNullParameter(visibleRect, "visibleRect");
        PointF alignPoint = getAlignPoint();
        if (alignPoint == null) {
            return 0.0f;
        }
        float f = (alignPoint.y - visibleRect.top) % adaptiveSpace;
        return f < -0.1f ? f + adaptiveSpace : f;
    }

    @JSONField(deserialize = false, serialize = false)
    @Nullable
    public final Integer getFillColor() {
        FillAttr fillAttr = getProperties().getFillAttr();
        if (fillAttr != null) {
            return Integer.valueOf(fillAttr.getColor());
        }
        return null;
    }

    @NotNull
    public final IGeoLayoutDrawer getGeoLayoutDrawer() {
        return this.geoLayoutDrawer;
    }

    public final float getSpacing() {
        float coerceAtLeast;
        PageMargins pageMargins = getProperties().getPageMargins();
        if (pageMargins == null) {
            return 1.0f;
        }
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(1.0f, pageMargins.getSpacing());
        return coerceAtLeast;
    }

    public final void recycle() {
        this.bitmapCache.reset();
        this.svgMap.clear();
        this.geoLayoutDrawer.recycle();
    }

    public final void setGeoLayoutDrawer(@NotNull IGeoLayoutDrawer iGeoLayoutDrawer) {
        Intrinsics.checkNotNullParameter(iGeoLayoutDrawer, "<set-?>");
        this.geoLayoutDrawer = iGeoLayoutDrawer;
    }
}
