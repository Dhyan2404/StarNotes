package com.onyx.android.sdk.universal.editor.action.page;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.data.TemplateManagerBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.doc.VirtualPageConfig;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/GetVirtualPageTemplateColorAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "contentId", "l", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "", "i", Constants.HASIDCALL_INDEX_SIG, "renderTemplate", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GetVirtualPageTemplateColorAction extends RxBaseAppAction<Integer> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo boxInfo;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean renderTemplate;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.GetVirtualPageTemplateColorAction$a */
    /* loaded from: classes8.dex */
    public static final class C9669a<T, R> implements Function {
        public C9669a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Integer.valueOf(GetVirtualPageTemplateColorAction.this.m39466l(it2));
        }
    }

    public /* synthetic */ GetVirtualPageTemplateColorAction(EditorBundle editorBundle, BoxInfo boxInfo, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, boxInfo, (i & 4) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Integer> create() {
        if (this.renderTemplate) {
            Observable<Integer> just = Observable.just(-1);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<Integer> map = DocCommonActionsKt.createLightCoreObservable(getEditorBundle(), new Function1<WorkBundle, String>() { // from class: com.onyx.android.sdk.universal.editor.action.page.GetVirtualPageTemplateColorAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull WorkBundle it2) {
                BoxInfo boxInfo;
                VirtualPageConfig virtualPageConfig;
                Intrinsics.checkNotNullParameter(it2, "it");
                VirtualDocPolicy virtualPolicy = it2.getVirtualPolicy();
                boxInfo = GetVirtualPageTemplateColorAction.this.boxInfo;
                VirtualPage obtainVirtualPage = virtualPolicy.obtainVirtualPage(boxInfo);
                String contentId = (obtainVirtualPage == null || (virtualPageConfig = obtainVirtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) == null) ? null : virtualPageConfig.getContentId();
                return contentId == null ? "" : contentId;
            }
        }).observeOn(TemplateManagerBundle.INSTANCE.getObserveOn()).map(new C9669a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final int m39466l(String contentId) {
        TemplateResourceWrapper templateResourceWrapper;
        if (StringKt.isEmpty(contentId)) {
            return -1;
        }
        TemplateModel loadTemplateListById = KSyncBundle.INSTANCE.getUserTemplateProvider().loadTemplateListById(contentId);
        int curFillColor = (loadTemplateListById == null || (templateResourceWrapper = loadTemplateListById.getTemplateResourceWrapper()) == null) ? 0 : templateResourceWrapper.getCurFillColor();
        if (curFillColor == 0) {
            return -1;
        }
        return curFillColor;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetVirtualPageTemplateColorAction(@NotNull EditorBundle editorBundle, @NotNull BoxInfo boxInfo, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        this.boxInfo = boxInfo;
        this.renderTemplate = z;
    }
}
