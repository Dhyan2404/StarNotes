package com.onyx.android.sdk.universal.editor.action.thumbnail;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.export.ExportPageToImageFileAction;
import com.onyx.android.sdk.universal.editor.action.page.GetPageIndexFromIdAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.data.ExportPageToImageFileArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0006H\u0002R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, CouchFieldKey.KEY_TOC_PAGE_ID, "", "m", "pageIndex", "l", C6999h.f39688c, Constants.STRING_SIG, "Lcom/onyx/android/sdk/base/data/Orientation;", "i", "Lcom/onyx/android/sdk/base/data/Orientation;", "getOrientation", "()Lcom/onyx/android/sdk/base/data/Orientation;", "setOrientation", "(Lcom/onyx/android/sdk/base/data/Orientation;)V", "orientation", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SavePageThumbnailAction extends RxBaseAppAction<String> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public Orientation orientation;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SavePageThumbnailAction$a */
    /* loaded from: classes8.dex */
    public static final class C10259a<T, R> implements Function {
        public C10259a() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends String> m40502a(int i) {
            SavePageThumbnailAction savePageThumbnailAction = SavePageThumbnailAction.this;
            return savePageThumbnailAction.m40500l(savePageThumbnailAction.pageId, i);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m40502a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SavePageThumbnailAction$b */
    /* loaded from: classes8.dex */
    public static final class C10260b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ExportPageToImageFileAction f51202f;

        public C10260b(ExportPageToImageFileAction exportPageToImageFileAction) {
            this.f51202f = exportPageToImageFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SavePageThumbnailAction.this.setOrientation(this.f51202f.getOrientation());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SavePageThumbnailAction$c */
    /* loaded from: classes8.dex */
    public static final class C10261c<T, R> implements Function {

        /* renamed from: e */
        public static final C10261c<T, R> f51203e = new C10261c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull List<Integer> it2) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it2);
            Integer num = (Integer) firstOrNull;
            return Integer.valueOf(num != null ? num.intValue() : 0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SavePageThumbnailAction(@NotNull EditorBundle editorBundle, @NotNull String pageId) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        this.pageId = pageId;
        this.orientation = Orientation.PORTRAIT;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable flatMap = m40501m(this.pageId).flatMap(new C10259a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final Orientation getOrientation() {
        return this.orientation;
    }

    /* renamed from: l */
    public final Observable<String> m40500l(String pageId, int pageIndex) {
        String obj = ThumbnailPaths.INSTANCE.appPageThumbnailPath(EditorBundleKt.docId(getEditorBundle()), pageId).toAbsolutePath().toString();
        ExportPageToImageFileAction exportPageToImageFileAction = new ExportPageToImageFileAction(getEditorBundle(), new ExportPageToImageFileArgs(Integer.valueOf(pageIndex), FileUtils.INSTANCE.getParent(obj), FilenameUtils.getName(obj), false, false, AppConfig.INSTANCE.getDEFAULT_PAGE_THUMBNAIL_SIZE(), 24, null));
        Observable<String> doOnNext = exportPageToImageFileAction.build().doOnNext(new C10260b(exportPageToImageFileAction));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final Observable<Integer> m40501m(String pageId) {
        List listOf;
        EditorBundle editorBundle = getEditorBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(pageId);
        Observable map = new GetPageIndexFromIdAction(editorBundle, listOf).build().map(C10261c.f51203e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setOrientation(@NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "<set-?>");
        this.orientation = orientation;
    }
}
