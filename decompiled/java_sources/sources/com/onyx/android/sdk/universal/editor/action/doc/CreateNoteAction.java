package com.onyx.android.sdk.universal.editor.action.doc;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.docmanager.action.pdf.LoadReaderPageThumbnailAction;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.doc.CreateNoteAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.thumbnail.SaveCoverThumbnailAction;
import com.onyx.android.sdk.universal.editor.data.SaveCoverThumbnailArgs;
import com.onyx.android.sdk.universal.editor.request.doc.CreateVirtualDocRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\"\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011RB\u0010\u001b\u001a-\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014 \u0015*\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00130\u00130\u0012¢\u0006\u0002\b\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;", "createRequest", "p", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "noteCreateInfo", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getNoteModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "setNoteModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "Lkotlin/Pair;", "", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "i", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "getProgressCallbackPublisher", "()Lio/reactivex/rxjava3/subjects/PublishSubject;", "progressCallbackPublisher", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CreateNoteAction extends RxBaseAppAction<CreateNoteAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NoteCreateInfo noteCreateInfo;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final PublishSubject<Pair<Integer, Integer>> progressCallbackPublisher;
    public SyncNoteModel noteModel;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CreateNoteAction$a */
    /* loaded from: classes8.dex */
    public static final class C8646a<T, R> implements Function {
        public C8646a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull CreateNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.ensureCloseDoc(CreateNoteAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CreateNoteAction$b */
    /* loaded from: classes8.dex */
    public static final class C8647b<T> implements Consumer {
        public C8647b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateVirtualDocRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateNoteAction.this.setNoteModel(it2.getNoteModel());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CreateNoteAction$c */
    /* loaded from: classes8.dex */
    public static final class C8648c<T, R> implements Function {
        public C8648c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CreateNoteAction> apply(@NotNull CreateVirtualDocRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateNoteAction.this.m37607p(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CreateNoteAction$d */
    /* loaded from: classes8.dex */
    public static final class C8650d<T, R> implements Function {
        public C8650d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull CreateNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.ensureCloseDoc(CreateNoteAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CreateNoteAction$e */
    /* loaded from: classes8.dex */
    public static final class C8651e<T, R> implements Function {
        public C8651e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateNoteAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateNoteAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CreateNoteAction$f */
    /* loaded from: classes8.dex */
    public static final class C8652f<T, R> implements Function {
        public C8652f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveCoverThumbnailAction> apply(@NotNull LoadReaderPageThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SaveCoverThumbnailAction(new SaveCoverThumbnailArgs(CreateNoteAction.this.getNoteModel().getUniqueId(), CreateNoteAction.this.getNoteModel(), it2.getBitmap())).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CreateNoteAction$g */
    /* loaded from: classes8.dex */
    public static final class C8653g<T, R> implements Function {
        public C8653g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateNoteAction apply(@NotNull SaveCoverThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateNoteAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateNoteAction(@NotNull EditorBundle editorBundle, @NotNull NoteCreateInfo noteCreateInfo) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(noteCreateInfo, "noteCreateInfo");
        this.noteCreateInfo = noteCreateInfo;
        PublishSubject<Pair<Integer, Integer>> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.progressCallbackPublisher = create;
    }

    /* renamed from: n */
    public static final void m37605n(CreateNoteAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.progressCallbackPublisher.onComplete();
    }

    /* renamed from: o */
    public static final void m37606o(CreateNoteAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.progressCallbackPublisher.onComplete();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CreateNoteAction> create() {
        Observable<CreateNoteAction> map = Observable.just(this).flatMap(new C8646a()).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.doc.CreateNoteAction$create$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends CreateVirtualDocRequest> apply(@NotNull Object it2) {
                NoteCreateInfo noteCreateInfo;
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundle editorBundle = CreateNoteAction.this.getEditorBundle();
                noteCreateInfo = CreateNoteAction.this.noteCreateInfo;
                final CreateNoteAction createNoteAction = CreateNoteAction.this;
                return new CreateVirtualDocAction(editorBundle, noteCreateInfo, new Function2<Integer, Integer, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.doc.CreateNoteAction$create$2.1
                    {
                        super(2);
                    }

                    public final void invoke(int i, int i2) {
                        CreateNoteAction.this.getProgressCallbackPublisher().onNext(new Pair<>(Integer.valueOf(i), Integer.valueOf(i2)));
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2) {
                        invoke(num.intValue(), num2.intValue());
                        return Unit.INSTANCE;
                    }
                }).build();
            }
        }).doOnNext(new C8647b()).flatMap(new C8648c()).flatMap(new C8650d()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.kge
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CreateNoteAction.m37605n(CreateNoteAction.this);
            }
        }).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.lge
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CreateNoteAction.m37606o(CreateNoteAction.this);
            }
        }).map(new C8651e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final SyncNoteModel getNoteModel() {
        SyncNoteModel syncNoteModel = this.noteModel;
        if (syncNoteModel != null) {
            return syncNoteModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("noteModel");
        return null;
    }

    @NotNull
    public final PublishSubject<Pair<Integer, Integer>> getProgressCallbackPublisher() {
        return this.progressCallbackPublisher;
    }

    /* renamed from: p */
    public final Observable<CreateNoteAction> m37607p(CreateVirtualDocRequest createRequest) {
        createRequest.getArgs().setClearBitmap(true);
        Observable<CreateNoteAction> map = new LoadReaderPageThumbnailAction(getEditorBundle(), createRequest.getArgs()).build().flatMap(new C8652f()).map(new C8653g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setNoteModel(@NotNull SyncNoteModel syncNoteModel) {
        Intrinsics.checkNotNullParameter(syncNoteModel, "<set-?>");
        this.noteModel = syncNoteModel;
    }
}
