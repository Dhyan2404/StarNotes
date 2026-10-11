package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.universal.editor.data.ScalingArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ScalingResultEvent;", "", "Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;", "component1", "args", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;", "getArgs", "()Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;", "setArgs", "(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ScalingResultEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public ScalingArgs args;

    public ScalingResultEvent(@NotNull ScalingArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    public static /* synthetic */ ScalingResultEvent copy$default(ScalingResultEvent scalingResultEvent, ScalingArgs scalingArgs, int i, Object obj) {
        if ((i & 1) != 0) {
            scalingArgs = scalingResultEvent.args;
        }
        return scalingResultEvent.copy(scalingArgs);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final ScalingArgs getArgs() {
        return this.args;
    }

    @NotNull
    public final ScalingResultEvent copy(@NotNull ScalingArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new ScalingResultEvent(args);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ScalingResultEvent) && Intrinsics.areEqual(this.args, ((ScalingResultEvent) other).args);
    }

    @NotNull
    public final ScalingArgs getArgs() {
        return this.args;
    }

    public int hashCode() {
        return this.args.hashCode();
    }

    public final void setArgs(@NotNull ScalingArgs scalingArgs) {
        Intrinsics.checkNotNullParameter(scalingArgs, "<set-?>");
        this.args = scalingArgs;
    }

    @NotNull
    public String toString() {
        return "ScalingResultEvent(args=" + this.args + ')';
    }
}
