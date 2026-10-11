package androidx.activity;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006"}, m61528d2 = {"trackPipAnimationHintView", "", "Landroid/app/Activity;", "view", "Landroid/view/View;", "(Landroid/app/Activity;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "activity-ktx_release"}, m61529k = 2, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes3.dex */
public final class PipHintTrackerKt {

    /* renamed from: androidx.activity.PipHintTrackerKt$a */
    /* loaded from: classes3.dex */
    public static final class C0098a<T> implements FlowCollector {

        /* renamed from: e */
        public final /* synthetic */ Activity f501e;

        public C0098a(Activity activity) {
            this.f501e = activity;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        @Nullable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(@NotNull Rect rect, @NotNull Continuation<? super Unit> continuation) {
            Api26Impl.INSTANCE.setPipParamsSourceRectHint(this.f501e, rect);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: a */
    public static final Rect m262a(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return rect;
    }

    @RequiresApi(26)
    @Nullable
    public static final Object trackPipAnimationHintView(@NotNull Activity activity, @NotNull View view, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object collect = FlowKt.callbackFlow(new PipHintTrackerKt$trackPipAnimationHintView$flow$1(view, null)).collect(new C0098a(activity), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return collect == coroutine_suspended ? collect : Unit.INSTANCE;
    }
}
