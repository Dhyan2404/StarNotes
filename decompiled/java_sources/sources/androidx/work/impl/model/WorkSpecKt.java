package androidx.work.impl.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\"\u0014\u0010\u0006\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, m61528d2 = {"Landroidx/work/impl/model/WorkSpec;", "Landroidx/work/impl/model/WorkGenerationalId;", "generationalId", "", "a", "J", "NOT_ENQUEUED", "work-runtime_release"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class WorkSpecKt {

    /* renamed from: a */
    public static final long f11888a = -1;

    @NotNull
    public static final WorkGenerationalId generationalId(@NotNull WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "<this>");
        return new WorkGenerationalId(workSpec.id, workSpec.getGeneration());
    }
}
