package com.onyx.android.sdk.universal.editor.action.editor;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.render.RedrawNoteAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", C6999h.f39688c, "Ljava/util/List;", "layerIdList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ApplyPageLayerRemovedAction extends RxBaseAppAction<Object> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> layerIdList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageLayerRemovedAction$a */
    /* loaded from: classes8.dex */
    public static final class C8693a<T, R> implements Function {
        public C8693a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.postVirtualDocViewInfo(ApplyPageLayerRemovedAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageLayerRemovedAction$b */
    /* loaded from: classes8.dex */
    public static final class C8694b<T, R> implements Function {
        public C8694b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new RedrawNoteAction(ApplyPageLayerRemovedAction.this.getEditorBundle()).build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyPageLayerRemovedAction(@NotNull EditorBundle editorBundle, @NotNull List<Integer> layerIdList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(layerIdList, "layerIdList");
        this.layerIdList = layerIdList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> flatMap = DocCommonActionsKt.createCoreObservable(getEditorBundle(), new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageLayerRemovedAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(WorkBundle workBundle) {
                invoke2(workBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull WorkBundle it2) {
                List<Integer> list;
                List<Integer> list2;
                Intrinsics.checkNotNullParameter(it2, "it");
                NotePage ensureGlobalNotePage = it2.getVirtualPolicy().ensureGlobalNotePage();
                PageInfo pageInfo = ensureGlobalNotePage.getPageInfo();
                list = ApplyPageLayerRemovedAction.this.layerIdList;
                pageInfo.removeLayers(list);
                List<NotePage> loadedNotePages = it2.getNoteBundle().getNoteDoc().getLoadedNotePages();
                ApplyPageLayerRemovedAction applyPageLayerRemovedAction = ApplyPageLayerRemovedAction.this;
                for (NotePage notePage : loadedNotePages) {
                    PageInfo pageInfo2 = notePage.getPageInfo();
                    list2 = applyPageLayerRemovedAction.layerIdList;
                    pageInfo2.removeLayers(list2);
                    notePage.getPageInfo().setCurrentLayerId(ensureGlobalNotePage.getLayerIndex());
                }
            }
        }).flatMap(new C8693a()).flatMap(new C8694b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
