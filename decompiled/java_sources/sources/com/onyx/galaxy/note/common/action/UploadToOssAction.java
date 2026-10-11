package com.onyx.galaxy.note.common.action;

import android.content.Context;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.common.request.UploadToOssRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B%\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/UploadToOssAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", C6999h.f39688c, "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", "Ljava/io/File;", "i", "Ljava/util/List;", "files", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class UploadToOssAction extends RxBaseNoteAppAction<List<String>> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RxOSSManager rxOSSManager;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<File> files;

    /* renamed from: com.onyx.galaxy.note.common.action.UploadToOssAction$a */
    /* loaded from: classes9.dex */
    public static final class C11614a<T, R> implements Function {
        public C11614a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull UploadToOssAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UploadToOssAction.this.m44977l();
        }
    }

    public UploadToOssAction(@NotNull Context context, @NotNull RxOSSManager rxOSSManager, @NotNull List<File> files) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(rxOSSManager, "rxOSSManager");
        Intrinsics.checkNotNullParameter(files, "files");
        this.context = context;
        this.rxOSSManager = rxOSSManager;
        this.files = files;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<String>> create() {
        Observable<List<String>> observeOn = Observable.just(this).observeOn(getObserveOn()).map(new C11614a()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final List<String> m44977l() {
        return new UploadToOssRequest(this.context, this.rxOSSManager, this.files).execute();
    }
}
