package com.onyx.android.sdk.universal.editor.action.hwr;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.hwr.action.HWREnsureInitAction;
import com.onyx.android.sdk.hwr.action.HWROpenAction;
import com.onyx.android.sdk.hwr.action.HWRResourceDownloadAction;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRPrepareAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "l", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", C6999h.f39688c, "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getHwrInput", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "hwrInput", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "i", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "hwrBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HWRPrepareAction extends RxBaseAppAction<HWRPrepareAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final HWRInput hwrInput;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final HWRBundle hwrBundle;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRPrepareAction$a */
    /* loaded from: classes8.dex */
    public static final class C9455a<T, R> implements Function {
        public C9455a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWROutput> apply(@NotNull HWRResource it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWREnsureInitAction(HWRPrepareAction.this.hwrBundle, HWRPrepareAction.this.getHwrInput()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRPrepareAction$b */
    /* loaded from: classes8.dex */
    public static final class C9456b<T, R> implements Function {
        public C9456b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWROutput> apply(@NotNull HWROutput it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWROpenAction(HWRPrepareAction.this.hwrBundle, HWRPrepareAction.this.getHwrInput()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRPrepareAction$c */
    /* loaded from: classes8.dex */
    public static final class C9457c<T, R> implements Function {
        public C9457c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRPrepareAction apply(@NotNull HWROutput it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRPrepareAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRPrepareAction(@NotNull EditorBundle editorBundle, @NotNull HWRInput hwrInput) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(hwrInput, "hwrInput");
        this.hwrInput = hwrInput;
        this.hwrBundle = editorBundle.getAiBundle().getHwrBundle();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWRPrepareAction> create() {
        Observable<HWRPrepareAction> map = new HWRResourceDownloadAction(this.hwrBundle, m39030l()).build().flatMap(new C9455a()).flatMap(new C9456b()).map(new C9457c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final HWRInput getHwrInput() {
        return this.hwrInput;
    }

    /* renamed from: l */
    public final HWRResource m39030l() {
        HWRResource hWRResource = new HWRResource();
        hWRResource.setEngineType(HWRRecognizerTypeKt.getEngineType(this.hwrInput.getRecognizerType()));
        hWRResource.setContentType(this.hwrInput.getContentType());
        hWRResource.setLang(this.hwrInput.getLang());
        return hWRResource;
    }
}
