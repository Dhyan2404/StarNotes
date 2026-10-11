package com.onyx.galaxy.note.category.action.cover;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.p039ui.NameEditDialog;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "name", "l", GoogleApiAvailabilityLight.f29016b, "m", "Landroid/content/Context;", C6997f.f39671c, "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "context", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "coverModel", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ModifyCustomCoverAction extends RxBaseTemplateAction<Boolean> {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Context context;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public CoverModel coverModel;

    /* renamed from: com.onyx.galaxy.note.category.action.cover.ModifyCustomCoverAction$a */
    /* loaded from: classes9.dex */
    public static final class C11042a<T, R> implements Function {
        public C11042a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull ModifyCustomCoverAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ModifyCustomCoverAction.this.m42665n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.ModifyCustomCoverAction$b */
    /* loaded from: classes9.dex */
    public static final class C11043b<T, R> implements Function {

        /* renamed from: e */
        public static final C11043b<T, R> f54115e = new C11043b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull String it2) {
            CharSequence trim;
            Intrinsics.checkNotNullParameter(it2, "it");
            trim = StringsKt__StringsKt.trim((CharSequence) it2);
            return trim.toString();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.ModifyCustomCoverAction$c */
    /* loaded from: classes9.dex */
    public static final class C11044c<T> implements Predicate {
        public C11044c() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return (it2.length() > 0) && !Intrinsics.areEqual(it2, ModifyCustomCoverAction.this.coverModel.getTitle());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.ModifyCustomCoverAction$d */
    /* loaded from: classes9.dex */
    public static final class C11045d<T, R> implements Function {
        public C11045d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<Boolean, String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new Pair<>(Boolean.valueOf(ModifyCustomCoverAction.this.m42663l(it2)), it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.ModifyCustomCoverAction$e */
    /* loaded from: classes9.dex */
    public static final class C11046e<T> implements Predicate {

        /* renamed from: e */
        public static final C11046e<T> f54118e = new C11046e<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull Pair<Boolean, String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.getFirst().booleanValue();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.ModifyCustomCoverAction$f */
    /* loaded from: classes9.dex */
    public static final class C11047f<T, R> implements Function {
        public C11047f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Pair<Boolean, String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(ModifyCustomCoverAction.this.m42664m(it2.getSecond()));
        }
    }

    public /* synthetic */ ModifyCustomCoverAction(Context context, CoverModel coverModel, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : context, coverModel);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C11042a()).map(C11043b.f54115e).filter(new C11044c()).observeOn(getObserveOn()).map(new C11045d()).filter(C11046e.f54118e).map(new C11047f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final Context getContext() {
        return this.context;
    }

    /* renamed from: l */
    public final boolean m42663l(String name) {
        boolean checkTemplateNameRepeat = KSyncBundle.INSTANCE.getDbProviderBundle().getCoverProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId())).checkTemplateNameRepeat(name);
        if (checkTemplateNameRepeat) {
            throw new Exception(ResManager.INSTANCE.getString(C10651R.string.name_exist));
        }
        return checkTemplateNameRepeat;
    }

    /* renamed from: m */
    public final boolean m42664m(String name) {
        ProviderInfo userDataProviderInfo = ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId());
        this.coverModel.setTitle(name);
        this.coverModel.resetRevisionId();
        return KSyncBundle.INSTANCE.getDbProviderBundle().getCoverProvider(userDataProviderInfo).save(this.coverModel);
    }

    /* renamed from: n */
    public final Observable<String> m42665n() {
        if (this.context == null) {
            Observable<String> just = Observable.just("");
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        Context context = this.context;
        Intrinsics.checkNotNull(context);
        new NameEditDialog.Builder(context).setTitle(C10651R.string.rename).setEditTitle(C10651R.string.title).setEditTextContent(this.coverModel.getTitle()).setMaxLength(ResManager.INSTANCE.getInteger(C10651R.integer.custom_template_max_length), true).setConfirmText(C10651R.string.modify).setCancelCallback(new Function1<NameEditDialog, Unit>() { // from class: com.onyx.galaxy.note.category.action.cover.ModifyCustomCoverAction$showModifyDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NameEditDialog nameEditDialog) {
                invoke2(nameEditDialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NameEditDialog it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RxjavaKt.done(create, "");
            }
        }).setConfirmCallback(new Function2<NameEditDialog, String, Unit>() { // from class: com.onyx.galaxy.note.category.action.cover.ModifyCustomCoverAction$showModifyDialog$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(NameEditDialog nameEditDialog, String str) {
                invoke2(nameEditDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NameEditDialog dialog, @NotNull String editStr) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(editStr, "editStr");
                RxjavaKt.done(create, editStr);
                dialog.dismiss();
            }
        }).setDismissCallback(new Function1<NameEditDialog, Unit>() { // from class: com.onyx.galaxy.note.category.action.cover.ModifyCustomCoverAction$showModifyDialog$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NameEditDialog nameEditDialog) {
                invoke2(nameEditDialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NameEditDialog it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RxjavaKt.done(create, "");
            }
        }).create().show();
        return create;
    }

    public final void setContext(@Nullable Context context) {
        this.context = context;
    }

    public ModifyCustomCoverAction(@Nullable Context context, @NotNull CoverModel coverModel) {
        Intrinsics.checkNotNullParameter(coverModel, "coverModel");
        this.context = context;
        this.coverModel = coverModel;
    }
}
