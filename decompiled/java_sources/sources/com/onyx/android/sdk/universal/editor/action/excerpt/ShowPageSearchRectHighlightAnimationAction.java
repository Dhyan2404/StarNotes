package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowPageSearchRectHighlightAnimationAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "searchBean", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShowPageSearchRectHighlightAnimationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowPageSearchRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowPageSearchRectHighlightAnimationAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1549#2:46\n1620#2,3:47\n1855#2,2:51\n1#3:50\n*S KotlinDebug\n*F\n+ 1 ShowPageSearchRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowPageSearchRectHighlightAnimationAction\n*L\n39#1:46\n39#1:47,3\n41#1:51,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ShowPageSearchRectHighlightAnimationAction extends RxBaseAppAction<ShowPageSearchRectHighlightAnimationAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NoteSearchBean searchBean;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.ShowPageSearchRectHighlightAnimationAction$a */
    /* loaded from: classes8.dex */
    public static final class C8855a<T, R> implements Function {
        public C8855a() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends ShowPageSearchRectHighlightAnimationAction> m37922a(boolean z) {
            return ShowPageSearchRectHighlightAnimationAction.this.m37921l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37922a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.ShowPageSearchRectHighlightAnimationAction$b */
    /* loaded from: classes8.dex */
    public static final class C8856b<T, R> implements Function {
        public C8856b() {
        }

        @NotNull
        /* renamed from: a */
        public final ShowPageSearchRectHighlightAnimationAction m37923a(boolean z) {
            return ShowPageSearchRectHighlightAnimationAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37923a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShowPageSearchRectHighlightAnimationAction(@NotNull EditorBundle editorBundle, @NotNull NoteSearchBean searchBean) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(searchBean, "searchBean");
        this.searchBean = searchBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ShowPageSearchRectHighlightAnimationAction> create() {
        Observable<ShowPageSearchRectHighlightAnimationAction> flatMap = Observable.just(Boolean.TRUE).delay(500L, TimeUnit.MILLISECONDS).observeOn(getMainUIScheduler()).flatMap(new C8855a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<ShowPageSearchRectHighlightAnimationAction> m37921l() {
        int collectionSizeOrDefault;
        List listOf;
        List<RectF> pageRectList = this.searchBean.getPageRectList();
        if (CollectionKt.isNullOrEmpty(pageRectList)) {
            Observable<ShowPageSearchRectHighlightAnimationAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        EditorBundle editorBundle = getEditorBundle();
        String pageId = this.searchBean.getPageId();
        if (pageId == null) {
            pageId = "";
        }
        String str = pageId;
        List<RectF> list = pageRectList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf((RectF) it2.next());
            arrayList.add(listOf);
        }
        ShowRectHighlightAnimationAction showRectHighlightAnimationAction = new ShowRectHighlightAnimationAction(editorBundle, str, arrayList, 0L, 8, null);
        showRectHighlightAnimationAction.setRendererKey(showRectHighlightAnimationAction.getRendererKey() + showRectHighlightAnimationAction.getPageId());
        Iterator<T> it3 = list.iterator();
        while (it3.hasNext()) {
            RectKt.expand((RectF) it3.next(), showRectHighlightAnimationAction.getStrokePaint().getStrokeWidth() * 2);
        }
        Observable map = showRectHighlightAnimationAction.build().map(new C8856b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
