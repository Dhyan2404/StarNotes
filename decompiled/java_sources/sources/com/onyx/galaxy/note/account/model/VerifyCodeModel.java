package com.onyx.galaxy.note.account.model;

import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.event.VerifyCodeNotifyEvent;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0016\u0010\u0017J\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\"\u0010\u0011\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\n\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;", "", "", "release", "", "a", Constants.STRING_SIG, "key", "", "b", "J", "countDown", "c", "getLeftTime", "()J", "setLeftTime", "(J)V", "leftTime", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "d", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "timerObserver", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;J)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class VerifyCodeModel {
    public static final long VERIFY_CODE_PERIOD_IN_MILLS = 1000;
    public static final int VERIFY_CODE_PERIOD_IN_SEC = 1;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String key;

    /* renamed from: b, reason: from kotlin metadata */
    public final long countDown;

    /* renamed from: c, reason: from kotlin metadata */
    public long leftTime;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public RxTimerUtil.TimerObserver timerObserver;

    public VerifyCodeModel(@NotNull String key, long j) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        this.countDown = j;
        RxTimerUtil.TimerObserver timerObserver = new RxTimerUtil.TimerObserver() { // from class: com.onyx.galaxy.note.account.model.VerifyCodeModel$timerObserver$1
            @Override // io.reactivex.rxjava3.core.Observer
            public /* bridge */ /* synthetic */ void onNext(Long l) {
                onNext(l.longValue());
            }

            public void onNext(long value) {
                long j2;
                String str;
                String str2;
                VerifyCodeModel verifyCodeModel = VerifyCodeModel.this;
                j2 = verifyCodeModel.countDown;
                verifyCodeModel.setLeftTime(j2 - (value * 1));
                str = VerifyCodeModel.this.key;
                VerifyCodeNotifyEvent verifyCodeNotifyEvent = new VerifyCodeNotifyEvent(str, VerifyCodeModel.this.getLeftTime());
                VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
                EventBusHolderKt.safelyPostEvent(verifyCodeBundle.getEventBus(), verifyCodeNotifyEvent);
                if (VerifyCodeModel.this.getLeftTime() <= 0) {
                    str2 = VerifyCodeModel.this.key;
                    verifyCodeBundle.release(str2);
                }
            }
        };
        this.timerObserver = timerObserver;
        RxTimerUtil.INSTANCE.timer(0L, 1000L, timerObserver);
    }

    public final long getLeftTime() {
        return this.leftTime;
    }

    public final void release() {
        RxTimerUtil.INSTANCE.cancel(this.timerObserver);
    }

    public final void setLeftTime(long j) {
        this.leftTime = j;
    }
}
