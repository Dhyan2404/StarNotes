package com.onyx.android.sdk.universal.editor.action.doc;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.AfterDocumentOpenRequest;
import com.onyx.android.sdk.universal.editor.request.page.CloseVirtualPolicyRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\f\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;", "virtualDocModel", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReopenDocumentAction extends RxBaseAppAction<Object> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public VirtualDocModel virtualDocModel;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.ReopenDocumentAction$a */
    /* loaded from: classes8.dex */
    public static final class C8665a<T> implements Consumer {
        public C8665a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            WorkBundleKt.updateVirtualDocModel(ReopenDocumentAction.this.getEditorBundle().getWorkBundle(), ReopenDocumentAction.this.virtualDocModel);
            new CloseVirtualPolicyRequest(ReopenDocumentAction.this.getEditorBundle().getWorkBundle()).execute2();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.ReopenDocumentAction$b */
    /* loaded from: classes8.dex */
    public static final class C8666b<T, R> implements Function {
        public C8666b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AfterDocumentOpenRequest> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReopenDocumentAction reopenDocumentAction = ReopenDocumentAction.this;
            return RxBaseAppActionKt.submitRequestToCore(reopenDocumentAction, new AfterDocumentOpenRequest(reopenDocumentAction.getEditorBundle().getWorkBundle(), null, 2, 0 == true ? 1 : 0));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReopenDocumentAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.virtualDocModel = new VirtualDocModel();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable flatMap = RenderRequestManagerKt.safeClearAllNoteSliceCache(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C8665a()).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.doc.ReopenDocumentAction$create$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Unit> apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return DocCommonActionsKt.createNoteObservable(ReopenDocumentAction.this.getEditorBundle(), new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.doc.ReopenDocumentAction$create$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                        invoke2(noteBundle);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull NoteBundle it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        it3.getNoteDoc().close();
                    }
                });
            }
        }).flatMap(new C8666b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return RxjavaKt.flatMapIf(flatMap, new Function1<AfterDocumentOpenRequest, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.doc.ReopenDocumentAction$create$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AfterDocumentOpenRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(StringKt.isNotBlank(ReopenDocumentAction.this.virtualDocModel.getViewportId()));
            }
        }, new Function1<AfterDocumentOpenRequest, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.doc.ReopenDocumentAction$create$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull AfterDocumentOpenRequest it2) {
                Observable<? extends Object> m37640l;
                Intrinsics.checkNotNullParameter(it2, "it");
                m37640l = ReopenDocumentAction.this.m37640l();
                return m37640l;
            }
        });
    }

    /* renamed from: l */
    public final Observable<?> m37640l() {
        Observable<?> onErrorReturnItem = DocCommonActionsKt.createCoreObservable(getEditorBundle(), new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.doc.ReopenDocumentAction$restoreViewport$1
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
                Intrinsics.checkNotNullParameter(it2, "it");
                BoxManager boxManager = it2.getBoxManager();
                if (boxManager == null) {
                    return;
                }
                float actualScale = ReopenDocumentAction.this.virtualDocModel.getActualScale();
                Range<Float> scaleRange = WorkBundleKt.scaleRange(it2);
                Intrinsics.checkNotNullExpressionValue(scaleRange, "scaleRange(...)");
                boxManager.initScaleWithinRange(actualScale, scaleRange);
                boxManager.scrollTo(ReopenDocumentAction.this.virtualDocModel.getViewportId(), ReopenDocumentAction.this.virtualDocModel.getOffsetX(), ReopenDocumentAction.this.virtualDocModel.getOffsetY());
            }
        }).onErrorReturnItem(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(onErrorReturnItem, "onErrorReturnItem(...)");
        return onErrorReturnItem;
    }
}
