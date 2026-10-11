package com.onyx.galaxy.note.category.action.cover;

import android.util.Size;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Landroid/widget/ImageView;", C6997f.f39671c, "Landroid/widget/ImageView;", "thumbView", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "coverModel", Constants.CONSTRUCTOR_NAME, "(Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadCoverThumbAction extends RxBaseTemplateAction<Unit> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ImageView thumbView;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final CoverModel coverModel;

    /* renamed from: com.onyx.galaxy.note.category.action.cover.LoadCoverThumbAction$a */
    /* loaded from: classes9.dex */
    public static final class C11036a<T, R> implements Function {
        public C11036a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull LoadCoverThumbAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadCoverThumbAction.this.m42652l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.LoadCoverThumbAction$b */
    /* loaded from: classes9.dex */
    public static final class C11037b<T, R> implements Function {
        public C11037b() {
        }

        /* renamed from: a */
        public final void m42654a(@NotNull String it2) {
            Size size;
            Intrinsics.checkNotNullParameter(it2, "it");
            if (LoadCoverThumbAction.this.coverModel.isPortrait()) {
                ResManager resManager = ResManager.INSTANCE;
                size = new Size(resManager.getDimens(C7384R.dimen.dp_118), resManager.getDimens(C7384R.dimen.dp_149));
            } else {
                ResManager resManager2 = ResManager.INSTANCE;
                size = new Size(resManager2.getDimens(C7384R.dimen.dp_149), resManager2.getDimens(C7384R.dimen.dp_118));
            }
            Glide.with(LoadCoverThumbAction.this.thumbView).load(it2).override(size.getWidth(), size.getHeight()).into(LoadCoverThumbAction.this.thumbView);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42654a((String) obj);
            return Unit.INSTANCE;
        }
    }

    public LoadCoverThumbAction(@NotNull ImageView thumbView, @NotNull CoverModel coverModel) {
        Intrinsics.checkNotNullParameter(thumbView, "thumbView");
        Intrinsics.checkNotNullParameter(coverModel, "coverModel");
        this.thumbView = thumbView;
        this.coverModel = coverModel;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Unit> create() {
        Observable<Unit> map = Observable.just(this).observeOn(getObserveOn()).map(new C11036a()).observeOn(getMainUIScheduler()).map(new C11037b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final String m42652l() {
        if (this.coverModel.getTemplateResourceWrapper().getCurThumbnailRelativePath().length() > 0) {
            String curThumbnailAbsolutePath = this.coverModel.getTemplateResourceWrapper().getCurThumbnailAbsolutePath();
            if (FileUtils.INSTANCE.fileExist(curThumbnailAbsolutePath)) {
                return curThumbnailAbsolutePath;
            }
        }
        return this.coverModel.getTemplateResourceWrapper().getCurThumbnailUri().length() > 0 ? this.coverModel.getTemplateResourceWrapper().getCurThumbnailUri() : "";
    }
}
