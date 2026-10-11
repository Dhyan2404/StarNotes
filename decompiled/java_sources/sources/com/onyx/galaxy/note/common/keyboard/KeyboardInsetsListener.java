package com.onyx.galaxy.note.common.keyboard;

import android.graphics.Rect;
import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.editor.event.KeyboardCloseEvent;
import com.onyx.galaxy.note.editor.event.KeyboardOpenEvent;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b#\u0010$J\u0018\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0006\u0010\b\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tJ\b\u0010\f\u001a\u00020\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082D¢\u0006\u0006\n\u0004\b\f\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001c\u0010\"\u001a\b\u0012\u0004\u0012\u00020\r0\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;", "Landroidx/core/view/OnApplyWindowInsetsListener;", "Landroid/view/View;", "v", "Landroidx/core/view/WindowInsetsCompat;", "insets", "onApplyWindowInsets", "", "release", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setKeyboardStateListener", "b", "Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;", "insetsBean", "a", "Landroid/view/View;", "rootView", "", "J", "LAYOUT_CHANGE_FILTER_TIME_MS", "", "c", Constants.HASIDCALL_INDEX_SIG, "isKeyboardOpen", "", "d", "I", "prekeyboardHeight", "e", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;", "Lcom/onyx/android/sdk/base/rx/RxFilter;", C6997f.f39671c, "Lcom/onyx/android/sdk/base/rx/RxFilter;", "layoutChangeFilter", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class KeyboardInsetsListener implements OnApplyWindowInsetsListener {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final View rootView;

    /* renamed from: b, reason: from kotlin metadata */
    public final long LAYOUT_CHANGE_FILTER_TIME_MS;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isKeyboardOpen;

    /* renamed from: d, reason: from kotlin metadata */
    public int prekeyboardHeight;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public KeyboardStateListener listener;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public RxFilter<WindowInsetsBean> layoutChangeFilter;

    /* renamed from: com.onyx.galaxy.note.common.keyboard.KeyboardInsetsListener$a */
    /* loaded from: classes9.dex */
    public static final class C11623a<T> implements Consumer {
        public C11623a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull WindowInsetsBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            KeyboardInsetsListener.this.m45037a(it2);
        }
    }

    public KeyboardInsetsListener(@NotNull View rootView) {
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        this.rootView = rootView;
        this.LAYOUT_CHANGE_FILTER_TIME_MS = 100L;
        this.layoutChangeFilter = new RxFilter<>();
        m45038b();
    }

    /* renamed from: a */
    public final void m45037a(WindowInsetsBean insetsBean) {
        int imeHeight = insetsBean.getImeHeight();
        boolean imeVisible = insetsBean.getImeVisible();
        if (((this.isKeyboardOpen && imeHeight == this.prekeyboardHeight && !ViewLocator.INSTANCE.getActivity(this.rootView).isInMultiWindowMode()) ? false : true) && imeVisible) {
            this.isKeyboardOpen = true;
            this.prekeyboardHeight = imeHeight;
            KeyboardStateListener keyboardStateListener = this.listener;
            if (keyboardStateListener != null) {
                keyboardStateListener.onKeyboardOpen(imeHeight);
            }
            GlobalBundle.INSTANCE.postEvent(new KeyboardOpenEvent(imeHeight));
            return;
        }
        if (!this.isKeyboardOpen || imeVisible) {
            return;
        }
        this.isKeyboardOpen = false;
        this.prekeyboardHeight = 0;
        KeyboardStateListener keyboardStateListener2 = this.listener;
        if (keyboardStateListener2 != null) {
            keyboardStateListener2.onKeyboardClose();
        }
        GlobalBundle.INSTANCE.postEvent(KeyboardCloseEvent.INSTANCE);
    }

    /* renamed from: b */
    public final void m45038b() {
        ViewCompat.setOnApplyWindowInsetsListener(this.rootView, this);
        this.layoutChangeFilter.subscribeDebounce(this.LAYOUT_CHANGE_FILTER_TIME_MS, new C11623a());
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    @NotNull
    public WindowInsetsCompat onApplyWindowInsets(@NotNull View v, @NotNull WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        Insets insets3 = insets.getInsets(WindowInsetsCompat.Type.ime());
        Intrinsics.checkNotNullExpressionValue(insets3, "getInsets(...)");
        int max = Math.max(insets2.bottom, insets3.bottom);
        WindowInsetsBean windowInsetsBean = new WindowInsetsBean();
        windowInsetsBean.setImeVisible(insets.isVisible(WindowInsetsCompat.Type.ime()));
        windowInsetsBean.setImeHeight(max);
        windowInsetsBean.setImeRect(new Rect(insets3.left, insets3.top, insets3.right, insets3.bottom));
        Debug.INSTANCE.m32035d(KeyboardInsetsListener.class, "WindowInsets: " + windowInsetsBean + ", system bar: " + insets2, new Object[0]);
        this.layoutChangeFilter.onNext(windowInsetsBean);
        WindowInsetsCompat CONSUMED = WindowInsetsCompat.CONSUMED;
        Intrinsics.checkNotNullExpressionValue(CONSUMED, "CONSUMED");
        return CONSUMED;
    }

    public final void release() {
        ViewCompat.setOnApplyWindowInsetsListener(this.rootView, null);
        this.layoutChangeFilter.dispose();
        this.listener = null;
    }

    public final void setKeyboardStateListener(@Nullable KeyboardStateListener listener) {
        this.listener = listener;
    }
}
