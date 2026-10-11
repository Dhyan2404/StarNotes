package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.OrderListUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "l", "", C6999h.f39688c, "Ljava/util/List;", "excerptInfoBeanList", "", "i", "Ljava/util/Set;", "changeList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveExcerptOrderedListAction extends RxBaseAppAction<SaveExcerptOrderedListAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<ExcerptInfoBean> excerptInfoBeanList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Set<ExcerptInfoBean> changeList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveExcerptOrderedListAction$a */
    /* loaded from: classes8.dex */
    public static final class C8828a<T, R> implements Function {
        public C8828a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set<ExcerptInfoBean> apply(@NotNull List<ExcerptInfoBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveExcerptOrderedListAction.this.m37886l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveExcerptOrderedListAction$b */
    /* loaded from: classes8.dex */
    public static final class C8829b<T, R> implements Function {
        public C8829b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Set<ExcerptInfoBean> it2) {
            List list;
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = SaveExcerptOrderedListAction.this.getEditorBundle();
            list = CollectionsKt___CollectionsKt.toList(SaveExcerptOrderedListAction.this.changeList);
            return new UpdateExcerptAction(editorBundle, list).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveExcerptOrderedListAction$c */
    /* loaded from: classes8.dex */
    public static final class C8830c<T, R> implements Function {
        public C8830c() {
        }

        @NotNull
        /* renamed from: a */
        public final SaveExcerptOrderedListAction m37889a(boolean z) {
            return SaveExcerptOrderedListAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37889a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveExcerptOrderedListAction(@NotNull EditorBundle editorBundle, @NotNull List<ExcerptInfoBean> excerptInfoBeanList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(excerptInfoBeanList, "excerptInfoBeanList");
        this.excerptInfoBeanList = excerptInfoBeanList;
        this.changeList = new LinkedHashSet();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveExcerptOrderedListAction> create() {
        Observable<SaveExcerptOrderedListAction> map = Observable.just(this.excerptInfoBeanList).map(new C8828a()).flatMap(new C8829b()).map(new C8830c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Set<ExcerptInfoBean> m37886l() {
        List mutableList;
        OrderListUtils orderListUtils = OrderListUtils.INSTANCE;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.excerptInfoBeanList);
        this.changeList.addAll(orderListUtils.reorderIndexChecked(mutableList, new Function1<ExcerptInfoBean, Float>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.SaveExcerptOrderedListAction$reorder$list$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Float invoke(@NotNull ExcerptInfoBean item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return Float.valueOf(item.getOrderIndex());
            }
        }, new Function2<ExcerptInfoBean, Float, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.SaveExcerptOrderedListAction$reorder$list$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ExcerptInfoBean excerptInfoBean, Float f) {
                invoke(excerptInfoBean, f.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull ExcerptInfoBean item, float f) {
                Intrinsics.checkNotNullParameter(item, "item");
                item.setOrderIndex(f);
            }
        }));
        Debug.INSTANCE.m32035d(SaveExcerptOrderedListAction.class, "reorder: update list size = " + this.changeList.size(), new Object[0]);
        return this.changeList;
    }
}
