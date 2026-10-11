package com.onyx.android.sdk.hwr.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.utils.HWRStrokeUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0014J\b\u0010\u0007\u001a\u00020\u0002H\u0002R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR*\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;", "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "onSuccess", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", C6998g.f39679a, "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getInput", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "setInput", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "input", "", "", C6999h.f39688c, "[Ljava/lang/String;", "getItemIds", "()[Ljava/lang/String;", "setItemIds", "([Ljava/lang/String;)V", "itemIds", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRIncrementalImportAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRIncrementalImportAction.kt\ncom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,34:1\n37#2,2:35\n*S KotlinDebug\n*F\n+ 1 HWRIncrementalImportAction.kt\ncom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction\n*L\n31#1:35,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HWRIncrementalImportAction extends HWRBaseAction<HWROutput> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public HWRInput input;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public String[] itemIds;

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRIncrementalImportAction$a */
    /* loaded from: classes7.dex */
    public static final class C7417a<T, R> implements Function {
        public C7417a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWROutput apply(@NotNull HWRBaseAction<HWROutput> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRIncrementalImportAction.this.m33316n();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRIncrementalImportAction(@NotNull HWRBundle bundle, @NotNull HWRInput input) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(input, "input");
        this.input = input;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWROutput> create() {
        Observable map = createObservable().map(new C7417a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final HWRInput getInput() {
        return this.input;
    }

    @Nullable
    public final String[] getItemIds() {
        return this.itemIds;
    }

    /* renamed from: n */
    public final HWROutput m33316n() {
        this.itemIds = getBundle().getRecognizerManager().getActiveRecognizer().onAddStroke(this.input);
        HWRStrokeUtils hWRStrokeUtils = HWRStrokeUtils.INSTANCE;
        String[] strArr = (String[]) this.input.getShapeIds().toArray(new String[0]);
        String[] strArr2 = this.itemIds;
        Intrinsics.checkNotNull(strArr2);
        hWRStrokeUtils.fillItemIdMap(strArr, strArr2, getOutput().getItemIdMap());
        return getOutput();
    }

    @Override // com.onyx.android.sdk.hwr.action.HWRBaseAction
    public void onSuccess() {
        getOutput().setOutputType(2);
    }

    public final void setInput(@NotNull HWRInput hWRInput) {
        Intrinsics.checkNotNullParameter(hWRInput, "<set-?>");
        this.input = hWRInput;
    }

    public final void setItemIds(@Nullable String[] strArr) {
        this.itemIds = strArr;
    }
}
