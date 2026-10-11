package androidx.customview.poolingcontainer;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import androidx.core.view.ViewKt;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.sunia.HTREnginev2.f5l;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u0005\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\n\u0010\u0006\u001a\u00020\u0003*\u00020\u0000\u001a\n\u0010\b\u001a\u00020\u0003*\u00020\u0007\"\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b\"\u0014\u0010\u000e\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000b\"(\u0010\u0011\u001a\u00020\u000f*\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014\"\u0015\u0010\u0015\u001a\u00020\u000f*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0012\"\u0018\u0010\u0018\u001a\u00020\u0016*\u00020\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u0017¨\u0006\u0019"}, m61528d2 = {"Landroid/view/View;", "Landroidx/customview/poolingcontainer/PoolingContainerListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "addPoolingContainerListener", "removePoolingContainerListener", "callPoolingContainerOnRelease", "Landroid/view/ViewGroup;", "callPoolingContainerOnReleaseForChildren", "", "a", "I", "PoolingContainerListenerHolderTag", "b", "IsPoolingContainerTag", "", "value", "isPoolingContainer", "(Landroid/view/View;)Z", "setPoolingContainer", "(Landroid/view/View;Z)V", "isWithinPoolingContainer", "Lcom/sunia/HTREnginev2/f5l;", "(Landroid/view/View;)Lcom/sunia/HTREnginev2/f5l;", "poolingContainerListenerHolder", "customview-poolingcontainer_release"}, m61529k = 2, m61530mv = {1, 6, 0})
@JvmName(name = "PoolingContainer")
/* loaded from: classes3.dex */
public final class PoolingContainer {

    /* renamed from: a */
    public static final int f6616a = C0942R.id.pooling_container_listener_holder_tag;

    /* renamed from: b */
    public static final int f6617b = C0942R.id.is_pooling_container_tag;

    /* renamed from: a */
    public static final f5l m3976a(View view) {
        int i = f6616a;
        f5l f5lVar = (f5l) view.getTag(i);
        if (f5lVar != null) {
            return f5lVar;
        }
        f5l f5lVar2 = new f5l();
        view.setTag(i, f5lVar2);
        return f5lVar2;
    }

    @SuppressLint({"ExecutorRegistration"})
    public static final void addPoolingContainerListener(@NotNull View view, @NotNull PoolingContainerListener listener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        m3976a(view).m54069a(listener);
    }

    public static final void callPoolingContainerOnRelease(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Iterator<View> it2 = ViewKt.getAllViews(view).iterator();
        while (it2.hasNext()) {
            m3976a(it2.next()).m54070b();
        }
    }

    public static final void callPoolingContainerOnReleaseForChildren(@NotNull ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Iterator<View> it2 = ViewGroupKt.getChildren(viewGroup).iterator();
        while (it2.hasNext()) {
            m3976a(it2.next()).m54070b();
        }
    }

    public static final boolean isPoolingContainer(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Object tag = view.getTag(f6617b);
        Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public static final boolean isWithinPoolingContainer(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        for (Object obj : ViewKt.getAncestors(view)) {
            if ((obj instanceof View) && isPoolingContainer((View) obj)) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"ExecutorRegistration"})
    public static final void removePoolingContainerListener(@NotNull View view, @NotNull PoolingContainerListener listener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        m3976a(view).m54071c(listener);
    }

    public static final void setPoolingContainer(@NotNull View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setTag(f6617b, Boolean.valueOf(z));
    }
}
