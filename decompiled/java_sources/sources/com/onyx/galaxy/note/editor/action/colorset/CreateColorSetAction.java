package com.onyx.galaxy.note.editor.action.colorset;

import android.content.Context;
import com.couchbase.lite.Expression;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.p039ui.NameEditDialog;
import com.onyx.android.sdk.replicator.colorset.action.ColorSetBaseAction;
import com.onyx.android.sdk.replicator.colorset.core.ColorSetProvider;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.android.sdk.universal.docmanager.action.name.GenerateNameAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\b\u0010\n\u001a\u00020\bH\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u0003H\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;", "Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "p", GoogleApiAvailabilityLight.f29016b, "", C4921e.f26528e, "q", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "", "r", "generateName", "Landroid/content/Context;", "e", "Landroid/content/Context;", "activityContext", "", "", C6997f.f39671c, "Ljava/util/List;", "colorsList", C6998g.f39679a, Constants.STRING_SIG, "colorSetName", "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;", CouchFieldKey.KEY_PROVIDER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CreateColorSetAction extends ColorSetBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> colorsList;

    /* renamed from: g, reason: from kotlin metadata */
    public String colorSetName;

    /* renamed from: h, reason: from kotlin metadata */
    public ColorSetProvider provider;

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction$a */
    /* loaded from: classes9.dex */
    public static final class C11841a<T> implements Consumer {
        public C11841a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ColorSetProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateColorSetAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction$b */
    /* loaded from: classes9.dex */
    public static final class C11842b<T, R> implements Function {
        public C11842b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull ColorSetProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(CreateColorSetAction.this.m45703q() >= ((long) ColorSetProvider.INSTANCE.getMAX_COLOR_SET_COUNT()));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction$c */
    /* loaded from: classes9.dex */
    public static final class C11843c<T> implements Predicate {

        /* renamed from: e */
        public static final C11843c<T> f58209e = new C11843c<>();

        /* renamed from: a */
        public final boolean m45707a(boolean z) {
            return !z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m45707a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction$d */
    /* loaded from: classes9.dex */
    public static final class C11844d<T, R> implements Function {
        public C11844d() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends String> m45708a(boolean z) {
            return CreateColorSetAction.this.m45704r();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45708a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction$e */
    /* loaded from: classes9.dex */
    public static final class C11845e<T> implements Consumer {
        public C11845e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(String str) {
            CreateColorSetAction createColorSetAction = CreateColorSetAction.this;
            Intrinsics.checkNotNull(str);
            createColorSetAction.colorSetName = str;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction$f */
    /* loaded from: classes9.dex */
    public static final class C11846f<T, R> implements Function {
        public C11846f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(String str) {
            return CreateColorSetAction.this.generateName();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction$g */
    /* loaded from: classes9.dex */
    public static final class C11847g<T, R> implements Function {
        public C11847g() {
        }

        /* renamed from: a */
        public final void m45711a(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateColorSetAction.this.m45700n();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m45711a((String) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction$h */
    /* loaded from: classes9.dex */
    public static final class C11849h<T, R> implements Function {

        /* renamed from: e */
        public static final C11849h<T, R> f58214e = new C11849h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction$i */
    /* loaded from: classes9.dex */
    public static final class C11850i<T> implements Consumer {
        public C11850i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateColorSetAction.this.colorSetName = it2;
        }
    }

    public CreateColorSetAction(@NotNull Context activityContext, @NotNull List<Integer> colorsList) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(colorsList, "colorsList");
        this.activityContext = activityContext;
        this.colorsList = colorsList;
    }

    /* renamed from: m */
    public static final void m45699m(CreateColorSetAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m45702p();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable observeOn = ensureColorProviderObservable().doOnNext(new C11841a()).map(new C11842b()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<Boolean> map = RxjavaKt.doOnNextIfTrue(observeOn, new Consumer() { // from class: com.sunia.HTREnginev2.ege
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CreateColorSetAction.m45699m(CreateColorSetAction.this, ((Boolean) obj).booleanValue());
            }
        }).filter(C11843c.f58209e).flatMap(new C11844d()).doOnNext(new C11845e()).flatMap(new C11846f()).observeOn(getObserveOn()).map(new C11847g()).map(C11849h.f58214e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final Observable<String> generateName() {
        boolean isBlank;
        String str;
        String str2 = this.colorSetName;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorSetName");
            str2 = null;
        }
        isBlank = StringsKt__StringsJVMKt.isBlank(str2);
        if (isBlank) {
            this.colorSetName = ResManager.INSTANCE.getStringSafely(C10651R.string.color_title_naming_color_set_hint);
        }
        String str3 = this.colorSetName;
        if (str3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorSetName");
            str = null;
        } else {
            str = str3;
        }
        Observable<String> doOnNext = new GenerateNameAction(str, ColorSetProvider.INSTANCE.getMAX_COLOR_SET_NAME_LENGTH(), new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction$generateName$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String generateName) {
                ColorSetProvider colorSetProvider;
                Intrinsics.checkNotNullParameter(generateName, "generateName");
                colorSetProvider = CreateColorSetAction.this.provider;
                if (colorSetProvider == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
                    colorSetProvider = null;
                }
                return Boolean.valueOf(colorSetProvider.hasDuplicatedName(generateName, new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction$generateName$1.1
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
        }, null, 8, null).build().doOnNext(new C11850i());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: n */
    public final void m45700n() {
        ColorSetModel colorSetModel = new ColorSetModel();
        String str = this.colorSetName;
        ColorSetProvider colorSetProvider = null;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorSetName");
            str = null;
        }
        colorSetModel.setName(str);
        colorSetModel.setColors(this.colorsList);
        colorSetModel.setPreset(false);
        colorSetModel.setOrderIndex(m45701o());
        ColorSetProvider colorSetProvider2 = this.provider;
        if (colorSetProvider2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
        } else {
            colorSetProvider = colorSetProvider2;
        }
        colorSetProvider.saveColorSet(colorSetModel);
    }

    /* renamed from: o */
    public final long m45701o() {
        return m45703q() + 1;
    }

    /* renamed from: p */
    public final void m45702p() {
        String format = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.favored_color_set_exceed_max_count_tips), Arrays.copyOf(new Object[]{Integer.valueOf(ColorSetProvider.INSTANCE.getMAX_COLOR_SET_COUNT())}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) format, false, 2, (Object) null);
    }

    /* renamed from: q */
    public final long m45703q() {
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        Expression and = couchUtils.listNotEmptyExpression(CouchFieldKey.KEY_COLORS).and(couchUtils.equalExpression(CouchFieldKey.KEY_PRESET, Boolean.FALSE));
        Intrinsics.checkNotNullExpressionValue(and, "and(...)");
        ColorSetProvider colorSetProvider = this.provider;
        if (colorSetProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            colorSetProvider = null;
        }
        return colorSetProvider.queryCount(and);
    }

    /* renamed from: r */
    public final PublishSubject<String> m45704r() {
        final PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        NameEditDialog.Builder.setMaxLength$default(new NameEditDialog.Builder(this.activityContext), ColorSetProvider.INSTANCE.getMAX_COLOR_SET_NAME_LENGTH(), false, 2, null).setHideCounterDisplay(false).setTitle(C10651R.string.color_title_naming_color_set).setEditHint(C10651R.string.color_title_naming_color_set_hint).setConfirmCallback(new Function2<NameEditDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction$showDialog$1
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
        }).setCancelCallback(new Function1<NameEditDialog, Unit>() { // from class: com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction$showDialog$2
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
