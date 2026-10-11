package com.onyx.android.sdk.universal.editor.action.toc;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.events.app.TocEntryUpdatedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", C6999h.f39688c, "Ljava/util/List;", "tocEntries", "i", Constants.HASIDCALL_INDEX_SIG, "pageIndexChanged", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateTocEntryAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<VirtualTocModel> tocEntries;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean pageIndexChanged;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.toc.UpdateTocEntryAction$a */
    /* loaded from: classes8.dex */
    public static final class C10285a<T, R> implements Function {
        public C10285a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull UpdateTocEntryAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(UpdateTocEntryAction.this.m40548l());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.toc.UpdateTocEntryAction$b */
    /* loaded from: classes8.dex */
    public static final class C10286b<T> implements Consumer {
        public C10286b() {
        }

        /* renamed from: a */
        public final void m40550a(boolean z) {
            if (z) {
                EditorBundleKt.postEvent(UpdateTocEntryAction.this.getEditorBundle(), new TocEntryUpdatedEvent(UpdateTocEntryAction.this.tocEntries, UpdateTocEntryAction.this.pageIndexChanged));
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m40550a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateTocEntryAction(@NotNull EditorBundle editorBundle, @NotNull List<VirtualTocModel> tocEntries, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(tocEntries, "tocEntries");
        this.tocEntries = tocEntries;
        this.pageIndexChanged = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doOnNext = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C10285a()).doOnNext(new C10286b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final boolean m40548l() {
        return getEditorBundle().getWorkBundle().getVirtualPolicy().updateTocEntry(this.tocEntries);
    }
}
