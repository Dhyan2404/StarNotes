package com.onyx.android.sdk.universal.editor.action.layer;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.render.RenderNotePageThumbnailAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.request.page.GetPageBoxInfoRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J \u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002R\u0016\u0010\u0010\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u000f¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "l", "virtualPageBoxInfo", "", "layerId", "m", "boxInfo", "", C4921e.f26528e, C6999h.f39688c, "I", "pageIndex", "i", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;II)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DrawNotePageLayerAction extends RxBaseAppAction<RenderNotePageThumbnailAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public int pageIndex;

    /* renamed from: i, reason: from kotlin metadata */
    public int layerId;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.DrawNotePageLayerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9584a<T, R> implements Function {
        public C9584a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull DrawNotePageLayerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DrawNotePageLayerAction.this.m39320l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.DrawNotePageLayerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9585b<T, R> implements Function {
        public C9585b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RenderNotePageThumbnailAction> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DrawNotePageLayerAction drawNotePageLayerAction = DrawNotePageLayerAction.this;
            return drawNotePageLayerAction.m39321m(it2, drawNotePageLayerAction.layerId);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.DrawNotePageLayerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9586c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ GetPageBoxInfoRequest f49999e;

        public C9586c(GetPageBoxInfoRequest getPageBoxInfoRequest) {
            this.f49999e = getPageBoxInfoRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull GetPageBoxInfoRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49999e.getBoxInfo();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.DrawNotePageLayerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9587d<T> implements Consumer {
        public C9587d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DrawNotePageLayerAction.this.m39322o(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawNotePageLayerAction(@NotNull EditorBundle editorBundle, int i, int i2) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.pageIndex = i;
        this.layerId = i2;
    }

    /* renamed from: n */
    public static /* synthetic */ Observable m39319n(DrawNotePageLayerAction drawNotePageLayerAction, BoxInfo boxInfo, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        return drawNotePageLayerAction.m39321m(boxInfo, i);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RenderNotePageThumbnailAction> create() {
        Observable<RenderNotePageThumbnailAction> flatMap = Observable.just(this).flatMap(new C9584a()).flatMap(new C9585b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<BoxInfo> m39320l() {
        GetPageBoxInfoRequest getPageBoxInfoRequest = new GetPageBoxInfoRequest(getEditorBundle().getWorkBundle(), this.pageIndex, Float.valueOf(1.0f));
        Observable<BoxInfo> doOnNext = RxBaseAppActionKt.submitRequestToCore(this, getPageBoxInfoRequest).map(new C9586c(getPageBoxInfoRequest)).doOnNext(new C9587d());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final Observable<RenderNotePageThumbnailAction> m39321m(BoxInfo virtualPageBoxInfo, int layerId) {
        return new RenderNotePageThumbnailAction(getEditorBundle(), virtualPageBoxInfo, layerId).build();
    }

    /* renamed from: o */
    public final void m39322o(BoxInfo boxInfo) {
        BoxInfo.scaleToViewport$default(boxInfo, RectKt.toSizeF(boxInfo.getOriginRectFWithMargin()).ratioPageSize(AppConfig.INSTANCE.getDEFAULT_LAYER_THUMBNAIL_SIZE()), false, 2, null);
    }
}
