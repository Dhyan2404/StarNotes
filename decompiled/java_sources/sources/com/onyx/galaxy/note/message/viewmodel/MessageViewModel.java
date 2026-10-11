package com.onyx.galaxy.note.message.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.message.action.FetchMessageAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\f\u0010\rJ\u0006\u0010\u0003\u001a\u00020\u0002R%\u0010\u000b\u001a\u0010\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "load", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "i", "Landroidx/lifecycle/MutableLiveData;", "getUnreadCount", "()Landroidx/lifecycle/MutableLiveData;", "unreadCount", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MessageViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> unreadCount = new MutableLiveData<>(-1);

    /* renamed from: com.onyx.galaxy.note.message.viewmodel.MessageViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12628a<T> implements Consumer {
        public C12628a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull FetchMessageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MessageViewModel.this.getUnreadCount().postValue(Integer.valueOf(it2.getUnreadCount()));
        }
    }

    @NotNull
    public final MutableLiveData<Integer> getUnreadCount() {
        return this.unreadCount;
    }

    public final void load() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<FetchMessageAction> doOnNext = new FetchMessageAction().build().doOnNext(new C12628a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }
}
