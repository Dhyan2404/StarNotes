package com.onyx.android.sdk.universal.editor.action.link;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/link/CreatePageLinkBeanAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6999h.f39688c, "I", "pageIndex", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CreatePageLinkBeanAction extends RxBaseAppAction<ShapeLinkBean> {

    /* renamed from: h, reason: from kotlin metadata */
    public final int pageIndex;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.CreatePageLinkBeanAction$a */
    /* loaded from: classes8.dex */
    public static final class C9626a<T, R> implements Function {
        public C9626a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ShapeLinkBean apply(@NotNull CreatePageLinkBeanAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreatePageLinkBeanAction.this.m39392l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreatePageLinkBeanAction(@NotNull EditorBundle editorBundle, int i) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.pageIndex = i;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ShapeLinkBean> create() {
        Observable<ShapeLinkBean> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C9626a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final ShapeLinkBean m39392l() {
        NoteDocument noteDoc = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc();
        VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(this.pageIndex);
        VirtualDocPolicy virtualPolicy = getEditorBundle().getWorkBundle().getVirtualPolicy();
        Intrinsics.checkNotNull(virtualPage);
        NotePage ensureNotePage = virtualPolicy.ensureNotePage(virtualPage);
        LinkDocBean linkDocBean = new LinkDocBean(null, null, 0, null, null, 31, null);
        linkDocBean.setDocumentId(noteDoc.getDocumentUniqueId());
        linkDocBean.setPageId(ensureNotePage.getPageUniqueId());
        linkDocBean.setTitle(noteDoc.getNoteModel().getTitle());
        linkDocBean.setPageIndex(this.pageIndex);
        ShapeLinkBean shapeLinkBean = new ShapeLinkBean();
        shapeLinkBean.setDocBean(linkDocBean);
        shapeLinkBean.setKey("NOTE");
        shapeLinkBean.setDisplayStyle(ShapeLinkBean.DisplayStyle.INSTANCE.getICON_TITLE_BOX());
        return shapeLinkBean;
    }
}
