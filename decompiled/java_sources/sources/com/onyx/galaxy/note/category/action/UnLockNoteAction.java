package com.onyx.galaxy.note.category.action;

import android.content.Context;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.bcel.internal.Constants;
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

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\t¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/UnLockNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, FirebaseAnalytics.Param.SUCCESS, "m", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "l", "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "activityContext", "", C6999h.f39688c, "Ljava/util/List;", "noteIds", "i", "noteModelList", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUnLockNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnLockNoteAction.kt\ncom/onyx/galaxy/note/category/action/UnLockNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1855#2,2:49\n*S KotlinDebug\n*F\n+ 1 UnLockNoteAction.kt\ncom/onyx/galaxy/note/category/action/UnLockNoteAction\n*L\n39#1:49,2\n*E\n"})
/* loaded from: classes9.dex */
public final class UnLockNoteAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> noteIds;

    /* renamed from: i, reason: from kotlin metadata */
    public List<? extends SyncNoteModel> noteModelList;

    /* renamed from: com.onyx.galaxy.note.category.action.UnLockNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C10992a<T, R> implements Function {
        public C10992a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull UnLockNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UnLockNoteAction.this.createNoteProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UnLockNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C10993b<T, R> implements Function {
        public C10993b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UnLockNoteAction.this.m42563l(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UnLockNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C10994c<T> implements Consumer {
        public C10994c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UnLockNoteAction.this.noteModelList = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UnLockNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C10995d<T, R> implements Function {
        public C10995d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new AuthNoteAction(UnLockNoteAction.this.activityContext, UnLockNoteAction.this.noteIds).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UnLockNoteAction$e */
    /* loaded from: classes9.dex */
    public static final class C10996e<T, R> implements Function {
        public C10996e() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42569a(boolean z) {
            return UnLockNoteAction.this.m42564m(z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42569a(((Boolean) obj).booleanValue());
        }
    }

    public UnLockNoteAction(@NotNull Context activityContext, @NotNull List<String> noteIds) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(noteIds, "noteIds");
        this.activityContext = activityContext;
        this.noteIds = noteIds;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> flatMap = Observable.just(this).flatMap(new C10992a()).map(new C10993b()).observeOn(getObserveOn()).doOnNext(new C10994c()).flatMap(new C10995d()).observeOn(getObserveOn()).flatMap(new C10996e());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final List<SyncNoteModel> m42563l(NoteProvider noteProvider) {
        return NoteModelProviderKt.loadNoteList(noteProvider, this.noteIds);
    }

    /* renamed from: m */
    public final Observable<Boolean> m42564m(boolean success) {
        List<? extends SyncNoteModel> list;
        if (!success) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        List<? extends SyncNoteModel> list2 = this.noteModelList;
        if (list2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteModelList");
            list2 = null;
        }
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            ((SyncNoteModel) it2.next()).resetEncryption();
        }
        List<? extends SyncNoteModel> list3 = this.noteModelList;
        if (list3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteModelList");
            list = null;
        } else {
            list = list3;
        }
        return new UpdateNoteAction(list, false, false, 6, null).build();
    }
}
