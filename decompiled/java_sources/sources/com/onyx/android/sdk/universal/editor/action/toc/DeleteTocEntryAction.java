package com.onyx.android.sdk.universal.editor.action.toc;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.events.app.BeginDeleteTocEntryEvent;
import com.onyx.android.sdk.universal.editor.events.app.EndDeleteTocEntryEvent;
import com.onyx.android.sdk.universal.editor.events.app.TocEntryDeletedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", C6999h.f39688c, "Ljava/util/List;", "entries", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DeleteTocEntryAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<VirtualTocModel> entries;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.toc.DeleteTocEntryAction$a */
    /* loaded from: classes8.dex */
    public static final class C10276a<T> implements Consumer {
        public C10276a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteTocEntryAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(DeleteTocEntryAction.this.getEditorBundle(), new BeginDeleteTocEntryEvent(DeleteTocEntryAction.this.entries));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.toc.DeleteTocEntryAction$b */
    /* loaded from: classes8.dex */
    public static final class C10277b<T, R> implements Function {
        public C10277b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull DeleteTocEntryAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(DeleteTocEntryAction.this.m40534l());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.toc.DeleteTocEntryAction$c */
    /* loaded from: classes8.dex */
    public static final class C10278c<T> implements Consumer {
        public C10278c() {
        }

        /* renamed from: a */
        public final void m40537a(boolean z) {
            if (z) {
                EditorBundleKt.postEvent(DeleteTocEntryAction.this.getEditorBundle(), new TocEntryDeletedEvent(DeleteTocEntryAction.this.entries));
            } else {
                EditorBundleKt.postEvent(DeleteTocEntryAction.this.getEditorBundle(), new EndDeleteTocEntryEvent(DeleteTocEntryAction.this.entries));
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m40537a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteTocEntryAction(@NotNull EditorBundle editorBundle, @NotNull List<VirtualTocModel> entries) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(entries, "entries");
        this.entries = entries;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doOnNext = Observable.just(this).doOnNext(new C10276a()).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C10277b()).doOnNext(new C10278c());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final boolean m40534l() {
        return getEditorBundle().getWorkBundle().getVirtualPolicy().deleteTocEntry(this.entries);
    }
}
