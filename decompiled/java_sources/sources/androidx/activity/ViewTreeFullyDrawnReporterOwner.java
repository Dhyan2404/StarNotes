package androidx.activity;

import android.view.View;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u0013\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007¢\u0006\u0002\b\u0003\u001a\u0019\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0001H\u0007¢\u0006\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"findViewTreeFullyDrawnReporterOwner", "Landroidx/activity/FullyDrawnReporterOwner;", "Landroid/view/View;", "get", "setViewTreeFullyDrawnReporterOwner", "", "fullyDrawnReporterOwner", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "activity_release"}, m61529k = 2, m61530mv = {1, 8, 0}, m61532xi = 48)
@JvmName(name = "ViewTreeFullyDrawnReporterOwner")
/* loaded from: classes3.dex */
public final class ViewTreeFullyDrawnReporterOwner {
    @JvmName(name = "get")
    @Nullable
    public static final FullyDrawnReporterOwner get(@NotNull View view) {
        Sequence generateSequence;
        Sequence mapNotNull;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(view, "<this>");
        generateSequence = SequencesKt__SequencesKt.generateSequence(view, (Function1<? super View, ? extends View>) ((Function1<? super Object, ? extends Object>) new Function1<View, View>() { // from class: androidx.activity.ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$1
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
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(generateSequence, new Function1<View, FullyDrawnReporterOwner>() { // from class: androidx.activity.ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$2
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final FullyDrawnReporterOwner invoke(@NotNull View it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Object tag = it2.getTag(C0101R.id.report_drawn);
                if (tag instanceof FullyDrawnReporterOwner) {
                    return (FullyDrawnReporterOwner) tag;
                }
                return null;
            }
        });
        firstOrNull = SequencesKt___SequencesKt.firstOrNull(mapNotNull);
        return (FullyDrawnReporterOwner) firstOrNull;
    }

    @JvmName(name = ExtensionNamespaceContext.EXSLT_SET_PREFIX)
    public static final void set(@NotNull View view, @NotNull FullyDrawnReporterOwner fullyDrawnReporterOwner) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(fullyDrawnReporterOwner, "fullyDrawnReporterOwner");
        view.setTag(C0101R.id.report_drawn, fullyDrawnReporterOwner);
    }
}
