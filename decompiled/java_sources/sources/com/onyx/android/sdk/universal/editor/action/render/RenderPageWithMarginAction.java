package com.onyx.android.sdk.universal.editor.action.render;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.MarginPercent;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.data.RenderPageThumbnailArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.GetPageBoxInfoRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.io.FileNotFoundException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B)\u0012\u0006\u0010\"\u001a\u00020!\u0012\b\b\u0002\u0010\u0010\u001a\u00020\t\u0012\u0006\u0010\u0018\u001a\u00020\u0011\u0012\u0006\u0010 \u001a\u00020\u0019¢\u0006\u0004\b#\u0010$J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0002R\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Landroid/graphics/Bitmap;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "l", "boxInfo", "m", "", C6999h.f39688c, "I", "getPageIndex", "()I", "setPageIndex", "(I)V", "pageIndex", "Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "i", "Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "getMarginPercent", "()Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "setMarginPercent", "(Lcom/onyx/android/sdk/geometry/data/MarginPercent;)V", "marginPercent", "Landroid/graphics/RectF;", "j", "Landroid/graphics/RectF;", "getThumbnailViewport", "()Landroid/graphics/RectF;", "setThumbnailViewport", "(Landroid/graphics/RectF;)V", "thumbnailViewport", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILcom/onyx/android/sdk/geometry/data/MarginPercent;Landroid/graphics/RectF;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RenderPageWithMarginAction extends RxBaseAppAction<Bitmap> {

    /* renamed from: h, reason: from kotlin metadata */
    public int pageIndex;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public MarginPercent marginPercent;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public RectF thumbnailViewport;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderPageWithMarginAction$a */
    /* loaded from: classes8.dex */
    public static final class C9786a<T, R> implements Function {
        public C9786a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull RenderPageWithMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderPageWithMarginAction.this.m39663l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderPageWithMarginAction$b */
    /* loaded from: classes8.dex */
    public static final class C9787b<T, R> implements Function {
        public C9787b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Bitmap> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderPageWithMarginAction.this.m39664m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderPageWithMarginAction$c */
    /* loaded from: classes8.dex */
    public static final class C9788c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ GetPageBoxInfoRequest f50330e;

        /* renamed from: f */
        public final /* synthetic */ RenderPageWithMarginAction f50331f;

        public C9788c(GetPageBoxInfoRequest getPageBoxInfoRequest, RenderPageWithMarginAction renderPageWithMarginAction) {
            this.f50330e = getPageBoxInfoRequest;
            this.f50331f = renderPageWithMarginAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull GetPageBoxInfoRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BoxInfo boxInfo = this.f50330e.getBoxInfo();
            RenderPageWithMarginAction renderPageWithMarginAction = this.f50331f;
            boxInfo.setOriginRectFWithMargin(renderPageWithMarginAction.getMarginPercent().toRectFWithMargin(boxInfo.getOriginRectF()));
            BoxInfo.scaleToViewport$default(boxInfo, RectFKt.copy(renderPageWithMarginAction.getThumbnailViewport()), false, 2, null);
            return boxInfo;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderPageWithMarginAction$d */
    /* loaded from: classes8.dex */
    public static final class C9789d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f50333f;

        public C9789d(BoxInfo boxInfo) {
            this.f50333f = boxInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Bitmap apply(@NotNull RenderPageThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Bitmap bitmap = it2.getBitmap();
            if (bitmap != null) {
                return bitmap;
            }
            throw new FileNotFoundException(EditorBundleKt.noteBundle(RenderPageWithMarginAction.this.getEditorBundle()).getNoteDoc().getNoteModel().getTitle() + '-' + this.f50333f.getId());
        }
    }

    public /* synthetic */ RenderPageWithMarginAction(EditorBundle editorBundle, int i, MarginPercent marginPercent, RectF rectF, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i2 & 2) != 0 ? 0 : i, marginPercent, rectF);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Bitmap> create() {
        Observable<Bitmap> flatMap = Observable.just(this).flatMap(new C9786a()).flatMap(new C9787b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final MarginPercent getMarginPercent() {
        return this.marginPercent;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final RectF getThumbnailViewport() {
        return this.thumbnailViewport;
    }

    /* renamed from: l */
    public final Observable<BoxInfo> m39663l() {
        GetPageBoxInfoRequest getPageBoxInfoRequest = new GetPageBoxInfoRequest(getEditorBundle().getWorkBundle(), this.pageIndex, Float.valueOf(1.0f));
        Observable<BoxInfo> map = RxBaseAppActionKt.submitRequestToCore(this, getPageBoxInfoRequest).map(new C9788c(getPageBoxInfoRequest, this));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<Bitmap> m39664m(BoxInfo boxInfo) {
        BoxInfo.Companion companion = BoxInfo.INSTANCE;
        Matrix unRotatedMatrix = companion.getUnRotatedMatrix(boxInfo);
        BoxInfo copy = boxInfo.copy();
        companion.rotate(copy, -copy.getRotation());
        copy.setOriginRectFWithMargin(this.marginPercent.toRectFWithMargin(copy.getOriginRectF()));
        BoxInfo.scaleToViewport$default(copy, RectFKt.copy(this.thumbnailViewport), false, 2, null);
        Observable map = new RenderPageThumbnailAction(getEditorBundle(), new RenderPageThumbnailArgs(copy, false, false, false, false, unRotatedMatrix, 22, null)).build().map(new C9789d(copy));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setMarginPercent(@NotNull MarginPercent marginPercent) {
        Intrinsics.checkNotNullParameter(marginPercent, "<set-?>");
        this.marginPercent = marginPercent;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setThumbnailViewport(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.thumbnailViewport = rectF;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenderPageWithMarginAction(@NotNull EditorBundle editorBundle, int i, @NotNull MarginPercent marginPercent, @NotNull RectF thumbnailViewport) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(marginPercent, "marginPercent");
        Intrinsics.checkNotNullParameter(thumbnailViewport, "thumbnailViewport");
        this.pageIndex = i;
        this.marginPercent = marginPercent;
        this.thumbnailViewport = thumbnailViewport;
    }
}
