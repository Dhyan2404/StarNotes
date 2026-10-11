package com.onyx.galaxy.note.editor.action.colorset;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.colorset.action.ColorSetBaseAction;
import com.onyx.android.sdk.replicator.colorset.core.ColorSetProvider;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/colorset/SaveColorSetAction;", "Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "e", "Ljava/util/List;", "colorSetModels", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SaveColorSetAction extends ColorSetBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<ColorSetModel> colorSetModels;

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.SaveColorSetAction$a */
    /* loaded from: classes9.dex */
    public static final class C11862a<T> implements Consumer {
        public C11862a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ColorSetProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            it2.saveColorSetList(SaveColorSetAction.this.colorSetModels);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.SaveColorSetAction$b */
    /* loaded from: classes9.dex */
    public static final class C11863b<T, R> implements Function {

        /* renamed from: e */
        public static final C11863b<T, R> f58234e = new C11863b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull ColorSetProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    public SaveColorSetAction(@NotNull List<ColorSetModel> colorSetModels) {
        Intrinsics.checkNotNullParameter(colorSetModels, "colorSetModels");
        this.colorSetModels = colorSetModels;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        if (this.colorSetModels.isEmpty()) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = ensureColorProviderObservable().doOnNext(new C11862a()).map(C11863b.f58234e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
