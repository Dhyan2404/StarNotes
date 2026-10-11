package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final class StartedLazily implements SharingStarted {
    @Override // kotlinx.coroutines.flow.SharingStarted
    @NotNull
    public Flow<SharingCommand> command(@NotNull StateFlow<Integer> stateFlow) {
        return FlowKt.flow(new StartedLazily$command$1(stateFlow, null));
    }

    @NotNull
    public String toString() {
        return "SharingStarted.Lazily";
    }
}
