package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Landroidx/work/impl/StartStopToken;", "", "Landroidx/work/impl/model/WorkGenerationalId;", "a", "Landroidx/work/impl/model/WorkGenerationalId;", "getId", "()Landroidx/work/impl/model/WorkGenerationalId;", "id", Constants.CONSTRUCTOR_NAME, "(Landroidx/work/impl/model/WorkGenerationalId;)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class StartStopToken {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WorkGenerationalId id;

    public StartStopToken(@NotNull WorkGenerationalId id) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.id = id;
    }

    @NotNull
    public final WorkGenerationalId getId() {
        return this.id;
    }
}
