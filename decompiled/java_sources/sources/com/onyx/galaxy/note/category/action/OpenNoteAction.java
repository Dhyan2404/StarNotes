package com.onyx.galaxy.note.category.action;

import android.content.Context;
import com.couchbase.lite.internal.core.C4Replicator;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.galaxy.note.category.action.OpenNoteAction;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleActivity;
import com.onyx.galaxy.note.utils.AutoReLockNoteManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/OpenNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "p", C4Replicator.REPLICATOR_OPTION_AUTHENTICATION, "", "q", "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "activityContext", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "i", "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "openDocArgs", "j", Constants.HASIDCALL_INDEX_SIG, "encrypted", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class OpenNoteAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final SyncNoteModel noteModel;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final OpenDocArgs openDocArgs;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean encrypted;

    /* renamed from: com.onyx.galaxy.note.category.action.OpenNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C10951a<T> implements Consumer {
        public C10951a() {
        }

        /* renamed from: a */
        public final void m42480a(boolean z) {
            OpenNoteAction.this.encrypted = z;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42480a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.OpenNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C10952b<T, R> implements Function {
        public C10952b() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42481a(boolean z) {
            return OpenNoteAction.this.m42478p();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42481a(((Boolean) obj).booleanValue());
        }
    }

    public OpenNoteAction(@NotNull Context activityContext, @NotNull SyncNoteModel noteModel, @NotNull OpenDocArgs openDocArgs) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        Intrinsics.checkNotNullParameter(openDocArgs, "openDocArgs");
        this.activityContext = activityContext;
        this.noteModel = noteModel;
        this.openDocArgs = openDocArgs;
    }

    /* renamed from: n */
    public static final void m42476n(OpenNoteAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AutoReLockNoteManager.INSTANCE.addAutoReLockNoteTask(this$0.noteModel.getUniqueId());
    }

    /* renamed from: o */
    public static final void m42477o(OpenNoteAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m42479q();
    }

    public final Observable<Boolean> auth() {
        List listOf;
        Context context = this.activityContext;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.noteModel.getUniqueId());
        return RxjavaKt.doOnNextIfTrue(RxjavaKt.doOnNextIfTrue(new AuthNoteAction(context, listOf).build(), new Consumer() { // from class: com.sunia.HTREnginev2.chk
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                OpenNoteAction.m42476n(OpenNoteAction.this, ((Boolean) obj).booleanValue());
            }
        }), new Consumer() { // from class: com.sunia.HTREnginev2.dhk
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                OpenNoteAction.m42477o(OpenNoteAction.this, ((Boolean) obj).booleanValue());
            }
        });
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable flatMap = new CheckNoteEncryptedAction(this.noteModel.getUniqueId()).build().observeOn(getMainUIScheduler()).doOnNext(new C10951a()).flatMap(new C10952b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: p */
    public final Observable<Boolean> m42478p() {
        if (this.encrypted) {
            return auth();
        }
        m42479q();
        Observable<Boolean> just = Observable.just(Boolean.TRUE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: q */
    public final void m42479q() {
        NoteScribbleActivity.INSTANCE.open(this.activityContext, this.openDocArgs);
    }
}
