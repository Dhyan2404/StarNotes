package com.onyx.android.sdk.universal.editor.action.thumbnail;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R$\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0005\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/thumbnail/ComputeCoverThumbnailPageIndexAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "getPageIndex", C6999h.f39688c, Constants.INTEGER_SIG, "()Ljava/lang/Integer;", "setPageIndex", "(Ljava/lang/Integer;)V", "pageIndex", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ComputeCoverThumbnailPageIndexAction extends RxBaseAppAction<Integer> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Integer pageIndex;

    public /* synthetic */ ComputeCoverThumbnailPageIndexAction(EditorBundle editorBundle, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? null : num);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Integer> create() {
        return DocCommonActionsKt.createCoreObservable(this, new Function1<WorkBundle, Integer>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.ComputeCoverThumbnailPageIndexAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull WorkBundle it2) {
                int pageIndex;
                Intrinsics.checkNotNullParameter(it2, "it");
                pageIndex = ComputeCoverThumbnailPageIndexAction.this.getPageIndex();
                return Integer.valueOf(pageIndex);
            }
        });
    }

    @Nullable
    public final Integer getPageIndex() {
        return this.pageIndex;
    }

    public final void setPageIndex(@Nullable Integer num) {
        this.pageIndex = num;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComputeCoverThumbnailPageIndexAction(@NotNull EditorBundle editorBundle, @Nullable Integer num) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.pageIndex = num;
    }

    public final int getPageIndex() {
        Integer num = this.pageIndex;
        if (num != null) {
            Intrinsics.checkNotNull(num);
            if (num.intValue() < EditorBundleKt.pageCount(getEditorBundle())) {
                Integer num2 = this.pageIndex;
                Intrinsics.checkNotNull(num2);
                return num2.intValue();
            }
        }
        if (WorkBundleKt.getWorkFeature(getEditorBundle().getWorkBundle()).useFirstPageAsCoverPage()) {
            return 0;
        }
        VirtualPage coverPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getCoverPage();
        int virtualPageIndex = coverPage != null ? getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPageIndex(coverPage.getBox().getId()) : -1;
        if (virtualPageIndex < 0) {
            virtualPageIndex = EditorBundleKt.currentPageIndex(getEditorBundle());
        }
        Integer valueOf = Integer.valueOf(virtualPageIndex);
        this.pageIndex = valueOf;
        Intrinsics.checkNotNull(valueOf);
        return valueOf.intValue();
    }
}
