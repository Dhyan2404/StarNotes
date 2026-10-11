package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
@DebugMetadata(m61542c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", m61543f = "Deprecated.kt", m61544i = {0, 0, 0, 0}, m61545l = {487}, m61546m = "lastIndexOf", m61547n = {"element", "lastIndex", FirebaseAnalytics.Param.INDEX, "$this$consume$iv$iv"}, m61548s = {"L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes11.dex */
public final class ChannelsKt__DeprecatedKt$lastIndexOf$1<E> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;

    public ChannelsKt__DeprecatedKt$lastIndexOf$1(Continuation<? super ChannelsKt__DeprecatedKt$lastIndexOf$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object m61824C;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m61824C = ChannelsKt__DeprecatedKt.m61824C(null, null, this);
        return m61824C;
    }
}
