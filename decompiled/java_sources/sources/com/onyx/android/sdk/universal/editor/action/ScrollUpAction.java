package com.onyx.android.sdk.universal.editor.action;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.data.ScrollInfo;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.request.ScrollUpRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/ScrollUpAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;", "scrollInfo", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ScrollUpAction extends RxBaseAppAction<VirtualDocViewInfo> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ScrollInfo scrollInfo;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ScrollUpAction$a */
    /* loaded from: classes8.dex */
    public static final class C8416a<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.ScrollUpAction$a$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ ScrollUpRequest f47897e;

            public a(ScrollUpRequest scrollUpRequest) {
                this.f47897e = scrollUpRequest;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final VirtualDocViewInfo apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f47897e.getVirtualDocViewInfo();
            }
        }

        public C8416a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends VirtualDocViewInfo> apply(@NotNull ScrollUpRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            return DisplayActionsKt.display$default(ScrollUpAction.this.getEditorBundle(), false, 1, null).map(new a(request));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollUpAction(@NotNull EditorBundle editorBundle, @NotNull ScrollInfo scrollInfo) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(scrollInfo, "scrollInfo");
        this.scrollInfo = scrollInfo;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<VirtualDocViewInfo> create() {
        Observable<VirtualDocViewInfo> flatMap = RxBaseAppActionKt.submitRequestToCore(this, new ScrollUpRequest(getEditorBundle().getWorkBundle(), this.scrollInfo)).flatMap(new C8416a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
