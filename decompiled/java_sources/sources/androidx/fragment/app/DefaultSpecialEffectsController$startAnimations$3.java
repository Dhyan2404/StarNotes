package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.DefaultSpecialEffectsController$startAnimations$3;
import androidx.fragment.app.SpecialEffectsController;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\b"}, m61528d2 = {"androidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3", "Landroid/view/animation/Animation$AnimationListener;", "onAnimationEnd", "", GlideExecutor.f14795k, "Landroid/view/animation/Animation;", "onAnimationRepeat", "onAnimationStart", "fragment_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes3.dex */
public final class DefaultSpecialEffectsController$startAnimations$3 implements Animation.AnimationListener {

    /* renamed from: e */
    public final /* synthetic */ SpecialEffectsController.Operation f7334e;

    /* renamed from: f */
    public final /* synthetic */ DefaultSpecialEffectsController f7335f;

    /* renamed from: g */
    public final /* synthetic */ View f7336g;

    /* renamed from: h */
    public final /* synthetic */ DefaultSpecialEffectsController.C1071a f7337h;

    public DefaultSpecialEffectsController$startAnimations$3(SpecialEffectsController.Operation operation, DefaultSpecialEffectsController defaultSpecialEffectsController, View view, DefaultSpecialEffectsController.C1071a c1071a) {
        this.f7334e = operation;
        this.f7335f = defaultSpecialEffectsController;
        this.f7336g = view;
        this.f7337h = c1071a;
    }

    /* renamed from: b */
    public static final void m4528b(DefaultSpecialEffectsController this$0, View view, DefaultSpecialEffectsController.C1071a animationInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(animationInfo, "$animationInfo");
        this$0.getCom.sunia.HTREnginev2.gon.W java.lang.String().endViewTransition(view);
        animationInfo.m4517a();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(@NotNull Animation animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        ViewGroup viewGroup = this.f7335f.getCom.sunia.HTREnginev2.gon.W java.lang.String();
        final DefaultSpecialEffectsController defaultSpecialEffectsController = this.f7335f;
        final View view = this.f7336g;
        final DefaultSpecialEffectsController.C1071a c1071a = this.f7337h;
        viewGroup.post(new Runnable() { // from class: com.sunia.HTREnginev2.q0f
            @Override // java.lang.Runnable
            public final void run() {
                DefaultSpecialEffectsController$startAnimations$3.m4528b(DefaultSpecialEffectsController.this, view, c1071a);
            }
        });
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Animation from operation " + this.f7334e + " has ended.");
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(@NotNull Animation animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(@NotNull Animation animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Animation from operation " + this.f7334e + " has reached onAnimationStart.");
        }
    }
}
