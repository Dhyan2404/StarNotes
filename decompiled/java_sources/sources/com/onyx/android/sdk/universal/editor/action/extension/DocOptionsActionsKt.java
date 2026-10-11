package com.onyx.android.sdk.universal.editor.action.extension;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocOptions;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.GlobalDocSettings;
import com.onyx.android.sdk.universal.editor.events.app.UpdateDocFetchPolicyEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0010\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000\u001a\u0016\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0002\u001a\n\u0010\u0007\u001a\u00020\u0006*\u00020\u0000\u001a\u0012\u0010\n\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0006\u001a\u0012\u0010\f\u001a\u00020\t*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0006\u001a\n\u0010\r\u001a\u00020\u0006*\u00020\u0000\u001a\u0012\u0010\u000e\u001a\u00020\t*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0006\u001a\n\u0010\u000f\u001a\u00020\u0006*\u00020\u0000\u001a\n\u0010\u0010\u001a\u00020\u0002*\u00020\u0000\u001a\n\u0010\u0011\u001a\u00020\u0006*\u00020\u0000\u001a\u0012\u0010\u0013\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0006\u001a\n\u0010\u0014\u001a\u00020\u0002*\u00020\u0000\u001a\u0012\u0010\u0016\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0002\u001a\u0012\u0010\u0018\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0002\u001a\u0012\u0010\u001a\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0006\u001a\n\u0010\u001b\u001a\u00020\t*\u00020\u0000\u001a\n\u0010\u001c\u001a\u00020\u0002*\u00020\u0000\u001a\n\u0010\u001d\u001a\u00020\u0002*\u00020\u0000\u001a\n\u0010\u001e\u001a\u00020\u0002*\u00020\u0000\u001a\n\u0010 \u001a\u00020\u0006*\u00020\u001f\u001a\n\u0010\u0011\u001a\u00020\u0006*\u00020\u001f\u001a\n\u0010\u0007\u001a\u00020\u0006*\u00020\u001f\u001a\n\u0010\u001c\u001a\u00020\u0002*\u00020\u001f\u001a\n\u0010\u001d\u001a\u00020\u0002*\u00020\u001f\u001a\n\u0010\u001e\u001a\u00020\u0002*\u00020\u001f\u001a\n\u0010!\u001a\u00020\u0006*\u00020\u0000\u001a\u0012\u0010!\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0006\u001a\u0010\u0010\"\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lio/reactivex/rxjava3/core/Observable;", "", "isFirstApplyMargin", "value", "setFirstApplyMargin", "", "getLayoutType", "layoutType", "", "setLayoutType", NotificationCompat.WearableExtender.f5060z, "setScrollerVerticalGravity", "getScrollerVerticalGravity", "setScrollerHorizontalGravity", "getScrollerHorizontalGravity", "isVerticalLayoutType", "getPageColumnCount", "pageColumnCount", "setPageColumnCount", "isEnabledPageMultiColumn", "continuousPage", "setEnabledContinuousPage", "adaptiveStrokeWidth", "setEnabledAdaptiveStrokeWidth", "fetchPolicy", "setOptionFetchPolicy", "toggleDocFetchPolicy", "isEnabledContinuousPage", "isEnabledAdaptiveStrokeWidth", "isEnabledDocConfig", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "getDisplayPageColumnCount", "getScrollerGravity", "a", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DocOptionsActionsKt {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt$a */
    /* loaded from: classes8.dex */
    public static final class C9061a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48965e;

        public C9061a(EditorBundle editorBundle) {
            this.f48965e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(this.f48965e.getWorkBundle().getDocOptions().getFirstApplyMargin());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt$b */
    /* loaded from: classes8.dex */
    public static final class C9062b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48966e;

        /* renamed from: f */
        public final /* synthetic */ boolean f48967f;

        public C9062b(EditorBundle editorBundle, boolean z) {
            this.f48966e = editorBundle;
            this.f48967f = z;
        }

        /* renamed from: a */
        public final void m38274a(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48966e.getWorkBundle().getDocOptions().setFirstApplyMargin(this.f48967f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38274a((EditorBundle) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: a */
    public static final int m38272a(int i) {
        return i == 0 ? GlobalDocSettings.INSTANCE.getScrollerHorizontalGravity() : GlobalDocSettings.INSTANCE.getScrollerVerticalGravity();
    }

    public static final int getDisplayPageColumnCount(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        return AppConfig.INSTANCE.isEnabledPageColumn() ? getPageColumnCount(workBundle) : GlobalDocSettings.PageColumn.SINGLE.getCount();
    }

    public static final int getLayoutType(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return getLayoutType(editorBundle.getWorkBundle());
    }

    public static final int getPageColumnCount(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return getPageColumnCount(editorBundle.getWorkBundle());
    }

    public static final int getScrollerGravity(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return getScrollerGravity(editorBundle, getLayoutType(editorBundle));
    }

    public static final int getScrollerHorizontalGravity(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getWorkBundle().getDocOptions().getScrollerHorizontalGravity();
    }

    public static final int getScrollerVerticalGravity(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getWorkBundle().getDocOptions().getScrollerVerticalGravity();
    }

    public static final boolean isEnabledAdaptiveStrokeWidth(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return isEnabledAdaptiveStrokeWidth(editorBundle.getWorkBundle());
    }

    public static final boolean isEnabledContinuousPage(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return isEnabledContinuousPage(editorBundle.getWorkBundle());
    }

    public static final boolean isEnabledDocConfig(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return isEnabledDocConfig(editorBundle.getWorkBundle());
    }

    public static final boolean isEnabledPageMultiColumn(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return getPageColumnCount(editorBundle) > 1;
    }

    @NotNull
    public static final Observable<Boolean> isFirstApplyMargin(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Observable<Boolean> observeOn = Observable.just(editorBundle).observeOn(EditorBundleKt.coreScheduler(editorBundle)).map(new C9061a(editorBundle)).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    public static final boolean isVerticalLayoutType(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return getLayoutType(editorBundle) == 1;
    }

    public static final void setEnabledAdaptiveStrokeWidth(@NotNull EditorBundle editorBundle, boolean z) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getWorkBundle().getDocOptions().setEnabledAdaptiveStrokeWidth(z);
    }

    public static final void setEnabledContinuousPage(@NotNull EditorBundle editorBundle, boolean z) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getWorkBundle().getDocOptions().setEnabledContinuousPage(z);
    }

    @NotNull
    public static final Observable<?> setFirstApplyMargin(@NotNull EditorBundle editorBundle, boolean z) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Observable<?> observeOn = Observable.just(editorBundle).observeOn(EditorBundleKt.coreScheduler(editorBundle)).map(new C9062b(editorBundle, z)).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    public static final void setLayoutType(@NotNull EditorBundle editorBundle, int i) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getWorkBundle().getDocOptions().setLayoutType(Integer.valueOf(i));
    }

    public static final void setOptionFetchPolicy(@NotNull EditorBundle editorBundle, int i) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getWorkBundle().getDocOptions().setFetchPolicy(i);
    }

    public static final void setPageColumnCount(@NotNull EditorBundle editorBundle, int i) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getWorkBundle().getDocOptions().setPageColumnCount(Integer.valueOf(i));
    }

    public static final void setScrollerHorizontalGravity(@NotNull EditorBundle editorBundle, int i) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getWorkBundle().getDocOptions().setScrollerHorizontalGravity(i);
    }

    public static final void setScrollerVerticalGravity(@NotNull EditorBundle editorBundle, int i) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getWorkBundle().getDocOptions().setScrollerVerticalGravity(i);
    }

    public static final void toggleDocFetchPolicy(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        int i = !isEnabledDocConfig(editorBundle) ? 1 : 0;
        setOptionFetchPolicy(editorBundle, i);
        EditorBundleKt.postEvent(editorBundle, new UpdateDocFetchPolicyEvent(i));
    }

    public static final int getLayoutType(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        return ((Number) AnyKt.getOrElse(isEnabledDocConfig(workBundle) ? workBundle.getDocOptions().getLayoutType() : null, new Function0<Integer>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt$getLayoutType$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(GlobalDocSettings.INSTANCE.getLayoutType());
            }
        })).intValue();
    }

    public static final int getPageColumnCount(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        return ((Number) AnyKt.getOrElse(isEnabledDocConfig(workBundle) ? workBundle.getDocOptions().getPageColumnCount() : null, new Function0<Integer>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt$getPageColumnCount$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(GlobalDocSettings.INSTANCE.getPageColumnCount());
            }
        })).intValue();
    }

    public static final int getScrollerGravity(@NotNull EditorBundle editorBundle, int i) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        if (!isEnabledDocConfig(editorBundle)) {
            return m38272a(i);
        }
        if (i == 0) {
            return getScrollerHorizontalGravity(editorBundle);
        }
        return getScrollerVerticalGravity(editorBundle);
    }

    public static final boolean isEnabledAdaptiveStrokeWidth(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        return ((Boolean) AnyKt.getOrElse(isEnabledDocConfig(workBundle) ? Boolean.valueOf(workBundle.getDocOptions().getEnabledAdaptiveStrokeWidth()) : null, new Function0<Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt$isEnabledAdaptiveStrokeWidth$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(GlobalDocSettings.INSTANCE.isEnabledAdaptiveStrokeWidth());
            }
        })).booleanValue();
    }

    public static final boolean isEnabledContinuousPage(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        return ((Boolean) AnyKt.getOrElse(isEnabledDocConfig(workBundle) ? Boolean.valueOf(workBundle.getDocOptions().getEnabledContinuousPage()) : null, new Function0<Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt$isEnabledContinuousPage$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(GlobalDocSettings.INSTANCE.isEnabledContinuousPage());
            }
        })).booleanValue();
    }

    public static final boolean isEnabledDocConfig(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        return VirtualDocOptions.INSTANCE.isFetchFromDoc(workBundle.getDocOptions().getFetchPolicy());
    }
}
