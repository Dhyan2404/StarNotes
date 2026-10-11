package com.onyx.android.sdk.universal.editor.action.toc;

import android.annotation.SuppressLint;
import com.blankj.utilcode.util.CollectionUtils;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B+\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0015J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/toc/SaveTocEntryExpandStateAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/base/data/Tree;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/Tree;", SyncConstant.LOCAL_TOC_DIR_NAME, "", "", "i", "Ljava/util/Set;", "updateExpandStateIdList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/Tree;Ljava/util/Set;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveTocEntryExpandStateAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveTocEntryExpandStateAction.kt\ncom/onyx/android/sdk/universal/editor/action/toc/SaveTocEntryExpandStateAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n766#2:41\n857#2,2:42\n1855#2,2:44\n*S KotlinDebug\n*F\n+ 1 SaveTocEntryExpandStateAction.kt\ncom/onyx/android/sdk/universal/editor/action/toc/SaveTocEntryExpandStateAction\n*L\n29#1:41\n29#1:42,2\n31#1:44,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveTocEntryExpandStateAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Tree<VirtualTocModel> toc;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Set<String> updateExpandStateIdList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.toc.SaveTocEntryExpandStateAction$a */
    /* loaded from: classes8.dex */
    public static final class C10284a<T, R> implements Function {
        public C10284a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull SaveTocEntryExpandStateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(SaveTocEntryExpandStateAction.this.m40546l());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveTocEntryExpandStateAction(@NotNull EditorBundle editorBundle, @NotNull Tree<VirtualTocModel> toc, @NotNull Set<String> updateExpandStateIdList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(toc, "toc");
        Intrinsics.checkNotNullParameter(updateExpandStateIdList, "updateExpandStateIdList");
        this.toc = toc;
        this.updateExpandStateIdList = updateExpandStateIdList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @SuppressLint({"SuspiciousIndentation"})
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C10284a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final boolean m40546l() {
        ArrayList arrayList = new ArrayList();
        Iterable mapChildren = this.toc.mapChildren(new Function1<Tree<VirtualTocModel>, VirtualTocModel>() { // from class: com.onyx.android.sdk.universal.editor.action.toc.SaveTocEntryExpandStateAction$save$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final VirtualTocModel invoke(@NotNull Tree<VirtualTocModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                VirtualTocModel item = it2.getItem();
                Intrinsics.checkNotNull(item);
                return item;
            }
        });
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : mapChildren) {
            if (this.updateExpandStateIdList.contains(((VirtualTocModel) obj).getUniqueId())) {
                arrayList2.add(obj);
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList.add((VirtualTocModel) it2.next());
        }
        if (CollectionUtils.isEmpty(arrayList)) {
            return false;
        }
        return getEditorBundle().getWorkBundle().getVirtualPolicy().updateTocEntry(arrayList);
    }
}
