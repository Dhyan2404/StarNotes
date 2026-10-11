package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.request.excerpt.HideQuoteIndicatorRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/HideQuoteIndicatorAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", C6999h.f39688c, "Ljava/util/List;", "removedExcerptCollectionList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HideQuoteIndicatorAction extends RxBaseAppAction<HideQuoteIndicatorAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<ExcerptCollectionModel> removedExcerptCollectionList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HideQuoteIndicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C8788a<T, R> implements Function {
        public C8788a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HideQuoteIndicatorAction> apply(@NotNull HideQuoteIndicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HideQuoteIndicatorAction.this.m37828l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HideQuoteIndicatorAction$b */
    /* loaded from: classes8.dex */
    public static final class C8789b<T, R> implements Function {
        public C8789b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull HideQuoteIndicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderRequestManagerKt.safeClearAllNoteSliceCache(HideQuoteIndicatorAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HideQuoteIndicatorAction$c */
    /* loaded from: classes8.dex */
    public static final class C8790c<T, R> implements Function {
        public C8790c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(HideQuoteIndicatorAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HideQuoteIndicatorAction$d */
    /* loaded from: classes8.dex */
    public static final class C8791d<T, R> implements Function {
        public C8791d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HideQuoteIndicatorAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HideQuoteIndicatorAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HideQuoteIndicatorAction$e */
    /* loaded from: classes8.dex */
    public static final class C8792e<T, R> implements Function {
        public C8792e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HideQuoteIndicatorAction apply(@NotNull HideQuoteIndicatorRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HideQuoteIndicatorAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HideQuoteIndicatorAction(@NotNull EditorBundle editorBundle, @NotNull List<ExcerptCollectionModel> removedExcerptCollectionList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(removedExcerptCollectionList, "removedExcerptCollectionList");
        this.removedExcerptCollectionList = removedExcerptCollectionList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HideQuoteIndicatorAction> create() {
        Observable<HideQuoteIndicatorAction> map = Observable.just(this).flatMap(new C8788a()).flatMap(new C8789b()).flatMap(new C8790c()).map(new C8791d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<HideQuoteIndicatorAction> m37828l() {
        Observable<HideQuoteIndicatorAction> map = RxBaseAppActionKt.submitRequestToNote(this, new HideQuoteIndicatorRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.removedExcerptCollectionList)).map(new C8792e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
