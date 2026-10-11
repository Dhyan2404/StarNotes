package com.onyx.android.sdk.universal.editor.action;

import android.graphics.Bitmap;
import com.onyx.android.sdk.base.data.ColorTheme;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.data.LoadReaderPageThumbnailArgs;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.onyx.android.sdk.reader.request.LoadReaderPageInfoRequest;
import com.onyx.android.sdk.reader.request.LoadReaderPageThumbnailRequest;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/AdaptiveColorThemeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "pageInfo", "", "pageIndex", "m", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AdaptiveColorThemeAction extends RxBaseAppAction<AdaptiveColorThemeAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.AdaptiveColorThemeAction$a */
    /* loaded from: classes8.dex */
    public static final class C8163a<T> implements Consumer {

        /* renamed from: e */
        public static final C8163a<T> f47576e = new C8163a<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AdaptiveColorThemeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.adaptive_color_theme_success, false, 2, (Object) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdaptiveColorThemeAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AdaptiveColorThemeAction> create() {
        Observable<AdaptiveColorThemeAction> doOnNext = DocCommonActionsKt.createReaderObservable(this, new Function1<ReaderBundle, AdaptiveColorThemeAction>() { // from class: com.onyx.android.sdk.universal.editor.action.AdaptiveColorThemeAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final AdaptiveColorThemeAction invoke(@NotNull ReaderBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                AdaptiveColorThemeAction.this.m36726l();
                return AdaptiveColorThemeAction.this;
            }
        }).observeOn(AndroidSchedulers.mainThread()).doOnNext(C8163a.f47576e);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m36726l() {
        VirtualDocPolicy virtualPolicy = getEditorBundle().getWorkBundle().getVirtualPolicy();
        for (VirtualPage virtualPage : virtualPolicy.getVirtualPageList()) {
            if (ContentConstants.INSTANCE.isPDF(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentType())) {
                int parseContentPageIndex = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().parseContentPageIndex();
                LoadReaderPageInfoRequest loadReaderPageInfoRequest = new LoadReaderPageInfoRequest(EditorBundleKt.readerBundle(getEditorBundle()));
                loadReaderPageInfoRequest.setPath(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath());
                loadReaderPageInfoRequest.setPageIndex(parseContentPageIndex);
                loadReaderPageInfoRequest.execute2();
                virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().setColorTheme(m36727m(loadReaderPageInfoRequest.getReaderPageInfo(), parseContentPageIndex));
                virtualPolicy.updatePage(virtualPage);
            }
        }
    }

    /* renamed from: m */
    public final int m36727m(ReaderPageInfo pageInfo, int pageIndex) {
        LoadReaderPageThumbnailRequest loadReaderPageThumbnailRequest = new LoadReaderPageThumbnailRequest(getEditorBundle().getWorkBundle().getReaderBundle(), new LoadReaderPageThumbnailArgs(pageInfo.getPath(), pageIndex, BitmapUtils.INSTANCE.getThumbnailSize(new Size((int) pageInfo.getPageOriginSize().width(), (int) pageInfo.getPageOriginSize().height()), AppConfig.INSTANCE.getDEFAULT_PAGE_THUMBNAIL_SIZE()), null, false, 24, null));
        loadReaderPageThumbnailRequest.execute2();
        Bitmap bitmap = loadReaderPageThumbnailRequest.getBitmap();
        if (bitmap == null) {
            return 0;
        }
        return ColorTheme.INSTANCE.getThemeFromColor(Templates.INSTANCE.loadResourceColor(bitmap));
    }
}
