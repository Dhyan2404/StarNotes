package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.content.Context;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.EyesComfortManager;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, m61528d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SettingsMoreFragment$initListener$4 extends Lambda implements Function0<Boolean> {
    final /* synthetic */ SettingsMoreFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsMoreFragment$initListener$4(SettingsMoreFragment settingsMoreFragment) {
        super(0);
        this.this$0 = settingsMoreFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(boolean z) {
        EyesComfortManager.INSTANCE.toggle();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final Boolean invoke() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context requireContext = this.this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestFloatingWindowPermission(requireContext, resManager.getStringSafely(permissionRequestConst.getPERMISSION_FLOATING_EYES_COMFORT_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_FLOATING_EYES_COMFORT_INTENT_NAME())).build(), new Consumer() { // from class: com.onyx.galaxy.note.settings.ui.fragment.d
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SettingsMoreFragment$initListener$4.invoke$lambda$0(((Boolean) obj).booleanValue());
            }
        }).subscribe();
        return Boolean.FALSE;
    }
}
