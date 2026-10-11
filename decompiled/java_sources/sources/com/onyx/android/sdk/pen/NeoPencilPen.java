package com.onyx.android.sdk.pen;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.WorkerThread;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.lite.extension.BitmapKt;
import com.onyx.android.sdk.base.lite.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.pen.NeoPencilPen;
import com.onyx.android.sdk.pennative.NeoPenNative;
import com.onyx.android.sdk.pennative.PenInk;
import com.onyx.android.sdk.pennative.PenInkResult;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.UByte;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0019\b\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0016J)\u0010\b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0010¢\u0006\u0004\b\u0006\u0010\u0007J\u0014\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoPencilPen;", "Lcom/onyx/android/sdk/pen/NeoNativePen;", "Lcom/onyx/android/sdk/pennative/PenInkResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", "buildPenResult$sdk_pen_release", "(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;", "buildPenResult", "Lcom/onyx/android/sdk/pennative/PenInk;", "ink", "Lcom/onyx/android/sdk/pen/PenBrushResult;", "a", "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;", "b", "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;", "getMaskGenerator", "()Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;", "maskGenerator", "", "penHandle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(JLcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;)V", "Companion", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NeoPencilPen extends NeoNativePen {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    @NotNull
    public static final ConcurrentHashMap<Companion.MaskKey, Companion.BitmapHolder> f44249c = new ConcurrentHashMap<>();

    /* renamed from: d */
    @NotNull
    public static final ConcurrentHashMap<Integer, Bitmap> f44250d = new ConcurrentHashMap<>();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Companion.BrushMaskGenerator maskGenerator;

    @Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0003&'(B\t\b\u0002¢\u0006\u0004\b$\u0010%J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002H\u0007J \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0007J\b\u0010\u0011\u001a\u00020\u000fH\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0014\u0010\u0018\u001a\u00020\u0012*\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0017H\u0002J.\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u00052\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002R \u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 0\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R \u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00120\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\"¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;", "", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "defaultPenConfig", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/pen/NeoPencilPen;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;", "prepareBrushMask", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Path;", "path", "Landroid/graphics/Paint;", "paint", "", "drawPath", "i", "Landroid/graphics/Bitmap;", "d", "", "angle", C6997f.f39671c, "", C4921e.f26537n, "neoPen", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", PointConstant.POINT_FILE_END, "e", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;", "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;", "maskBitmaps", "Ljava/util/concurrent/ConcurrentHashMap;", "rotatedBitmaps", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "BitmapHolder", "BrushMaskGenerator", "MaskKey", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nNeoPencilPen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPencilPen.kt\ncom/onyx/android/sdk/pen/NeoPencilPen$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1855#2,2:214\n1855#2,2:216\n1855#2,2:219\n1#3:218\n*S KotlinDebug\n*F\n+ 1 NeoPencilPen.kt\ncom/onyx/android/sdk/pen/NeoPencilPen$Companion\n*L\n145#1:214,2\n157#1:216,2\n166#1:219,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {

        @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;", "", "Landroid/graphics/Bitmap;", "component1", "", "component2", "bitmap", "halfWidth", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "b", "F", "getHalfWidth", "()F", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/Bitmap;F)V", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
        /* loaded from: classes8.dex */
        public static final /* data */ class BitmapHolder {

            /* renamed from: a, reason: from kotlin metadata and from toString */
            @NotNull
            public final Bitmap bitmap;

            /* renamed from: b, reason: from kotlin metadata and from toString */
            public final float halfWidth;

            public BitmapHolder(@NotNull Bitmap bitmap, float f) {
                Intrinsics.checkNotNullParameter(bitmap, "bitmap");
                this.bitmap = bitmap;
                this.halfWidth = f;
            }

            public static /* synthetic */ BitmapHolder copy$default(BitmapHolder bitmapHolder, Bitmap bitmap, float f, int i, Object obj) {
                if ((i & 1) != 0) {
                    bitmap = bitmapHolder.bitmap;
                }
                if ((i & 2) != 0) {
                    f = bitmapHolder.halfWidth;
                }
                return bitmapHolder.copy(bitmap, f);
            }

            @NotNull
            /* renamed from: component1, reason: from getter */
            public final Bitmap getBitmap() {
                return this.bitmap;
            }

            /* renamed from: component2, reason: from getter */
            public final float getHalfWidth() {
                return this.halfWidth;
            }

            @NotNull
            public final BitmapHolder copy(@NotNull Bitmap bitmap, float halfWidth) {
                Intrinsics.checkNotNullParameter(bitmap, "bitmap");
                return new BitmapHolder(bitmap, halfWidth);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof BitmapHolder)) {
                    return false;
                }
                BitmapHolder bitmapHolder = (BitmapHolder) other;
                return Intrinsics.areEqual(this.bitmap, bitmapHolder.bitmap) && Float.compare(this.halfWidth, bitmapHolder.halfWidth) == 0;
            }

            @NotNull
            public final Bitmap getBitmap() {
                return this.bitmap;
            }

            public final float getHalfWidth() {
                return this.halfWidth;
            }

            public int hashCode() {
                return (this.bitmap.hashCode() * 31) + Float.hashCode(this.halfWidth);
            }

            @NotNull
            public String toString() {
                return "BitmapHolder(bitmap=" + this.bitmap + ", halfWidth=" + this.halfWidth + ')';
            }
        }

        @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;", "", "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;", "key", "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;", "getMaskBitmap", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "a", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "getConfig", "()Lcom/onyx/android/sdk/pen/NeoPenConfig;", AbstractLogger.CONFIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/pen/NeoPenConfig;)V", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
        /* loaded from: classes8.dex */
        public static final class BrushMaskGenerator {

            /* renamed from: a, reason: from kotlin metadata */
            @NotNull
            public final NeoPenConfig config;

            public BrushMaskGenerator(@NotNull NeoPenConfig config) {
                Intrinsics.checkNotNullParameter(config, "config");
                this.config = config;
            }

            /* renamed from: b */
            public static final BitmapHolder m34443b(Function1 tmp0, Object obj) {
                Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
                return (BitmapHolder) tmp0.invoke(obj);
            }

            @NotNull
            public final NeoPenConfig getConfig() {
                return this.config;
            }

            @NotNull
            public final BitmapHolder getMaskBitmap(@NotNull MaskKey key) {
                Intrinsics.checkNotNullParameter(key, "key");
                BitmapHolder bitmapHolder = (BitmapHolder) NeoPencilPen.f44249c.get(key);
                if (bitmapHolder != null) {
                    return bitmapHolder;
                }
                final MaskKey copy$default = MaskKey.copy$default(key, 0, 0, 3, null);
                ConcurrentHashMap concurrentHashMap = NeoPencilPen.f44249c;
                final Function1<MaskKey, BitmapHolder> function1 = new Function1<MaskKey, BitmapHolder>() { // from class: com.onyx.android.sdk.pen.NeoPencilPen$Companion$BrushMaskGenerator$getMaskBitmap$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final NeoPencilPen.Companion.BitmapHolder invoke(@NotNull NeoPencilPen.Companion.MaskKey it2) {
                        Bitmap m34439f;
                        Intrinsics.checkNotNullParameter(it2, "it");
                        m34439f = NeoPencilPen.INSTANCE.m34439f(NeoPencilPen.Companion.MaskKey.this.getAngle());
                        Bitmap copy = BitmapKt.createScaledBitmap(m34439f, NeoPencilPen.Companion.MaskKey.this.getSize(), NeoPencilPen.Companion.MaskKey.this.getSize()).copy(Bitmap.Config.ALPHA_8, true);
                        Intrinsics.checkNotNull(copy);
                        return new NeoPencilPen.Companion.BitmapHolder(copy, copy.getWidth() / 2.0f);
                    }
                };
                Object computeIfAbsent = concurrentHashMap.computeIfAbsent(copy$default, new Function() { // from class: com.sunia.HTREnginev2.ntj
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        NeoPencilPen.Companion.BitmapHolder m34443b;
                        m34443b = NeoPencilPen.Companion.BrushMaskGenerator.m34443b(Function1.this, obj);
                        return m34443b;
                    }
                });
                Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
                return (BitmapHolder) computeIfAbsent;
            }
        }

        @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;", "", "", "component1", "component2", "size", "angle", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getSize", "()I", "setSize", "(I)V", "b", "getAngle", "setAngle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(II)V", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
        /* loaded from: classes8.dex */
        public static final /* data */ class MaskKey {

            /* renamed from: a, reason: from kotlin metadata and from toString */
            public int size;

            /* renamed from: b, reason: from kotlin metadata and from toString */
            public int angle;

            public MaskKey(int i, int i2) {
                this.size = i;
                this.angle = i2;
            }

            public static /* synthetic */ MaskKey copy$default(MaskKey maskKey, int i, int i2, int i3, Object obj) {
                if ((i3 & 1) != 0) {
                    i = maskKey.size;
                }
                if ((i3 & 2) != 0) {
                    i2 = maskKey.angle;
                }
                return maskKey.copy(i, i2);
            }

            /* renamed from: component1, reason: from getter */
            public final int getSize() {
                return this.size;
            }

            /* renamed from: component2, reason: from getter */
            public final int getAngle() {
                return this.angle;
            }

            @NotNull
            public final MaskKey copy(int size, int angle) {
                return new MaskKey(size, angle);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof MaskKey)) {
                    return false;
                }
                MaskKey maskKey = (MaskKey) other;
                return this.size == maskKey.size && this.angle == maskKey.angle;
            }

            public final int getAngle() {
                return this.angle;
            }

            public final int getSize() {
                return this.size;
            }

            public int hashCode() {
                return (Integer.hashCode(this.size) * 31) + Integer.hashCode(this.angle);
            }

            public final void setAngle(int i) {
                this.angle = i;
            }

            public final void setSize(int i) {
                this.size = i;
            }

            @NotNull
            public String toString() {
                return "MaskKey(size=" + this.size + ", angle=" + this.angle + ')';
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: g */
        public static final Bitmap m34434g(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (Bitmap) tmp0.invoke(obj);
        }

        /* renamed from: h */
        public static final Bitmap m34435h(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (Bitmap) tmp0.invoke(obj);
        }

        /* renamed from: j */
        public static final Bitmap m34436j(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (Bitmap) tmp0.invoke(obj);
        }

        @Nullable
        public final NeoPencilPen create(@NotNull NeoPenConfig config) {
            Intrinsics.checkNotNullParameter(config, "config");
            long createPen = NeoPenNative.INSTANCE.createPen(7, config.toNativeConfig());
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (createPen == 0) {
                return null;
            }
            return new NeoPencilPen(createPen, new BrushMaskGenerator(config), defaultConstructorMarker);
        }

        /* renamed from: d */
        public final Bitmap m34437d() {
            Bitmap decodeResource = BitmapFactory.decodeResource(ResManager.INSTANCE.getAppContext().getResources(), C7577R.drawable.pencil);
            Intrinsics.checkNotNullExpressionValue(decodeResource, "decodeResource(...)");
            return decodeResource;
        }

        @NotNull
        public final NeoPenConfig defaultPenConfig() {
            NeoPenConfig neoPenConfig = new NeoPenConfig();
            neoPenConfig.m72320setType(7);
            neoPenConfig.setMinWidth(1.0f);
            neoPenConfig.m72311setBrushSpacing(0.25f);
            neoPenConfig.setPressureSensitivity(0.375f);
            neoPenConfig.setSmoothLevel(0.2f);
            return neoPenConfig;
        }

        @WorkerThread
        public final void drawPath(@NotNull Canvas canvas, @NotNull Path path, @NotNull Paint paint) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            Intrinsics.checkNotNullParameter(path, "path");
            Intrinsics.checkNotNullParameter(paint, "paint");
            NeoPencilPen neoPencilPen = null;
            try {
                NeoPenConfig defaultPenConfig = defaultPenConfig();
                MathUtils mathUtils = MathUtils.INSTANCE;
                defaultPenConfig.m72321setWidth(((Number) mathUtils.atLeast(Float.valueOf(paint.getStrokeWidth()), Float.valueOf(defaultPenConfig.getMinWidth()))).floatValue());
                defaultPenConfig.m72312setColor(paint.getColor());
                neoPencilPen = create(defaultPenConfig);
                if (neoPencilPen == null) {
                    return;
                }
                Iterator<T> it2 = PathKt.resampleMultiSegmentPath(path, Float.valueOf(((Number) mathUtils.atLeast(Float.valueOf(defaultPenConfig.getWidth() / 2), Float.valueOf(2.0f))).floatValue())).iterator();
                while (it2.hasNext()) {
                    NeoPencilPen.INSTANCE.m34438e(canvas, paint, neoPencilPen, (List) it2.next());
                }
                neoPencilPen.destroy();
            } catch (Throwable th) {
                if (neoPencilPen != null) {
                    neoPencilPen.destroy();
                }
                throw th;
            }
        }

        /* renamed from: e */
        public final void m34438e(Canvas canvas, Paint paint, NeoPencilPen neoPen, List<TouchPoint> points) {
            Object first;
            Object last;
            if (points.size() < 2) {
                return;
            }
            Iterator<T> it2 = points.iterator();
            while (it2.hasNext()) {
                ((TouchPoint) it2.next()).setPressure(1.0f);
            }
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) points);
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) points);
            TouchPoint touchPoint = (TouchPoint) last;
            List<TouchPoint> safelySubList = CollectionKt.safelySubList(points, 1, CollectionKt.getSize(points) - 1);
            ArrayList arrayList = new ArrayList();
            arrayList.add(neoPen.onPenDown((TouchPoint) first, true));
            if (!(!safelySubList.isEmpty())) {
                safelySubList = null;
            }
            if (safelySubList != null) {
                arrayList.add(neoPen.onPenMove(safelySubList, null, true));
            }
            arrayList.add(neoPen.onPenUp(touchPoint, true));
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                PenResult penResult = (PenResult) ((Pair) it3.next()).getFirst();
                if (penResult != null) {
                    penResult.draw(canvas, paint);
                }
            }
        }

        /* renamed from: f */
        public final Bitmap m34439f(final int angle) {
            ConcurrentHashMap concurrentHashMap = NeoPencilPen.f44250d;
            final NeoPencilPen$Companion$getRotatedBitmap$srcBitmap$1 neoPencilPen$Companion$getRotatedBitmap$srcBitmap$1 = new Function1<Integer, Bitmap>() { // from class: com.onyx.android.sdk.pen.NeoPencilPen$Companion$getRotatedBitmap$srcBitmap$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Bitmap invoke(@NotNull Integer it2) {
                    Bitmap m34437d;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    m34437d = NeoPencilPen.INSTANCE.m34437d();
                    return m34437d;
                }
            };
            Object computeIfAbsent = concurrentHashMap.computeIfAbsent(0, new Function() { // from class: com.sunia.HTREnginev2.ltj
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Bitmap m34434g;
                    m34434g = NeoPencilPen.Companion.m34434g(Function1.this, obj);
                    return m34434g;
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
            final Bitmap bitmap = (Bitmap) computeIfAbsent;
            ConcurrentHashMap concurrentHashMap2 = NeoPencilPen.f44250d;
            Integer valueOf = Integer.valueOf(angle);
            final Function1<Integer, Bitmap> function1 = new Function1<Integer, Bitmap>() { // from class: com.onyx.android.sdk.pen.NeoPencilPen$Companion$getRotatedBitmap$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Bitmap invoke(@NotNull Integer it2) {
                    Bitmap m34441k;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    m34441k = NeoPencilPen.INSTANCE.m34441k(bitmap, angle * 10.0f);
                    return m34441k;
                }
            };
            Object computeIfAbsent2 = concurrentHashMap2.computeIfAbsent(valueOf, new Function() { // from class: com.sunia.HTREnginev2.mtj
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Bitmap m34435h;
                    m34435h = NeoPencilPen.Companion.m34435h(Function1.this, obj);
                    return m34435h;
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent2, "computeIfAbsent(...)");
            return (Bitmap) computeIfAbsent2;
        }

        /* renamed from: i */
        public final synchronized void m34440i() {
            if (NeoPencilPen.f44250d.size() >= 36) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            final Bitmap m34437d = m34437d();
            for (int i = 0; i < 36; i++) {
                ConcurrentHashMap concurrentHashMap = NeoPencilPen.f44250d;
                Integer valueOf = Integer.valueOf(i);
                final Function1<Integer, Bitmap> function1 = new Function1<Integer, Bitmap>() { // from class: com.onyx.android.sdk.pen.NeoPencilPen$Companion$prepareRotatedBitmaps$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Bitmap invoke(@NotNull Integer it2) {
                        Bitmap m34441k;
                        Intrinsics.checkNotNullParameter(it2, "it");
                        m34441k = NeoPencilPen.INSTANCE.m34441k(m34437d, it2.intValue() * 10.0f);
                        return m34441k;
                    }
                };
                concurrentHashMap.computeIfAbsent(valueOf, new Function() { // from class: com.sunia.HTREnginev2.ktj
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Bitmap m34436j;
                        m34436j = NeoPencilPen.Companion.m34436j(Function1.this, obj);
                        return m34436j;
                    }
                });
            }
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            Debug.INSTANCE.m32035d(Companion.class, "prepareRotatedBitmaps --> " + currentTimeMillis2 + HttpMeasureConstants.f94668b, new Object[0]);
        }

        /* renamed from: k */
        public final Bitmap m34441k(Bitmap bitmap, float f) {
            Matrix matrix = new Matrix();
            matrix.postRotate(f, bitmap.getWidth() / 2.0f, bitmap.getHeight() / 2.0f);
            Bitmap.Config config = bitmap.getConfig();
            if (config == null) {
                config = Bitmap.Config.ARGB_8888;
            }
            Intrinsics.checkNotNull(config);
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), config);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
            new Canvas(createBitmap).drawBitmap(bitmap, matrix, null);
            return createBitmap;
        }

        @WorkerThread
        @NotNull
        public final BrushMaskGenerator prepareBrushMask(@NotNull NeoPenConfig config) {
            Intrinsics.checkNotNullParameter(config, "config");
            m34440i();
            return new BrushMaskGenerator(config);
        }

        public Companion() {
        }
    }

    public /* synthetic */ NeoPencilPen(long j, Companion.BrushMaskGenerator brushMaskGenerator, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, brushMaskGenerator);
    }

    /* renamed from: a */
    public final PenBrushResult m34430a(PenInk ink) {
        IntRange until;
        IntProgression step;
        RectF rectF;
        int coerceIn;
        float coerceIn2;
        if (ink == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        until = RangesKt___RangesKt.until(0, ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().length);
        step = RangesKt___RangesKt.step(until, 5);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            rectF = null;
            while (true) {
                float f = ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String()[first];
                float f2 = ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String()[first + 1];
                float f3 = ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String()[first + 2];
                float f4 = ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String()[first + 3];
                coerceIn = RangesKt___RangesKt.coerceIn((int) (ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String()[first + 4] * 255), i, 255);
                byte m72639constructorimpl = UByte.m72639constructorimpl((byte) coerceIn);
                byte m72178normalizeAngleTo36Wa3L5BU = com.onyx.android.sdk.base.lite.utils.MathUtils.INSTANCE.m72178normalizeAngleTo36Wa3L5BU(Math.toDegrees(f4));
                coerceIn2 = RangesKt___RangesKt.coerceIn((f3 / this.maskGenerator.getConfig().getWidth()) * 255.0f, 0.0f, 255.0f);
                arrayList.add(new PenBrushInk(f, f2, UByte.m72639constructorimpl((byte) coerceIn2), m72178normalizeAngleTo36Wa3L5BU, m72639constructorimpl, null));
                if (rectF == null) {
                    rectF = new RectF(f, f2, f + f3, f2 + f3);
                }
                rectF.union(f, f2);
                rectF.union(f + f3, f2 + f3);
                if (first == last) {
                    break;
                }
                first += step2;
                i = 0;
            }
        } else {
            rectF = null;
        }
        if (rectF == null) {
            return null;
        }
        return new PenBrushResult(arrayList, this.maskGenerator, rectF);
    }

    @Override // com.onyx.android.sdk.pen.NeoNativePen
    @NotNull
    public Pair<PenResult, PenResult> buildPenResult$sdk_pen_release(@Nullable PenInkResult result) {
        return new Pair<>(m34430a(result != null ? result.getRealInk() : null), m34430a(result != null ? result.getPredictionInk() : null));
    }

    @NotNull
    public final Companion.BrushMaskGenerator getMaskGenerator() {
        return this.maskGenerator;
    }

    public NeoPencilPen(long j, Companion.BrushMaskGenerator brushMaskGenerator) {
        super(j);
        this.maskGenerator = brushMaskGenerator;
    }
}
