package com.onyx.galaxy.note.category.action.template;

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
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "templateModel", "l", GoogleApiAvailabilityLight.f29016b, "Landroid/content/Context;", C6997f.f39671c, "Landroid/content/Context;", "context", "", C6998g.f39679a, "Ljava/util/List;", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DeleteCustomTemplateAction extends RxBaseTemplateAction<Boolean> {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Context context;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<TemplateModel> templateModel;

    /* renamed from: com.onyx.galaxy.note.category.action.template.DeleteCustomTemplateAction$a */
    /* loaded from: classes9.dex */
    public static final class C11188a<T, R> implements Function {
        public C11188a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull DeleteCustomTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteCustomTemplateAction.this.m42949o();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.DeleteCustomTemplateAction$b */
    /* loaded from: classes9.dex */
    public static final class C11189b<T> implements Predicate {

        /* renamed from: e */
        public static final C11189b<T> f54341e = new C11189b<>();

        /* renamed from: a */
        public final boolean m42951a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m42951a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.DeleteCustomTemplateAction$c */
    /* loaded from: classes9.dex */
    public static final class C11190c<T, R> implements Function {
        public C11190c() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42952a(boolean z) {
            return DeleteCustomTemplateAction.this.m42947m();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42952a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.DeleteCustomTemplateAction$d */
    /* loaded from: classes9.dex */
    public static final class C11191d<T, R> implements Function {
        public C11191d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull TemplateModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteCustomTemplateAction.this.m42948n(it2);
        }
    }

    public /* synthetic */ DeleteCustomTemplateAction(Context context, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : context, list);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> flatMap = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C11188a()).observeOn(getObserveOn()).filter(C11189b.f54341e).flatMap(new C11190c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<Boolean> m42946l(TemplateModel templateModel) {
        String curAbsolutePath = templateModel.getTemplateResourceWrapper().getCurAbsolutePath();
        String curThumbnailAbsolutePath = templateModel.getTemplateResourceWrapper().getCurThumbnailAbsolutePath();
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.deleteFile(curAbsolutePath);
        fileUtils.deleteFile(curThumbnailAbsolutePath);
        Observable<Boolean> just = Observable.just(Boolean.TRUE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: m */
    public final Observable<Boolean> m42947m() {
        Observable<Boolean> concatMap = Observable.fromIterable(this.templateModel).concatMap(new C11191d());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return concatMap;
    }

    /* renamed from: n */
    public final Observable<Boolean> m42948n(TemplateModel templateModel) {
        if (KSyncBundle.INSTANCE.getDbProviderBundle().getTemplateProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId())).remove(this.templateModel)) {
            return m42946l(templateModel);
        }
        Observable<Boolean> just = Observable.just(Boolean.FALSE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: o */
    public final Observable<Boolean> m42949o() {
        if (this.context == null) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        Context context = this.context;
        Intrinsics.checkNotNull(context);
        new CommonDialog.Builder(context).setWarning(true).setMessage(C7404R.string.sure_delete).setTitle(C10651R.string.delete).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.category.action.template.DeleteCustomTemplateAction$showDeleteConfirmDialog$1
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
            public final void invoke2(@NotNull CommonDialog dialog, @NotNull String str) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                RxjavaKt.done(create, Boolean.TRUE);
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.category.action.template.DeleteCustomTemplateAction$showDeleteConfirmDialog$2
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
        }).setDismissCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.action.template.DeleteCustomTemplateAction$showDeleteConfirmDialog$3
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

    public DeleteCustomTemplateAction(@Nullable Context context, @NotNull List<TemplateModel> templateModel) {
        Intrinsics.checkNotNullParameter(templateModel, "templateModel");
        this.context = context;
        this.templateModel = templateModel;
    }
}
