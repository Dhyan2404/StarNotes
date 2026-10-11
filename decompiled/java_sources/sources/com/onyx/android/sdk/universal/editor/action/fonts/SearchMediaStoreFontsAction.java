package com.onyx.android.sdk.universal.editor.action.fonts;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u000b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B%\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0017\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/fonts/SearchMediaStoreFontsAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "", C6997f.f39671c, "Ljava/util/List;", "fontsList", C6998g.f39679a, Constants.STRING_SIG, "getSearch", "()Ljava/lang/String;", "search", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSearchMediaStoreFontsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchMediaStoreFontsAction.kt\ncom/onyx/android/sdk/universal/editor/action/fonts/SearchMediaStoreFontsAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,21:1\n766#2:22\n857#2,2:23\n*S KotlinDebug\n*F\n+ 1 SearchMediaStoreFontsAction.kt\ncom/onyx/android/sdk/universal/editor/action/fonts/SearchMediaStoreFontsAction\n*L\n19#1:22\n19#1:23,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SearchMediaStoreFontsAction extends RxBaseAction<List<? extends String>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<String> fontsList;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String search;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.SearchMediaStoreFontsAction$a */
    /* loaded from: classes8.dex */
    public static final class C9121a<T, R> implements Function {
        public C9121a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull SearchMediaStoreFontsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchMediaStoreFontsAction.this.m38368l();
        }
    }

    public SearchMediaStoreFontsAction(@NotNull EditorBundle editorBundle, @NotNull List<String> fontsList, @NotNull String search) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(fontsList, "fontsList");
        Intrinsics.checkNotNullParameter(search, "search");
        this.editorBundle = editorBundle;
        this.fontsList = fontsList;
        this.search = search;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends String>> create() {
        Observable<List<? extends String>> map = Observable.just(this).observeOn(EditorBundleKt.ioSequenceScheduler(this.editorBundle)).map(new C9121a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final String getSearch() {
        return this.search;
    }

    /* renamed from: l */
    public final List<String> m38368l() {
        List<String> list;
        boolean contains$default;
        List<String> list2 = this.fontsList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) FileUtils.INSTANCE.getFileBaseName(new File((String) obj).getName()), (CharSequence) this.search, false, 2, (Object) null);
            if (contains$default) {
                arrayList.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }
}
