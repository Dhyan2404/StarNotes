package com.onyx.galaxy.note.p048ui.sticker;

import android.app.Dialog;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;
import com.onyx.galaxy.note.editor.view.adapter.StickerCategorySelectAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction;", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6997f.f39671c, "Ljava/util/List;", "subCategories", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SelectSubCategoryAction extends StickerUiBaseAction<StickerCategoryModel> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<StickerCategoryModel> subCategories;

    /* renamed from: com.onyx.galaxy.note.ui.sticker.SelectSubCategoryAction$a */
    /* loaded from: classes9.dex */
    public static final class C12822a<T, R> implements Function {
        public C12822a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StickerCategoryModel> apply(@NotNull StickerUiBaseAction<StickerCategoryModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectSubCategoryAction.this.m51409l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectSubCategoryAction(@NotNull StickerUiBundle bundle, @NotNull List<StickerCategoryModel> subCategories) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(subCategories, "subCategories");
        this.subCategories = subCategories;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StickerCategoryModel> create() {
        Observable flatMap = createObservable().flatMap(new C12822a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<StickerCategoryModel> m51409l() {
        Object first;
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final StickerCategorySelectAdapter stickerCategorySelectAdapter = new StickerCategorySelectAdapter();
        stickerCategorySelectAdapter.submitList(this.subCategories);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.subCategories);
        stickerCategorySelectAdapter.setSelectedCategory((StickerCategoryModel) first);
        MaxHeightRecyclerView maxHeightRecyclerView = new MaxHeightRecyclerView(getBundle().getActivityContext());
        ResManager resManager = ResManager.INSTANCE;
        maxHeightRecyclerView.setMaxHeight(resManager.getDimens(C7384R.dimen.dp_300));
        maxHeightRecyclerView.setLayoutManager(new LinearLayoutManager(getBundle().getActivityContext(), 1, false));
        maxHeightRecyclerView.setAdapter(stickerCategorySelectAdapter);
        ViewKt.setLayoutParams(maxHeightRecyclerView, resManager.getDimens(C7384R.dimen.dp_420), -2);
        new CommonDialog.Builder(getBundle().getActivityContext()).setTitle(C10651R.string.sticker_move_category_title).setView(maxHeightRecyclerView).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.ui.sticker.SelectSubCategoryAction$showSelectDialog$1
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
            public final void invoke2(@NotNull CommonDialog dialog, @NotNull String text) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(text, "text");
                ReplaySubject<StickerCategoryModel> replaySubject = create;
                StickerCategoryModel selectedCategory = stickerCategorySelectAdapter.getSelectedCategory();
                Intrinsics.checkNotNull(selectedCategory);
                RxjavaKt.done(replaySubject, selectedCategory);
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.ui.sticker.SelectSubCategoryAction$showSelectDialog$2
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
