package com.onyx.android.sdk.note.common.shape;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.caverock.androidsvg.SVG;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.SvgUtil;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.C7485R;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000b\b6\u0018\u0000 \u00042\u00020\u0001:\t\u0003\u0004\u0005\u0006\u0007\b\t\n\u000bB\u0007\b\u0004¢\u0006\u0002\u0010\u0002¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap;", "", "()V", "BaseTapeFillShaderBitmapCreator", "Companion", "CreateTapeFillShaderArgs", "TapeFillBiasBitmap", "TapeFillDotBitmap", "TapeFillGridBitmap", "TapeFillPureBitmap", "TapeFillShaderBitmapCreator", "TapeSvgBitmap", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class TapeFillShaderBitmap {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0015¢\u0006\u0004\b?\u0010@J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0004J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0016R\u001a\u0010\u001a\u001a\u00020\u00158\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\"\u0010%\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u001c\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010)\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u001c\u001a\u0004\b'\u0010\"\"\u0004\b(\u0010$R\"\u00100\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010\u001c\u001a\u0004\b2\u0010\"\"\u0004\b3\u0010$R\u0017\u00108\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R\u001b\u0010>\u001a\u0002098DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=¨\u0006A"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;", "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;", "", "color", "", "scale", "", "init", "Landroid/graphics/Matrix;", "getShaderMatrix", "Landroid/graphics/Bitmap;", "loadBitmap", "Landroid/graphics/RectF;", "getRect", "height", "setHeight", "", "isOverrideShaderSize", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "draw", "Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;", "a", "Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;", "getType", "()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;", "type", "b", "F", "bitmapDeltaScaleX", "c", "bitmapDeltaScaleY", "d", "getStrokeLineWidth", "()F", "setStrokeLineWidth", "(F)V", "strokeLineWidth", "e", "getShaderFactor", "setShaderFactor", "shaderFactor", C6997f.f39671c, "I", "getFillColor", "()I", "setFillColor", "(I)V", CouchFieldKey.KEY_FILL_COLOR, C6998g.f39679a, "getScale", "setScale", C6999h.f39688c, "Landroid/graphics/RectF;", "getBitmapRect", "()Landroid/graphics/RectF;", "bitmapRect", "Landroid/graphics/Paint;", "i", "Lkotlin/Lazy;", "getPaint", "()Landroid/graphics/Paint;", "paint", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static abstract class BaseTapeFillShaderBitmapCreator implements TapeFillShaderBitmapCreator {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final TapeFillStyle type;

        /* renamed from: b, reason: from kotlin metadata */
        public float bitmapDeltaScaleX;

        /* renamed from: c, reason: from kotlin metadata */
        public float bitmapDeltaScaleY;

        /* renamed from: d, reason: from kotlin metadata */
        public float strokeLineWidth;

        /* renamed from: e, reason: from kotlin metadata */
        public float shaderFactor;

        /* renamed from: f, reason: from kotlin metadata */
        public int fillColor;

        /* renamed from: g, reason: from kotlin metadata */
        public float scale;

        /* renamed from: h, reason: from kotlin metadata */
        @NotNull
        public final RectF bitmapRect;

        /* renamed from: i, reason: from kotlin metadata */
        @NotNull
        public final Lazy paint;

        public BaseTapeFillShaderBitmapCreator(@NotNull TapeFillStyle type) {
            Lazy lazy;
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            this.bitmapDeltaScaleX = 1.0f;
            this.bitmapDeltaScaleY = 1.0f;
            ResManager resManager = ResManager.INSTANCE;
            this.strokeLineWidth = resManager.getDimension(C7485R.dimen.tape_shape_shorter_line_stroke_width);
            this.shaderFactor = resManager.getFloat(C7485R.dimen.tape_shape_size_factor);
            this.scale = 1.0f;
            this.bitmapRect = new RectF();
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<Paint>() { // from class: com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator$paint$2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Paint invoke() {
                    Paint paint = new Paint();
                    paint.setAntiAlias(true);
                    paint.setStyle(Paint.Style.FILL_AND_STROKE);
                    return paint;
                }
            });
            this.paint = lazy;
        }

        public void draw(@NotNull Canvas canvas) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
        }

        @NotNull
        public final RectF getBitmapRect() {
            return this.bitmapRect;
        }

        public final int getFillColor() {
            return this.fillColor;
        }

        @NotNull
        public final Paint getPaint() {
            return (Paint) this.paint.getValue();
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.TapeFillShaderBitmapCreator
        @NotNull
        public RectF getRect() {
            return this.bitmapRect;
        }

        public final float getScale() {
            return this.scale;
        }

        public final float getShaderFactor() {
            return this.shaderFactor;
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.TapeFillShaderBitmapCreator
        @NotNull
        public Matrix getShaderMatrix() {
            Matrix matrix = new Matrix();
            matrix.postScale(this.bitmapDeltaScaleX, this.bitmapDeltaScaleY);
            return matrix;
        }

        public final float getStrokeLineWidth() {
            return this.strokeLineWidth;
        }

        @NotNull
        public TapeFillStyle getType() {
            return this.type;
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.TapeFillShaderBitmapCreator
        public void init(int color, float scale) {
            this.fillColor = color;
            this.scale = scale;
            float f = this.strokeLineWidth * scale;
            float f2 = this.shaderFactor * f;
            getPaint().setStrokeWidth(f);
            this.bitmapRect.set(0.0f, 0.0f, f2, f2);
        }

        public final boolean isOverrideShaderSize() {
            return getType().getWidth() > 0 && getType().getHeight() > 0;
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.TapeFillShaderBitmapCreator
        @NotNull
        public Bitmap loadBitmap() {
            int coerceAtLeast;
            int coerceAtLeast2;
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast((int) this.bitmapRect.width(), 1);
            coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast((int) this.bitmapRect.height(), 1);
            Bitmap createBitmap = Bitmap.createBitmap(coerceAtLeast, coerceAtLeast2, Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
            this.bitmapDeltaScaleX = this.bitmapRect.width() / createBitmap.getWidth();
            this.bitmapDeltaScaleY = this.bitmapRect.height() / createBitmap.getHeight();
            createBitmap.eraseColor(this.fillColor);
            draw(new Canvas(createBitmap));
            return createBitmap;
        }

        public final void setFillColor(int i) {
            this.fillColor = i;
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.TapeFillShaderBitmapCreator
        public void setHeight(float height) {
        }

        public final void setScale(float f) {
            this.scale = f;
        }

        public final void setShaderFactor(float f) {
            this.shaderFactor = f;
        }

        public final void setStrokeLineWidth(float f) {
            this.strokeLineWidth = f;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$Companion;", "", "()V", "createFrom", "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;", "args", "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[TapeFillStyle.values().length];
                try {
                    iArr[TapeFillStyle.TAPE_FILL_STYLE_BIAS.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[TapeFillStyle.TAPE_FILL_STYLE_PURE_COLOR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[TapeFillStyle.TAPE_FILL_STYLE_GRID.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[TapeFillStyle.TAPE_FILL_STYLE_DOT.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[TapeFillStyle.TAPE_FILL_STYLE_STAR.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[TapeFillStyle.TAPE_FILL_STYLE_JIUJIU.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[TapeFillStyle.TAPE_FILL_STYLE_DOODLE.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[TapeFillStyle.TAPE_FILL_STYLE_CUBE.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TapeFillShaderBitmapCreator createFrom(@NotNull CreateTapeFillShaderArgs args) {
            Intrinsics.checkNotNullParameter(args, "args");
            switch (WhenMappings.$EnumSwitchMapping$0[args.getType().ordinal()]) {
                case 1:
                    return new TapeFillBiasBitmap();
                case 2:
                    return new TapeFillPureBitmap();
                case 3:
                    return new TapeFillGridBitmap();
                case 4:
                    return new TapeFillDotBitmap();
                case 5:
                    return new TapeSvgBitmap(args);
                case 6:
                    return new TapeSvgBitmap(args);
                case 7:
                    return new TapeSvgBitmap(args);
                case 8:
                    return new TapeSvgBitmap(args);
                default:
                    return new TapeFillBiasBitmap();
            }
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\"\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;", "", "Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;", "component1", "", "component2", "type", "shaderRotateDegree", "copy", "", "toString", "", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;", "getType", "()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;", "b", "F", "getShaderRotateDegree", "()F", "setShaderRotateDegree", "(F)V", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;F)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final /* data */ class CreateTapeFillShaderArgs {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final TapeFillStyle type;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        public float shaderRotateDegree;

        public CreateTapeFillShaderArgs(@NotNull TapeFillStyle type, float f) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            this.shaderRotateDegree = f;
        }

        public static /* synthetic */ CreateTapeFillShaderArgs copy$default(CreateTapeFillShaderArgs createTapeFillShaderArgs, TapeFillStyle tapeFillStyle, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                tapeFillStyle = createTapeFillShaderArgs.type;
            }
            if ((i & 2) != 0) {
                f = createTapeFillShaderArgs.shaderRotateDegree;
            }
            return createTapeFillShaderArgs.copy(tapeFillStyle, f);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final TapeFillStyle getType() {
            return this.type;
        }

        /* renamed from: component2, reason: from getter */
        public final float getShaderRotateDegree() {
            return this.shaderRotateDegree;
        }

        @NotNull
        public final CreateTapeFillShaderArgs copy(@NotNull TapeFillStyle type, float shaderRotateDegree) {
            Intrinsics.checkNotNullParameter(type, "type");
            return new CreateTapeFillShaderArgs(type, shaderRotateDegree);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CreateTapeFillShaderArgs)) {
                return false;
            }
            CreateTapeFillShaderArgs createTapeFillShaderArgs = (CreateTapeFillShaderArgs) other;
            return this.type == createTapeFillShaderArgs.type && Float.compare(this.shaderRotateDegree, createTapeFillShaderArgs.shaderRotateDegree) == 0;
        }

        public final float getShaderRotateDegree() {
            return this.shaderRotateDegree;
        }

        @NotNull
        public final TapeFillStyle getType() {
            return this.type;
        }

        public int hashCode() {
            return (this.type.hashCode() * 31) + Float.hashCode(this.shaderRotateDegree);
        }

        public final void setShaderRotateDegree(float f) {
            this.shaderRotateDegree = f;
        }

        @NotNull
        public String toString() {
            return "CreateTapeFillShaderArgs(type=" + this.type + ", shaderRotateDegree=" + this.shaderRotateDegree + ')';
        }

        public /* synthetic */ CreateTapeFillShaderArgs(TapeFillStyle tapeFillStyle, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(tapeFillStyle, (i & 2) != 0 ? 0.0f : f);
        }
    }

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016R\u001b\u0010\u000f\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillBiasBitmap;", "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;", "Landroid/graphics/Matrix;", "getShaderMatrix", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "draw", "", "height", "setHeight", "j", "Lkotlin/Lazy;", "a", "()F", "lineScaleRatio", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class TapeFillBiasBitmap extends BaseTapeFillShaderBitmapCreator {

        /* renamed from: j, reason: from kotlin metadata */
        @NotNull
        public final Lazy lineScaleRatio;

        public TapeFillBiasBitmap() {
            super(TapeFillStyle.TAPE_FILL_STYLE_BIAS);
            Lazy lazy;
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap$TapeFillBiasBitmap$lineScaleRatio$2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Float invoke() {
                    return Float.valueOf(ResManager.INSTANCE.getFloat(C7485R.dimen.tape_shape_size_line_scale_ratio));
                }
            });
            this.lineScaleRatio = lazy;
        }

        /* renamed from: a */
        public final float m33801a() {
            return ((Number) this.lineScaleRatio.getValue()).floatValue();
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.BaseTapeFillShaderBitmapCreator
        public void draw(@NotNull Canvas canvas) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            super.draw(canvas);
            getPaint().setColor(ResManager.INSTANCE.getColor(C7485R.color.tape_bias_line_color));
            float width = getBitmapRect().width();
            canvas.drawLine(0.0f, 0.0f, width, 0.0f, getPaint());
            canvas.drawLine(0.0f, width, width, width, getPaint());
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.BaseTapeFillShaderBitmapCreator, com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.TapeFillShaderBitmapCreator
        @NotNull
        public Matrix getShaderMatrix() {
            Matrix shaderMatrix = super.getShaderMatrix();
            shaderMatrix.postRotate(ResManager.INSTANCE.getFloat(C7485R.dimen.tape_shape_shader_bias_rotate));
            return shaderMatrix;
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.BaseTapeFillShaderBitmapCreator, com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.TapeFillShaderBitmapCreator
        public void setHeight(float height) {
            super.setHeight(height);
            float scale = height * getScale() * m33801a();
            getPaint().setStrokeWidth(getStrokeLineWidth() * RectFKt.scaleToHeight(getBitmapRect(), new RectF(0.0f, 0.0f, scale, scale)) * getScale());
        }
    }

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillDotBitmap;", "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;", "Landroid/graphics/Matrix;", "getShaderMatrix", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "draw", "", "j", "F", "dotRadius", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class TapeFillDotBitmap extends BaseTapeFillShaderBitmapCreator {

        /* renamed from: j, reason: from kotlin metadata */
        public final float dotRadius;

        public TapeFillDotBitmap() {
            super(TapeFillStyle.TAPE_FILL_STYLE_DOT);
            this.dotRadius = ResManager.INSTANCE.getDimension(C7485R.dimen.tape_shape_shader_dot_radius);
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.BaseTapeFillShaderBitmapCreator
        public void draw(@NotNull Canvas canvas) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            super.draw(canvas);
            getPaint().setColor(-1);
            float scale = this.dotRadius * getScale();
            canvas.translate(canvas.getWidth() / 2.0f, canvas.getHeight() / 2.0f);
            canvas.drawCircle(0.0f, 0.0f, scale / 2, getPaint());
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.BaseTapeFillShaderBitmapCreator, com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.TapeFillShaderBitmapCreator
        @NotNull
        public Matrix getShaderMatrix() {
            Matrix shaderMatrix = super.getShaderMatrix();
            shaderMatrix.postRotate(ResManager.INSTANCE.getFloat(C7485R.dimen.tape_shape_shader_dot_rotate));
            return shaderMatrix;
        }
    }

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000bH\u0016¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillGridBitmap;", "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;", "()V", "draw", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "init", "color", "", "scale", "", "setHeight", "height", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class TapeFillGridBitmap extends BaseTapeFillShaderBitmapCreator {
        public TapeFillGridBitmap() {
            super(TapeFillStyle.TAPE_FILL_STYLE_GRID);
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.BaseTapeFillShaderBitmapCreator
        public void draw(@NotNull Canvas canvas) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            super.draw(canvas);
            canvas.clipRect(getBitmapRect());
            getPaint().setColor(ResManager.INSTANCE.getColor(C7485R.color.tape_bias_line_color));
            float width = getBitmapRect().width();
            canvas.drawLine(0.0f, 0.0f, width, 0.0f, getPaint());
            canvas.drawLine(0.0f, width, width, width, getPaint());
            canvas.drawLine(0.0f, 0.0f, 0.0f, width, getPaint());
            canvas.drawLine(width, 0.0f, width, width, getPaint());
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.BaseTapeFillShaderBitmapCreator, com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.TapeFillShaderBitmapCreator
        public void init(int color, float scale) {
            super.init(color, scale);
            ResManager resManager = ResManager.INSTANCE;
            setStrokeLineWidth(resManager.getDimension(C7485R.dimen.tape_shape_shader_grid_line_stroke_width));
            getPaint().setStrokeWidth(getStrokeLineWidth() * scale);
            getBitmapRect().set(0.0f, 0.0f, resManager.getDimension(getType().getWidth()) * scale, resManager.getDimension(getType().getHeight()) * scale);
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.BaseTapeFillShaderBitmapCreator, com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.TapeFillShaderBitmapCreator
        public void setHeight(float height) {
            super.setHeight(height);
            float integer = (height / ResManager.INSTANCE.getInteger(C7485R.integer.tape_shape_shader_grid_num)) * getScale();
            getPaint().setStrokeWidth(getStrokeLineWidth() * RectFKt.scaleToHeight(getBitmapRect(), new RectF(0.0f, 0.0f, integer, integer)) * getScale());
        }
    }

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillPureBitmap;", "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;", "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class TapeFillPureBitmap extends BaseTapeFillShaderBitmapCreator {
        public TapeFillPureBitmap() {
            super(TapeFillStyle.TAPE_FILL_STYLE_PURE_COLOR);
        }
    }

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000bH&¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;", "", "getRect", "Landroid/graphics/RectF;", "getShaderMatrix", "Landroid/graphics/Matrix;", "init", "", "color", "", "scale", "", "loadBitmap", "Landroid/graphics/Bitmap;", "setHeight", "height", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface TapeFillShaderBitmapCreator {
        @NotNull
        RectF getRect();

        @NotNull
        Matrix getShaderMatrix();

        void init(int color, float scale);

        @NotNull
        Bitmap loadBitmap();

        void setHeight(float height);
    }

    @Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fH\u0016R\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;", "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;", "Landroid/graphics/Matrix;", "getShaderMatrix", "", "color", "", "scale", "", "init", "height", "setHeight", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "draw", "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;", "j", "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;", "args", "Lcom/caverock/androidsvg/SVG;", C4921e.f26537n, "Lcom/caverock/androidsvg/SVG;", FileTypeConstant.SVG, "l", "Landroid/graphics/Matrix;", "matrix", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nTapeFillShaderBitmap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapeFillShaderBitmap.kt\ncom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap\n+ 2 Timing.kt\nkotlin/system/TimingKt\n*L\n1#1,259:1\n17#2,6:260\n*S KotlinDebug\n*F\n+ 1 TapeFillShaderBitmap.kt\ncom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap\n*L\n253#1:260,6\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class TapeSvgBitmap extends BaseTapeFillShaderBitmapCreator {

        /* renamed from: j, reason: from kotlin metadata */
        @NotNull
        public final CreateTapeFillShaderArgs args;

        /* renamed from: k, reason: from kotlin metadata */
        @Nullable
        public SVG svg;

        /* renamed from: l, reason: from kotlin metadata */
        @NotNull
        public final Matrix matrix;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TapeSvgBitmap(@NotNull CreateTapeFillShaderArgs args) {
            super(args.getType());
            Intrinsics.checkNotNullParameter(args, "args");
            this.args = args;
            this.matrix = new Matrix();
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.BaseTapeFillShaderBitmapCreator
        public void draw(@NotNull Canvas canvas) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            super.draw(canvas);
            SVG svg = this.svg;
            if (svg == null) {
                return;
            }
            canvas.concat(this.matrix);
            long currentTimeMillis = System.currentTimeMillis();
            svg.renderToCanvas(canvas);
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            Debug.INSTANCE.m32035d(TapeSvgBitmap.class, "svg " + getType().getShaderResPath() + '[' + getBitmapRect() + "] render time: " + currentTimeMillis2, new Object[0]);
        }

        @NotNull
        public final CreateTapeFillShaderArgs getArgs() {
            return this.args;
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.BaseTapeFillShaderBitmapCreator, com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.TapeFillShaderBitmapCreator
        @NotNull
        public Matrix getShaderMatrix() {
            Matrix shaderMatrix = super.getShaderMatrix();
            shaderMatrix.postRotate(this.args.getShaderRotateDegree());
            return shaderMatrix;
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.BaseTapeFillShaderBitmapCreator, com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.TapeFillShaderBitmapCreator
        public void init(int color, float scale) {
            SVG svg;
            super.init(color, scale);
            Unit unit = Unit.INSTANCE;
            try {
                SvgUtil svgUtil = SvgUtil.INSTANCE;
                UriUtils uriUtils = UriUtils.INSTANCE;
                String shaderResPath = getType().getShaderResPath();
                String str = "";
                if (shaderResPath == null) {
                    shaderResPath = "";
                }
                String path = uriUtils.assetFileUri(shaderResPath).getPath();
                if (path != null) {
                    str = path;
                }
                svg = svgUtil.decodeSvg(str);
            } catch (Exception e) {
                e.printStackTrace();
                svg = null;
            }
            if (svg == null) {
                return;
            }
            this.svg = svg;
            if (isOverrideShaderSize()) {
                ResManager resManager = ResManager.INSTANCE;
                svg.setDocumentWidth(resManager.getDimension(getType().getWidth()));
                svg.setDocumentHeight(resManager.getDimension(getType().getHeight()));
            }
            RectF rectF = new RectF(0.0f, 0.0f, svg.getDocumentWidth(), svg.getDocumentHeight());
            RectKt.expand(rectF, getType().getPadding(), getType().getPadding());
            RectFKt.scaleRect(rectF, scale);
            this.matrix.postTranslate(getType().getPadding(), getType().getPadding());
            this.matrix.postScale(scale, scale);
            getBitmapRect().set(0.0f, 0.0f, rectF.width(), rectF.height());
        }

        @Override // com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.BaseTapeFillShaderBitmapCreator, com.onyx.android.sdk.note.common.shape.TapeFillShaderBitmap.TapeFillShaderBitmapCreator
        public void setHeight(float height) {
            super.setHeight(height);
            float scale = height * getScale();
            float scaleToHeight = RectFKt.scaleToHeight(getBitmapRect(), new RectF(0.0f, 0.0f, scale, scale));
            this.matrix.postScale(scaleToHeight, scaleToHeight);
        }
    }

    public /* synthetic */ TapeFillShaderBitmap(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public TapeFillShaderBitmap() {
    }
}
