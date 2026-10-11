package androidx.navigation;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.IdRes;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.ActivityCompat;
import androidx.navigation.NavDirections;
import androidx.navigation.Navigation;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.commonv2.global.HWREngineConstant;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0007J\u001e\u0010\u000e\u001a\u00020\r2\b\b\u0001\u0010\n\u001a\u00020\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u001a\u0010\u0013\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¨\u0006\u0018"}, m61528d2 = {"Landroidx/navigation/Navigation;", "", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "", "viewId", "Landroidx/navigation/NavController;", "findNavController", "Landroid/view/View;", "view", HWREngineConstant.Constant.RES_ID, "Landroid/os/Bundle;", "args", "Landroid/view/View$OnClickListener;", "createNavigateOnClickListener", "Landroidx/navigation/NavDirections;", "directions", "controller", "", "setViewNavController", "e", C6997f.f39671c, Constants.CONSTRUCTOR_NAME, "()V", "navigation-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class Navigation {

    @NotNull
    public static final Navigation INSTANCE = new Navigation();

    /* renamed from: c */
    public static final void m5182c(int i, Bundle bundle, View view) {
        Intrinsics.checkNotNullExpressionValue(view, "view");
        findNavController(view).navigate(i, bundle);
    }

    @JvmStatic
    @JvmOverloads
    @NotNull
    public static final View.OnClickListener createNavigateOnClickListener(@IdRes int i) {
        return createNavigateOnClickListener$default(i, null, 2, null);
    }

    public static /* synthetic */ View.OnClickListener createNavigateOnClickListener$default(int i, Bundle bundle, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bundle = null;
        }
        return createNavigateOnClickListener(i, bundle);
    }

    /* renamed from: d */
    public static final void m5183d(NavDirections directions, View view) {
        Intrinsics.checkNotNullParameter(directions, "$directions");
        Intrinsics.checkNotNullExpressionValue(view, "view");
        findNavController(view).navigate(directions);
    }

    @JvmStatic
    @NotNull
    public static final NavController findNavController(@NotNull Activity activity, @IdRes int viewId) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        View requireViewById = ActivityCompat.requireViewById(activity, viewId);
        Intrinsics.checkNotNullExpressionValue(requireViewById, "requireViewById<View>(activity, viewId)");
        NavController m5184e = INSTANCE.m5184e(requireViewById);
        if (m5184e != null) {
            return m5184e;
        }
        throw new IllegalStateException("Activity " + activity + " does not have a NavController set on " + viewId);
    }

    @JvmStatic
    public static final void setViewNavController(@NotNull View view, @Nullable NavController controller) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setTag(C1224R.id.nav_controller_view_tag, controller);
    }

    /* renamed from: e */
    public final NavController m5184e(View view) {
        Sequence generateSequence;
        Sequence mapNotNull;
        Object firstOrNull;
        generateSequence = SequencesKt__SequencesKt.generateSequence(view, (Function1<? super View, ? extends View>) ((Function1<? super Object, ? extends Object>) new Function1<View, View>() { // from class: androidx.navigation.Navigation$findViewNavController$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final View invoke(@NotNull View it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Object parent = it2.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            }
        }));
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(generateSequence, new Function1<View, NavController>() { // from class: androidx.navigation.Navigation$findViewNavController$2
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final NavController invoke(@NotNull View it2) {
                NavController m5185f;
                Intrinsics.checkNotNullParameter(it2, "it");
                m5185f = Navigation.INSTANCE.m5185f(it2);
                return m5185f;
            }
        });
        firstOrNull = SequencesKt___SequencesKt.firstOrNull(mapNotNull);
        return (NavController) firstOrNull;
    }

    /* renamed from: f */
    public final NavController m5185f(View view) {
        Object tag = view.getTag(C1224R.id.nav_controller_view_tag);
        if (tag instanceof WeakReference) {
            return (NavController) ((WeakReference) tag).get();
        }
        if (tag instanceof NavController) {
            return (NavController) tag;
        }
        return null;
    }

    @JvmStatic
    @JvmOverloads
    @NotNull
    public static final View.OnClickListener createNavigateOnClickListener(@IdRes final int resId, @Nullable final Bundle args) {
        return new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ysj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Navigation.m5182c(resId, args, view);
            }
        };
    }

    @JvmStatic
    @NotNull
    public static final View.OnClickListener createNavigateOnClickListener(@NotNull final NavDirections directions) {
        Intrinsics.checkNotNullParameter(directions, "directions");
        return new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xsj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Navigation.m5183d(NavDirections.this, view);
            }
        };
    }

    @JvmStatic
    @NotNull
    public static final NavController findNavController(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        NavController m5184e = INSTANCE.m5184e(view);
        if (m5184e != null) {
            return m5184e;
        }
        throw new IllegalStateException("View " + view + " does not have a NavController set");
    }
}
