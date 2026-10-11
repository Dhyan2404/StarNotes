package kotlinx.coroutines;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlinx.coroutines.internal.MainDispatchersKt;
import kotlinx.coroutines.internal.SystemPropsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\u001a\b\u0010\u0001\u001a\u00020\u0000H\u0002\"\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0001\u0010\u0003\" \u0010\u000b\u001a\u00020\u00008\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lkotlinx/coroutines/Delay;", "a", "", Constants.HASIDCALL_INDEX_SIG, "defaultMainDelayOptIn", "b", "Lkotlinx/coroutines/Delay;", "getDefaultDelay", "()Lkotlinx/coroutines/Delay;", "getDefaultDelay$annotations", "()V", "DefaultDelay", "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class DefaultExecutorKt {

    /* renamed from: a */
    public static final boolean f98149a = SystemPropsKt.systemProp("kotlinx.coroutines.main.delay", false);

    /* renamed from: b */
    @NotNull
    public static final Delay f98150b = m61612a();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static final Delay m61612a() {
        if (!f98149a) {
            return DefaultExecutor.INSTANCE;
        }
        MainCoroutineDispatcher main = Dispatchers.getMain();
        return (MainDispatchersKt.isMissing(main) || !(main instanceof Delay)) ? DefaultExecutor.INSTANCE : (Delay) main;
    }

    @NotNull
    public static final Delay getDefaultDelay() {
        return f98150b;
    }

    @PublishedApi
    public static /* synthetic */ void getDefaultDelay$annotations() {
    }
}
