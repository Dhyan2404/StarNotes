package com.onyx.android.sdk.universal.editor.action.tag;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.NotePageTagProviderKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.SavePageThumbnailAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/tag/SaveTagPageThumbnailAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/base/data/Orientation;", "orientation", "", "l", C6999h.f39688c, Constants.STRING_SIG, CouchFieldKey.KEY_TOC_PAGE_ID, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveTagPageThumbnailAction extends RxBaseAppAction<String> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.SaveTagPageThumbnailAction$a */
    /* loaded from: classes8.dex */
    public static final class C10195a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ SavePageThumbnailAction f51075f;

        public C10195a(SavePageThumbnailAction savePageThumbnailAction) {
            this.f51075f = savePageThumbnailAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveTagPageThumbnailAction.this.m40398l(this.f51075f.getOrientation());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.SaveTagPageThumbnailAction$b */
    /* loaded from: classes8.dex */
    public static final class C10196b<T, R> implements Function {

        /* renamed from: e */
        public static final C10196b<T, R> f51076e = new C10196b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveTagPageThumbnailAction(@NotNull EditorBundle editorBundle, @NotNull String pageId) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        this.pageId = pageId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        SavePageThumbnailAction savePageThumbnailAction = new SavePageThumbnailAction(getEditorBundle(), this.pageId);
        Observable map = savePageThumbnailAction.build().observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10195a(savePageThumbnailAction)).map(C10196b.f51076e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m40398l(Orientation orientation) {
        NotePageTagProviderKt.updatePageTagModelOrientation(KSyncBundle.INSTANCE.getUserNoteProvider(), EditorBundleKt.docId(getEditorBundle()), this.pageId, orientation);
    }
}
