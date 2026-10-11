package com.onyx.galaxy.note.editor.view.popup;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m61528d2 = {"<anonymous>", "", "contentView", "Landroid/view/View;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class PenBoxPopup$doAlphaInAnimation$1 extends Lambda implements Function1<View, Unit> {
    public static final PenBoxPopup$doAlphaInAnimation$1 INSTANCE = new PenBoxPopup$doAlphaInAnimation$1();

    public PenBoxPopup$doAlphaInAnimation$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1(View contentView) {
        Intrinsics.checkNotNullParameter(contentView, "$contentView");
        Animation loadAnimation = AnimationUtils.loadAnimation(ResManager.INSTANCE.getAppContext(), C10651R.anim.popup_in_long);
        contentView.setAnimation(loadAnimation);
        loadAnimation.start();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull final View contentView) {
        Intrinsics.checkNotNullParameter(contentView, "contentView");
        contentView.postOnAnimation(new Runnable() { // from class: com.onyx.galaxy.note.editor.view.popup.a
            @Override // java.lang.Runnable
            public final void run() {
                PenBoxPopup$doAlphaInAnimation$1.invoke$lambda$1(contentView);
            }
        });
    }
}
