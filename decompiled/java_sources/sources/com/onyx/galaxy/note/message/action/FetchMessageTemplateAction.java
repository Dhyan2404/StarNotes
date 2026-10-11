package com.onyx.galaxy.note.message.action;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.data.MessageTemplateKt;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.galaxy.note.message.cloud.MessageService;
import com.onyx.galaxy.note.message.data.GetMessageTemplatesResponse;
import com.onyx.galaxy.note.message.data.MessageTemplateDatasKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", "Lcom/onyx/galaxy/note/message/cloud/MessageService;", "e", "Lcom/onyx/galaxy/note/message/cloud/MessageService;", NotificationCompat.CATEGORY_SERVICE, Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class FetchMessageTemplateAction extends RxBaseAction<Unit> {

    /* renamed from: e, reason: from kotlin metadata */
    public MessageService service;

    /* renamed from: com.onyx.galaxy.note.message.action.FetchMessageTemplateAction$a */
    /* loaded from: classes9.dex */
    public static final class C12613a<T, R> implements Function {
        public C12613a() {
        }

        /* renamed from: a */
        public final void m50531a(@NotNull FetchMessageTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FetchMessageTemplateAction.this.m50529l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m50531a((FetchMessageTemplateAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.message.action.FetchMessageTemplateAction$b */
    /* loaded from: classes9.dex */
    public static final class C12614b<T, R> implements Function {
        public C12614b() {
        }

        /* renamed from: a */
        public final void m50532a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FetchMessageTemplateAction.this.m50530m();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m50532a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Unit> create() {
        Observable<Unit> map = Observable.just(this).observeOn(KSyncBundle.INSTANCE.getNetworkScheduler()).map(new C12613a()).map(new C12614b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m50529l() {
        this.service = (MessageService) ServiceFactory.INSTANCE.getOnyxApiV2Service(MessageService.class);
    }

    /* renamed from: m */
    public final void m50530m() {
        RetrofitExt retrofitExt = RetrofitExt.INSTANCE;
        MessageService messageService = this.service;
        if (messageService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_SERVICE);
            messageService = null;
        }
        MessageTemplateKt.save(MessageTemplateDatasKt.convertToLocal((GetMessageTemplatesResponse) RetrofitExt.executeAndGetResponse$default(retrofitExt, messageService.getMessageTemplates(), false, 1, null)));
    }
}
