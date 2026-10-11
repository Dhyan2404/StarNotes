package com.onyx.galaxy.note.common.keyboard;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.common.keyboard.KeyboardHookPopup;
import com.onyx.galaxy.note.editor.event.KeyboardCloseEvent;
import com.onyx.galaxy.note.editor.event.KeyboardOpenEvent;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u000e\u0012\u0006\u0010\u0018\u001a\u00020\t¢\u0006\u0004\b+\u0010,J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0006\u0010\u0005\u001a\u00020\u0003J\u0010\u0010\b\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\u0003H\u0002J\b\u0010\r\u001a\u00020\u0003H\u0002R\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00020!0'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;", "Landroid/widget/PopupWindow;", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "", "onGlobalLayout", "release", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setKeyboardStateListener", "Landroid/view/View;", "rootView", "c", "b", "d", "Landroid/content/Context;", "e", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "context", C6997f.f39671c, "Landroid/view/View;", "anchorView", "", C6998g.f39679a, "J", "LAYOUT_CHANGE_FILTER_TIME_MS", "", C6999h.f39688c, "I", "maxHeight", "", "i", Constants.HASIDCALL_INDEX_SIG, "isKeyboardOpen", "j", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;", "Lcom/onyx/android/sdk/base/rx/RxFilter;", C4921e.f26537n, "Lcom/onyx/android/sdk/base/rx/RxFilter;", "layoutChangeFilter", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class KeyboardHookPopup extends PopupWindow implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final View anchorView;

    /* renamed from: g, reason: from kotlin metadata */
    public final long LAYOUT_CHANGE_FILTER_TIME_MS;

    /* renamed from: h, reason: from kotlin metadata */
    public int maxHeight;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean isKeyboardOpen;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public KeyboardStateListener listener;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public RxFilter<Boolean> layoutChangeFilter;

    /* renamed from: com.onyx.galaxy.note.common.keyboard.KeyboardHookPopup$a */
    /* loaded from: classes9.dex */
    public static final class C11622a<T> implements Consumer {
        public C11622a() {
        }

        /* renamed from: a */
        public final void m45036a(boolean z) {
            KeyboardHookPopup.this.m45033b();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m45036a(((Boolean) obj).booleanValue());
        }
    }

    public KeyboardHookPopup(@NotNull Context context, @NotNull View anchorView) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        this.context = context;
        this.anchorView = anchorView;
        this.LAYOUT_CHANGE_FILTER_TIME_MS = 100L;
        this.layoutChangeFilter = new RxFilter<>();
        setWidth(0);
        setHeight(-1);
        setBackgroundDrawable(new ColorDrawable(0));
        setSoftInputMode(16);
        setInputMethodMode(1);
        setTouchable(false);
        setContentView(new View(this.context));
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        m45034c(contentView);
        m45035d();
    }

    /* renamed from: e */
    public static final void m45032e(KeyboardHookPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (ContextKt.isActivityAlive(this$0.context)) {
            this$0.showAtLocation(this$0.anchorView, 0, 0, 0);
        }
    }

    /* renamed from: b */
    public final void m45033b() {
        Rect rect = new Rect();
        getContentView().getWindowVisibleDisplayFrame(rect);
        int height = ViewLocator.INSTANCE.getApplicationSize().getHeight();
        int intValue = ((Number) MathUtils.INSTANCE.atMost(Integer.valueOf(this.maxHeight), Integer.valueOf(height))).intValue();
        this.maxHeight = intValue;
        int i = rect.bottom;
        if (i > intValue) {
            this.maxHeight = i;
        }
        int i2 = this.maxHeight - i;
        boolean z = i2 > height / 4;
        boolean z2 = this.isKeyboardOpen;
        if (!z2 && z) {
            this.isKeyboardOpen = true;
            KeyboardStateListener keyboardStateListener = this.listener;
            if (keyboardStateListener != null) {
                keyboardStateListener.onKeyboardOpen(i2);
            }
            GlobalBundle.INSTANCE.postEvent(new KeyboardOpenEvent(i2));
            return;
        }
        if (!z2 || z) {
            return;
        }
        this.isKeyboardOpen = false;
        KeyboardStateListener keyboardStateListener2 = this.listener;
        if (keyboardStateListener2 != null) {
            keyboardStateListener2.onKeyboardClose();
        }
        GlobalBundle.INSTANCE.postEvent(KeyboardCloseEvent.INSTANCE);
    }

    /* renamed from: c */
    public final void m45034c(View rootView) {
        rootView.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.layoutChangeFilter.subscribeDebounce(this.LAYOUT_CHANGE_FILTER_TIME_MS, new C11622a());
    }

    /* renamed from: d */
    public final void m45035d() {
        try {
            this.anchorView.post(new Runnable() { // from class: com.sunia.HTREnginev2.jui
                @Override // java.lang.Runnable
                public final void run() {
                    KeyboardHookPopup.m45032e(KeyboardHookPopup.this);
                }
            });
        } catch (WindowManager.BadTokenException e) {
            Debug.INSTANCE.m32037d("BadTokenException:" + e.getMessage());
        }
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.layoutChangeFilter.onNext(Boolean.TRUE);
    }

    public final void release() {
        getContentView().getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.layoutChangeFilter.dispose();
        this.listener = null;
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void setKeyboardStateListener(@Nullable KeyboardStateListener listener) {
        this.listener = listener;
    }
}
