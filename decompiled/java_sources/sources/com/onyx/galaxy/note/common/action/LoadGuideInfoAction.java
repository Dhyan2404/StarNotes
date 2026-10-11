package com.onyx.galaxy.note.common.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.GuideInfo;
import com.onyx.android.sdk.data.common.request.LoadGuideInfoRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "e", Constants.STRING_SIG, "functionId", "", C6997f.f39671c, "J", "delayMilliseconds", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;J)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadGuideInfoAction extends RxBaseAction<List<? extends GuideInfo>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String functionId;

    /* renamed from: f, reason: from kotlin metadata */
    public final long delayMilliseconds;

    /* renamed from: com.onyx.galaxy.note.common.action.LoadGuideInfoAction$a */
    /* loaded from: classes9.dex */
    public static final class C11575a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ int f55909f;

        public C11575a(int i) {
            this.f55909f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<GuideInfo> apply(@NotNull LoadGuideInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadGuideInfoRequest(LoadGuideInfoAction.this.functionId, this.f55909f, LocaleUtils.INSTANCE.getNoteLanguage()).execute();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.LoadGuideInfoAction$b */
    /* loaded from: classes9.dex */
    public static final class C11576b<T, R> implements Function {

        /* renamed from: e */
        public static final C11576b<T, R> f55910e = new C11576b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<GuideInfo> apply(@NotNull List<GuideInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2;
        }
    }

    public LoadGuideInfoAction() {
        this(null, 0L, 3, null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends GuideInfo>> create() {
        Observable<List<? extends GuideInfo>> map = Observable.just(this).observeOn(RxScheduler.INSTANCE.newSingleThreadManager().getObserveOn()).map(new C11575a(0)).delay(this.delayMilliseconds, TimeUnit.MILLISECONDS).observeOn(getMainUIScheduler()).map(C11576b.f55910e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public /* synthetic */ LoadGuideInfoAction(String str, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j);
    }

    public LoadGuideInfoAction(@NotNull String functionId, long j) {
        Intrinsics.checkNotNullParameter(functionId, "functionId");
        this.functionId = functionId;
        this.delayMilliseconds = j;
    }
}
