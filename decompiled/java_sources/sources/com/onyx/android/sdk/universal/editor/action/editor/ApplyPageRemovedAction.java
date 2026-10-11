package com.onyx.android.sdk.universal.editor.action.editor;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction;
import com.onyx.android.sdk.universal.editor.action.RemovePageDoneAction;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.page.GetPageIndexFromIdAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageRemovedAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", C6999h.f39688c, "Ljava/util/List;", "pageIdList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ApplyPageRemovedAction extends RxBaseAppAction<Object> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> pageIdList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageRemovedAction$a */
    /* loaded from: classes8.dex */
    public static final class C8695a<T, R> implements Function {
        public C8695a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new RemovePageDoneAction(ApplyPageRemovedAction.this.getEditorBundle()).build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyPageRemovedAction(@NotNull EditorBundle editorBundle, @NotNull List<String> pageIdList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        this.pageIdList = pageIdList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<R> flatMap = RxjavaKt.flatMapIf(new GetPageIndexFromIdAction(getEditorBundle(), this.pageIdList).build(), new Function1<List<? extends Integer>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageRemovedAction$create$1
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<Integer> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends Integer> list) {
                return invoke2((List<Integer>) list);
            }
        }, new Function1<List<? extends Integer>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageRemovedAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends Integer> list) {
                return invoke2((List<Integer>) list);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Observable<? extends Object> invoke2(@NotNull List<Integer> it2) {
                Object first;
                Intrinsics.checkNotNullParameter(it2, "it");
                RemovePageByIdListAction.Companion companion = RemovePageByIdListAction.Companion;
                EditorBundle editorBundle = ApplyPageRemovedAction.this.getEditorBundle();
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
                return companion.removePage(editorBundle, ((Number) first).intValue());
            }
        }).flatMap(new C8695a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
