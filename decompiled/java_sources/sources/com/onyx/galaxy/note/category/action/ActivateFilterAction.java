package com.onyx.galaxy.note.category.action;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/ActivateFilterAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C6998g.f39679a, "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "getInfo", "()Lcom/onyx/galaxy/note/category/data/FilterInfo;", PrivilegedApp.f6532i, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ActivateFilterAction extends BaseNoteManagementAction<FilterInfo> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final FilterInfo info;

    public ActivateFilterAction(@NotNull FilterInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        this.info = info;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<FilterInfo> create() {
        Observable<FilterInfo> observeOn = Observable.just(this.info).observeOn(getObserveOn()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final FilterInfo getInfo() {
        return this.info;
    }
}
