package com.onyx.galaxy.note.common.keyboard;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.keyboard.KeyboardHelper;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b1\u00102J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u001e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eJ\u001a\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0018\u001a\u00020\u0017H\u0007J*\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00050\u001a2\b\b\u0002\u0010\u0018\u001a\u00020\u0017H\u0007J\u0006\u0010\u001d\u001a\u00020\u0017J\b\u0010\u001e\u001a\u00020\u0007H\u0002R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010#\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010,R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/¨\u00063"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;", "", "Landroid/content/Context;", "context", "init", "", "release", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnKeyboardStateListener", "Landroid/view/ViewGroup;", "rootLayout", "bindRootLayout", "bindKeyboardInsetsListener", "Landroid/view/View;", "view", "", "from", "to", "setTranslateRule", "", "getTranslateDistance", "removeTranslateRule", "", "withAnimation", "animateUp", "Lkotlin/Function0;", "onFinish", "animateDown", "isInitialized", "e", "a", "Landroid/content/Context;", "b", "Landroid/view/ViewGroup;", "root", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;", "c", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;", "popup", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;", "d", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;", "keyboardInsets", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;", "", C6997f.f39671c, "I", "keyboardHeight", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class KeyboardHelper {

    /* renamed from: a, reason: from kotlin metadata */
    public Context context;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public ViewGroup root;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public KeyboardHookPopup popup;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public KeyboardInsetsListener keyboardInsets;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public KeyboardStateListener listener;

    /* renamed from: f, reason: from kotlin metadata */
    public int keyboardHeight;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void animateDown$default(KeyboardHelper keyboardHelper, View view, Function0 function0, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: com.onyx.galaxy.note.common.keyboard.KeyboardHelper$animateDown$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        if ((i & 4) != 0) {
            z = false;
        }
        keyboardHelper.animateDown(view, function0, z);
    }

    public static /* synthetic */ void animateUp$default(KeyboardHelper keyboardHelper, View view, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        keyboardHelper.animateUp(view, z);
    }

    /* renamed from: c */
    public static final void m45028c(float f, ObjectAnimator objectAnimator, View view, final Function0 onFinish, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(onFinish, "$onFinish");
        Intrinsics.checkNotNullParameter(it2, "it");
        if (Intrinsics.areEqual(it2.getAnimatedValue(), Float.valueOf(f))) {
            objectAnimator.removeAllUpdateListeners();
            view.post(new Runnable() { // from class: com.sunia.HTREnginev2.hui
                @Override // java.lang.Runnable
                public final void run() {
                    KeyboardHelper.m45029d(Function0.this);
                }
            });
        }
    }

    /* renamed from: d */
    public static final void m45029d(Function0 onFinish) {
        Intrinsics.checkNotNullParameter(onFinish, "$onFinish");
        onFinish.invoke();
    }

    @SuppressLint({"ObjectAnimatorBinding"})
    public final void animateDown(@NotNull final View view, @NotNull final Function0<Unit> onFinish, boolean withAnimation) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(onFinish, "onFinish");
        view.clearAnimation();
        if (view.getTag(C10651R.id.tag_key_translate_from) == null) {
            return;
        }
        Object tag = view.getTag(C10651R.id.tag_key_translate_from);
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Float");
        final float floatValue = ((Float) tag).floatValue();
        if (!withAnimation) {
            view.setTranslationY(floatValue);
            onFinish.invoke();
            return;
        }
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationY", view.getTranslationY(), floatValue);
        ofFloat.setDuration(ResManager.INSTANCE.getLong(C10651R.integer.keyboard_open_duration));
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.iui
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                KeyboardHelper.m45028c(floatValue, ofFloat, view, onFinish, valueAnimator);
            }
        });
        ofFloat.start();
    }

    @SuppressLint({"ObjectAnimatorBinding"})
    public final void animateUp(@NotNull View view, boolean withAnimation) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.clearAnimation();
        Object tag = view.getTag(C10651R.id.tag_key_translate_from);
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) tag).floatValue();
        Object tag2 = view.getTag(C10651R.id.tag_key_translate_to);
        Intrinsics.checkNotNull(tag2, "null cannot be cast to non-null type kotlin.Float");
        float floatValue2 = ((Float) tag2).floatValue();
        if (!withAnimation) {
            view.setTranslationY(floatValue2);
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationY", floatValue, floatValue2);
        Intrinsics.checkNotNullExpressionValue(ofFloat, "ofFloat(...)");
        ofFloat.setDuration(ResManager.INSTANCE.getLong(C10651R.integer.keyboard_open_duration));
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.start();
    }

    @NotNull
    public final KeyboardHelper bindKeyboardInsetsListener(@NotNull ViewGroup rootLayout) {
        Intrinsics.checkNotNullParameter(rootLayout, "rootLayout");
        this.root = rootLayout;
        KeyboardInsetsListener keyboardInsetsListener = new KeyboardInsetsListener(rootLayout);
        this.keyboardInsets = keyboardInsetsListener;
        keyboardInsetsListener.setKeyboardStateListener(m45030e());
        return this;
    }

    @NotNull
    public final KeyboardHelper bindRootLayout(@NotNull ViewGroup rootLayout) {
        Intrinsics.checkNotNullParameter(rootLayout, "rootLayout");
        this.root = rootLayout;
        Context context = this.context;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
            context = null;
        }
        KeyboardHookPopup keyboardHookPopup = new KeyboardHookPopup(context, rootLayout);
        this.popup = keyboardHookPopup;
        keyboardHookPopup.setKeyboardStateListener(m45030e());
        return this;
    }

    /* renamed from: e */
    public final KeyboardStateListener m45030e() {
        return new KeyboardStateListener() { // from class: com.onyx.galaxy.note.common.keyboard.KeyboardHelper$getKeyboardStateListener$1
            @Override // com.onyx.galaxy.note.common.keyboard.KeyboardStateListener
            public void onKeyboardClose() {
                KeyboardStateListener keyboardStateListener;
                keyboardStateListener = KeyboardHelper.this.listener;
                if (keyboardStateListener != null) {
                    keyboardStateListener.onKeyboardClose();
                }
            }

            @Override // com.onyx.galaxy.note.common.keyboard.KeyboardStateListener
            public void onKeyboardOpen(int keyboardHeight) {
                KeyboardStateListener keyboardStateListener;
                KeyboardHelper.this.keyboardHeight = keyboardHeight;
                keyboardStateListener = KeyboardHelper.this.listener;
                if (keyboardStateListener != null) {
                    keyboardStateListener.onKeyboardOpen(keyboardHeight);
                }
            }
        };
    }

    public final float getTranslateDistance(@NotNull View view) {
        Object tag;
        Intrinsics.checkNotNullParameter(view, "view");
        Object tag2 = view.getTag(C10651R.id.tag_key_translate_from);
        if (tag2 == null || (tag = view.getTag(C10651R.id.tag_key_translate_to)) == null) {
            return 0.0f;
        }
        return Math.abs(((Float) tag).floatValue() - ((Float) tag2).floatValue());
    }

    @NotNull
    public final KeyboardHelper init(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        return this;
    }

    public final boolean isInitialized() {
        return this.context != null;
    }

    public final void release() {
        KeyboardHookPopup keyboardHookPopup = this.popup;
        if (keyboardHookPopup != null) {
            keyboardHookPopup.dismiss();
        }
        KeyboardHookPopup keyboardHookPopup2 = this.popup;
        if (keyboardHookPopup2 != null) {
            keyboardHookPopup2.release();
        }
        KeyboardInsetsListener keyboardInsetsListener = this.keyboardInsets;
        if (keyboardInsetsListener != null) {
            keyboardInsetsListener.release();
        }
        this.keyboardInsets = null;
        this.listener = null;
        this.popup = null;
        this.root = null;
    }

    public final void removeTranslateRule(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setTag(C10651R.id.tag_key_translate_from, null);
        view.setTag(C10651R.id.tag_key_translate_to, null);
    }

    @NotNull
    public final KeyboardHelper setOnKeyboardStateListener(@Nullable KeyboardStateListener listener) {
        this.listener = listener;
        return this;
    }

    public final void setTranslateRule(@NotNull View view, @NotNull Number from, @NotNull Number to) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        view.setTag(C10651R.id.tag_key_translate_from, Float.valueOf(from.floatValue()));
        view.setTag(C10651R.id.tag_key_translate_to, Float.valueOf(to.floatValue()));
    }
}
