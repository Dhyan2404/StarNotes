package com.onyx.android.sdk.hwr.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.constant.HWRCommand;
import com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer;
import com.onyx.android.sdk.hwr.utils.HWRStrokeUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0004R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR(\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/action/HWRIncrementalCommandAction;", "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "execCommand", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", C6998g.f39679a, "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getInput", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "setInput", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "input", "", "", C6999h.f39688c, "[Ljava/lang/String;", "getItemIds", "()[Ljava/lang/String;", "setItemIds", "([Ljava/lang/String;)V", "itemIds", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRIncrementalCommandAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRIncrementalCommandAction.kt\ncom/onyx/android/sdk/hwr/action/HWRIncrementalCommandAction\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,58:1\n26#2:59\n37#3,2:60\n*S KotlinDebug\n*F\n+ 1 HWRIncrementalCommandAction.kt\ncom/onyx/android/sdk/hwr/action/HWRIncrementalCommandAction\n*L\n14#1:59\n55#1:60,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HWRIncrementalCommandAction extends HWRBaseAction<HWROutput> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public HWRInput input;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String[] itemIds;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HWRCommand.values().length];
            try {
                iArr[HWRCommand.IMPORT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HWRCommand.ADD_STROKE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[HWRCommand.UNDO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[HWRCommand.REDO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[HWRCommand.ERASE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[HWRCommand.REPLACE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRIncrementalCommandAction$a */
    /* loaded from: classes7.dex */
    public static final class C7416a<T, R> implements Function {
        public C7416a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWROutput apply(@NotNull HWRBaseAction<HWROutput> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRIncrementalCommandAction.this.execCommand();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRIncrementalCommandAction(@NotNull HWRBundle bundle, @NotNull HWRInput input) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(input, "input");
        this.itemIds = new String[0];
        this.input = input;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWROutput> create() {
        Observable map = createObservable().map(new C7416a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final HWROutput execCommand() {
        IHWRRecognizer activeRecognizer = getBundle().getRecognizerManager().getActiveRecognizer();
        switch (WhenMappings.$EnumSwitchMapping$0[this.input.getCommand().ordinal()]) {
            case 1:
                this.itemIds = activeRecognizer.onImport(this.input);
                break;
            case 2:
                this.itemIds = activeRecognizer.onAddStroke(this.input);
                break;
            case 3:
                activeRecognizer.onUndo(this.input);
                break;
            case 4:
                activeRecognizer.onRedo(this.input);
                break;
            case 5:
                activeRecognizer.onErase(this.input);
                break;
            case 6:
                this.itemIds = activeRecognizer.onReplace(this.input);
                break;
        }
        HWRStrokeUtils.INSTANCE.fillItemIdMap((String[]) this.input.getShapeIds().toArray(new String[0]), this.itemIds, getOutput().getItemIdMap());
        return getOutput();
    }

    @NotNull
    public final HWRInput getInput() {
        return this.input;
    }

    @NotNull
    public final String[] getItemIds() {
        return this.itemIds;
    }

    public final void setInput(@NotNull HWRInput hWRInput) {
        Intrinsics.checkNotNullParameter(hWRInput, "<set-?>");
        this.input = hWRInput;
    }

    public final void setItemIds(@NotNull String[] strArr) {
        Intrinsics.checkNotNullParameter(strArr, "<set-?>");
        this.itemIds = strArr;
    }
}
