package com.onyx.galaxy.note.category.action.template;

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
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
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

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/ModifyCustomPaperAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "name", "", "l", GoogleApiAvailabilityLight.f29016b, "m", "Landroid/content/Context;", C6997f.f39671c, "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "templateModel", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ModifyCustomPaperAction extends RxBaseTemplateAction<Unit> {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Context context;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public TemplateModel templateModel;

    /* renamed from: com.onyx.galaxy.note.category.action.template.ModifyCustomPaperAction$a */
    /* loaded from: classes9.dex */
    public static final class C11215a<T, R> implements Function {
        public C11215a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull ModifyCustomPaperAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ModifyCustomPaperAction.this.m43003n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.ModifyCustomPaperAction$b */
    /* loaded from: classes9.dex */
    public static final class C11216b<T, R> implements Function {

        /* renamed from: e */
        public static final C11216b<T, R> f54391e = new C11216b<>();

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

    /* renamed from: com.onyx.galaxy.note.category.action.template.ModifyCustomPaperAction$c */
    /* loaded from: classes9.dex */
    public static final class C11217c<T> implements Predicate {
        public C11217c() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return (it2.length() > 0) && !Intrinsics.areEqual(it2, ModifyCustomPaperAction.this.templateModel.getTitle());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.ModifyCustomPaperAction$d */
    /* loaded from: classes9.dex */
    public static final class C11218d<T, R> implements Function {
        public C11218d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<Boolean, String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new Pair<>(Boolean.valueOf(ModifyCustomPaperAction.this.m43001l(it2)), it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.ModifyCustomPaperAction$e */
    /* loaded from: classes9.dex */
    public static final class C11219e<T> implements Predicate {

        /* renamed from: e */
        public static final C11219e<T> f54394e = new C11219e<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull Pair<Boolean, String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.getFirst().booleanValue();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.ModifyCustomPaperAction$f */
    /* loaded from: classes9.dex */
    public static final class C11220f<T, R> implements Function {
        public C11220f() {
        }

        /* renamed from: a */
        public final void m43009a(@NotNull Pair<Boolean, String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ModifyCustomPaperAction.this.m43002m(it2.getSecond());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m43009a((Pair) obj);
            return Unit.INSTANCE;
        }
    }

    public /* synthetic */ ModifyCustomPaperAction(Context context, TemplateModel templateModel, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : context, templateModel);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Unit> create() {
        Observable<Unit> map = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C11215a()).map(C11216b.f54391e).filter(new C11217c()).observeOn(getObserveOn()).map(new C11218d()).filter(C11219e.f54394e).map(new C11220f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final boolean m43001l(String name) {
        boolean checkTemplateNameRepeat = KSyncBundle.INSTANCE.getDbProviderBundle().getTemplateProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId())).checkTemplateNameRepeat(name);
        if (checkTemplateNameRepeat) {
            throw new Exception(ResManager.INSTANCE.getString(C10651R.string.name_exist));
        }
        return checkTemplateNameRepeat;
    }

    /* renamed from: m */
    public final void m43002m(String name) {
        ProviderInfo userDataProviderInfo = ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId());
        this.templateModel.setTitle(name);
        this.templateModel.resetRevisionId();
        KSyncBundle.INSTANCE.getDbProviderBundle().getTemplateProvider(userDataProviderInfo).saveTemplate(this.templateModel);
    }

    /* renamed from: n */
    public final Observable<String> m43003n() {
        if (this.context == null) {
            Observable<String> just = Observable.just("");
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        Context context = this.context;
        Intrinsics.checkNotNull(context);
        new NameEditDialog.Builder(context).setTitle(C10651R.string.rename).setEditTitle(C10651R.string.title).setEditTextContent(this.templateModel.getTitle()).setMaxLength(ResManager.INSTANCE.getInteger(C10651R.integer.custom_template_max_length), true).setConfirmText(C10651R.string.modify).setCancelCallback(new Function1<NameEditDialog, Unit>() { // from class: com.onyx.galaxy.note.category.action.template.ModifyCustomPaperAction$showModifyDialog$1
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
        }).setConfirmCallback(new Function2<NameEditDialog, String, Unit>() { // from class: com.onyx.galaxy.note.category.action.template.ModifyCustomPaperAction$showModifyDialog$2
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
        }).setDismissCallback(new Function1<NameEditDialog, Unit>() { // from class: com.onyx.galaxy.note.category.action.template.ModifyCustomPaperAction$showModifyDialog$3
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

    public ModifyCustomPaperAction(@Nullable Context context, @NotNull TemplateModel templateModel) {
        Intrinsics.checkNotNullParameter(templateModel, "templateModel");
        this.context = context;
        this.templateModel = templateModel;
    }
}
