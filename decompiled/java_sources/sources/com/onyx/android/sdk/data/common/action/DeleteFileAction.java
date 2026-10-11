package com.onyx.android.sdk.data.common.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0014J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "filePathList", "", "", "(Ljava/util/List;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "delete", "path", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DeleteFileAction extends RxBaseAction<Boolean> {

    @NotNull
    private final List<String> filePathList;

    public DeleteFileAction(@NotNull List<String> filePathList) {
        Intrinsics.checkNotNullParameter(filePathList, "filePathList");
        this.filePathList = filePathList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean delete(String path) {
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (fileUtils.fileExist(path)) {
            return fileUtils.deleteFile(path);
        }
        return true;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        if (this.filePathList.isEmpty()) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<Boolean> map = Observable.just(this).observeOn(Schedulers.m61350io()).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.data.common.action.DeleteFileAction$create$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull DeleteFileAction it2) {
                List list;
                Intrinsics.checkNotNullParameter(it2, "it");
                list = DeleteFileAction.this.filePathList;
                DeleteFileAction deleteFileAction = DeleteFileAction.this;
                Iterator<T> it3 = list.iterator();
                while (it3.hasNext()) {
                    deleteFileAction.delete((String) it3.next());
                }
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.data.common.action.DeleteFileAction$create$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final Boolean apply(@NotNull DeleteFileAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.TRUE;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
