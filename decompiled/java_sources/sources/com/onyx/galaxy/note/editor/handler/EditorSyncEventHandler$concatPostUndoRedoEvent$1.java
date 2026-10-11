package com.onyx.galaxy.note.editor.handler;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\n¢\u0006\u0002\b\u0005"}, m61528d2 = {"<anonymous>", "", "list", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class EditorSyncEventHandler$concatPostUndoRedoEvent$1 extends Lambda implements Function1<List<? extends EditorBundle>, Unit> {
    final /* synthetic */ Object $event;
    final /* synthetic */ EditorSyncEventHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditorSyncEventHandler$concatPostUndoRedoEvent$1(EditorSyncEventHandler editorSyncEventHandler, Object obj) {
        super(1);
        this.this$0 = editorSyncEventHandler;
        this.$event = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(EditorSyncEventHandler this$0, Observable observable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(observable, "$observable");
        this$0.getEditorBundle().getUiBundle().getActionManager().execute((Observable<?>) observable);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
        invoke2((List<EditorBundle>) list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull final List<EditorBundle> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        Observable observeOn = Observable.just(this.this$0).observeOn(AndroidSchedulers.mainThread());
        final Object obj = this.$event;
        final Observable doOnNext = observeOn.doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$concatPostUndoRedoEvent$1$observable$1

            /* renamed from: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$concatPostUndoRedoEvent$1$observable$1$a */
            /* loaded from: classes9.dex */
            public static final class C12027a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ EditorBundle f58667e;

                /* renamed from: f */
                public final /* synthetic */ Object f58668f;

                public C12027a(EditorBundle editorBundle, Object obj) {
                    this.f58667e = editorBundle;
                    this.f58668f = obj;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Unit it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    EditorBundleKt.postEvent(this.f58667e, this.f58668f);
                }
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull EditorSyncEventHandler it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                List<EditorBundle> list2 = list;
                Object obj2 = obj;
                for (EditorBundle editorBundle : list2) {
                    DocCommonActionsKt.createNoteObservable(editorBundle, new Function1<NoteBundle, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$concatPostUndoRedoEvent$1$observable$1$1$1
                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull NoteBundle it3) {
                            Intrinsics.checkNotNullParameter(it3, "it");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                            invoke2(noteBundle);
                            return Unit.INSTANCE;
                        }
                    }).doOnNext(new C12027a(editorBundle, obj2)).subscribe();
                }
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        final EditorSyncEventHandler editorSyncEventHandler = this.this$0;
        RxjavaKt.runInUI(new Runnable() { // from class: com.onyx.galaxy.note.editor.handler.a
            @Override // java.lang.Runnable
            public final void run() {
                EditorSyncEventHandler$concatPostUndoRedoEvent$1.invoke$lambda$0(EditorSyncEventHandler.this, doOnNext);
            }
        });
    }
}
