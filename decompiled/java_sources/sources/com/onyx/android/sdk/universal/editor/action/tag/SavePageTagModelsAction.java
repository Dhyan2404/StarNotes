package com.onyx.android.sdk.universal.editor.action.tag;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B%\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u001c\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", CouchFieldKey.KEY_TOC_PAGE_ID, "l", C6999h.f39688c, Constants.STRING_SIG, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "i", "Ljava/util/List;", "tagBeanList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SavePageTagModelsAction extends RxBaseAppAction<List<? extends PageTagModel>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<ShapeTagBean> tagBeanList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.SavePageTagModelsAction$a */
    /* loaded from: classes8.dex */
    public static final class C10192a<T, R> implements Function {
        public C10192a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<PageTagModel>> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SavePageTagModelsAction.this.m40393l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.SavePageTagModelsAction$b */
    /* loaded from: classes8.dex */
    public static final class C10193b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f51069f;

        /* renamed from: g */
        public final /* synthetic */ List<PageTagModel> f51070g;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.SavePageTagModelsAction$b$a */
        /* loaded from: classes8.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ List<PageTagModel> f51071e;

            public a(List<PageTagModel> list) {
                this.f51071e = list;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull List<? extends PageTagModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f51071e.addAll(it2);
            }
        }

        public C10193b(String str, List<PageTagModel> list) {
            this.f51069f = str;
            this.f51070g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<PageTagModel>> apply(@NotNull ShapeTagBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SavePageTagModelAction(SavePageTagModelsAction.this.getEditorBundle(), this.f51069f, it2).buildFast().doOnNext(new a(this.f51070g));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.SavePageTagModelsAction$c */
    /* loaded from: classes8.dex */
    public static final class C10194c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<PageTagModel> f51072e;

        public C10194c(List<PageTagModel> list) {
            this.f51072e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<PageTagModel> apply(@NotNull List<? extends PageTagModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f51072e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SavePageTagModelsAction(@NotNull EditorBundle editorBundle, @NotNull String pageId, @NotNull List<ShapeTagBean> tagBeanList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(tagBeanList, "tagBeanList");
        this.pageId = pageId;
        this.tagBeanList = tagBeanList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<PageTagModel>> create() {
        Observable<List<PageTagModel>> flatMap = Observable.just(this.pageId).flatMap(new C10192a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<List<PageTagModel>> m40393l(String pageId) {
        ArrayList arrayList = new ArrayList();
        if (CollectionKt.isNullOrEmpty(this.tagBeanList)) {
            Observable<List<PageTagModel>> just = Observable.just(arrayList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(this.tagBeanList).concatMap(new C10193b(pageId, arrayList));
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<List<PageTagModel>> map = RxjavaKt.takeLastOne(concatMap).map(new C10194c(arrayList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
