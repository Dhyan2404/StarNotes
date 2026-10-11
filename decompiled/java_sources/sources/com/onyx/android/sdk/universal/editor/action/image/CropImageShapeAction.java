package com.onyx.android.sdk.universal.editor.action.image;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.net.Uri;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.command.Command;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.command.AddUndoRedoCommandAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u001c\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\b0\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u0003H\u0002R\u0016\u0010\u0011\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001c\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Ljava/io/File;", C4921e.f26528e, "file", "", "m", GoogleApiAvailabilityLight.f29016b, "shapeList", "l", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "p", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Landroid/graphics/Bitmap;", "i", "Landroid/graphics/Bitmap;", "croppedBitmap", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "j", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "compositeCommand", C4921e.f26537n, "Ljava/util/List;", "deleteShapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Bitmap;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CropImageShapeAction extends RxBaseAppAction<Shape> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Shape shape;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public Bitmap croppedBitmap;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public CompositeCommand compositeCommand;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> deleteShapes;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C9489a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Shape f49783e;

        public C9489a(Shape shape) {
            this.f49783e = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Shape apply(@NotNull Command it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49783e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C9490b<T, R> implements Function {
        public C9490b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final File apply(@NotNull CropImageShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CropImageShapeAction.this.m39091o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C9491c<T, R> implements Function {
        public C9491c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends File> apply(@NotNull File it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CropImageShapeAction.this.m39090n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C9492d<T, R> implements Function {
        public C9492d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull File it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CropImageShapeAction.this.m39089m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C9493e<T, R> implements Function {
        public C9493e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Shape> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CropImageShapeAction.this.m39088l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$f */
    /* loaded from: classes8.dex */
    public static final class C9494f<T> implements Consumer {
        public C9494f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CropImageShapeAction.this.shape.updateShapeRect();
            CropImageShapeAction.this.shape.postConcat(ShapeOptions.INSTANCE.getTransformingMatrix(CropImageShapeAction.this.shape));
        }
    }

    @SourceDebugExtension({"SMAP\nCropImageShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$createImageShape$2\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,126:1\n36#2:127\n*S KotlinDebug\n*F\n+ 1 CropImageShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$createImageShape$2\n*L\n76#1:127\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$g */
    /* loaded from: classes8.dex */
    public static final class C9495g<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ File f49790f;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$g$a */
        /* loaded from: classes8.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ CropImageShapeAction f49791e;

            /* renamed from: f */
            public final /* synthetic */ CreateImageShapeAction f49792f;

            public a(CropImageShapeAction cropImageShapeAction, CreateImageShapeAction createImageShapeAction) {
                this.f49791e = cropImageShapeAction;
                this.f49792f = createImageShapeAction;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull CreateImageShapeAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f49791e.compositeCommand = this.f49792f.getCompositeCommand();
            }
        }

        public C9495g(File file) {
            this.f49790f = file;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CreateImageShapeAction> apply(@NotNull BoxInfo it2) {
            List listOf;
            List<? extends Shape> listOf2;
            Intrinsics.checkNotNullParameter(it2, "it");
            RectF mapToScreenRectF = BoxInfoUtils.INSTANCE.mapToScreenRectF(CropImageShapeAction.this.shape.getBoundingRect(), it2);
            EditorBundle editorBundle = CropImageShapeAction.this.getEditorBundle();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Uri.fromFile(this.f49790f));
            CreateImageShapeAction createImageShapeAction = new CreateImageShapeAction(editorBundle, listOf);
            createImageShapeAction.setVirtualBoxInfo(it2);
            createImageShapeAction.setAddToCmdStack(false);
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(CropImageShapeAction.this.shape);
            createImageShapeAction.setSourceShapeList(listOf2);
            createImageShapeAction.setInsertPoint(new TouchPoint(mapToScreenRectF.left, mapToScreenRectF.top));
            return createImageShapeAction.build().doOnNext(new a(CropImageShapeAction.this, createImageShapeAction));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$h */
    /* loaded from: classes8.dex */
    public static final class C9496h<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ File f49793e;

        public C9496h(File file) {
            this.f49793e = file;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateImageShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FileUtils.INSTANCE.deleteFile(this.f49793e);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$i */
    /* loaded from: classes8.dex */
    public static final class C9497i<T, R> implements Function {

        /* renamed from: e */
        public static final C9497i<T, R> f49794e = new C9497i<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull CreateImageShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getShapeList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$j */
    /* loaded from: classes8.dex */
    public static final class C9498j<T> implements Consumer {
        public C9498j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
            Shape shape = (Shape) first;
            shape.setCreatedAt(CropImageShapeAction.this.shape.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String());
            shape.setPersistOptions(ShapePersistOptionsKt.clonePersistOptions(CropImageShapeAction.this.shape));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$k */
    /* loaded from: classes8.dex */
    public static final class C9499k<T, R> implements Function {

        /* renamed from: e */
        public static final C9499k<T, R> f49796e = new C9499k<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.mergeShapeList(true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$l */
    /* loaded from: classes8.dex */
    public static final class C9500l<T> implements Consumer {
        public C9500l() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CropImageShapeAction.this.deleteShapes = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$m */
    /* loaded from: classes8.dex */
    public static final class C9501m<T, R> implements Function {
        public C9501m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DeleteShapesAction(CropImageShapeAction.this.getEditorBundle(), it2, false, false, 12, null).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$n */
    /* loaded from: classes8.dex */
    public static final class C9502n<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ File f49799e;

        public C9502n(File file) {
            this.f49799e = file;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final File apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49799e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$o */
    /* loaded from: classes8.dex */
    public static final class C9503o<T, R> implements Function {
        public C9503o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (it2.getVirtualPageBoxInfo() == null) {
                return CommonEditorActionsKt.loadCurrentVisibleBox(CropImageShapeAction.this);
            }
            BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
            Intrinsics.checkNotNull(virtualPageBoxInfo);
            Observable just = Observable.just(virtualPageBoxInfo);
            Intrinsics.checkNotNull(just);
            return just;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CropImageShapeAction(@NotNull EditorBundle editorBundle, @NotNull Shape shape, @NotNull Bitmap croppedBitmap) {
        super(editorBundle);
        List<? extends Shape> emptyList;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(croppedBitmap, "croppedBitmap");
        this.shape = shape;
        this.croppedBitmap = croppedBitmap;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.deleteShapes = emptyList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Shape> create() {
        Observable<Shape> flatMap = Observable.just(this).observeOn(EditorBundleKt.ioSequenceScheduler(getEditorBundle())).map(new C9490b()).flatMap(new C9491c()).flatMap(new C9492d()).flatMap(new C9493e());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<Shape> m39088l(List<? extends Shape> shapeList) {
        Object first;
        List listOf;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) shapeList);
        Shape shape = (Shape) first;
        UndoRedoCommand removeShapes = new UndoRedoCommand().removeShapes(this.deleteShapes);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(shape);
        UndoRedoCommand addShapes = removeShapes.addShapes(listOf);
        CompositeCommand compositeCommand = (CompositeCommand) AnyKt.getOrElse(this.compositeCommand, new Function0<CompositeCommand>() { // from class: com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction$addUndoRedoCommand$compositeCommand$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CompositeCommand invoke() {
                return new CompositeCommand(null, 1, null);
            }
        });
        compositeCommand.addCommand(addShapes);
        Observable map = new AddUndoRedoCommandAction(getEditorBundle(), compositeCommand).build().map(new C9489a(shape));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<List<Shape>> m39089m(File file) {
        Observable<List<Shape>> doOnNext = m39092p().doOnNext(new C9494f()).flatMap(new C9495g(file)).observeOn(EditorBundleKt.ioSequenceScheduler(getEditorBundle())).doOnNext(new C9496h(file)).map(C9497i.f49794e).doOnNext(new C9498j());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: n */
    public final Observable<File> m39090n(File file) {
        List listOf;
        EditorBundle editorBundle = getEditorBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.shape);
        Observable<File> map = new GetReferenceShapeAction(editorBundle, listOf).build().map(C9499k.f49796e).doOnNext(new C9500l()).flatMap(new C9501m()).map(new C9502n(file));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final File m39091o() {
        Benchmark benchmark = new Benchmark();
        File file = new File(getAppContext().getCacheDir(), StringKt.safelyGetStr(FileUtils.INSTANCE.combine(UUIDUtils.INSTANCE.shortUUID(), "png")));
        BitmapKt.save$default(this.croppedBitmap, file.getAbsolutePath(), 0, 2, null);
        benchmark.report("ImageCrop generate cropped bitmap file:" + BitmapKt.getSize(this.croppedBitmap));
        return file;
    }

    /* renamed from: p */
    public final Observable<BoxInfo> m39092p() {
        Observable flatMap = ComputeBoxListActionsKt.findVisibleBoxInfoByNotePageId(this, this.shape.getPageUniqueId(), true).flatMap(new C9503o());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
