package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/SearchNoteTitleAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6998g.f39679a, "Ljava/util/List;", "noteModels", "", C6999h.f39688c, Constants.STRING_SIG, "keyword", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "i", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSearchNoteTitleAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteTitleAction.kt\ncom/onyx/galaxy/note/category/action/SearchNoteTitleAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,34:1\n766#2:35\n857#2,2:36\n*S KotlinDebug\n*F\n+ 1 SearchNoteTitleAction.kt\ncom/onyx/galaxy/note/category/action/SearchNoteTitleAction\n*L\n30#1:35\n30#1:36,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SearchNoteTitleAction extends BaseNoteManagementAction<List<SyncNoteModel>> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> noteModels;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String keyword;

    /* renamed from: i, reason: from kotlin metadata */
    public NoteProvider provider;

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteTitleAction$a */
    /* loaded from: classes9.dex */
    public static final class C10982a<T> implements Consumer {
        public C10982a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchNoteTitleAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteTitleAction$b */
    /* loaded from: classes9.dex */
    public static final class C10983b<T, R> implements Function {
        public C10983b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchNoteTitleAction.this.m42541l();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SearchNoteTitleAction(@NotNull List<? extends SyncNoteModel> noteModels, @NotNull String keyword) {
        Intrinsics.checkNotNullParameter(noteModels, "noteModels");
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        this.noteModels = noteModels;
        this.keyword = keyword;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<SyncNoteModel>> create() {
        Observable<List<SyncNoteModel>> observeOn = createNoteProviderObservable().doOnNext(new C10982a()).map(new C10983b()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final List<SyncNoteModel> m42541l() {
        List<SyncNoteModel> mutableList;
        boolean contains;
        List<SyncNoteModel> list = this.noteModels;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            String title = ((SyncNoteModel) obj).getTitle();
            if (title == null) {
                title = "";
            }
            contains = StringsKt__StringsKt.contains((CharSequence) title, (CharSequence) this.keyword, true);
            if (contains) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }
}
