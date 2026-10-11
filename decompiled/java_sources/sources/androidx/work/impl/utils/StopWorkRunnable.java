package androidx.work.impl.utils;

import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0014\u0010\u0015B!\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0014\u0010\u0016J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, m61528d2 = {"Landroidx/work/impl/utils/StopWorkRunnable;", "Ljava/lang/Runnable;", "", "run", "Landroidx/work/impl/Processor;", "e", "Landroidx/work/impl/Processor;", "processor", "Landroidx/work/impl/StartStopToken;", C6997f.f39671c, "Landroidx/work/impl/StartStopToken;", "token", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "stopInForeground", "", C6999h.f39688c, "I", "reason", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;ZI)V", "(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;Z)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class StopWorkRunnable implements Runnable {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Processor processor;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final StartStopToken token;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean stopInForeground;

    /* renamed from: h, reason: from kotlin metadata */
    public final int reason;

    public StopWorkRunnable(@NotNull Processor processor, @NotNull StartStopToken token, boolean z, int i) {
        Intrinsics.checkNotNullParameter(processor, "processor");
        Intrinsics.checkNotNullParameter(token, "token");
        this.processor = processor;
        this.token = token;
        this.stopInForeground = z;
        this.reason = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean stopForegroundWork = this.stopInForeground ? this.processor.stopForegroundWork(this.token, this.reason) : this.processor.stopWork(this.token, this.reason);
        Logger.get().debug(Logger.tagWithPrefix("StopWorkRunnable"), "StopWorkRunnable for " + this.token.getId().getWorkSpecId() + "; Processor.stopWork = " + stopForegroundWork);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StopWorkRunnable(@NotNull Processor processor, @NotNull StartStopToken token, boolean z) {
        this(processor, token, z, WorkInfo.STOP_REASON_UNKNOWN);
        Intrinsics.checkNotNullParameter(processor, "processor");
        Intrinsics.checkNotNullParameter(token, "token");
    }
}
