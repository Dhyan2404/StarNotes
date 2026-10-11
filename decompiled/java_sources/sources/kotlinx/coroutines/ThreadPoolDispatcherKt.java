package kotlinx.coroutines;

import com.sunia.HTREnginev2.bhn;
import com.sunia.HTREnginev2.dhn;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/bhn", "com/sunia/HTREnginev2/dhn"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class ThreadPoolDispatcherKt {
    @DelicateCoroutinesApi
    @NotNull
    public static final ExecutorCoroutineDispatcher newFixedThreadPoolContext(int i, @NotNull String str) {
        return dhn.m53664b(i, str);
    }

    @DelicateCoroutinesApi
    @ExperimentalCoroutinesApi
    @NotNull
    public static final ExecutorCoroutineDispatcher newSingleThreadContext(@NotNull String str) {
        return bhn.m53272a(str);
    }
}
