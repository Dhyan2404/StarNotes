package _COROUTINE;

import com.sunia.HTREnginev2.vxo;
import com.sunia.HTREnginev2.wxo;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\u0006"}, m61528d2 = {"L_COROUTINE/ArtificialStackFrames;", "", "()V", "coroutineBoundary", "Ljava/lang/StackTraceElement;", "coroutineCreation", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes3.dex */
public final class ArtificialStackFrames {
    @NotNull
    public final StackTraceElement coroutineBoundary() {
        StackTraceElement m11a;
        m11a = CoroutineDebuggingKt.m11a(new Exception(), vxo.class.getSimpleName());
        return m11a;
    }

    @NotNull
    public final StackTraceElement coroutineCreation() {
        StackTraceElement m11a;
        m11a = CoroutineDebuggingKt.m11a(new Exception(), wxo.class.getSimpleName());
        return m11a;
    }
}
