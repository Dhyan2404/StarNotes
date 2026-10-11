package com.onyx.galaxy.note.common.base;

import android.os.Bundle;
import androidx.annotation.NavigationRes;
import androidx.fragment.app.C1126e;
import androidx.navigation.Navigation;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ActivityNavigationBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014J\b\u0010\b\u001a\u00020\u0007H'J\n\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0014R\"\u0010\u000b\u001a\u00020\n8\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;", "Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;", "", "E", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "", "getNavigationResId", "getStartDestinationArgs", "Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;", "binding", "Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;)V", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public abstract class BaseNavigationActivity extends BaseCompatActivity {
    protected ActivityNavigationBinding binding;

    /* renamed from: E */
    private final void m44986E() {
        Navigation.findNavController(this, C10651R.id.nav_host_fragment_main).setGraph(getNavigationResId(), getStartDestinationArgs());
    }

    @NotNull
    public final ActivityNavigationBinding getBinding() {
        ActivityNavigationBinding activityNavigationBinding = this.binding;
        if (activityNavigationBinding != null) {
            return activityNavigationBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @NavigationRes
    public abstract int getNavigationResId();

    @Nullable
    public Bundle getStartDestinationArgs() {
        return getIntent().getExtras();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063294, this, savedInstanceState);
    }

    public final void setBinding(@NotNull ActivityNavigationBinding activityNavigationBinding) {
        Intrinsics.checkNotNullParameter(activityNavigationBinding, "<set-?>");
        this.binding = activityNavigationBinding;
    }
}
