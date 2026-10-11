package com.onyx.android.sdk.universal.editor.action.toc;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.replicator.note.utils.TocListUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.toc.InsertTocEntryAction;
import com.onyx.android.sdk.universal.editor.events.app.TocEntryInsertedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.List;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "tocEntry", "", "i", "I", "insertIndex", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nInsertTocEntryAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsertTocEntryAction.kt\ncom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1855#2,2:69\n*S KotlinDebug\n*F\n+ 1 InsertTocEntryAction.kt\ncom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction\n*L\n57#1:69,2\n*E\n"})
/* loaded from: classes8.dex */
public final class InsertTocEntryAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final VirtualTocModel tocEntry;

    /* renamed from: i, reason: from kotlin metadata */
    public int insertIndex;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.toc.InsertTocEntryAction$a */
    /* loaded from: classes8.dex */
    public static final class C10281a<T, R> implements Function {
        public C10281a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull VirtualTocModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(InsertTocEntryAction.this.m40542m());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.toc.InsertTocEntryAction$b */
    /* loaded from: classes8.dex */
    public static final class C10282b<T> implements Consumer {
        public C10282b() {
        }

        /* renamed from: a */
        public final void m40544a(boolean z) {
            if (z) {
                EditorBundleKt.postEvent(InsertTocEntryAction.this.getEditorBundle(), new TocEntryInsertedEvent(InsertTocEntryAction.this.tocEntry, InsertTocEntryAction.this.insertIndex));
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m40544a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsertTocEntryAction(@NotNull EditorBundle editorBundle, @NotNull VirtualTocModel tocEntry) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(tocEntry, "tocEntry");
        this.tocEntry = tocEntry;
    }

    /* renamed from: n */
    public static final boolean m40541n(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doOnNext = new EnsureTocEntryPageIdAction(getEditorBundle(), this.tocEntry).build().observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C10281a()).doOnNext(new C10282b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final boolean m40542m() {
        List<VirtualTocModel> mutableList;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        String parentId = this.tocEntry.getParentId();
        if (parentId == null || parentId.length() == 0) {
            cBQueryArgs.andWith(CouchUtils.INSTANCE.nullOrEmpty(CouchFieldKey.KEY_PARENT_ID));
        } else {
            CouchUtils couchUtils = CouchUtils.INSTANCE;
            String parentId2 = this.tocEntry.getParentId();
            Intrinsics.checkNotNull(parentId2);
            cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PARENT_ID, parentId2));
        }
        cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression("status", 0));
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getEditorBundle().getWorkBundle().getVirtualPolicy().loadTocEntries(cBQueryArgs));
        this.tocEntry.beforeSave();
        mutableList.add(this.tocEntry);
        for (VirtualTocModel virtualTocModel : mutableList) {
            virtualTocModel.setPageIndex(getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPageIndex(virtualTocModel.getPageId()));
        }
        TocListUtils tocListUtils = TocListUtils.INSTANCE;
        List<VirtualTocModel> sortVirtualTocModelListToNatural = tocListUtils.sortVirtualTocModelListToNatural(mutableList);
        List copy = CollectionKt.copy(sortVirtualTocModelListToNatural);
        final InsertTocEntryAction$insert$2$1 insertTocEntryAction$insert$2$1 = new Function1<VirtualTocModel, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.toc.InsertTocEntryAction$insert$2$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull VirtualTocModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getUniqueId(), "root"));
            }
        };
        copy.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.imi
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m40541n;
                m40541n = InsertTocEntryAction.m40541n(Function1.this, obj);
                return m40541n;
            }
        });
        this.insertIndex = copy.indexOf(this.tocEntry);
        return getEditorBundle().getWorkBundle().getVirtualPolicy().updateTocEntry(tocListUtils.reorderIndex(sortVirtualTocModelListToNatural));
    }
}
