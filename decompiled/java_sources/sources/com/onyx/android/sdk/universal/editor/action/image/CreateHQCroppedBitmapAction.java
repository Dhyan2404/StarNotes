package com.onyx.android.sdk.universal.editor.action.image;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.SizeKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.utils.ImageManager;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B'\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\f\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/image/CreateHQCroppedBitmapAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Landroid/graphics/Bitmap;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "i", "Landroid/graphics/Bitmap;", "shapeBitmap", "Lcom/onyx/android/sdk/universal/editor/action/image/CreateHQCroppedBitmapAction$Companion$CropImageData;", "j", "Lcom/onyx/android/sdk/universal/editor/action/image/CreateHQCroppedBitmapAction$Companion$CropImageData;", "croppedData", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/universal/editor/action/image/CreateHQCroppedBitmapAction$Companion$CropImageData;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateHQCroppedBitmapAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateHQCroppedBitmapAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/CreateHQCroppedBitmapAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,106:1\n1#2:107\n337#3:108\n*S KotlinDebug\n*F\n+ 1 CreateHQCroppedBitmapAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/CreateHQCroppedBitmapAction\n*L\n71#1:108\n*E\n"})
/* loaded from: classes8.dex */
public final class CreateHQCroppedBitmapAction extends RxBaseAppAction<Bitmap> {

    /* renamed from: k */
    public static final int f49737k = 3500;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Bitmap shapeBitmap;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Companion.CropImageData croppedData;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateHQCroppedBitmapAction$a */
    /* loaded from: classes8.dex */
    public static final class C9468a<T, R> implements Function {
        public C9468a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Bitmap apply(@NotNull CreateHQCroppedBitmapAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateHQCroppedBitmapAction.this.m39049l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateHQCroppedBitmapAction(@NotNull EditorBundle editorBundle, @NotNull Shape shape, @NotNull Bitmap shapeBitmap, @NotNull Companion.CropImageData croppedData) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(shapeBitmap, "shapeBitmap");
        Intrinsics.checkNotNullParameter(croppedData, "croppedData");
        this.shape = shape;
        this.shapeBitmap = shapeBitmap;
        this.croppedData = croppedData;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Bitmap> create() {
        Observable<Bitmap> map = Observable.just(this).observeOn(EditorBundleKt.ioSequenceScheduler(getEditorBundle())).map(new C9468a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Bitmap m39049l() {
        ShapeResource resource = ShapeOptions.INSTANCE.getResource(this.shape);
        String path = resource != null ? resource.getPath() : null;
        String str = FileUtils.INSTANCE.isFileExist(path) ? path : null;
        if (str == null) {
            Bitmap bitmap = this.croppedData.getBitmap();
            Intrinsics.checkNotNull(bitmap);
            return bitmap;
        }
        ImageManager imageManager = ImageManager.INSTANCE;
        RectF rectF = imageManager.decodeSize(str).toRectF();
        float min = Math.min(Math.min(rectF.width(), 3500.0f) / rectF.width(), Math.min(rectF.height(), 3500.0f) / rectF.height());
        RectFKt.scaleToPage(rectF, new RectF(0.0f, 0.0f, rectF.width() * min, rectF.height() * min));
        Bitmap decodeImageAsBitmap = imageManager.decodeImageAsBitmap(str, (int) rectF.width(), (int) rectF.height(), false);
        float scaleToPage = RectFKt.scaleToPage(SizeKt.toRectF(BitmapKt.getSize(this.shapeBitmap)), rectF);
        Matrix matrix = new Matrix();
        matrix.postScale(scaleToPage, scaleToPage);
        RectF rectF2 = new RectF(this.croppedData.getRect());
        matrix.mapRect(rectF2);
        Path path2 = this.croppedData.getPath();
        if (path2 != null) {
            Bitmap createBitmap = Bitmap.createBitmap(decodeImageAsBitmap.getWidth(), decodeImageAsBitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
            createBitmap.eraseColor(0);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint();
            path2.transform(matrix);
            canvas.drawPath(path2, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(decodeImageAsBitmap, 0.0f, 0.0f, paint);
            decodeImageAsBitmap = createBitmap;
        }
        RectFKt.limitAndResize(rectF2, SizeKt.toRectF(BitmapKt.getSize(decodeImageAsBitmap)));
        Bitmap createBitmap2 = Bitmap.createBitmap(decodeImageAsBitmap, (int) rectF2.left, (int) rectF2.top, (int) Math.min(rectF2.width(), decodeImageAsBitmap.getWidth() - rectF2.left), (int) Math.min(rectF2.height(), decodeImageAsBitmap.getHeight() - rectF2.top));
        Intrinsics.checkNotNullExpressionValue(createBitmap2, "createBitmap(...)");
        return createBitmap2;
    }
}
