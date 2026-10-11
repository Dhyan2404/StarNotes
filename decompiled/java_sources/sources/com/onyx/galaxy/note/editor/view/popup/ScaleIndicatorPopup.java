package com.onyx.galaxy.note.editor.view.popup;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.ActivityChooserModel;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.hjq.window.EasyWindow;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.utils.FloatListOption;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.app.ScaleEnableEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleReset;
import com.onyx.android.sdk.universal.editor.events.note.QuitPendingHandlerEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.EasyWindowKt;
import com.onyx.galaxy.note.databinding.LayoutScaleIndicatorBinding;
import com.onyx.galaxy.note.editor.view.popup.ScaleIndicatorPopup;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u0017\u0012\u0006\u0010\"\u001a\u00020\u001d¢\u0006\u0004\b<\u0010=J\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u0005J\b\u0010\u000e\u001a\u00020\u0005H\u0002J\b\u0010\u000f\u001a\u00020\u0005H\u0002J\b\u0010\u0010\u001a\u00020\u0005H\u0002J\b\u0010\u0011\u001a\u00020\u0005H\u0002J\b\u0010\u0012\u001a\u00020\u0005H\u0002J\b\u0010\u0013\u001a\u00020\u0005H\u0002J\b\u0010\u0014\u001a\u00020\u0005H\u0002J\b\u0010\u0015\u001a\u00020\u0005H\u0002J\b\u0010\u0016\u001a\u00020\u0005H\u0002R\u0017\u0010\u001c\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\"\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u001a\u0010*\u001a\u0006\u0012\u0002\b\u00030'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010-\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010.\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010,R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00105\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u0010;\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010,¨\u0006>"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;", "", "", "xOffset", "yOffset", "", "setXYOffset", "", "scale", "show", "dismiss", "", "isShowing", "resetTheme", "l", "q", "r", "m", C4921e.f26537n, C4921e.f26528e, C6997f.f39671c, GoogleApiAvailabilityLight.f29016b, "s", "Landroid/app/Activity;", "a", "Landroid/app/Activity;", "getActivity", "()Landroid/app/Activity;", ActivityChooserModel.f1429r, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "b", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/databinding/LayoutScaleIndicatorBinding;", "c", "Lcom/onyx/galaxy/note/databinding/LayoutScaleIndicatorBinding;", "binding", "Lcom/hjq/window/EasyWindow;", "d", "Lcom/hjq/window/EasyWindow;", "easyWindow", "e", "I", "duration", "measuredWidth", "Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;", C6998g.f39679a, "Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;", "scaleCollectionPopup", C6999h.f39688c, "F", "currentScale", "Lcom/onyx/android/sdk/data/utils/FloatListOption;", "i", "Lcom/onyx/android/sdk/data/utils/FloatListOption;", "scaleList", "j", "collectMaxCount", Constants.CONSTRUCTOR_NAME, "(Landroid/app/Activity;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ScaleIndicatorPopup {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Activity activity;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public LayoutScaleIndicatorBinding binding;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public EasyWindow<?> easyWindow;

    /* renamed from: e, reason: from kotlin metadata */
    public final int duration;

    /* renamed from: f, reason: from kotlin metadata */
    public int measuredWidth;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ScaleCollectionPopup scaleCollectionPopup;

    /* renamed from: h, reason: from kotlin metadata */
    public float currentScale;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public FloatListOption scaleList;

    /* renamed from: j, reason: from kotlin metadata */
    public int collectMaxCount;

    public ScaleIndicatorPopup(@NotNull Activity activity, @NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.activity = activity;
        this.editorBundle = editorBundle;
        LayoutScaleIndicatorBinding inflate = LayoutScaleIndicatorBinding.inflate(LayoutInflater.from(activity));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        int integer = ResManager.INSTANCE.getInteger(C10651R.integer.scale_indicator_duration);
        this.duration = integer;
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        this.scaleList = noteConfigManager.getScaleCollection();
        this.collectMaxCount = noteConfigManager.getScaleCollectionCount().get();
        View root = this.binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        EasyWindow<?> createIndicatorWindow = EasyWindowKt.createIndicatorWindow(activity, root, integer);
        createIndicatorWindow.setOnClickListener(C10651R.id.lock, new EasyWindow.OnClickListener() { // from class: com.sunia.HTREnginev2.i1m
            @Override // com.hjq.window.EasyWindow.OnClickListener
            public final void onClick(EasyWindow easyWindow, View view) {
                ScaleIndicatorPopup.m49361g(ScaleIndicatorPopup.this, easyWindow, view);
            }
        });
        createIndicatorWindow.setOnClickListener(C10651R.id.reset, new EasyWindow.OnClickListener() { // from class: com.sunia.HTREnginev2.j1m
            @Override // com.hjq.window.EasyWindow.OnClickListener
            public final void onClick(EasyWindow easyWindow, View view) {
                ScaleIndicatorPopup.m49362h(ScaleIndicatorPopup.this, easyWindow, view);
            }
        });
        createIndicatorWindow.setOnClickListener(C10651R.id.iv_collection, new EasyWindow.OnClickListener() { // from class: com.sunia.HTREnginev2.k1m
            @Override // com.hjq.window.EasyWindow.OnClickListener
            public final void onClick(EasyWindow easyWindow, View view) {
                ScaleIndicatorPopup.m49363i(ScaleIndicatorPopup.this, easyWindow, view);
            }
        });
        createIndicatorWindow.setOnClickListener(C10651R.id.ll_percent, new EasyWindow.OnClickListener() { // from class: com.sunia.HTREnginev2.l1m
            @Override // com.hjq.window.EasyWindow.OnClickListener
            public final void onClick(EasyWindow easyWindow, View view) {
                ScaleIndicatorPopup.m49364j(ScaleIndicatorPopup.this, easyWindow, view);
            }
        });
        this.easyWindow = createIndicatorWindow;
        m49374s();
    }

    /* renamed from: g */
    public static final void m49361g(ScaleIndicatorPopup this$0, EasyWindow easyWindow, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(easyWindow, "<anonymous parameter 0>");
        this$0.m49372q();
    }

    /* renamed from: h */
    public static final void m49362h(ScaleIndicatorPopup this$0, EasyWindow easyWindow, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(easyWindow, "<anonymous parameter 0>");
        if (Intrinsics.areEqual((Boolean) this$0.binding.lock.getTag(), Boolean.TRUE)) {
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getStringSafely(C10651R.string.disallow_reset_tips), false, 2, (Object) null);
        } else {
            this$0.m49368l();
        }
    }

    /* renamed from: i */
    public static final void m49363i(ScaleIndicatorPopup this$0, EasyWindow easyWindow, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(easyWindow, "<anonymous parameter 0>");
        this$0.m49373r();
    }

    /* renamed from: j */
    public static final void m49364j(ScaleIndicatorPopup this$0, EasyWindow easyWindow, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(easyWindow, "<anonymous parameter 0>");
        this$0.m49371o();
    }

    /* renamed from: p */
    public static final void m49365p(ScaleIndicatorPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.easyWindow.setDuration(this$0.duration);
    }

    public final void dismiss() {
        this.easyWindow.cancel();
        ScaleCollectionPopup scaleCollectionPopup = this.scaleCollectionPopup;
        if (scaleCollectionPopup != null) {
            scaleCollectionPopup.dismiss();
        }
    }

    /* renamed from: f */
    public final void m49366f() {
        TintImageView tintImageView = this.binding.ivCollection;
        boolean isSelected = tintImageView.isSelected();
        boolean contains = this.scaleList.contains(this.currentScale);
        if (contains != isSelected) {
            tintImageView.setSelected(contains);
        }
    }

    @NotNull
    public final Activity getActivity() {
        return this.activity;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    public final boolean isShowing() {
        return this.easyWindow.isShowing();
    }

    /* renamed from: k */
    public final void m49367k() {
        if (this.scaleList.contains(this.currentScale)) {
            this.scaleList.remove(this.currentScale);
            this.binding.ivCollection.setSelected(false);
            ScaleCollectionPopup scaleCollectionPopup = this.scaleCollectionPopup;
            if (scaleCollectionPopup != null) {
                scaleCollectionPopup.updateScaleList();
            }
        }
    }

    /* renamed from: l */
    public final void m49368l() {
        EditorBundleKt.postEvent(this.editorBundle, new QuitPendingHandlerEvent());
        EditorBundle editorBundle = this.editorBundle;
        EditorBundleKt.postEvent(editorBundle, new ScaleReset(EditorBundleKt.currentMinScale(editorBundle), 0.0f, 0.0f, 6, null));
    }

    /* renamed from: m */
    public final void m49369m() {
        m49370n();
        if (this.scaleList.contains(this.currentScale)) {
            return;
        }
        if (this.scaleList.size() >= this.collectMaxCount) {
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getString(C10651R.string.collect_fail, 8), false, 2, (Object) null);
            return;
        }
        this.binding.ivCollection.setSelected(true);
        this.scaleList.add(this.currentScale);
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.collect_success, false, 2, (Object) null);
        ScaleCollectionPopup scaleCollectionPopup = this.scaleCollectionPopup;
        if (scaleCollectionPopup != null) {
            scaleCollectionPopup.updateScaleList();
        }
    }

    /* renamed from: n */
    public final void m49370n() {
        ScaleCollectionPopup scaleCollectionPopup = this.scaleCollectionPopup;
        boolean z = false;
        if (scaleCollectionPopup != null && scaleCollectionPopup.isShowing()) {
            z = true;
        }
        if (z) {
            return;
        }
        this.easyWindow.setDuration(this.duration);
        if (this.easyWindow.isShowing()) {
            return;
        }
        this.easyWindow.show();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (r0.isShowing() == true) goto L8;
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m49371o() {
        /*
            r6 = this;
            com.onyx.galaxy.note.editor.view.popup.ScaleCollectionPopup r0 = r6.scaleCollectionPopup
            r1 = 0
            if (r0 == 0) goto Ld
            boolean r0 = r0.isShowing()
            r2 = 1
            if (r0 != r2) goto Ld
            goto Le
        Ld:
            r2 = r1
        Le:
            if (r2 == 0) goto L18
            com.onyx.galaxy.note.editor.view.popup.ScaleCollectionPopup r6 = r6.scaleCollectionPopup
            if (r6 == 0) goto L17
            r6.dismiss()
        L17:
            return
        L18:
            com.hjq.window.EasyWindow<?> r0 = r6.easyWindow
            r2 = 86400000(0x5265c00, float:7.82218E-36)
            r0.setDuration(r2)
            com.onyx.galaxy.note.editor.view.popup.ScaleCollectionPopup r0 = new com.onyx.galaxy.note.editor.view.popup.ScaleCollectionPopup
            android.app.Activity r2 = r6.activity
            com.onyx.android.sdk.universal.editor.EditorBundle r3 = r6.editorBundle
            float r4 = r6.currentScale
            com.onyx.galaxy.note.editor.view.popup.ScaleIndicatorPopup$showActionPopup$1 r5 = new com.onyx.galaxy.note.editor.view.popup.ScaleIndicatorPopup$showActionPopup$1
            r5.<init>()
            r0.<init>(r2, r3, r4, r5)
            r6.scaleCollectionPopup = r0
            com.sunia.HTREnginev2.m1m r2 = new com.sunia.HTREnginev2.m1m
            r2.<init>()
            r0.setOnDismissListener(r2)
            com.hjq.window.EasyWindow<?> r0 = r6.easyWindow
            android.view.View r0 = com.onyx.galaxy.note.common.extension.EasyWindowKt.getSafeContentView(r0)
            if (r0 == 0) goto L49
            int r0 = r0.getMeasuredWidth()
            int r0 = r0 / 2
            goto L4a
        L49:
            r0 = r1
        L4a:
            com.hjq.window.EasyWindow<?> r2 = r6.easyWindow
            android.view.View r2 = com.onyx.galaxy.note.common.extension.EasyWindowKt.getSafeContentView(r2)
            if (r2 == 0) goto L56
            int r1 = r2.getMeasuredHeight()
        L56:
            com.hjq.window.EasyWindow<?> r2 = r6.easyWindow
            android.view.WindowManager$LayoutParams r2 = r2.getWindowParams()
            int r2 = r2.x
            int r2 = r2 + r0
            com.hjq.window.EasyWindow<?> r0 = r6.easyWindow
            android.view.WindowManager$LayoutParams r0 = r0.getWindowParams()
            int r0 = r0.y
            int r0 = r0 + r1
            com.onyx.galaxy.note.editor.view.popup.ScaleCollectionPopup r1 = r6.scaleCollectionPopup
            if (r1 == 0) goto L7e
            android.app.Activity r6 = r6.activity
            android.view.Window r6 = r6.getWindow()
            android.view.View r6 = r6.getDecorView()
            java.lang.String r3 = "getDecorView(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r3)
            r1.showAsDropDownCenter(r6, r2, r0)
        L7e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.popup.ScaleIndicatorPopup.m49371o():void");
    }

    /* renamed from: q */
    public final void m49372q() {
        Boolean bool = (Boolean) ViewKt.getTagSafely(this.binding.lock);
        boolean booleanValue = bool != null ? bool.booleanValue() : false;
        this.binding.lock.setTag(Boolean.valueOf(!booleanValue));
        this.binding.lock.setImageDrawable(ThemeUtils.getThemeDrawable(!booleanValue ? C10651R.drawable.ic_lock : C10651R.drawable.ic_unlock));
        EditorBundleKt.postEvent(this.editorBundle, new ScaleEnableEvent(booleanValue));
        m49370n();
    }

    /* renamed from: r */
    public final void m49373r() {
        if (this.scaleList.contains(this.currentScale)) {
            m49367k();
        } else {
            m49369m();
        }
    }

    public final void resetTheme() {
        ThemeUtils.refreshView(this.binding.getRoot());
        m49374s();
    }

    /* renamed from: s */
    public final void m49374s() {
        Boolean bool = (Boolean) ViewKt.getTagSafely(this.binding.lock);
        boolean booleanValue = bool != null ? bool.booleanValue() : false;
        this.binding.lock.setTag(Boolean.valueOf(booleanValue));
        this.binding.lock.setImageDrawable(ThemeUtils.getThemeDrawable(booleanValue ? C10651R.drawable.ic_lock : C10651R.drawable.ic_unlock));
    }

    public final void setXYOffset(int xOffset, int yOffset) {
        EasyWindow<?> easyWindow = this.easyWindow;
        View root = this.binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        this.measuredWidth = EasyWindowKt.setXYOffset(easyWindow, root, this.measuredWidth, xOffset, yOffset);
    }

    public final void show(float scale) {
        if (!(scale == this.currentScale)) {
            this.binding.percent.setText(ResManager.INSTANCE.getString(C10651R.string.percent_format, Integer.valueOf((int) (100 * scale))));
            this.currentScale = scale;
        }
        m49366f();
        m49370n();
    }
}
