package com.onyx.android.sdk.universal.editor.action.doc;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.request.page.FindBoxInfoByNotePageIdRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C6999h.f39688c, Constants.STRING_SIG, "notePageId", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CheckNotePageExistAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String notePageId;

    @SourceDebugExtension({"SMAP\nCheckNotePageExistAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckNotePageExistAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$create$1\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,20:1\n41#2,5:21\n*S KotlinDebug\n*F\n+ 1 CheckNotePageExistAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$create$1\n*L\n17#1:21,5\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CheckNotePageExistAction$a */
    /* loaded from: classes8.dex */
    public static final class C8639a<T, R> implements Function {

        /* renamed from: e */
        public static final C8639a<T, R> f48269e = new C8639a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull FindBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(it2.getVirtualPageBoxInfo() != null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckNotePageExistAction(@NotNull EditorBundle editorBundle, @NotNull String notePageId) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(notePageId, "notePageId");
        this.notePageId = notePageId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable map = ComputeBoxListActionsKt.findBoxInfoByNotePageId(this, this.notePageId).map(C8639a.f48269e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
