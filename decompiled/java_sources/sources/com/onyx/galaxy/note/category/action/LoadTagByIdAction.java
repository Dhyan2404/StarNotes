package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014R\u001c\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadTagByIdAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C6998g.f39679a, "Ljava/util/List;", "tagList", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadTagByIdAction extends BaseNoteManagementAction<List<? extends SyncTagModel>> {

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public final List<String> tagList;

    /* renamed from: com.onyx.galaxy.note.category.action.LoadTagByIdAction$a */
    /* loaded from: classes9.dex */
    public static final class C10899a<T, R> implements Function {
        public C10899a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncTagModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            List list = LoadTagByIdAction.this.tagList;
            if (list == null) {
                list = new ArrayList();
            }
            return NoteTagProviderKt.loadTagById(it2, list);
        }
    }

    public LoadTagByIdAction(@Nullable List<String> list) {
        this.tagList = list;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<SyncTagModel>> create() {
        Observable map = createNoteProviderObservable().map(new C10899a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
