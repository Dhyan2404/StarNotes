package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.content.res.Configuration;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.universal.editor.config.GlobalDocSettings;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.common.view.SimpleComponentCallbacks;
import com.onyx.galaxy.note.databinding.PopupPageNumFloatPanelBinding;
import com.onyx.galaxy.note.editor.view.popup.PagePanelPopup;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000M\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001+\u0018\u00002\u00020\u0001:\u00012B\u000f\u0012\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b0\u00101J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0002H\u0014J(\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0016\u0010\u000e\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0007H\u0002R\u001b\u0010\u001b\u001a\u00020\u00168FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR$\u0010#\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0016\u0010%\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010$R\u0016\u0010\u0014\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010$R\u001b\u0010*\u001a\u00020'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\u0018\u001a\u0004\b(\u0010)R\u0014\u0010-\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010,¨\u00063"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "onShow", "onDismiss", "Landroid/view/View;", "parent", "", NotificationCompat.WearableExtender.f5060z, "x", "y", "showAtLocation", "newPageIndex", "newPageCount", "notifyInfoChange", "view", "", "show", "s", "w", "pageIndex", "v", "Lcom/onyx/galaxy/note/databinding/PopupPageNumFloatPanelBinding;", "q", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupPageNumFloatPanelBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup$PageJumpListener;", "r", "Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup$PageJumpListener;", "getPageJumpListener", "()Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup$PageJumpListener;", "setPageJumpListener", "(Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup$PageJumpListener;)V", "pageJumpListener", "I", "pageCount", "t", "", "u", "()J", "delayTime", "com/onyx/galaxy/note/editor/view/popup/PagePanelPopup$configurationChangedListener$1", "Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup$configurationChangedListener$1;", "configurationChangedListener", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "PageJumpListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PagePanelPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public PageJumpListener pageJumpListener;

    /* renamed from: s, reason: from kotlin metadata */
    public int pageCount;

    /* renamed from: t, reason: from kotlin metadata */
    public int pageIndex;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Lazy delayTime;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final PagePanelPopup$configurationChangedListener$1 configurationChangedListener;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup$PageJumpListener;", "", "pageJump", "", "pageIndex", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface PageJumpListener {
        void pageJump(int pageIndex);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.onyx.galaxy.note.editor.view.popup.PagePanelPopup$configurationChangedListener$1] */
    public PagePanelPopup(@NotNull final Context context) {
        super(context, null, 2, null);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupPageNumFloatPanelBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.PagePanelPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupPageNumFloatPanelBinding invoke() {
                return PopupPageNumFloatPanelBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        this.pageCount = 1;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Long>() { // from class: com.onyx.galaxy.note.editor.view.popup.PagePanelPopup$delayTime$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Long invoke() {
                return Long.valueOf(ResManager.INSTANCE.getInteger(C10651R.integer.times_100));
            }
        });
        this.delayTime = lazy2;
        this.configurationChangedListener = new SimpleComponentCallbacks() { // from class: com.onyx.galaxy.note.editor.view.popup.PagePanelPopup$configurationChangedListener$1
            @Override // com.onyx.galaxy.note.common.view.SimpleComponentCallbacks, android.content.ComponentCallbacks
            public void onConfigurationChanged(@NotNull Configuration newConfig) {
                Intrinsics.checkNotNullParameter(newConfig, "newConfig");
                PagePanelPopup.this.m49137s();
            }
        };
        setInputMethodMode(1);
        setSoftInputMode(16);
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        getBinding().pageGoTo.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.gtk
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                PagePanelPopup.m49132p(PagePanelPopup.this, view, z);
            }
        });
        getBinding().pageGoTo.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.htk
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m49133q;
                m49133q = PagePanelPopup.m49133q(PagePanelPopup.this, textView, i, keyEvent);
                return m49133q;
            }
        });
        getBinding().pageJump.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.itk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PagePanelPopup.m49134r(PagePanelPopup.this, view);
            }
        });
    }

    /* renamed from: p */
    public static final void m49132p(PagePanelPopup this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.getBinding().pageGoTo.setHint("");
        } else {
            this$0.getBinding().pageGoTo.setHint(String.valueOf(this$0.pageIndex));
        }
    }

    /* renamed from: q */
    public static final boolean m49133q(PagePanelPopup this$0, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 6 && (keyEvent == null || keyEvent.getKeyCode() != 66)) {
            return false;
        }
        View contentView = this$0.getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        this$0.m49141y(contentView, false);
        this$0.getBinding().pageJump.performClick();
        return true;
    }

    /* renamed from: r */
    public static final void m49134r(PagePanelPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49140w();
    }

    /* renamed from: t */
    public static final void m49135t(PagePanelPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int screenWidth = GlobalDocSettings.INSTANCE.getScrollerHorizontalGravity() == 8388613 ? (int) (ResManager.INSTANCE.getScreenWidth() - this$0.getContentView().getRootView().getWidth()) : 0;
        View root = this$0.getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        this$0.update(screenWidth, ViewKt.getLocationOnScreen(root)[1], this$0.getContentView().getRootView().getWidth(), this$0.getContentView().getRootView().getHeight());
    }

    /* renamed from: x */
    public static final void m49136x(PagePanelPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().pageGoTo.requestFocus();
        TintEditText pageGoTo = this$0.getBinding().pageGoTo;
        Intrinsics.checkNotNullExpressionValue(pageGoTo, "pageGoTo");
        this$0.m49141y(pageGoTo, true);
    }

    @NotNull
    public final PopupPageNumFloatPanelBinding getBinding() {
        return (PopupPageNumFloatPanelBinding) this.binding.getValue();
    }

    @Nullable
    public final PageJumpListener getPageJumpListener() {
        return this.pageJumpListener;
    }

    public final void notifyInfoChange(int newPageIndex, int newPageCount) {
        this.pageIndex = newPageIndex;
        this.pageCount = newPageCount;
        getBinding().pageGoTo.setHint(String.valueOf(this.pageIndex + 1));
        getBinding().pageGoTo.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(String.valueOf(this.pageCount).length())});
        getBinding().pageCount.setText(String.valueOf(this.pageCount));
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onDismiss() {
        super.onDismiss();
        getContext().unregisterComponentCallbacks(this.configurationChangedListener);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        super.onShow();
        getContext().registerComponentCallbacks(this.configurationChangedListener);
    }

    /* renamed from: s */
    public final void m49137s() {
        getContentView().post(new Runnable() { // from class: com.sunia.HTREnginev2.etk
            @Override // java.lang.Runnable
            public final void run() {
                PagePanelPopup.m49135t(PagePanelPopup.this);
            }
        });
    }

    public final void setPageJumpListener(@Nullable PageJumpListener pageJumpListener) {
        this.pageJumpListener = pageJumpListener;
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void showAtLocation(@NotNull View parent, int gravity, int x, int y) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        super.showAtLocation(parent, gravity, x, y);
        getBinding().pageGoTo.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.ftk
            @Override // java.lang.Runnable
            public final void run() {
                PagePanelPopup.m49136x(PagePanelPopup.this);
            }
        }, m49138u());
    }

    /* renamed from: u */
    public final long m49138u() {
        return ((Number) this.delayTime.getValue()).longValue();
    }

    /* renamed from: v */
    public final void m49139v(int pageIndex) {
        PageJumpListener pageJumpListener = this.pageJumpListener;
        if (pageJumpListener != null) {
            pageJumpListener.pageJump(pageIndex);
        }
    }

    /* renamed from: w */
    public final void m49140w() {
        CharSequence trim;
        TintEditText tintEditText = getBinding().pageGoTo;
        trim = StringsKt__StringsKt.trim((CharSequence) tintEditText.getText().toString());
        String obj = trim.toString();
        int i = 0;
        int parseInt = !TextUtils.isEmpty(obj) && TextUtils.isDigitsOnly(obj) ? Integer.parseInt(obj) - 1 : this.pageIndex;
        if (parseInt >= 0) {
            int i2 = this.pageCount;
            i = parseInt >= i2 ? i2 - 1 : parseInt;
        }
        tintEditText.setText(String.valueOf(i + 1));
        m49139v(i);
        dismiss();
    }

    /* renamed from: y */
    public final void m49141y(View view, boolean show) {
        Object systemService = getContext().getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        if (show) {
            inputMethodManager.showSoftInput(view, 1);
        } else {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }
}
