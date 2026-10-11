package com.onyx.galaxy.note.editor.action.colorset;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.p039ui.NameEditDialog;
import com.onyx.android.sdk.replicator.colorset.action.ColorSetBaseAction;
import com.onyx.android.sdk.replicator.colorset.core.ColorSetProvider;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.android.sdk.universal.docmanager.action.name.GenerateNameAction;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.event.RenameColorSetModelEvent;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\u0006\u0010\n\u001a\u00020\bH\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;", "Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "", GoogleApiAvailabilityLight.f29016b, "newName", "l", "Landroid/content/Context;", "e", "Landroid/content/Context;", "activityContext", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "colorSetModel", "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;", CouchFieldKey.KEY_PROVIDER, Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RenameColorSetAction extends ColorSetBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ColorSetModel colorSetModel;

    /* renamed from: g, reason: from kotlin metadata */
    public ColorSetProvider provider;

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.RenameColorSetAction$a */
    /* loaded from: classes9.dex */
    public static final class C11854a<T> implements Consumer {
        public C11854a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ColorSetProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenameColorSetAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.RenameColorSetAction$b */
    /* loaded from: classes9.dex */
    public static final class C11855b<T, R> implements Function {
        public C11855b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull ColorSetProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenameColorSetAction.this.m45723n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.RenameColorSetAction$c */
    /* loaded from: classes9.dex */
    public static final class C11856c<T, R> implements Function {
        public C11856c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(String str) {
            RenameColorSetAction renameColorSetAction = RenameColorSetAction.this;
            Intrinsics.checkNotNull(str);
            return renameColorSetAction.m45721l(str);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.RenameColorSetAction$d */
    /* loaded from: classes9.dex */
    public static final class C11857d<T, R> implements Function {
        public C11857d() {
        }

        /* renamed from: a */
        public final void m45727a(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenameColorSetAction.this.m45722m();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m45727a((String) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.RenameColorSetAction$e */
    /* loaded from: classes9.dex */
    public static final class C11858e<T> implements Consumer {
        public C11858e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.postEvent(new RenameColorSetModelEvent(RenameColorSetAction.this.colorSetModel));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.RenameColorSetAction$f */
    /* loaded from: classes9.dex */
    public static final class C11859f<T, R> implements Function {

        /* renamed from: e */
        public static final C11859f<T, R> f58230e = new C11859f<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.RenameColorSetAction$g */
    /* loaded from: classes9.dex */
    public static final class C11860g<T> implements Consumer {
        public C11860g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenameColorSetAction.this.colorSetModel.setName(it2);
        }
    }

    public RenameColorSetAction(@NotNull Context activityContext, @NotNull ColorSetModel colorSetModel) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(colorSetModel, "colorSetModel");
        this.activityContext = activityContext;
        this.colorSetModel = colorSetModel;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = ensureColorProviderObservable().doOnNext(new C11854a()).observeOn(getMainUIScheduler()).flatMap(new C11855b()).flatMap(new C11856c()).observeOn(getObserveOn()).map(new C11857d()).observeOn(getMainUIScheduler()).doOnNext(new C11858e()).map(C11859f.f58230e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<String> m45721l(String newName) {
        boolean isBlank;
        if (Intrinsics.areEqual(this.colorSetModel.getName(), newName)) {
            Observable<String> just = Observable.just(newName);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        isBlank = StringsKt__StringsJVMKt.isBlank(newName);
        if (isBlank) {
            newName = ResManager.INSTANCE.getStringSafely(C10651R.string.color_title_naming_color_set_hint);
        }
        Observable<String> doOnNext = new GenerateNameAction(newName, ColorSetProvider.INSTANCE.getMAX_COLOR_SET_NAME_LENGTH(), new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.colorset.RenameColorSetAction$rename$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String generateName) {
                ColorSetProvider colorSetProvider;
                Intrinsics.checkNotNullParameter(generateName, "generateName");
                colorSetProvider = RenameColorSetAction.this.provider;
                if (colorSetProvider == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
                    colorSetProvider = null;
                }
                return Boolean.valueOf(colorSetProvider.hasDuplicatedName(generateName, new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.action.colorset.RenameColorSetAction$rename$1.1
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull CBQueryArgs hasDuplicatedName) {
                        Intrinsics.checkNotNullParameter(hasDuplicatedName, "$this$hasDuplicatedName");
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(CBQueryArgs cBQueryArgs) {
                        invoke2(cBQueryArgs);
                        return Unit.INSTANCE;
                    }
                }));
            }
        }, null, 8, null).build().doOnNext(new C11860g());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final void m45722m() {
        ColorSetProvider colorSetProvider = this.provider;
        if (colorSetProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            colorSetProvider = null;
        }
        colorSetProvider.saveColorSet(this.colorSetModel);
    }

    /* renamed from: n */
    public final PublishSubject<String> m45723n() {
        final PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        NameEditDialog.Builder.setMaxLength$default(new NameEditDialog.Builder(this.activityContext), ColorSetProvider.INSTANCE.getMAX_COLOR_SET_NAME_LENGTH(), false, 2, null).setHideCounterDisplay(false).setEditTextContent(this.colorSetModel.getName()).setTitle(C10651R.string.color_title_naming_color_set).setEditHint(C10651R.string.color_title_naming_color_set_hint).setConfirmCallback(new Function2<NameEditDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.action.colorset.RenameColorSetAction$showDialog$1
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
            public final void invoke2(@NotNull NameEditDialog dialog, @NotNull String editText) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(editText, "editText");
                dialog.dismiss();
                RxjavaKt.done(create, editText);
            }
        }).setCancelCallback(new Function1<NameEditDialog, Unit>() { // from class: com.onyx.galaxy.note.editor.action.colorset.RenameColorSetAction$showDialog$2
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
                create.onComplete();
            }
        }).create().show();
        return create;
    }
}
