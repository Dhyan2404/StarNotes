package com.onyx.android.sdk.universal.editor.action.editor;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.bkground.AddCoverPageTemplateAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.request.InsertVirtualPageRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "insertPageArgs", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "i", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPage", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ApplyPageInsertedAction extends RxBaseAppAction<Object> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final InsertPageArgs insertPageArgs;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final VirtualPage virtualPage;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageInsertedAction$a */
    /* loaded from: classes8.dex */
    public static final class C8690a<T, R> implements Function {
        public C8690a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddCoverPageTemplateAction.INSTANCE.updateCoverPage(ApplyPageInsertedAction.this.getEditorBundle(), ApplyPageInsertedAction.this.insertPageArgs.getTemplateJsonBean());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageInsertedAction$b */
    /* loaded from: classes8.dex */
    public static final class C8691b<T, R> implements Function {
        public C8691b() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Object> m37680a(boolean z) {
            return DocCommonActionsKt.saveDocInfo(ApplyPageInsertedAction.this);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37680a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageInsertedAction$c */
    /* loaded from: classes8.dex */
    public static final class C8692c<T, R> implements Function {
        public C8692c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.displayAfterRefreshFullScreen(ApplyPageInsertedAction.this.getEditorBundle());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyPageInsertedAction(@NotNull EditorBundle editorBundle, @NotNull InsertPageArgs insertPageArgs, @NotNull VirtualPage virtualPage) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(insertPageArgs, "insertPageArgs");
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        this.insertPageArgs = insertPageArgs;
        this.virtualPage = virtualPage;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> flatMap = DocCommonActionsKt.createCoreObservable(getEditorBundle(), new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageInsertedAction$create$1
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
                VirtualPage virtualPage;
                Intrinsics.checkNotNullParameter(it2, "it");
                int insertAt = ApplyPageInsertedAction.this.insertPageArgs.getInsertAt();
                virtualPage = ApplyPageInsertedAction.this.virtualPage;
                InsertVirtualPageRequest insertVirtualPageRequest = new InsertVirtualPageRequest(it2, insertAt, virtualPage, false, 8, null);
                insertVirtualPageRequest.setScrollTo(false);
                insertVirtualPageRequest.execute2();
            }
        }).flatMap(new C8690a()).flatMap(new C8691b()).flatMap(new C8692c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
