package com.onyx.android.sdk.universal.editor.action.search;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B-\u0012\u0006\u0010\r\u001a\u00020\f\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0007¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", C6999h.f39688c, "Ljava/util/List;", "pageIds", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", "i", "contentTypes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RemoveTextIndexByPageAction extends RxBaseAppAction<RemoveTextIndexByPageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> pageIds;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<TextContentType> contentTypes;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.RemoveTextIndexByPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C9849a<T> implements Consumer {
        public C9849a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.getDocFtsProvider(RemoveTextIndexByPageAction.this.getEditorBundle()).removeAllPageData(RemoveTextIndexByPageAction.this.pageIds, RemoveTextIndexByPageAction.this.contentTypes);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.RemoveTextIndexByPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C9850b<T, R> implements Function {
        public C9850b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RemoveTextIndexByPageAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemoveTextIndexByPageAction.this;
        }
    }

    public /* synthetic */ RemoveTextIndexByPageAction(EditorBundle editorBundle, List list, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, list, (i & 4) != 0 ? TextContentType.INSTANCE.allPageContentTypes() : list2);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RemoveTextIndexByPageAction> create() {
        if (this.pageIds.isEmpty()) {
            Observable<RemoveTextIndexByPageAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<RemoveTextIndexByPageAction> map = Observable.just(Unit.INSTANCE).observeOn(ClusterManager.INSTANCE.getDataObserveOn()).doOnNext(new C9849a()).map(new C9850b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RemoveTextIndexByPageAction(@NotNull EditorBundle editorBundle, @NotNull List<String> pageIds, @NotNull List<? extends TextContentType> contentTypes) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        Intrinsics.checkNotNullParameter(contentTypes, "contentTypes");
        this.pageIds = pageIds;
        this.contentTypes = contentTypes;
    }
}
