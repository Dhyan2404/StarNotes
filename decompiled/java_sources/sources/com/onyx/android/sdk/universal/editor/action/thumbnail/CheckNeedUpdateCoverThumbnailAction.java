package com.onyx.android.sdk.universal.editor.action.thumbnail;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C6999h.f39688c, "I", "getPageIndex", "()I", "setPageIndex", "(I)V", "pageIndex", "i", Constants.HASIDCALL_INDEX_SIG, "isNeedUpdateCoverByCheckVirtualPage", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CheckNeedUpdateCoverThumbnailAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    public int pageIndex;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean isNeedUpdateCoverByCheckVirtualPage;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.CheckNeedUpdateCoverThumbnailAction$a */
    /* loaded from: classes8.dex */
    public static final class C10248a<T, R> implements Function {
        public C10248a() {
        }

        @NotNull
        /* renamed from: a */
        public final Boolean m40487a(boolean z) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(CheckNeedUpdateCoverThumbnailAction.this), "pageIndex = " + CheckNeedUpdateCoverThumbnailAction.this.getPageIndex() + ", notePageDirty = " + z + ", isNeedUpdateCoverByCheckVirtualPage = " + CheckNeedUpdateCoverThumbnailAction.this.isNeedUpdateCoverByCheckVirtualPage, new Object[0]);
            return Boolean.valueOf(z || CheckNeedUpdateCoverThumbnailAction.this.isNeedUpdateCoverByCheckVirtualPage);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m40487a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckNeedUpdateCoverThumbnailAction(@NotNull EditorBundle editorBundle, int i) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.pageIndex = i;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = DocCommonActionsKt.createCoreObservable(this, new Function1<WorkBundle, String>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.CheckNeedUpdateCoverThumbnailAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull WorkBundle it2) {
                BoxInfo box;
                BoxInfo noteInfo;
                Intrinsics.checkNotNullParameter(it2, "it");
                CheckNeedUpdateCoverThumbnailAction.this.isNeedUpdateCoverByCheckVirtualPage = it2.getVirtualPolicy().isNeedUpdateCover(CheckNeedUpdateCoverThumbnailAction.this.getPageIndex());
                VirtualPage virtualPage = it2.getVirtualPolicy().getVirtualPage(CheckNeedUpdateCoverThumbnailAction.this.getPageIndex());
                String id = (virtualPage == null || (box = virtualPage.getBox()) == null || (noteInfo = box.getNoteInfo()) == null) ? null : noteInfo.getId();
                return id == null ? "" : id;
            }
        }).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.CheckNeedUpdateCoverThumbnailAction$create$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Boolean> apply(@NotNull final String pageId) {
                Intrinsics.checkNotNullParameter(pageId, "pageId");
                return DocCommonActionsKt.createNoteObservable(CheckNeedUpdateCoverThumbnailAction.this, new Function1<NoteBundle, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.CheckNeedUpdateCoverThumbnailAction$create$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull NoteBundle it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        NotePage cacheNotePage = NoteDocNotePage.INSTANCE.getCacheNotePage(it2.getNoteDoc(), pageId);
                        return cacheNotePage == null ? Boolean.FALSE : Boolean.valueOf(cacheNotePage.getIsDirty());
                    }
                });
            }
        }).map(new C10248a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }
}
