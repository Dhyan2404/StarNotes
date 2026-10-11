package com.onyx.android.sdk.universal.docmanager.action.pdf;

import android.graphics.Bitmap;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.reader.data.LoadReaderPageThumbnailArgs;
import com.onyx.android.sdk.reader.request.LoadReaderPageThumbnailRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR$\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "getArgs", "()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "args", "Landroid/graphics/Bitmap;", "i", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "bitmap", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadReaderPageThumbnailAction extends RxBaseAppAction<LoadReaderPageThumbnailAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final LoadReaderPageThumbnailArgs args;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.pdf.LoadReaderPageThumbnailAction$a */
    /* loaded from: classes8.dex */
    public static final class C8136a<T, R> implements Function {
        public C8136a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoadReaderPageThumbnailAction> apply(@NotNull LoadReaderPageThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadReaderPageThumbnailAction.this.m36664l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.pdf.LoadReaderPageThumbnailAction$b */
    /* loaded from: classes8.dex */
    public static final class C8137b<T, R> implements Function {
        public C8137b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadReaderPageThumbnailAction apply(@NotNull LoadReaderPageThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadReaderPageThumbnailAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.pdf.LoadReaderPageThumbnailAction$c */
    /* loaded from: classes8.dex */
    public static final class C8138c<T, R> implements Function {
        public C8138c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadReaderPageThumbnailAction apply(@NotNull LoadReaderPageThumbnailRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadReaderPageThumbnailAction.this.setBitmap(it2.getBitmap());
            return LoadReaderPageThumbnailAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadReaderPageThumbnailAction(@NotNull EditorBundle editorBundle, @NotNull LoadReaderPageThumbnailArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadReaderPageThumbnailAction> create() {
        Observable<LoadReaderPageThumbnailAction> map = Observable.just(this).flatMap(new C8136a()).map(new C8137b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final LoadReaderPageThumbnailArgs getArgs() {
        return this.args;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    /* renamed from: l */
    public final Observable<LoadReaderPageThumbnailAction> m36664l() {
        Observable<LoadReaderPageThumbnailAction> map = RxBaseAppActionKt.submitRequestToReader(this, new LoadReaderPageThumbnailRequest(EditorBundleKt.readerBundle(getEditorBundle()), this.args)).map(new C8138c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }
}
