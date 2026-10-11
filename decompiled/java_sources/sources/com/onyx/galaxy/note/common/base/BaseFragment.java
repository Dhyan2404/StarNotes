package com.onyx.galaxy.note.common.base;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.galaxy.note.common.extension.LifecycleEventListener;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b(\u0010)J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J$\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u001a\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u000f\u001a\u00020\u0005H\u0016J\b\u0010\u0010\u001a\u00020\u0005H\u0016J\b\u0010\u0011\u001a\u00020\u0005H\u0016J\b\u0010\u0012\u001a\u00020\u0005H\u0016J\b\u0010\u0013\u001a\u00020\u0005H\u0016J\b\u0010\u0014\u001a\u00020\u0005H\u0016J\u001a\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\b\u0010\u001a\u001a\u00020\u0005H\u0002R\"\u0010\u001c\u001a\u00020\u001b8\u0016@\u0016X\u0096.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010'\u001a\u00020\"8\u0010X\u0090D¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&¨\u0006*"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onStart", "onPause", "onStop", "onResume", "onDestroy", "onDestroyView", "root", "setContentView", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "k0", "Landroidx/lifecycle/Lifecycle$Event;", "stateEvent", "Landroidx/lifecycle/Lifecycle$Event;", "getStateEvent", "()Landroidx/lifecycle/Lifecycle$Event;", "setStateEvent", "(Landroidx/lifecycle/Lifecycle$Event;)V", "", "c1", Constants.HASIDCALL_INDEX_SIG, "getReloadLayoutOnConfigurationChanged$note_overseasRelease", Constants.BOOLEAN_VALUE_SIG, "reloadLayoutOnConfigurationChanged", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseFragment.kt\ncom/onyx/galaxy/note/common/base/BaseFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"})
/* loaded from: classes17.dex */
public class BaseFragment extends Fragment implements LifecycleEventListener {

    /* renamed from: c1, reason: from kotlin metadata */
    public final boolean reloadLayoutOnConfigurationChanged;
    public Lifecycle.Event stateEvent;

    /* renamed from: getReloadLayoutOnConfigurationChanged$note_overseasRelease, reason: from getter */
    public boolean getReloadLayoutOnConfigurationChanged() {
        return this.reloadLayoutOnConfigurationChanged;
    }

    @Override // com.onyx.galaxy.note.common.extension.LifecycleEventListener
    @NotNull
    public Lifecycle.Event getStateEvent() {
        Lifecycle.Event event = this.stateEvent;
        if (event != null) {
            return event;
        }
        Intrinsics.throwUninitializedPropertyAccessException("stateEvent");
        return null;
    }

    @Override // com.onyx.galaxy.note.common.extension.LifecycleEventListener
    public boolean isAtLeast(@NotNull Lifecycle.Event event) {
        return LifecycleEventListener.DefaultImpls.isAtLeast(this, event);
    }

    /* renamed from: k0 */
    public final void m44985k0() {
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), getStateEvent().name(), new Object[0]);
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        if (getReloadLayoutOnConfigurationChanged()) {
            LayoutInflater from = LayoutInflater.from(requireActivity());
            View view = getView();
            ViewGroup viewGroup = view != null ? (ViewGroup) view : null;
            Intrinsics.checkNotNull(from);
            View contentView = setContentView(from, viewGroup);
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(contentView);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063335, this, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return setContentView(inflater, container);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        setStateEvent(Lifecycle.Event.ON_DESTROY);
        m44985k0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "onDestroyView", new Object[0]);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        setStateEvent(Lifecycle.Event.ON_PAUSE);
        m44985k0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        setStateEvent(Lifecycle.Event.ON_RESUME);
        m44985k0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        setStateEvent(Lifecycle.Event.ON_START);
        m44985k0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        setStateEvent(Lifecycle.Event.ON_STOP);
        m44985k0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "onViewCreated", new Object[0]);
    }

    @NotNull
    public View setContentView(@NotNull LayoutInflater inflater, @Nullable ViewGroup root) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return new FrameLayout(requireActivity());
    }

    @Override // com.onyx.galaxy.note.common.extension.LifecycleEventListener
    public void setStateEvent(@NotNull Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(event, "<set-?>");
        this.stateEvent = event;
    }
}
