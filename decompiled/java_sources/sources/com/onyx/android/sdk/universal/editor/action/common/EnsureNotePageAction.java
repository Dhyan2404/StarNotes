package com.onyx.android.sdk.universal.editor.action.common;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.request.page.EnsureNotePageRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EnsureNotePageAction extends RxBaseAppAction<NotePage> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction$a */
    /* loaded from: classes8.dex */
    public static final class C8601a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EnsureNotePageRequest f48194e;

        public C8601a(EnsureNotePageRequest ensureNotePageRequest) {
            this.f48194e = ensureNotePageRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NotePage apply(@NotNull EnsureNotePageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48194e.getNotePage();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnsureNotePageAction(@NotNull EditorBundle editorBundle, @NotNull BoxInfo virtualBoxInfo) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        this.virtualBoxInfo = virtualBoxInfo;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<NotePage> create() {
        EnsureNotePageRequest ensureNotePageRequest = new EnsureNotePageRequest(getEditorBundle().getWorkBundle(), this.virtualBoxInfo);
        Observable<NotePage> map = RxBaseAppActionKt.submitRequestToNote(this, ensureNotePageRequest).map(new C8601a(ensureNotePageRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }
}
