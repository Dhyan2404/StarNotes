package com.onyx.galaxy.note.account.action;

import android.content.Context;
import android.content.DialogInterface;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.exception.AbortException;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.GetSecurityVerifyDataAction;
import com.onyx.galaxy.note.account.view.dialog.SecurityVerificationDialog;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0002¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "p", "verifyData", "", C4921e.f26528e, "Lio/reactivex/rxjava3/core/Observer;", EventHandlerManager.OBSERVER, "", GoogleApiAvailabilityLight.f29016b, "Landroid/content/Context;", "activityContext", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class GetSecurityVerifyDataAction extends RxBaseNoteAppAction<String> {

    /* renamed from: com.onyx.galaxy.note.account.action.GetSecurityVerifyDataAction$a */
    /* loaded from: classes9.dex */
    public static final class C10682a<T, R> implements Function {
        public C10682a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetSecurityVerifyDataAction.this.m41777p();
        }
    }

    public GetSecurityVerifyDataAction(@NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        setActivityContext(activityContext);
    }

    /* renamed from: q */
    public static final void m41773q(AtomicReference dataRef, GetSecurityVerifyDataAction this$0, PublishSubject subject, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(dataRef, "$dataRef");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(subject, "$subject");
        if (dataRef.get() == null) {
            this$0.m41775n(subject);
        }
    }

    /* renamed from: r */
    public static final void m41774r(GetSecurityVerifyDataAction this$0, PublishSubject subject, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(subject, "$subject");
        this$0.m41775n(subject);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable flatMap = ensureClusterInfo().observeOn(getMainUIScheduler()).flatMap(new C10682a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: n */
    public final void m41775n(Observer<String> observer) {
        observer.onError(new AbortException("security verify cancel"));
    }

    /* renamed from: o */
    public final boolean m41776o(String verifyData) {
        if (StringKt.isNotBlank(verifyData)) {
            return true;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.security_verification_failed_tip, false, 2, (Object) null);
        return false;
    }

    /* renamed from: p */
    public final Observable<String> m41777p() {
        final AtomicReference atomicReference = new AtomicReference();
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        Context activityContext = getActivityContext();
        Intrinsics.checkNotNull(activityContext);
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        SecurityVerificationDialog verifyListener = new SecurityVerificationDialog(activityContext, clusterInfo).setVerifyListener(new SecurityVerificationDialog.OnVerifyListener() { // from class: com.onyx.galaxy.note.account.action.GetSecurityVerifyDataAction$getVerifyData$dialog$1
            @Override // com.onyx.galaxy.note.account.view.dialog.SecurityVerificationDialog.OnVerifyListener
            public void receiveVerifyData(@NotNull String verifyData) {
                boolean m41776o;
                Intrinsics.checkNotNullParameter(verifyData, "verifyData");
                atomicReference.set(verifyData);
                m41776o = this.m41776o(verifyData);
                if (m41776o) {
                    RxjavaKt.done(create, verifyData);
                } else {
                    create.onError(new Exception("security verify fail"));
                }
            }
        });
        verifyListener.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.p2h
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                GetSecurityVerifyDataAction.m41773q(atomicReference, this, create, dialogInterface);
            }
        });
        verifyListener.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.sunia.HTREnginev2.q2h
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                GetSecurityVerifyDataAction.m41774r(GetSecurityVerifyDataAction.this, create, dialogInterface);
            }
        });
        verifyListener.show();
        return create;
    }
}
