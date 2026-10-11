package com.onyx.android.sdk.universal.editor.action.editor;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.InsertVirtualPageRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageCopiedAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C6999h.f39688c, "I", "pageIndex", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "i", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPage", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "j", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ApplyPageCopiedAction extends RxBaseAppAction<Object> {

    /* renamed from: h, reason: from kotlin metadata */
    public final int pageIndex;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final VirtualPage virtualPage;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final NotePage notePage;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageCopiedAction$a */
    /* loaded from: classes8.dex */
    public static final class C8687a<T, R> implements Function {
        public C8687a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NotePage apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(EditorBundleKt.noteBundle(ApplyPageCopiedAction.this.getEditorBundle()).getNoteDoc(), ApplyPageCopiedAction.this.notePage.getPageUniqueId());
            Intrinsics.checkNotNull(notePage);
            return notePage;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageCopiedAction$b */
    /* loaded from: classes8.dex */
    public static final class C8688b<T> implements Consumer {
        public C8688b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NotePage it2) {
            List<Shape> mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) ShapeCopyUtils.INSTANCE.deepCopyList(ApplyPageCopiedAction.this.notePage.getShapeList()));
            it2.setShapeList(mutableList);
            it2.setLoaded(true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageCopiedAction$c */
    /* loaded from: classes8.dex */
    public static final class C8689c<T, R> implements Function {
        public C8689c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(ApplyPageCopiedAction.this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyPageCopiedAction(@NotNull EditorBundle editorBundle, int i, @NotNull VirtualPage virtualPage, @NotNull NotePage notePage) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        this.pageIndex = i;
        this.virtualPage = virtualPage;
        this.notePage = notePage;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> flatMap = DocCommonActionsKt.createCoreObservable(getEditorBundle(), new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageCopiedAction$create$1
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
                int i;
                VirtualPage virtualPage;
                Intrinsics.checkNotNullParameter(it2, "it");
                i = ApplyPageCopiedAction.this.pageIndex;
                virtualPage = ApplyPageCopiedAction.this.virtualPage;
                new InsertVirtualPageRequest(it2, i, virtualPage, false, 8, null).execute2();
            }
        }).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C8687a()).doOnNext(new C8688b()).flatMap(new C8689c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
