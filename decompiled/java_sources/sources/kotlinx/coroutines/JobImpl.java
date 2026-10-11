package kotlinx.coroutines;

import com.miui.penengine.p015e.C6998g;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0011\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0003H\u0003R\u001a\u0010\r\u001a\u00020\u00038\u0010X\u0090\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00038PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\f¨\u0006\u0014"}, m61528d2 = {"Lkotlinx/coroutines/JobImpl;", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/CompletableJob;", "", "complete", "", "exception", "completeExceptionally", "K", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "getHandlesException$kotlinx_coroutines_core", Constants.BOOLEAN_VALUE_SIG, "handlesException", "getOnCancelComplete$kotlinx_coroutines_core", "onCancelComplete", "Lkotlinx/coroutines/Job;", "parent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lkotlinx/coroutines/Job;)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@PublishedApi
/* loaded from: classes11.dex */
public class JobImpl extends JobSupport implements CompletableJob {

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean handlesException;

    public JobImpl(@Nullable Job job) {
        super(true);
        initParentJob(job);
        this.handlesException = m61629K();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        r3 = r3.getParentHandle$kotlinx_coroutines_core();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
    
        if ((r3 instanceof kotlinx.coroutines.ChildHandleNode) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
    
        r3 = (kotlinx.coroutines.ChildHandleNode) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
    
        if (r3 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
    
        r3 = r3.getJob();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        if (r3 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002a, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x001d, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
    
        if (r3 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
    
        if (r3.getHandlesException() == false) goto L15;
     */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m61629K() {
        /*
            r3 = this;
            kotlinx.coroutines.ChildHandle r3 = r3.getParentHandle$kotlinx_coroutines_core()
            boolean r0 = r3 instanceof kotlinx.coroutines.ChildHandleNode
            r1 = 0
            if (r0 == 0) goto Lc
            kotlinx.coroutines.ChildHandleNode r3 = (kotlinx.coroutines.ChildHandleNode) r3
            goto Ld
        Lc:
            r3 = r1
        Ld:
            r0 = 0
            if (r3 == 0) goto L33
            kotlinx.coroutines.JobSupport r3 = r3.getJob()
            if (r3 != 0) goto L17
            goto L33
        L17:
            boolean r2 = r3.getHandlesException()
            if (r2 == 0) goto L1f
            r3 = 1
            return r3
        L1f:
            kotlinx.coroutines.ChildHandle r3 = r3.getParentHandle$kotlinx_coroutines_core()
            boolean r2 = r3 instanceof kotlinx.coroutines.ChildHandleNode
            if (r2 == 0) goto L2a
            kotlinx.coroutines.ChildHandleNode r3 = (kotlinx.coroutines.ChildHandleNode) r3
            goto L2b
        L2a:
            r3 = r1
        L2b:
            if (r3 == 0) goto L33
            kotlinx.coroutines.JobSupport r3 = r3.getJob()
            if (r3 != 0) goto L17
        L33:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobImpl.m61629K():boolean");
    }

    @Override // kotlinx.coroutines.CompletableJob
    public boolean complete() {
        return makeCompleting$kotlinx_coroutines_core(Unit.INSTANCE);
    }

    @Override // kotlinx.coroutines.CompletableJob
    public boolean completeExceptionally(@NotNull Throwable exception) {
        return makeCompleting$kotlinx_coroutines_core(new CompletedExceptionally(exception, false, 2, null));
    }

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: getHandlesException$kotlinx_coroutines_core, reason: from getter */
    public boolean getHandlesException() {
        return this.handlesException;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }
}
