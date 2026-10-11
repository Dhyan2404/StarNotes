package com.onyx.galaxy.note.editor.action.doc;

import android.content.Context;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.info.Encryption;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.AuthNoteAction;
import com.onyx.galaxy.note.category.action.UpdateNoteAction;
import com.onyx.galaxy.note.editor.action.doc.FunctionToolToggleNoteEncryptionAction;
import com.onyx.galaxy.note.editor.data.ConfigNotePasswordContext;
import com.onyx.galaxy.note.editor.event.EditNoteEncryptionChangedEvent;
import com.onyx.galaxy.note.editor.view.dialog.ConfigNotePasswordDialog;
import com.onyx.galaxy.note.utils.AutoReLockNoteManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\u000fH\u0002J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011H\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/doc/FunctionToolToggleNoteEncryptionAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncNoteModel", "", "B", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, FirebaseAnalytics.Param.SUCCESS, "G", "u", "y", "", "z", "", "t", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "A", "Landroid/content/Context;", C6999h.f39688c, "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class FunctionToolToggleNoteEncryptionAction extends RxBaseAppAction<FunctionToolToggleNoteEncryptionAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.FunctionToolToggleNoteEncryptionAction$a */
    /* loaded from: classes9.dex */
    public static final class C11895a<T, R> implements Function {
        public C11895a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncNoteModel apply(@NotNull FunctionToolToggleNoteEncryptionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundleKt.noteBundle(FunctionToolToggleNoteEncryptionAction.this.getEditorBundle()).getNoteDoc().getNoteModel();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.FunctionToolToggleNoteEncryptionAction$b */
    /* loaded from: classes9.dex */
    public static final class C11896b<T, R> implements Function {
        public C11896b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FunctionToolToggleNoteEncryptionAction.this.m45787B(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.FunctionToolToggleNoteEncryptionAction$c */
    /* loaded from: classes9.dex */
    public static final class C11897c<T, R> implements Function {
        public C11897c() {
        }

        @NotNull
        /* renamed from: a */
        public final FunctionToolToggleNoteEncryptionAction m45796a(boolean z) {
            return FunctionToolToggleNoteEncryptionAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45796a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.FunctionToolToggleNoteEncryptionAction$d */
    /* loaded from: classes9.dex */
    public static final class C11898d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SyncNoteModel f58288f;

        public C11898d(SyncNoteModel syncNoteModel) {
            this.f58288f = syncNoteModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FunctionToolToggleNoteEncryptionAction.this.m45792y(this.f58288f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.FunctionToolToggleNoteEncryptionAction$e */
    /* loaded from: classes9.dex */
    public static final class C11899e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SyncNoteModel f58290f;

        public C11899e(SyncNoteModel syncNoteModel) {
            this.f58290f = syncNoteModel;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m45798a(boolean z) {
            return FunctionToolToggleNoteEncryptionAction.this.m45789G(this.f58290f, z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45798a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FunctionToolToggleNoteEncryptionAction(@NotNull Context context, @NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.context = context;
    }

    /* renamed from: D */
    public static final void m45772D(SyncNoteModel syncNoteModel, boolean z) {
        Intrinsics.checkNotNullParameter(syncNoteModel, "$syncNoteModel");
        AutoReLockNoteManager.INSTANCE.removeAutoReLockNoteTask(syncNoteModel.getUniqueId());
    }

    /* renamed from: E */
    public static final void m45773E(boolean z) {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.unlock_note_success, false, 2, (Object) null);
    }

    /* renamed from: F */
    public static final void m45774F(boolean z) {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.unlock_note_failed, false, 2, (Object) null);
    }

    /* renamed from: s */
    public static final void m45782s(FunctionToolToggleNoteEncryptionAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m45793z();
    }

    /* renamed from: v */
    public static final void m45783v(SyncNoteModel syncNoteModel, boolean z) {
        Intrinsics.checkNotNullParameter(syncNoteModel, "$syncNoteModel");
        AutoReLockNoteManager.INSTANCE.addAutoReLockNoteTask(syncNoteModel.getUniqueId());
    }

    /* renamed from: w */
    public static final void m45784w(boolean z) {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.lock_note_success, false, 2, (Object) null);
    }

    /* renamed from: x */
    public static final void m45785x(boolean z) {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.lock_note_failed, false, 2, (Object) null);
    }

    /* renamed from: A */
    public final PublishSubject<String> m45786A() {
        final PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        ConfigNotePasswordContext configNotePasswordContext = new ConfigNotePasswordContext(this.context, false, 2, null);
        configNotePasswordContext.setConfirmCallback(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.editor.action.doc.FunctionToolToggleNoteEncryptionAction$showNoteSetPasswordDialog$configNotePasswordContext$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RxjavaKt.done(create, it2);
            }
        });
        configNotePasswordContext.setCancelCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.action.doc.FunctionToolToggleNoteEncryptionAction$showNoteSetPasswordDialog$configNotePasswordContext$1$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                create.onComplete();
            }
        });
        new ConfigNotePasswordDialog(configNotePasswordContext).show();
        return create;
    }

    /* renamed from: B */
    public final Observable<Boolean> m45787B(SyncNoteModel syncNoteModel) {
        return syncNoteModel.hasEncryption() ? m45788C(syncNoteModel) : m45791u(syncNoteModel);
    }

    /* renamed from: C */
    public final Observable<Boolean> m45788C(final SyncNoteModel syncNoteModel) {
        List listOf;
        Context context = this.context;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(syncNoteModel.getUniqueId());
        Observable<R> flatMap = new AuthNoteAction(context, listOf).build().observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C11899e(syncNoteModel));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return RxjavaKt.doOnNextIfFalse(RxjavaKt.doOnNextIfTrue(RxjavaKt.doOnNextIfTrue(flatMap, new Consumer() { // from class: com.sunia.HTREnginev2.hyg
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                FunctionToolToggleNoteEncryptionAction.m45772D(SyncNoteModel.this, ((Boolean) obj).booleanValue());
            }
        }), new Consumer() { // from class: com.sunia.HTREnginev2.iyg
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                FunctionToolToggleNoteEncryptionAction.m45773E(((Boolean) obj).booleanValue());
            }
        }), new Consumer() { // from class: com.sunia.HTREnginev2.jyg
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                FunctionToolToggleNoteEncryptionAction.m45774F(((Boolean) obj).booleanValue());
            }
        });
    }

    /* renamed from: G */
    public final Observable<Boolean> m45789G(SyncNoteModel syncNoteModel, boolean success) {
        List listOf;
        if (success) {
            syncNoteModel.resetEncryption();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(syncNoteModel);
            return new UpdateNoteAction(listOf, false, false, 6, null).build();
        }
        Observable<Boolean> just = Observable.just(Boolean.FALSE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<FunctionToolToggleNoteEncryptionAction> create() {
        Observable observeOn = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C11895a()).flatMap(new C11896b()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle()));
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable map = RxjavaKt.doOnNextIfTrue(observeOn, new Consumer() { // from class: com.sunia.HTREnginev2.nyg
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                FunctionToolToggleNoteEncryptionAction.m45782s(FunctionToolToggleNoteEncryptionAction.this, ((Boolean) obj).booleanValue());
            }
        }).map(new C11897c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: t */
    public final String m45790t() {
        String str = MMKVNote.INSTANCE.getNoteLockPasswordOption().get();
        return str == null ? "" : str;
    }

    /* renamed from: u */
    public final Observable<Boolean> m45791u(final SyncNoteModel syncNoteModel) {
        Observable observeOn = Observable.just(m45790t()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<R> flatMap = RxjavaKt.flatMapIf(observeOn, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.doc.FunctionToolToggleNoteEncryptionAction$lock$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!StringKt.isNotBlank(it2));
            }
        }, new Function1<String, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.action.doc.FunctionToolToggleNoteEncryptionAction$lock$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull String it2) {
                PublishSubject m45786A;
                Intrinsics.checkNotNullParameter(it2, "it");
                m45786A = FunctionToolToggleNoteEncryptionAction.this.m45786A();
                return m45786A;
            }
        }).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C11898d(syncNoteModel));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return RxjavaKt.doOnNextIfFalse(RxjavaKt.doOnNextIfTrue(RxjavaKt.doOnNextIfTrue(flatMap, new Consumer() { // from class: com.sunia.HTREnginev2.kyg
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                FunctionToolToggleNoteEncryptionAction.m45783v(SyncNoteModel.this, ((Boolean) obj).booleanValue());
            }
        }), new Consumer() { // from class: com.sunia.HTREnginev2.lyg
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                FunctionToolToggleNoteEncryptionAction.m45784w(((Boolean) obj).booleanValue());
            }
        }), new Consumer() { // from class: com.sunia.HTREnginev2.myg
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                FunctionToolToggleNoteEncryptionAction.m45785x(((Boolean) obj).booleanValue());
            }
        });
    }

    /* renamed from: y */
    public final Observable<Boolean> m45792y(SyncNoteModel syncNoteModel) {
        List listOf;
        syncNoteModel.setEncryption(new Encryption(4, FileUtils.INSTANCE.computeMD5(m45790t())));
        listOf = CollectionsKt__CollectionsJVMKt.listOf(syncNoteModel);
        return new UpdateNoteAction(listOf, false, false, 6, null).build();
    }

    /* renamed from: z */
    public final void m45793z() {
        EditNoteEncryptionChangedEvent editNoteEncryptionChangedEvent = new EditNoteEncryptionChangedEvent(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getNoteModel());
        EditorBundleKt.postEvent(getEditorBundle(), editNoteEncryptionChangedEvent);
        GlobalBundle.INSTANCE.postEvent(editNoteEncryptionChangedEvent);
    }
}
