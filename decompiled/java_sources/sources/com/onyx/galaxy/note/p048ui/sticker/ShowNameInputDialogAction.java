package com.onyx.galaxy.note.p048ui.sticker;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.p039ui.NameEditDialog;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction;", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", C6997f.f39671c, "Ljava/util/List;", "subCategories", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShowNameInputDialogAction extends StickerUiBaseAction<String> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<StickerCategoryModel> subCategories;

    /* renamed from: com.onyx.galaxy.note.ui.sticker.ShowNameInputDialogAction$a */
    /* loaded from: classes9.dex */
    public static final class C12824a<T, R> implements Function {
        public C12824a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull StickerUiBaseAction<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShowNameInputDialogAction.this.m51413l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShowNameInputDialogAction(@NotNull StickerUiBundle bundle, @NotNull List<StickerCategoryModel> subCategories) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(subCategories, "subCategories");
        this.subCategories = subCategories;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable flatMap = createObservable().flatMap(new C12824a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<String> m51413l() {
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        new NameEditDialog.Builder(getBundle().getActivityContext()).setTitle(C10651R.string.create_category).setMaxLength(ResManager.INSTANCE.getInteger(C10651R.integer.name_max_length), false).setConfirmCallback(new Function2<NameEditDialog, String, Unit>() { // from class: com.onyx.galaxy.note.ui.sticker.ShowNameInputDialogAction$showInputDialog$1
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
            public final void invoke2(@NotNull NameEditDialog dialog, @NotNull String text) {
                List list;
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(text, "text");
                boolean z = true;
                if (text.length() == 0) {
                    ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.sort_name_empty_tips, false, 2, (Object) null);
                    return;
                }
                list = ShowNameInputDialogAction.this.subCategories;
                List list2 = list;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (Intrinsics.areEqual(((StickerCategoryModel) it2.next()).getName(), text)) {
                            break;
                        }
                    }
                }
                z = false;
                if (z) {
                    ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.duplicated_category, false, 2, (Object) null);
                } else {
                    RxjavaKt.done(create, text);
                    dialog.dismiss();
                }
            }
        }).setCancelCallback(new Function1<NameEditDialog, Unit>() { // from class: com.onyx.galaxy.note.ui.sticker.ShowNameInputDialogAction$showInputDialog$2
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
