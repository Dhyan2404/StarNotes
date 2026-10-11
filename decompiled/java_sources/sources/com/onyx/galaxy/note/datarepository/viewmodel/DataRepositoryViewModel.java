package com.onyx.galaxy.note.datarepository.viewmodel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.datarepository.action.DeleteMaterialsAction;
import com.onyx.galaxy.note.datarepository.action.ImportMaterialsAction;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.viewmodel.DataRepositoryViewModel;
import io.reactivex.rxjava3.functions.Action;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "()V", "addMaterials", "Landroidx/lifecycle/LiveData;", "", "params", "", "deleteMaterials", "", "toLibraryList", "", "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class DataRepositoryViewModel extends BaseViewModel {
    /* renamed from: e */
    public static final void m45571e(MutableLiveData result) {
        Intrinsics.checkNotNullParameter(result, "$result");
        result.postValue(new Object());
    }

    @NotNull
    public final LiveData<Object> addMaterials(@NotNull String params) {
        Intrinsics.checkNotNullParameter(params, "params");
        final MutableLiveData mutableLiveData = new MutableLiveData();
        new ImportMaterialsAction(DocCollectionBundle.INSTANCE.docManagerBundle(), toLibraryList(params)).build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.bve
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DataRepositoryViewModel.m45571e(MutableLiveData.this);
            }
        }).subscribe();
        return mutableLiveData;
    }

    public final void deleteMaterials(@NotNull String params) {
        Intrinsics.checkNotNullParameter(params, "params");
        new DeleteMaterialsAction(toLibraryList(params)).build().subscribe();
    }

    @NotNull
    public final List<LibraryBean> toLibraryList(@NotNull String params) {
        List<LibraryBean> emptyList;
        Intrinsics.checkNotNullParameter(params, "params");
        List<LibraryBean> list = (List) JSONUtils.INSTANCE.parseObject(params, new TypeReference<List<? extends LibraryBean>>() { // from class: com.onyx.galaxy.note.datarepository.viewmodel.DataRepositoryViewModel$toLibraryList$1
        });
        if (list != null) {
            return list;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }
}
