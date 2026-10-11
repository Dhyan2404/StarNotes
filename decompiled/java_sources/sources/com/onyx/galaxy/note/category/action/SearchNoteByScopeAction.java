package com.onyx.galaxy.note.category.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.action.doc.LoadNoteModelsAction;
import com.onyx.galaxy.note.category.data.SearchScope;
import com.onyx.galaxy.note.category.view.adapter.SelectMultiFolderAdapter;
import com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.extension.NoteQueryArgsKt;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0002J\"\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0003H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "models", "l", "model", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/category/data/SearchScope;", C6998g.f39679a, "Lcom/onyx/galaxy/note/category/data/SearchScope;", "searchScope", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/data/SearchScope;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSearchNoteByScopeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteByScopeAction.kt\ncom/onyx/galaxy/note/category/action/SearchNoteByScopeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n766#2:56\n857#2,2:57\n*S KotlinDebug\n*F\n+ 1 SearchNoteByScopeAction.kt\ncom/onyx/galaxy/note/category/action/SearchNoteByScopeAction\n*L\n34#1:56\n34#1:57,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SearchNoteByScopeAction extends BaseNoteManagementAction<List<? extends SyncNoteModel>> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final SearchScope searchScope;

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteByScopeAction$a */
    /* loaded from: classes9.dex */
    public static final class C10980a<T, R> implements Function {
        public C10980a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<SyncNoteModel>> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchNoteByScopeAction.this.m42537m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteByScopeAction$b */
    /* loaded from: classes9.dex */
    public static final class C10981b<T, R> implements Function {
        public C10981b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<SyncNoteModel>> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchNoteByScopeAction.this.m42536l(it2);
        }
    }

    public SearchNoteByScopeAction(@NotNull SearchScope searchScope) {
        Intrinsics.checkNotNullParameter(searchScope, "searchScope");
        this.searchScope = searchScope;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<SyncNoteModel>> create() {
        Observable<List<SyncNoteModel>> flatMap = Observable.just(Unit.INSTANCE).flatMap(new C10980a()).flatMap(new C10981b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<List<SyncNoteModel>> m42536l(List<? extends SyncNoteModel> models) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : models) {
            if (m42538n((SyncNoteModel) obj)) {
                arrayList.add(obj);
            }
        }
        Observable<List<SyncNoteModel>> just = Observable.just(arrayList);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: m */
    public final Observable<List<SyncNoteModel>> m42537m() {
        return new LoadNoteModelsAction(NoteQueryArgsKt.sortWith(NoteConfigKt.getDocumentsArgs(), SortBy.UpdateAt, SortOrder.Desc)).build();
    }

    /* renamed from: n */
    public final boolean m42538n(SyncNoteModel model) {
        String parentUniqueId = model.getParentUniqueId();
        if (parentUniqueId == null || parentUniqueId.length() == 0) {
            parentUniqueId = SelectMultiFolderAdapter.INSTANCE.getUNCLASSIFIED_FOLDER_ID();
        }
        final List<String> tagIdList = model.getTagIdList();
        List<String> list = tagIdList;
        CollectionKt.addIf(list, SelectMultiTagAdapter.INSTANCE.getUNCLASSIFIED_TAG_ID(), new Function0<Boolean>() { // from class: com.onyx.galaxy.note.category.action.SearchNoteByScopeAction$matchSearchScope$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(tagIdList.isEmpty());
            }
        });
        if ((this.searchScope.getFolderIds().isEmpty() && this.searchScope.getTagIds().isEmpty()) || this.searchScope.getSelectAllFolder() || this.searchScope.getSelectAllTag()) {
            return true;
        }
        return this.searchScope.getFolderIds().contains(parentUniqueId) || CollectionKt.containsAny(this.searchScope.getTagIds(), list);
    }
}
