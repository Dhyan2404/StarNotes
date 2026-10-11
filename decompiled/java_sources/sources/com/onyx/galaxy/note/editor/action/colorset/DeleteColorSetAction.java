package com.onyx.galaxy.note.editor.action.colorset;

import android.app.Dialog;
import android.content.Context;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.colorset.action.ColorSetBaseAction;
import com.onyx.android.sdk.replicator.colorset.core.ColorSetProvider;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.action.colorset.DeleteColorSetAction;
import com.onyx.galaxy.note.editor.event.DeleteColorSetModelEvent;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/colorset/DeleteColorSetAction;", "Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "delete", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "Landroid/content/Context;", "e", "Landroid/content/Context;", "activityContext", "", "", C6997f.f39671c, "Ljava/util/List;", "ids", "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;", CouchFieldKey.KEY_PROVIDER, Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DeleteColorSetAction extends ColorSetBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<String> ids;

    /* renamed from: g, reason: from kotlin metadata */
    public ColorSetProvider provider;

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.DeleteColorSetAction$a */
    /* loaded from: classes9.dex */
    public static final class C11851a<T> implements Consumer {
        public C11851a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ColorSetProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteColorSetAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.DeleteColorSetAction$b */
    /* loaded from: classes9.dex */
    public static final class C11852b<T, R> implements Function {
        public C11852b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull ColorSetProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteColorSetAction.this.m45717o();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.colorset.DeleteColorSetAction$c */
    /* loaded from: classes9.dex */
    public static final class C11853c<T, R> implements Function {
        public C11853c() {
        }

        @NotNull
        /* renamed from: a */
        public final Boolean m45720a(boolean z) {
            return Boolean.valueOf(DeleteColorSetAction.this.m45716n(z));
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45720a(((Boolean) obj).booleanValue());
        }
    }

    public DeleteColorSetAction(@NotNull Context activityContext, @NotNull List<String> ids) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(ids, "ids");
        this.activityContext = activityContext;
        this.ids = ids;
    }

    /* renamed from: m */
    public static final void m45715m(DeleteColorSetAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GlobalBundle.INSTANCE.postEvent(new DeleteColorSetModelEvent(this$0.ids));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable observeOn = ensureColorProviderObservable().doOnNext(new C11851a()).observeOn(getMainUIScheduler()).flatMap(new C11852b()).observeOn(getObserveOn()).map(new C11853c()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return RxjavaKt.doOnNextIfTrue(observeOn, new Consumer() { // from class: com.sunia.HTREnginev2.g3f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DeleteColorSetAction.m45715m(DeleteColorSetAction.this, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* renamed from: n */
    public final boolean m45716n(boolean delete) {
        if (!delete) {
            return false;
        }
        CBQueryArgs generateCommonColorSetArgs = ColorSetProvider.INSTANCE.generateCommonColorSetArgs();
        generateCommonColorSetArgs.andWith(CouchUtils.INSTANCE.inIdsExpression(this.ids));
        ColorSetProvider colorSetProvider = this.provider;
        if (colorSetProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            colorSetProvider = null;
        }
        colorSetProvider.deleteColorSetList(generateCommonColorSetArgs);
        return true;
    }

    /* renamed from: o */
    public final Observable<Boolean> m45717o() {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        new CommonDialog.Builder(this.activityContext).setTitle(C10651R.string.delete).setWarning(true).setMessage(C10651R.string.delete_color_set_tips).setConfirmText(C10651R.string.confirm).setCancelText(C10651R.string.cancel).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.action.colorset.DeleteColorSetAction$showConfirmDialog$1
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
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.editor.action.colorset.DeleteColorSetAction$showConfirmDialog$2
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
        }).setCancelable(false).create().show();
        return create;
    }
}
