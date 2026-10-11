package com.onyx.android.sdk.universal.editor.action.bookmark;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0019\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/bookmark/LoadBookmarkListAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6999h.f39688c, Constants.STRING_SIG, "getKeyword", "()Ljava/lang/String;", "keyword", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadBookmarkListAction extends RxBaseAppAction<List<? extends VirtualBookmarkModel>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String keyword;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bookmark.LoadBookmarkListAction$a */
    /* loaded from: classes8.dex */
    public static final class C8559a<T, R> implements Function {
        public C8559a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<VirtualBookmarkModel> apply(@NotNull LoadBookmarkListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadBookmarkListAction.this.m37427l();
        }
    }

    public /* synthetic */ LoadBookmarkListAction(EditorBundle editorBundle, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? "" : str);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<VirtualBookmarkModel>> create() {
        Observable<List<VirtualBookmarkModel>> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C8559a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getKeyword() {
        return this.keyword;
    }

    /* renamed from: l */
    public final List<VirtualBookmarkModel> m37427l() {
        return getEditorBundle().getWorkBundle().getVirtualPolicy().loadBookmarkList(this.keyword);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadBookmarkListAction(@NotNull EditorBundle editorBundle, @NotNull String keyword) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        this.keyword = keyword;
    }
}
