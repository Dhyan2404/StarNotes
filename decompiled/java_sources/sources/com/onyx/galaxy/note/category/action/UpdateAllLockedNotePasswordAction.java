package com.onyx.galaxy.note.category.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.auth.request.PasswordDigestRequest;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.data.info.Encryption;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.editor.event.UpdateAllLockedNotePasswordEvent;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\b\u0010\r\u001a\u00020\fH\u0002R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/UpdateAllLockedNotePasswordAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "m", "noteModelList", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "l", "", C6998g.f39679a, Constants.STRING_SIG, "password", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateAllLockedNotePasswordAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateAllLockedNotePasswordAction.kt\ncom/onyx/galaxy/note/category/action/UpdateAllLockedNotePasswordAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n1855#2,2:59\n1855#2,2:61\n*S KotlinDebug\n*F\n+ 1 UpdateAllLockedNotePasswordAction.kt\ncom/onyx/galaxy/note/category/action/UpdateAllLockedNotePasswordAction\n*L\n42#1:59,2\n46#1:61,2\n*E\n"})
/* loaded from: classes9.dex */
public final class UpdateAllLockedNotePasswordAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public final String password;

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateAllLockedNotePasswordAction$a */
    /* loaded from: classes9.dex */
    public static final class C10997a<T, R> implements Function {
        public C10997a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateAllLockedNotePasswordAction.this.m42571m(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateAllLockedNotePasswordAction$b */
    /* loaded from: classes9.dex */
    public static final class C10998b<T, R> implements Function {
        public C10998b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateAllLockedNotePasswordAction.this.m42572n(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateAllLockedNotePasswordAction$c */
    /* loaded from: classes9.dex */
    public static final class C10999c<T> implements Consumer {
        public C10999c() {
        }

        /* renamed from: a */
        public final void m42575a(boolean z) {
            GlobalBundle.INSTANCE.postEvent(new UpdateAllLockedNotePasswordEvent(UpdateAllLockedNotePasswordAction.this.password));
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42575a(((Boolean) obj).booleanValue());
        }
    }

    public UpdateAllLockedNotePasswordAction(@Nullable String str) {
        this.password = str;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doOnNext = createNoteProviderObservable().map(new C10997a()).flatMap(new C10998b()).doOnNext(new C10999c());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final CBQueryArgs m42570l() {
        CBQueryArgs encryptedDocumentsArgs = NoteConfigKt.getEncryptedDocumentsArgs();
        encryptedDocumentsArgs.m72251setLimit(200);
        return encryptedDocumentsArgs;
    }

    /* renamed from: m */
    public final List<SyncNoteModel> m42571m(NoteProvider provider) {
        return NoteModelProviderKt.loadNoteListInBatch(provider, m42570l());
    }

    /* renamed from: n */
    public final Observable<Boolean> m42572n(List<? extends SyncNoteModel> noteModelList) {
        if (StringKt.isNotBlank(this.password)) {
            String execute = new PasswordDigestRequest(this.password).execute();
            Iterator<T> it2 = noteModelList.iterator();
            while (it2.hasNext()) {
                ((SyncNoteModel) it2.next()).setEncryption(new Encryption(4, execute));
            }
        } else {
            Iterator<T> it3 = noteModelList.iterator();
            while (it3.hasNext()) {
                ((SyncNoteModel) it3.next()).resetEncryption();
            }
        }
        return new SaveNoteAction(noteModelList, false, 2, null).build();
    }
}
