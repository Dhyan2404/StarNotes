package com.onyx.android.sdk.universal.editor.action.toc;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.page.GetPageIdFromIndexAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "tocEntry", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EnsureTocEntryPageIdAction extends RxBaseAppAction<VirtualTocModel> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final VirtualTocModel tocEntry;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.toc.EnsureTocEntryPageIdAction$a */
    /* loaded from: classes8.dex */
    public static final class C10279a<T> implements Consumer {
        public C10279a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            VirtualTocModel virtualTocModel = EnsureTocEntryPageIdAction.this.tocEntry;
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it2);
            virtualTocModel.setPageId(StringKt.safelyGetStr((String) firstOrNull));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.toc.EnsureTocEntryPageIdAction$b */
    /* loaded from: classes8.dex */
    public static final class C10280b<T, R> implements Function {
        public C10280b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final VirtualTocModel apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EnsureTocEntryPageIdAction.this.tocEntry;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnsureTocEntryPageIdAction(@NotNull EditorBundle editorBundle, @NotNull VirtualTocModel tocEntry) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(tocEntry, "tocEntry");
        this.tocEntry = tocEntry;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<VirtualTocModel> create() {
        List listOf;
        if (StringKt.isNotBlank(this.tocEntry.getPageId())) {
            Observable<VirtualTocModel> just = Observable.just(this.tocEntry);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        EditorBundle editorBundle = getEditorBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(this.tocEntry.getPageIndex()));
        Observable map = new GetPageIdFromIndexAction(editorBundle, listOf).build().doOnNext(new C10279a()).map(new C10280b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
