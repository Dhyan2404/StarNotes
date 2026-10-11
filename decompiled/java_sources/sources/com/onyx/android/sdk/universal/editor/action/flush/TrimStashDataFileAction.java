package com.onyx.android.sdk.universal.editor.action.flush;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010 \n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B?\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u000f0\u000e\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\u000f¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR&\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u000f0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/flush/TrimStashDataFileAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", C6997f.f39671c, Constants.STRING_SIG, CouchFieldKey.KEY_UNIQUE_ID, "", "", C6998g.f39679a, "Ljava/util/Map;", "stashPathMap", C6999h.f39688c, "Ljava/util/List;", "stashZipPaths", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTrimStashDataFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrimStashDataFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/flush/TrimStashDataFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1855#2,2:43\n*S KotlinDebug\n*F\n+ 1 TrimStashDataFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/flush/TrimStashDataFileAction\n*L\n36#1:43,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TrimStashDataFileAction extends RxBaseAction<TrimStashDataFileAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String uniqueId;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Map<String, List<String>> stashPathMap;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> stashZipPaths;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.TrimStashDataFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C9105a<T> implements Consumer {
        public C9105a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TrimStashDataFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TrimStashDataFileAction.this.m38340l();
        }
    }

    public TrimStashDataFileAction(@NotNull EditorBundle editorBundle, @NotNull String uniqueId, @NotNull Map<String, List<String>> stashPathMap, @NotNull List<String> stashZipPaths) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        Intrinsics.checkNotNullParameter(stashPathMap, "stashPathMap");
        Intrinsics.checkNotNullParameter(stashZipPaths, "stashZipPaths");
        this.editorBundle = editorBundle;
        this.uniqueId = uniqueId;
        this.stashPathMap = stashPathMap;
        this.stashZipPaths = stashZipPaths;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<TrimStashDataFileAction> create() {
        Observable<TrimStashDataFileAction> doOnNext = Observable.just(this).observeOn(EditorBundleKt.stashScheduler(this.editorBundle)).doOnNext(new C9105a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m38340l() {
        List<String> arrayList;
        List<String> list = this.stashPathMap.get(this.uniqueId);
        if (list == null || (arrayList = CollectionKt.copy(list)) == null) {
            arrayList = new ArrayList<>();
        }
        arrayList.addAll(this.stashZipPaths);
        this.stashPathMap.put(this.uniqueId, arrayList);
        if (list != null) {
            for (String str : list) {
                FileUtils.INSTANCE.deleteFile(str);
                arrayList.remove(str);
            }
        }
        Debug debug = Debug.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append("remove stash file size: ");
        sb.append(list != null ? Integer.valueOf(list.size()) : null);
        debug.m32035d(TrimStashDataFileAction.class, sb.toString(), new Object[0]);
    }
}
