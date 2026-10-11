package com.onyx.android.sdk.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.OnyxNoteRecordModel;
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

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/action/SaveNoteRecordAction;", "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/data/OnyxNoteRecordModel;", "e", "Ljava/util/List;", "list", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class SaveNoteRecordAction extends OnyxStatisticBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<OnyxNoteRecordModel> list;

    /* renamed from: com.onyx.android.sdk.action.SaveNoteRecordAction$a */
    /* loaded from: classes7.dex */
    public static final class C7096a<T> implements Consumer {
        public C7096a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OnyxStatisticNoteRecordProviderKt.saveOnyxNoteRecordList(it2, SaveNoteRecordAction.this.list);
        }
    }

    /* renamed from: com.onyx.android.sdk.action.SaveNoteRecordAction$b */
    /* loaded from: classes7.dex */
    public static final class C7097b<T, R> implements Function {

        /* renamed from: e */
        public static final C7097b<T, R> f40649e = new C7097b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    public SaveNoteRecordAction(@NotNull List<OnyxNoteRecordModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable map = createOnyxStatisticProviderObservable().doOnNext(new C7096a()).map(C7097b.f40649e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
