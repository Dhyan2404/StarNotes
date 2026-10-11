package com.onyx.galaxy.note.p048ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.galaxy.note.p048ui.action.BaseUiAction;
import com.onyx.galaxy.note.p048ui.adapter.OptionSelectAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
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

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B9\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/dialog/OptionDialogAction;", "", "T", "Lcom/onyx/galaxy/note/ui/action/BaseUiAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6997f.f39671c, Constants.STRING_SIG, "title", "", C6998g.f39679a, "Ljava/util/List;", "options", "Lkotlin/Function1;", C6999h.f39688c, "Lkotlin/jvm/functions/Function1;", "displayTextMapper", "Landroid/app/Activity;", "activityContext", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class OptionDialogAction<T> extends BaseUiAction<T> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String title;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<T> options;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Function1<T, String> displayTextMapper;

    /* renamed from: com.onyx.galaxy.note.ui.dialog.OptionDialogAction$a */
    /* loaded from: classes9.dex */
    public static final class C12780a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ OptionDialogAction<T> f62004e;

        public C12780a(OptionDialogAction<T> optionDialogAction) {
            this.f62004e = optionDialogAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends T> apply(@NotNull BaseUiAction<T> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f62004e.m51328l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public OptionDialogAction(@NotNull Activity activityContext, @NotNull String title, @NotNull List<? extends T> options, @NotNull Function1<? super T, String> displayTextMapper) {
        super(activityContext);
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(displayTextMapper, "displayTextMapper");
        this.title = title;
        this.options = options;
        this.displayTextMapper = displayTextMapper;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<T> create() {
        Observable<T> observable = (Observable<T>) createObservable().flatMap(new C12780a(this));
        Intrinsics.checkNotNullExpressionValue(observable, "flatMap(...)");
        return observable;
    }

    /* renamed from: l */
    public final Observable<T> m51328l() {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final OptionSelectAdapter optionSelectAdapter = new OptionSelectAdapter(this.displayTextMapper, null, null, 6, null);
        optionSelectAdapter.submitList(this.options);
        RecyclerView recyclerView = new RecyclerView(getContext());
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        recyclerView.setAdapter(optionSelectAdapter);
        new CommonDialog.Builder(getContext()).setTitle(this.title).setView(recyclerView).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.ui.dialog.OptionDialogAction$showOptionSelectDialog$1
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
            public final void invoke2(@NotNull CommonDialog dialog, @NotNull String editTextStr) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(editTextStr, "editTextStr");
                Object selectedItem = optionSelectAdapter.getSelectedItem();
                if (selectedItem != null) {
                    RxjavaKt.done((Observer<Object>) create, selectedItem);
                }
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.ui.dialog.OptionDialogAction$showOptionSelectDialog$2
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
                create.onComplete();
            }
        }).create().show();
        return create;
    }
}
