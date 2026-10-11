package com.onyx.galaxy.note.category.action.template;

import android.util.Size;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/LoadPaperThumbAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "thumbPath", "l", "m", "Landroid/widget/ImageView;", C6997f.f39671c, "Landroid/widget/ImageView;", "thumbView", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "templateModel", Constants.CONSTRUCTOR_NAME, "(Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadPaperThumbAction extends RxBaseTemplateAction<Unit> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ImageView thumbView;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final TemplateModel templateModel;

    /* renamed from: com.onyx.galaxy.note.category.action.template.LoadPaperThumbAction$a */
    /* loaded from: classes9.dex */
    public static final class C11207a<T, R> implements Function {
        public C11207a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull LoadPaperThumbAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadPaperThumbAction.this.m42986m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.LoadPaperThumbAction$b */
    /* loaded from: classes9.dex */
    public static final class C11208b<T, R> implements Function {
        public C11208b() {
        }

        /* renamed from: a */
        public final void m42988a(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadPaperThumbAction.this.m42985l(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42988a((String) obj);
            return Unit.INSTANCE;
        }
    }

    public LoadPaperThumbAction(@NotNull ImageView thumbView, @NotNull TemplateModel templateModel) {
        Intrinsics.checkNotNullParameter(thumbView, "thumbView");
        Intrinsics.checkNotNullParameter(templateModel, "templateModel");
        this.thumbView = thumbView;
        this.templateModel = templateModel;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Unit> create() {
        Observable<Unit> map = Observable.just(this).observeOn(getObserveOn()).map(new C11207a()).observeOn(getMainUIScheduler()).map(new C11208b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m42985l(String thumbPath) {
        Size size;
        if (this.templateModel.isPortrait()) {
            ResManager resManager = ResManager.INSTANCE;
            size = new Size(resManager.getDimens(C7384R.dimen.dp_118), resManager.getDimens(C7384R.dimen.dp_149));
        } else {
            ResManager resManager2 = ResManager.INSTANCE;
            size = new Size(resManager2.getDimens(C7384R.dimen.dp_149), resManager2.getDimens(C7384R.dimen.dp_118));
        }
        Glide.with(this.thumbView).load(thumbPath).override(size.getWidth(), size.getHeight()).into(this.thumbView);
    }

    /* renamed from: m */
    public final String m42986m() {
        if (this.templateModel.getTemplateResourceWrapper().getCurThumbnailRelativePath().length() > 0) {
            String curAbsolutePath = this.templateModel.getTemplateResourceWrapper().getCurAbsolutePath();
            if (FileUtils.INSTANCE.fileExist(curAbsolutePath)) {
                return curAbsolutePath;
            }
        }
        return this.templateModel.getTemplateResourceWrapper().getCurThumbnailUri().length() > 0 ? this.templateModel.getTemplateResourceWrapper().getCurThumbnailUri() : "";
    }
}
