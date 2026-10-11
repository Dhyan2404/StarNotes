package com.onyx.android.sdk.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.p029db.OnyxStatisticNoteRecordProviderKt;
import com.onyx.android.sdk.p029db.OnyxStatisticProvider;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/action/DeleteNoteRecordAction;", "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", "e", "Ljava/util/List;", "noteIds", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DeleteNoteRecordAction extends OnyxStatisticBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<String> noteIds;

    /* renamed from: com.onyx.android.sdk.action.DeleteNoteRecordAction$a */
    /* loaded from: classes7.dex */
    public static final class C7079a<T> implements Consumer {
        public C7079a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OnyxStatisticNoteRecordProviderKt.deleteOnyxNoteRecordByIds(it2, DeleteNoteRecordAction.this.noteIds);
        }
    }

    /* renamed from: com.onyx.android.sdk.action.DeleteNoteRecordAction$b */
    /* loaded from: classes7.dex */
    public static final class C7080b<T, R> implements Function {

        /* renamed from: e */
        public static final C7080b<T, R> f40612e = new C7080b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    public DeleteNoteRecordAction(@NotNull List<String> noteIds) {
        Intrinsics.checkNotNullParameter(noteIds, "noteIds");
        this.noteIds = noteIds;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        if (this.noteIds.isEmpty()) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = createOnyxStatisticProviderObservable().doOnNext(new C7079a()).map(C7080b.f40612e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
