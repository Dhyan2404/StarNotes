package com.onyx.android.sdk.data.common.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/action/CheckFileExistAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "filePath", "", "(Ljava/lang/String;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CheckFileExistAction extends RxBaseAction<Boolean> {

    @Nullable
    private final String filePath;

    public CheckFileExistAction(@Nullable String str) {
        this.filePath = str;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable observeOn = Observable.just(String.valueOf(this.filePath)).observeOn(Schedulers.m61350io());
        final FileUtils fileUtils = FileUtils.INSTANCE;
        Observable<Boolean> map = observeOn.map(new Function() { // from class: com.onyx.android.sdk.data.common.action.CheckFileExistAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final Boolean apply(@Nullable String str) {
                return Boolean.valueOf(FileUtils.this.fileExist(str));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
