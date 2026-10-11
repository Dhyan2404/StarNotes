package com.onyx.galaxy.note.common.action;

import android.content.Context;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.data.AppConfig;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.InputStream;
import java.io.InputStreamReader;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.IOUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/LoadAppConfigAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/galaxy/note/common/data/AppConfig;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Landroid/content/Context;", "e", "Landroid/content/Context;", "appContext", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadAppConfigAction extends RxBaseAction<AppConfig> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context appContext;

    /* renamed from: com.onyx.galaxy.note.common.action.LoadAppConfigAction$a */
    /* loaded from: classes9.dex */
    public static final class C11574a<T, R> implements Function {
        public C11574a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AppConfig apply(@NotNull LoadAppConfigAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadAppConfigAction.this.m44897l();
        }
    }

    public LoadAppConfigAction(@NotNull Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.appContext = appContext;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AppConfig> create() {
        Observable<AppConfig> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C11574a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final AppConfig m44897l() {
        InputStream openRawResource = this.appContext.getResources().openRawResource(C10651R.raw.app_config);
        try {
            String iOUtils = IOUtils.toString(new InputStreamReader(openRawResource));
            CloseableKt.closeFinally(openRawResource, null);
            Object parseObject = JSONUtils.INSTANCE.parseObject(iOUtils, (Class<Object>) AppConfig.class);
            Intrinsics.checkNotNull(parseObject);
            return (AppConfig) parseObject;
        } finally {
        }
    }
}
