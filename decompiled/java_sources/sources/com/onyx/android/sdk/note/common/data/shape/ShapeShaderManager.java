package com.onyx.android.sdk.note.common.data.shape;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Matrix;
import android.graphics.Shader;
import android.util.LruCache;
import androidx.annotation.GuardedBy;
import com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap;
import com.onyx.android.sdk.note.common.shape.TapeFillStyle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J.\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u0004H\u0007J\b\u0010\f\u001a\u00020\u000bH\u0007J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0004H\u0002R'\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;", "", "", "color", "", "fixedHeight", "", "tapeFillStyle", "scale", "Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;", "getTapeFillShader", "", Constants.CLEAR_ATTRIBUTES, "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;", "creator", "fixScale", "a", "Landroid/util/LruCache;", "Lkotlin/Lazy;", "b", "()Landroid/util/LruCache;", "bitmapShaderLruCache", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeShaderManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeShaderManager.kt\ncom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeShaderManager {
    public static final int CACHE_MAX_COUNT = 20;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy bitmapShaderLruCache;

    public ShapeShaderManager() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LruCache<String, BitmapShaderReference>>() { // from class: com.onyx.android.sdk.note.common.data.shape.ShapeShaderManager$bitmapShaderLruCache$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LruCache<String, BitmapShaderReference> invoke() {
                return new LruCache<>(20);
            }
        });
        this.bitmapShaderLruCache = lazy;
    }

    public static /* synthetic */ BitmapShaderReference getTapeFillShader$default(ShapeShaderManager shapeShaderManager, int i, float f, String str, float f2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            f = -1.0f;
        }
        if ((i2 & 4) != 0) {
            str = "";
        }
        if ((i2 & 8) != 0) {
            f2 = 1.0f;
        }
        return shapeShaderManager.getTapeFillShader(i, f, str, f2);
    }

    /* renamed from: a */
    public final BitmapShaderReference m33693a(TapeFillShaderBitmap.TapeFillShaderBitmapCreator creator, float fixScale) {
        Bitmap loadBitmap = creator.loadBitmap();
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        BitmapShader bitmapShader = new BitmapShader(loadBitmap, tileMode, tileMode);
        Matrix matrix = new Matrix(creator.getShaderMatrix());
        float f = 1.0f / fixScale;
        matrix.postScale(f, f);
        bitmapShader.setLocalMatrix(matrix);
        return new BitmapShaderReference(bitmapShader);
    }

    /* renamed from: b */
    public final LruCache<String, BitmapShaderReference> m33694b() {
        return (LruCache) this.bitmapShaderLruCache.getValue();
    }

    @GuardedBy("this")
    public final void clear() {
        m33694b().evictAll();
    }

    @GuardedBy("this")
    @NotNull
    public final BitmapShaderReference getTapeFillShader(int color, float fixedHeight, @NotNull String tapeFillStyle, float scale) {
        int roundToInt;
        Intrinsics.checkNotNullParameter(tapeFillStyle, "tapeFillStyle");
        TapeFillStyle fromName = TapeFillStyle.INSTANCE.fromName(tapeFillStyle);
        TapeFillShaderBitmap.TapeFillShaderBitmapCreator createFrom = TapeFillShaderBitmap.INSTANCE.createFrom(new TapeFillShaderBitmap.CreateTapeFillShaderArgs(fromName, 0.0f, 2, null));
        createFrom.init(color, scale);
        if (fixedHeight > 0.0f) {
            createFrom.setHeight(fixedHeight);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(color);
        sb.append(NameUtil.USCORE);
        roundToInt = MathKt__MathJVMKt.roundToInt(fixedHeight * scale);
        sb.append(roundToInt);
        sb.append(NameUtil.USCORE);
        sb.append(fromName);
        sb.append(NameUtil.USCORE);
        sb.append(scale);
        String sb2 = sb.toString();
        BitmapShaderReference bitmapShaderReference = m33694b().get(sb2);
        if (bitmapShaderReference != null) {
            return bitmapShaderReference;
        }
        BitmapShaderReference m33693a = m33693a(createFrom, scale);
        m33694b().put(sb2, m33693a);
        return m33693a;
    }
}
