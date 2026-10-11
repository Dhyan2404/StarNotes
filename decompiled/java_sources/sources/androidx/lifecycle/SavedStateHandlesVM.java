package androidx.lifecycle;

import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bR#\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Landroidx/lifecycle/SavedStateHandlesVM;", "Landroidx/lifecycle/ViewModel;", "", "", "Landroidx/lifecycle/SavedStateHandle;", C6999h.f39688c, "Ljava/util/Map;", "getHandles", "()Ljava/util/Map;", "handles", Constants.CONSTRUCTOR_NAME, "()V", "lifecycle-viewmodel-savedstate_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class SavedStateHandlesVM extends ViewModel {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Map<String, SavedStateHandle> handles = new LinkedHashMap();

    @NotNull
    public final Map<String, SavedStateHandle> getHandles() {
        return this.handles;
    }
}
