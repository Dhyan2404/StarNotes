package kotlin.sequences;

import java.util.Iterator;
import java.util.List;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"kotlin/sequences/SequencesKt__SequenceBuilderKt", "kotlin/sequences/SequencesKt__SequencesJVMKt", "kotlin/sequences/SequencesKt__SequencesKt", "kotlin/sequences/SequencesKt___SequencesJvmKt", "kotlin/sequences/SequencesKt___SequencesKt"}, m61529k = 4, m61530mv = {1, 9, 0}, m61532xi = 49)
/* loaded from: classes11.dex */
public final class SequencesKt extends SequencesKt___SequencesKt {
    private SequencesKt() {
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Sequence asSequence(@NotNull Iterator it2) {
        return SequencesKt__SequencesKt.asSequence(it2);
    }

    @LowPriorityInOverloadResolution
    @NotNull
    public static /* bridge */ /* synthetic */ Sequence generateSequence(@Nullable Object obj, @NotNull Function1 function1) {
        return SequencesKt__SequencesKt.generateSequence(obj, (Function1<? super Object, ? extends Object>) function1);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Sequence map(@NotNull Sequence sequence, @NotNull Function1 function1) {
        return SequencesKt___SequencesKt.map(sequence, function1);
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static /* bridge */ /* synthetic */ Sequence sequence(@BuilderInference @NotNull Function2 function2) {
        return SequencesKt__SequenceBuilderKt.sequence(function2);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List toMutableList(@NotNull Sequence sequence) {
        return SequencesKt___SequencesKt.toMutableList(sequence);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Sequence generateSequence(@NotNull Function0 function0, @NotNull Function1 function1) {
        return SequencesKt__SequencesKt.generateSequence(function0, function1);
    }
}
