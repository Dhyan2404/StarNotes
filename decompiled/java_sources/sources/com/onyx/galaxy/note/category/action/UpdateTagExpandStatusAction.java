package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.NoteExtraProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.TagExtraModel;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/UpdateTagExpandStatusAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;", "noteExtraProvider", "", "l", "", "", C6998g.f39679a, "Ljava/util/List;", "idList", "", C6999h.f39688c, "I", CouchFieldKey.KEY_EXPAND_STATUS, Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateTagExpandStatusAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateTagExpandStatusAction.kt\ncom/onyx/galaxy/note/category/action/UpdateTagExpandStatusAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n1855#2,2:32\n766#2:34\n857#2,2:35\n1855#2,2:37\n*S KotlinDebug\n*F\n+ 1 UpdateTagExpandStatusAction.kt\ncom/onyx/galaxy/note/category/action/UpdateTagExpandStatusAction\n*L\n19#1:32,2\n23#1:34\n23#1:35,2\n23#1:37,2\n*E\n"})
/* loaded from: classes9.dex */
public final class UpdateTagExpandStatusAction extends BaseNoteManagementAction<UpdateTagExpandStatusAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> idList;

    /* renamed from: h, reason: from kotlin metadata */
    public final int expandStatus;

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateTagExpandStatusAction$a */
    /* loaded from: classes9.dex */
    public static final class C11013a<T, R> implements Function {
        public C11013a() {
        }

        /* renamed from: a */
        public final void m42601a(@NotNull NoteExtraProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateTagExpandStatusAction.this.m42600l(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42601a((NoteExtraProvider) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateTagExpandStatusAction$b */
    /* loaded from: classes9.dex */
    public static final class C11014b<T, R> implements Function {
        public C11014b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateTagExpandStatusAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTagExpandStatusAction.this;
        }
    }

    public UpdateTagExpandStatusAction(@NotNull List<String> idList, int i) {
        Intrinsics.checkNotNullParameter(idList, "idList");
        this.idList = idList;
        this.expandStatus = i;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateTagExpandStatusAction> create() {
        Observable<UpdateTagExpandStatusAction> map = createNoteExtraProviderObservable().map(new C11013a()).map(new C11014b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m42600l(NoteExtraProvider noteExtraProvider) {
        List<TagExtraModel> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) noteExtraProvider.loadTagExtraList(this.idList));
        ArrayList arrayList = new ArrayList();
        for (TagExtraModel tagExtraModel : mutableList) {
            tagExtraModel.setExpandStatus(this.expandStatus);
            arrayList.add(tagExtraModel.getUniqueId());
        }
        List<String> list = this.idList;
        ArrayList<String> arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (!arrayList.contains((String) obj)) {
                arrayList2.add(obj);
            }
        }
        for (String str : arrayList2) {
            TagExtraModel tagExtraModel2 = new TagExtraModel();
            tagExtraModel2.setUniqueId(str);
            tagExtraModel2.setExpandStatus(this.expandStatus);
            mutableList.add(tagExtraModel2);
        }
        noteExtraProvider.saveTagExtraList(mutableList);
    }
}
