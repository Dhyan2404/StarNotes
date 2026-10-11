package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.content.ClipData;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.net.Uri;
import android.view.View;
import androidx.core.content.FileProvider;
import androidx.core.view.ViewCompat;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.extension.ShapeKt;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.common.drag.BitmapDragShadowBuilder;
import com.onyx.android.sdk.universal.common.provider.ProviderConfig;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.data.ExcerptConstants;
import com.onyx.android.sdk.universal.editor.events.note.DismissExcerptPopupEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/StartExcerptDragAndDropAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;", "action", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "l", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "", "i", "J", "delay", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;J)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartExcerptDragAndDropAction extends RxBaseAppAction<StartExcerptDragAndDropAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: i, reason: from kotlin metadata */
    public final long delay;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.StartExcerptDragAndDropAction$a */
    /* loaded from: classes8.dex */
    public static final class C8874a<T> implements Consumer {
        public C8874a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StartExcerptDragAndDropAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(StartExcerptDragAndDropAction.this.getEditorBundle(), new DismissExcerptPopupEvent());
        }
    }

    @SourceDebugExtension({"SMAP\nStartExcerptDragAndDropAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartExcerptDragAndDropAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/StartExcerptDragAndDropAction$create$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,89:1\n1#2:90\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.StartExcerptDragAndDropAction$b */
    /* loaded from: classes8.dex */
    public static final class C8875b<T, R> implements Function {
        public C8875b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoadExcerptBitmapAction> apply(@NotNull StartExcerptDragAndDropAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadExcerptBitmapAction loadExcerptBitmapAction = new LoadExcerptBitmapAction(StartExcerptDragAndDropAction.this.getEditorBundle());
            loadExcerptBitmapAction.setExcerptId(StartExcerptDragAndDropAction.this.shape.getShapeUniqueId());
            return loadExcerptBitmapAction.build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.StartExcerptDragAndDropAction$c */
    /* loaded from: classes8.dex */
    public static final class C8876c<T> implements Consumer {
        public C8876c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadExcerptBitmapAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartExcerptDragAndDropAction startExcerptDragAndDropAction = StartExcerptDragAndDropAction.this;
            startExcerptDragAndDropAction.m37957l(it2, startExcerptDragAndDropAction.shape);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.StartExcerptDragAndDropAction$d */
    /* loaded from: classes8.dex */
    public static final class C8877d<T, R> implements Function {
        public C8877d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartExcerptDragAndDropAction apply(@NotNull LoadExcerptBitmapAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartExcerptDragAndDropAction.this;
        }
    }

    public /* synthetic */ StartExcerptDragAndDropAction(EditorBundle editorBundle, Shape shape, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, shape, (i & 4) != 0 ? ResManager.INSTANCE.getLong(C8045R.integer.excerpt_shape_long_press_start_drag_duration) : j);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartExcerptDragAndDropAction> create() {
        Observable<StartExcerptDragAndDropAction> map = Observable.just(this).delay(this.delay, TimeUnit.MILLISECONDS).doOnNext(new C8874a()).flatMap(new C8875b()).doOnNext(new C8876c()).map(new C8877d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m37957l(LoadExcerptBitmapAction action, Shape shape) {
        ExcerptInfoBean excerptInfoBean;
        Bitmap bitmap = action.getBitmap();
        if (bitmap == null || (excerptInfoBean = ShapePersistOptionsKt.getExcerptInfoBean(shape)) == null) {
            return;
        }
        File file = new File(action.getImgPath());
        ResManager resManager = ResManager.INSTANCE;
        Uri uriForFile = FileProvider.getUriForFile(resManager.getAppContext(), ProviderConfig.INSTANCE.getFileProviderAuthorities(), file);
        RectF excerptShapeIndicatorAnchorRect = ShapeKt.getExcerptShapeIndicatorAnchorRect(shape);
        RectFKt.scaleRect(excerptShapeIndicatorAnchorRect, RectFKt.scaleToPage(RectFKt.copy(shape.getOriginRect()), BitmapKt.boundingRectF(bitmap)));
        Intent intent = new Intent();
        intent.putExtra(ExcerptConstants.ARGS_DOC_ID, EditorBundleKt.docId(getEditorBundle()));
        intent.putExtra(ExcerptConstants.ARGS_SOURCE_SHAPE_ID, shape.getShapeUniqueId());
        intent.putExtra(ExcerptConstants.ARGS_SOURCE_EXCERPT_QUOTE, excerptInfoBean.getQuote());
        intent.putExtra(ExcerptConstants.ARGS_SOURCE_EXCERPT_INDICATOR_ANCHOR_RECT, excerptShapeIndicatorAnchorRect);
        intent.putExtra(ExcerptConstants.ARGS_SOURCE_SHAPE_RECT, shape.getOriginRect());
        intent.putExtra(ExcerptConstants.ARGS_SOURCE_TYPE, 1);
        Debug.INSTANCE.m32035d(StartExcerptDragAndDropAction.class, "dragAndDrop, docId = " + EditorBundleKt.docId(getEditorBundle()), new Object[0]);
        ClipData newUri = ClipData.newUri(resManager.getAppContext().getContentResolver(), "image", uriForFile);
        BitmapDragShadowBuilder bitmapDragShadowBuilder = new BitmapDragShadowBuilder(bitmap);
        View view = getEditorBundle().getDisplayBundle().getView();
        Intrinsics.checkNotNull(view);
        ViewCompat.startDragAndDrop(view, newUri, bitmapDragShadowBuilder, intent, 257);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartExcerptDragAndDropAction(@NotNull EditorBundle editorBundle, @NotNull Shape shape, long j) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.shape = shape;
        this.delay = j;
    }
}
