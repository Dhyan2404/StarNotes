package com.onyx.galaxy.note.category.action.cover;

import android.app.Dialog;
import android.content.Context;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.hwr.C7404R;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.CoverProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/cover/DeleteCustomCoverAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "coverModel", "m", "l", "Landroid/content/Context;", C6997f.f39671c, "Landroid/content/Context;", "context", "", C6998g.f39679a, "Ljava/util/List;", "coverModelList", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DeleteCustomCoverAction extends RxBaseTemplateAction<Boolean> {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Context context;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<CoverModel> coverModelList;

    /* renamed from: com.onyx.galaxy.note.category.action.cover.DeleteCustomCoverAction$a */
    /* loaded from: classes9.dex */
    public static final class C11016a<T, R> implements Function {
        public C11016a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull DeleteCustomCoverAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteCustomCoverAction.this.m42608o();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.DeleteCustomCoverAction$b */
    /* loaded from: classes9.dex */
    public static final class C11017b<T> implements Predicate {

        /* renamed from: e */
        public static final C11017b<T> f54068e = new C11017b<>();

        /* renamed from: a */
        public final boolean m42610a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m42610a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.DeleteCustomCoverAction$c */
    /* loaded from: classes9.dex */
    public static final class C11018c<T, R> implements Function {
        public C11018c() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42611a(boolean z) {
            return DeleteCustomCoverAction.this.m42607n();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42611a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.DeleteCustomCoverAction$d */
    /* loaded from: classes9.dex */
    public static final class C11019d<T, R> implements Function {
        public C11019d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull CoverModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteCustomCoverAction.this.m42605l(it2);
        }
    }

    public /* synthetic */ DeleteCustomCoverAction(Context context, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : context, list);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> flatMap = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C11016a()).observeOn(getObserveOn()).filter(C11017b.f54068e).flatMap(new C11018c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<Boolean> m42605l(CoverModel coverModel) {
        List<CoverModel> listOf;
        CoverProvider coverProvider = KSyncBundle.INSTANCE.getDbProviderBundle().getCoverProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId()));
        listOf = CollectionsKt__CollectionsJVMKt.listOf(coverModel);
        if (coverProvider.remove(listOf)) {
            return m42606m(coverModel);
        }
        Observable<Boolean> just = Observable.just(Boolean.FALSE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: m */
    public final Observable<Boolean> m42606m(CoverModel coverModel) {
        String curAbsolutePath = coverModel.getTemplateResourceWrapper().getCurAbsolutePath();
        String curThumbnailAbsolutePath = coverModel.getTemplateResourceWrapper().getCurThumbnailAbsolutePath();
        FileUtils fileUtils = FileUtils.INSTANCE;
        boolean deleteFile = fileUtils.deleteFile(curAbsolutePath);
        fileUtils.deleteFile(curThumbnailAbsolutePath);
        Observable<Boolean> just = Observable.just(Boolean.valueOf(deleteFile));
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: n */
    public final Observable<Boolean> m42607n() {
        Observable<Boolean> concatMap = Observable.fromIterable(this.coverModelList).concatMap(new C11019d());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return concatMap;
    }

    /* renamed from: o */
    public final Observable<Boolean> m42608o() {
        if (this.context == null) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        Context context = this.context;
        Intrinsics.checkNotNull(context);
        new CommonDialog.Builder(context).setWarning(true).setMessage(C7404R.string.sure_delete).setTitle(C10651R.string.delete).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.category.action.cover.DeleteCustomCoverAction$showDeleteConfirmDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                RxjavaKt.done(create, Boolean.TRUE);
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.category.action.cover.DeleteCustomCoverAction$showDeleteConfirmDialog$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Dialog dialog) {
                invoke2(dialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Dialog dialog) {
                RxjavaKt.done(create, Boolean.FALSE);
            }
        }).setDismissCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.action.cover.DeleteCustomCoverAction$showDeleteConfirmDialog$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                RxjavaKt.done(create, Boolean.FALSE);
            }
        }).create().show();
        return create;
    }

    public DeleteCustomCoverAction(@Nullable Context context, @NotNull List<CoverModel> coverModelList) {
        Intrinsics.checkNotNullParameter(coverModelList, "coverModelList");
        this.context = context;
        this.coverModelList = coverModelList;
    }
}
