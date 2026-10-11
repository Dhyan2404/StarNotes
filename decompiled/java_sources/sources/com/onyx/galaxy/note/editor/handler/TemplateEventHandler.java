package com.onyx.galaxy.note.editor.handler;

import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.InsertPageWithTemplateAction;
import com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.TemplateChangeType;
import com.onyx.galaxy.note.category.data.TemplateFragmentArgs;
import com.onyx.galaxy.note.category.event.ApplyTemplateEvent;
import com.onyx.galaxy.note.category.event.InsertPageWithTemplateEvent;
import com.onyx.galaxy.note.category.event.MoreTemplateForInsertPageEvent;
import com.onyx.galaxy.note.category.p044ui.NoteTemplateFragment;
import com.onyx.galaxy.note.common.extension.StatisticsExtKt;
import com.onyx.galaxy.note.editor.action.template.LoadPageTemplateJsonAction;
import com.onyx.galaxy.note.editor.event.ChangeTemplateEvent;
import com.onyx.galaxy.note.editor.handler.TemplateEventHandler;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "", "destroy", "Lcom/onyx/galaxy/note/editor/event/ChangeTemplateEvent;", NotificationCompat.CATEGORY_EVENT, "onChangeTemplateEvent", "Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;", "onApplyTemplateEvent", "Lcom/onyx/galaxy/note/category/event/MoreTemplateForInsertPageEvent;", "onMoreTemplateForInsertPageEvent", "Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;", "onInsertPageWithTemplateEvent", "Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;", "action", "", "changeTemplateKey", "c", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "scribbleFragment", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TemplateEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment scribbleFragment;

    /* renamed from: com.onyx.galaxy.note.editor.handler.TemplateEventHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12113a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ChangeTemplateEvent f58870f;

        public C12113a(ChangeTemplateEvent changeTemplateEvent) {
            this.f58870f = changeTemplateEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadPageTemplateJsonAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TemplateEventHandler.this.m46321c(it2, this.f58870f.getChangeTemplateKey());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateEventHandler(@NotNull EditorBundle editorBundle, @NotNull NoteScribbleFragment scribbleFragment) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(scribbleFragment, "scribbleFragment");
        this.scribbleFragment = scribbleFragment;
        DocCollectionBundle.INSTANCE.ensureRegister(this);
    }

    /* renamed from: b */
    public static final void m46320b(TemplateEventHandler this$0, final ApplyTemplateEvent event, final ApplyTemplateAction action) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "$event");
        Intrinsics.checkNotNullParameter(action, "action");
        this$0.scribbleFragment.getEditorBundleManager().postToAssociatedBundle(this$0.getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.TemplateEventHandler$onApplyTemplateEvent$2$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                ApplyTemplateEvent applyTemplateEvent = ApplyTemplateEvent.this;
                final ApplyTemplateAction applyTemplateAction = action;
                for (final EditorBundle editorBundle : list) {
                    final int currentPageIndex = EditorBundleKt.currentPageIndex(editorBundle);
                    final ApplyTemplateAction applyTemplateAction2 = new ApplyTemplateAction(editorBundle, applyTemplateEvent.getApplyTemplateInfo());
                    applyTemplateAction2.setPageIndex(applyTemplateAction.getPageIndex());
                    RxjavaKt.flatMapIf(applyTemplateAction2.build(), new Function1<ApplyTemplateAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.handler.TemplateEventHandler$onApplyTemplateEvent$2$1$1$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Boolean invoke(@NotNull ApplyTemplateAction it2) {
                            Intrinsics.checkNotNullParameter(it2, "it");
                            return Boolean.valueOf(!ApplyTemplateAction.this.isEnabledGoToCurrentPage());
                        }
                    }, new Function1<ApplyTemplateAction, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.handler.TemplateEventHandler$onApplyTemplateEvent$2$1$1$2

                        /* renamed from: com.onyx.galaxy.note.editor.handler.TemplateEventHandler$onApplyTemplateEvent$2$1$1$2$a */
                        /* loaded from: classes9.dex */
                        public static final class C12114a<T, R> implements Function {

                            /* renamed from: e */
                            public final /* synthetic */ EditorBundle f58871e;

                            public C12114a(EditorBundle editorBundle) {
                                this.f58871e = editorBundle;
                            }

                            @Override // io.reactivex.rxjava3.functions.Function
                            @NotNull
                            /* renamed from: a, reason: merged with bridge method [inline-methods] */
                            public final ObservableSource<? extends Object> apply(@NotNull ApplyTemplateAction it2) {
                                Intrinsics.checkNotNullParameter(it2, "it");
                                return DisplayActionsKt.display$default(this.f58871e, false, 1, null);
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Observable<? extends Object> invoke(@NotNull ApplyTemplateAction it2) {
                            Intrinsics.checkNotNullParameter(it2, "it");
                            Observable flatMap = ApplyTemplateAction.this.gotoCurrentPage(currentPageIndex).flatMap(new C12114a(editorBundle));
                            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
                            return flatMap;
                        }
                    }).subscribe();
                }
            }
        });
    }

    /* renamed from: c */
    public final void m46321c(LoadPageTemplateJsonAction action, int changeTemplateKey) {
        int i;
        TemplateFragmentArgs templateFragmentArgs = new TemplateFragmentArgs();
        templateFragmentArgs.setCoverTemplateJsonBean(action.getCoverTemplateJsonBean());
        templateFragmentArgs.setPaperTemplateJsonBean(action.getPaperTemplateJsonBean());
        if (changeTemplateKey == 7) {
            i = 7;
        } else {
            i = 1;
            if (EditorBundleKt.getUiFeature(getEditorBundle()).getTemplateType() == 1) {
                i = 6;
            }
        }
        templateFragmentArgs.setType(i);
        templateFragmentArgs.setChangeType(changeTemplateKey == 7 ? TemplateChangeType.CHANGE_PAPER : action.getChangeType());
        templateFragmentArgs.setHasPictureOrPDF(action.getHasPictureOrPDF());
        templateFragmentArgs.setChangeContainsCover(templateFragmentArgs.getOnlyCoverChange());
        templateFragmentArgs.setNoteId(EditorBundleKt.docId(getEditorBundle()));
        NoteTemplateFragment.INSTANCE.newInstance(templateFragmentArgs).show(this.scribbleFragment.getParentFragmentManager(), Reflection.getOrCreateKotlinClass(NoteTemplateFragment.class).getSimpleName());
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler, com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        super.destroy();
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onApplyTemplateEvent(@NotNull final ApplyTemplateEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.scribbleFragment.getEditorBundleManager().isFocusEditorBundle(getEditorBundle())) {
            RxjavaKt.doOnNextIf(new ApplyTemplateAction(getEditorBundle(), event.getApplyTemplateInfo()).build(), new Function1<ApplyTemplateAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.handler.TemplateEventHandler$onApplyTemplateEvent$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull ApplyTemplateAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(!it2.getIsAddCover());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.van
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    TemplateEventHandler.m46320b(TemplateEventHandler.this, event, (ApplyTemplateAction) obj);
                }
            }).subscribe();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeTemplateEvent(@NotNull ChangeTemplateEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        new LoadPageTemplateJsonAction(getEditorBundle(), EditorBundleKt.currentPageIndex(getEditorBundle()), event.getChangeTemplateKey() == 7).build().doOnNext(new C12113a(event)).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertPageWithTemplateEvent(@NotNull InsertPageWithTemplateEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.scribbleFragment.getEditorBundleManager().isFocusEditorBundle(getEditorBundle())) {
            Integer pageIndex = event.getPageIndex();
            int intValue = pageIndex != null ? pageIndex.intValue() : EditorBundleKt.lastPageIndex(getEditorBundle()) + 1;
            InsertPageArgs insertPageArgs = new InsertPageArgs();
            insertPageArgs.setInsertAt(intValue);
            insertPageArgs.setTemplateJsonBean(event.getTemplateJsonBean());
            insertPageArgs.setPageRect(event.getPageRect());
            RxBaseAction.execute$default(new InsertPageWithTemplateAction(getEditorBundle(), insertPageArgs), null, null, null, 7, null);
            EditorBundle editorBundle = getEditorBundle();
            TemplateJsonBean templateJsonBean = event.getTemplateJsonBean();
            String uniqueId = templateJsonBean != null ? templateJsonBean.getUniqueId() : null;
            if (uniqueId == null) {
                uniqueId = "";
            }
            StatisticsExtKt.reportInsertPageEvent(editorBundle, intValue, uniqueId, event.getInsertPageFrom());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMoreTemplateForInsertPageEvent(@NotNull MoreTemplateForInsertPageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TemplateFragmentArgs templateFragmentArgs = new TemplateFragmentArgs();
        MMKVNote mMKVNote = MMKVNote.INSTANCE;
        templateFragmentArgs.setCoverTemplateJsonBean((TemplateJsonBean) MMKVNote.getCoverOption$default(mMKVNote, null, 1, null).get());
        templateFragmentArgs.setPaperTemplateJsonBean((TemplateJsonBean) MMKVNote.getTemplateOption$default(mMKVNote, null, 0, 3, null).get());
        templateFragmentArgs.setType(2);
        templateFragmentArgs.setChangeType(TemplateChangeType.CHANGE_PAPER);
        templateFragmentArgs.setInsertAtPageIndex(event.getInsertAt());
        NoteTemplateFragment.INSTANCE.newInstance(templateFragmentArgs).show(this.scribbleFragment.getParentFragmentManager(), Reflection.getOrCreateKotlinClass(NoteTemplateFragment.class).getSimpleName());
    }
}
