package com.onyx.android.sdk.universal.editor.action.image;

import android.content.ClipData;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.view.View;
import androidx.core.content.FileProvider;
import androidx.core.view.ViewCompat;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ImageManager;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.universal.common.drag.BitmapDragShadowBuilder;
import com.onyx.android.sdk.universal.common.provider.ProviderConfig;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.data.ExcerptConstants;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0018\u0010\u0007\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0002J \u0010\n\u001a\u00020\t2\u0016\u0010\b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lkotlin/Pair;", "Ljava/io/File;", "Landroid/graphics/Bitmap;", "l", "pair", "", "m", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStartImageDragAndDropAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartImageDragAndDropAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,88:1\n344#2,3:89\n*S KotlinDebug\n*F\n+ 1 StartImageDragAndDropAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction\n*L\n58#1:89,3\n*E\n"})
/* loaded from: classes8.dex */
public final class StartImageDragAndDropAction extends RxBaseAppAction<StartImageDragAndDropAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.StartImageDragAndDropAction$a */
    /* loaded from: classes8.dex */
    public static final class C9506a<T, R> implements Function {
        public C9506a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<File, Bitmap> apply(@NotNull StartImageDragAndDropAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartImageDragAndDropAction.this.m39114l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.StartImageDragAndDropAction$b */
    /* loaded from: classes8.dex */
    public static final class C9507b<T> implements Consumer {
        public C9507b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Pair<? extends File, Bitmap> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartImageDragAndDropAction.this.m39115m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.StartImageDragAndDropAction$c */
    /* loaded from: classes8.dex */
    public static final class C9508c<T, R> implements Function {
        public C9508c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartImageDragAndDropAction apply(@NotNull Pair<? extends File, Bitmap> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartImageDragAndDropAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartImageDragAndDropAction(@NotNull EditorBundle editorBundle, @NotNull Shape shape) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.shape = shape;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartImageDragAndDropAction> create() {
        Observable<StartImageDragAndDropAction> map = Observable.just(this).observeOn(EditorBundleKt.ioSequenceScheduler(getEditorBundle())).map(new C9506a()).observeOn(getMainUIScheduler()).doOnNext(new C9507b()).map(new C9508c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Pair<File, Bitmap> m39114l() {
        ShapeResource resource = ShapeOptions.INSTANCE.getResource(this.shape);
        String path = resource != null ? resource.getPath() : null;
        if (!FileUtils.INSTANCE.isFileExist(path)) {
            return new Pair<>(null, null);
        }
        RectF copy = RectFKt.copy(this.shape.getBoundingRect());
        RectFKt.fitSafeRect(copy, BitmapKt.getBITMAP_SAFE_SIZE());
        Rect rect = new Rect();
        copy.roundOut(rect);
        ImageManager imageManager = ImageManager.INSTANCE;
        Intrinsics.checkNotNull(path);
        return new Pair<>(new File(path), ImageManager.decodeImageAsBitmap$default(imageManager, path, rect.width(), rect.height(), false, 8, null));
    }

    /* renamed from: m */
    public final void m39115m(Pair<? extends File, Bitmap> pair) {
        Bitmap second;
        File first = pair.getFirst();
        if (first == null || (second = pair.getSecond()) == null) {
            return;
        }
        ResManager resManager = ResManager.INSTANCE;
        Uri uriForFile = FileProvider.getUriForFile(resManager.getAppContext(), ProviderConfig.INSTANCE.getFileProviderAuthorities(), first);
        Intent intent = new Intent();
        ClipData newUri = ClipData.newUri(resManager.getAppContext().getContentResolver(), "image", uriForFile);
        if (ShapeTypes.INSTANCE.isQuoteShape(this.shape)) {
            intent.putExtra(ExcerptConstants.ARGS_SOURCE_TYPE, 3);
        } else {
            intent.putExtra(ExcerptConstants.ARGS_SOURCE_TYPE, 2);
        }
        BitmapDragShadowBuilder bitmapDragShadowBuilder = new BitmapDragShadowBuilder(second);
        View view = getEditorBundle().getDisplayBundle().getView();
        Intrinsics.checkNotNull(view);
        ViewCompat.startDragAndDrop(view, newUri, bitmapDragShadowBuilder, intent, 257);
    }
}
