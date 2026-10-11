package com.onyx.galaxy.note.editor.handler;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.auth.action.PasswordAuthAction;
import com.onyx.android.sdk.auth.request.PasswordDigestRequest;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.replicator.note.data.info.Encryption;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.config.DocumentState;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.ContentViewSizeChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.DocumentStateEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.event.CheckEditorAutoReLockEvent;
import com.onyx.galaxy.note.editor.event.CloseSideBarEvent;
import com.onyx.galaxy.note.editor.event.NotePasswordChangedEvent;
import com.onyx.galaxy.note.editor.event.ReLockNoteEvent;
import com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler;
import com.onyx.galaxy.note.editor.view.EditorViewAutoReLocLayout;
import com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout;
import com.onyx.galaxy.note.receiver.ScreenOnEvent;
import com.onyx.galaxy.note.utils.AutoReLockNoteManager;
import com.onyx.galaxy.note.utils.NoteLockUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000w\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001%\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010-\u001a\u00020,\u0012\u0006\u0010!\u001a\u00020\u001f\u0012\u0006\u0010$\u001a\u00020\"¢\u0006\u0004\b.\u0010/J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\u000e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0002J\b\u0010\u001d\u001a\u00020\u0002H\u0002J\b\u0010\u001e\u001a\u00020\u0002H\u0002R\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010 R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010#R\u0014\u0010'\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010&R\u0014\u0010+\u001a\u00020(8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*¨\u00060"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "", "destroy", "Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;", NotificationCompat.CATEGORY_EVENT, "onScreenOnEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;", "onDocumentStateEvent", "Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;", "onReLockNoteEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeChangedEvent;", "onContentViewSizeChangedEvent", "Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;", "onCheckEditorAutoReLockEvent", "Lcom/onyx/galaxy/note/editor/event/NotePasswordChangedEvent;", "onChangedNotePasswordEvent", "", "isShow", C6999h.f39688c, "", "password", "l", C4921e.f26537n, "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "i", C6997f.f39671c, C6998g.f39679a, "c", "j", "Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;", "Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;", "editorViewAutoReLocLayout", "Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;", "Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;", "splitScreenLayout", "com/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1", "Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1;", "editorViewAutoReLocLayoutListener", "Landroid/content/Context;", "e", "()Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditorAutoReLockHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorAutoReLockHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,171:1\n256#2,2:172\n*S KotlinDebug\n*F\n+ 1 EditorAutoReLockHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler\n*L\n123#1:172,2\n*E\n"})
/* loaded from: classes9.dex */
public final class EditorAutoReLockHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorViewAutoReLocLayout editorViewAutoReLocLayout;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final SplitScreenLayout splitScreenLayout;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1 editorViewAutoReLocLayoutListener;

    /* renamed from: com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12014a<T> implements Consumer {
        public C12014a() {
        }

        /* renamed from: a */
        public final void m46030a(boolean z) {
            EditorAutoReLockHandler.this.m46025h(z);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m46030a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$b */
    /* loaded from: classes9.dex */
    public static final class C12015b<T, R> implements Function {
        public C12015b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncNoteModel apply(@NotNull EditorAutoReLockHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundleKt.noteBundle(EditorAutoReLockHandler.this.getEditorBundle()).getNoteDoc().getNoteModel();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$c */
    /* loaded from: classes9.dex */
    public static final class C12016c<T> implements Predicate {

        /* renamed from: e */
        public static final C12016c<T> f58653e = new C12016c<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.hasEncryption();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$d */
    /* loaded from: classes9.dex */
    public static final class C12017d<T> implements Consumer {
        public C12017d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorAutoReLockHandler.this.m46027j();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$e */
    /* loaded from: classes9.dex */
    public static final class C12018e<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ ReLockNoteEvent f58655e;

        public C12018e(ReLockNoteEvent reLockNoteEvent) {
            this.f58655e = reLockNoteEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Intrinsics.areEqual(it2.getUniqueId(), this.f58655e.getDocId());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$f */
    /* loaded from: classes9.dex */
    public static final class C12019f<T> implements Consumer {
        public C12019f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorAutoReLockHandler.this.m46025h(true);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$g */
    /* loaded from: classes9.dex */
    public static final class C12020g<T> implements Consumer {
        public C12020g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorAutoReLockHandler.this.m46024g();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$h */
    /* loaded from: classes9.dex */
    public static final class C12021h<T> implements Consumer {

        /* renamed from: e */
        public static final C12021h<T> f58659e = new C12021h<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AutoReLockNoteManager.INSTANCE.addAutoReLockNoteTask(it2.getUniqueId());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$i */
    /* loaded from: classes9.dex */
    public static final class C12022i<T> implements Consumer {
        public C12022i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorAutoReLockHandler.this.m46025h(false);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$j */
    /* loaded from: classes9.dex */
    public static final class C12023j<T> implements Consumer {
        public C12023j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorAutoReLockHandler.this.m46024g();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$k */
    /* loaded from: classes9.dex */
    public static final class C12024k<T, R> implements Function {

        /* renamed from: e */
        public static final C12024k<T, R> f58662e = new C12024k<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull SyncNoteModel it2) {
            String digest;
            Intrinsics.checkNotNullParameter(it2, "it");
            Encryption encryption = it2.getEncryption();
            return (encryption == null || (digest = encryption.getDigest()) == null) ? "" : digest;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$l */
    /* loaded from: classes9.dex */
    public static final class C12025l<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f58663e;

        public C12025l(String str) {
            this.f58663e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new PasswordAuthAction(it2, this.f58663e).build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1, com.onyx.galaxy.note.editor.view.EditorViewAutoReLocLayout$EditorViewLockLayoutListener] */
    public EditorAutoReLockHandler(@NotNull EditorBundle editorBundle, @NotNull EditorViewAutoReLocLayout editorViewAutoReLocLayout, @NotNull SplitScreenLayout splitScreenLayout) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(editorViewAutoReLocLayout, "editorViewAutoReLocLayout");
        Intrinsics.checkNotNullParameter(splitScreenLayout, "splitScreenLayout");
        this.editorViewAutoReLocLayout = editorViewAutoReLocLayout;
        this.splitScreenLayout = splitScreenLayout;
        ?? r2 = new EditorViewAutoReLocLayout.EditorViewLockLayoutListener() { // from class: com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1
            @Override // com.onyx.galaxy.note.editor.view.EditorViewAutoReLocLayout.EditorViewLockLayoutListener
            public void forgetNotePassword() {
                Context m46022e;
                NoteLockUtils noteLockUtils = NoteLockUtils.INSTANCE;
                m46022e = EditorAutoReLockHandler.this.m46022e();
                NoteLockUtils.showForgetNotePasswordDialog$default(noteLockUtils, m46022e, null, 2, null);
            }

            @Override // com.onyx.galaxy.note.editor.view.EditorViewAutoReLocLayout.EditorViewLockLayoutListener
            public void verifyFinger() {
                EditorAutoReLockHandler.this.m46028k();
            }

            @Override // com.onyx.galaxy.note.editor.view.EditorViewAutoReLocLayout.EditorViewLockLayoutListener
            public void verifyNotePassword(@NotNull String password) {
                Intrinsics.checkNotNullParameter(password, "password");
                EditorAutoReLockHandler.this.m46029l(password);
            }
        };
        this.editorViewAutoReLocLayoutListener = r2;
        editorViewAutoReLocLayout.setListener(r2);
        GlobalBundle.INSTANCE.register(this);
    }

    /* renamed from: d */
    public static final void m46019d(boolean z) {
        GlobalBundle.INSTANCE.postEvent(new CloseSideBarEvent(null, 1, null));
    }

    /* renamed from: m */
    public static final void m46020m(boolean z) {
        ToastUtils.INSTANCE.show(C10651R.string.note_pwd_error, true);
    }

    /* renamed from: c */
    public final void m46021c() {
        Observable<Boolean> doOnNext = AutoReLockNoteManager.INSTANCE.checkEditorAutoReLockObservable(getEditorBundle()).doOnNext(new C12014a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.doOnNextIfTrue(doOnNext, new Consumer() { // from class: com.sunia.HTREnginev2.dmf
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                EditorAutoReLockHandler.m46019d(((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler, com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        super.destroy();
        GlobalBundle.INSTANCE.unregister(this);
    }

    /* renamed from: e */
    public final Context m46022e() {
        Context context = this.editorViewAutoReLocLayout.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return context;
    }

    /* renamed from: f */
    public final Observable<SyncNoteModel> m46023f() {
        Observable<SyncNoteModel> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C12015b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: g */
    public final void m46024g() {
        EditorBundleKt.postEvent(getEditorBundle(), new CheckEditorAutoReLockEvent());
        GlobalBundle.INSTANCE.postEvent(new CheckEditorAutoReLockEvent());
    }

    /* renamed from: h */
    public final void m46025h(boolean isShow) {
        this.editorViewAutoReLocLayout.setVisibility(isShow ? 0 : 8);
    }

    /* renamed from: i */
    public final Observable<SyncNoteModel> m46026i() {
        Observable<SyncNoteModel> doOnNext = m46023f().observeOn(AndroidSchedulers.mainThread()).doOnNext(C12021h.f58659e).doOnNext(new C12022i()).doOnNext(new C12023j());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: j */
    public final void m46027j() {
        String str = MMKVNote.INSTANCE.getNoteLockPasswordOption().get();
        if (str == null) {
            str = "";
        }
        String execute = new PasswordDigestRequest(str).execute();
        Encryption encryption = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getNoteModel().getEncryption();
        if (encryption == null) {
            return;
        }
        encryption.setDigest(execute);
    }

    /* renamed from: k */
    public final void m46028k() {
        RxjavaKt.flatMapIfTrue(NoteLockUtils.createAuthDialogObservable$default(NoteLockUtils.INSTANCE, m46022e(), null, 2, null), m46026i()).subscribe();
    }

    /* renamed from: l */
    public final void m46029l(String password) {
        Observable flatMap = m46023f().map(C12024k.f58662e).flatMap(new C12025l(password));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        RxjavaKt.flatMapIfTrue(RxjavaKt.doOnNextIfFalse(flatMap, new Consumer() { // from class: com.sunia.HTREnginev2.emf
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                EditorAutoReLockHandler.m46020m(((Boolean) obj).booleanValue());
            }
        }), m46026i()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangedNotePasswordEvent(@NotNull NotePasswordChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46023f().filter(C12016c.f58653e).doOnNext(new C12017d()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCheckEditorAutoReLockEvent(@NotNull CheckEditorAutoReLockEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46021c();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onContentViewSizeChangedEvent(@NotNull ContentViewSizeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorViewAutoReLocLayout.showIconView(!(this.splitScreenLayout.getSplitScreenType() == 2));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentStateEvent(@NotNull DocumentStateEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getDocumentState() != DocumentState.OPENED) {
            return;
        }
        m46021c();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onReLockNoteEvent(@NotNull ReLockNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46023f().observeOn(AndroidSchedulers.mainThread()).filter(new C12018e(event)).doOnNext(new C12019f()).doOnNext(new C12020g()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScreenOnEvent(@NotNull ScreenOnEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46021c();
    }
}
