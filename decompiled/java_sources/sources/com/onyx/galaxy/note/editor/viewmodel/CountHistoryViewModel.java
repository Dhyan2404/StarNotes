package com.onyx.galaxy.note.editor.viewmodel;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import androidx.lifecycle.MutableLiveData;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.counter.model.CounterRecordModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.editor.action.counter.DeleteCounterRecordAction;
import com.onyx.galaxy.note.editor.action.counter.LoadCounterRecordListAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J$\u0010\f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u000b\u001a\u00020\u0002J\u0016\u0010\u000e\u001a\u00020\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0016\u0010\u000f\u001a\u00020\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u001e\u0010\u0011\u001a\u00020\u00102\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002R#\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0003\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "isCountUp", "", "loadCountData", "Landroid/content/Context;", "context", "", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "countList", "selectionMode", "deleteCount", "list", C6997f.f39671c, "e", "Landroid/text/SpannableString;", "d", "Landroidx/lifecycle/MutableLiveData;", "i", "Landroidx/lifecycle/MutableLiveData;", "getCountListData", "()Landroidx/lifecycle/MutableLiveData;", "countListData", "j", Constants.HASIDCALL_INDEX_SIG, Constants.BOOLEAN_VALUE_SIG, "setCountUp", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CountHistoryViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<CounterRecordModel>> countListData = new MutableLiveData<>();

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isCountUp;

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.CountHistoryViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12553a<T> implements Consumer {
        public C12553a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CounterRecordModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CountHistoryViewModel.this.getCountListData().postValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.CountHistoryViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12554b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<CounterRecordModel> f61081f;

        public C12554b(List<CounterRecordModel> list) {
            this.f61081f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteCounterRecordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CountHistoryViewModel.this.m50355e(this.f61081f);
        }
    }

    /* renamed from: d */
    public final SpannableString m50354d(List<CounterRecordModel> countList, boolean selectionMode) {
        int indexOf$default;
        if (!selectionMode) {
            return this.isCountUp ? new SpannableString(ResManager.INSTANCE.getString(C10651R.string.delete_single_up_count_tips)) : new SpannableString(ResManager.INSTANCE.getString(C10651R.string.delete_single_down_count_tips));
        }
        String valueOf = String.valueOf(countList.size());
        String string = this.isCountUp ? countList.size() > 1 ? ResManager.INSTANCE.getString(C10651R.string.selection_delete_multi_up_count_tips, valueOf) : ResManager.INSTANCE.getString(C10651R.string.selection_delete_single_up_count_tips, valueOf) : countList.size() > 1 ? ResManager.INSTANCE.getString(C10651R.string.selection_delete_multi_down_count_tips, valueOf) : ResManager.INSTANCE.getString(C10651R.string.selection_delete_single_down_count_tips, valueOf);
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string, valueOf, 0, false, 6, (Object) null);
        SpannableString spannableString = new SpannableString(string);
        spannableString.setSpan(new ForegroundColorSpan(ThemeUtils.getColorById(C7996R.color.theme_error_color_01)), indexOf$default, valueOf.length() + indexOf$default, 33);
        return spannableString;
    }

    public final void deleteCount(@NotNull Context context, @NotNull final List<CounterRecordModel> countList, boolean selectionMode) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(countList, "countList");
        new CommonDialog.Builder(context).setWarning(true).setTitle(C10651R.string.delete).setContentSpannable(m50354d(countList, selectionMode)).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.viewmodel.CountHistoryViewModel$deleteCount$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                CountHistoryViewModel.this.m50356f(countList);
            }
        }).create().show();
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x000a, code lost:
    
        r0 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r0);
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m50355e(java.util.List<com.onyx.android.sdk.replicator.counter.model.CounterRecordModel> r2) {
        /*
            r1 = this;
            androidx.lifecycle.MutableLiveData<java.util.List<com.onyx.android.sdk.replicator.counter.model.CounterRecordModel>> r0 = r1.countListData
            java.lang.Object r0 = r0.getValue()
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L1d
            java.util.Collection r0 = (java.util.Collection) r0
            java.util.List r0 = kotlin.collections.CollectionsKt.toMutableList(r0)
            if (r0 != 0) goto L13
            goto L1d
        L13:
            java.util.Collection r2 = (java.util.Collection) r2
            r0.removeAll(r2)
            androidx.lifecycle.MutableLiveData<java.util.List<com.onyx.android.sdk.replicator.counter.model.CounterRecordModel>> r1 = r1.countListData
            r1.postValue(r0)
        L1d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.viewmodel.CountHistoryViewModel.m50355e(java.util.List):void");
    }

    /* renamed from: f */
    public final void m50356f(List<CounterRecordModel> list) {
        Observable<DeleteCounterRecordAction> doOnNext = new DeleteCounterRecordAction(list).build().doOnNext(new C12554b(list));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    @NotNull
    public final MutableLiveData<List<CounterRecordModel>> getCountListData() {
        return this.countListData;
    }

    /* renamed from: isCountUp, reason: from getter */
    public final boolean getIsCountUp() {
        return this.isCountUp;
    }

    public final void loadCountData(boolean isCountUp) {
        this.isCountUp = isCountUp;
        Observable<List<? extends CounterRecordModel>> doOnNext = new LoadCounterRecordListAction(isCountUp).build().doOnNext(new C12553a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    public final void setCountUp(boolean z) {
        this.isCountUp = z;
    }
}
