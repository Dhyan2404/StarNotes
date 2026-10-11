package androidx.navigation.p003ui;

import androidx.navigation.p003ui.AppBarConfiguration;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 176)
/* renamed from: androidx.navigation.ui.AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0 */
/* loaded from: classes3.dex */
public final class C1234x56421ee5 implements AppBarConfiguration.OnNavigateUpListener, FunctionAdapter {

    /* renamed from: a */
    public final /* synthetic */ Function0 f8599a;

    public C1234x56421ee5(Function0 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.f8599a = function;
    }

    public final boolean equals(@Nullable Object obj) {
        if ((obj instanceof AppBarConfiguration.OnNavigateUpListener) && (obj instanceof FunctionAdapter)) {
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    @NotNull
    public final Function<?> getFunctionDelegate() {
        return this.f8599a;
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // androidx.navigation.ui.AppBarConfiguration.OnNavigateUpListener
    public final /* synthetic */ boolean onNavigateUp() {
        return ((Boolean) this.f8599a.invoke()).booleanValue();
    }
}
