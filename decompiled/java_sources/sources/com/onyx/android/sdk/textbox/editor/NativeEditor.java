package com.onyx.android.sdk.textbox.editor;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.SystemClock;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Layout;
import android.text.Spannable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.core.app.NotificationCompat;
import androidx.core.net.MailTo;
import androidx.core.view.GestureDetectorCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.RTManager;
import com.onegravity.rteditor.api.DefaultProxyImpl;
import com.onegravity.rteditor.api.RTApi;
import com.onegravity.rteditor.api.RTMediaFactoryImpl;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.effects.AlignmentEffect;
import com.onegravity.rteditor.effects.Effect;
import com.onegravity.rteditor.effects.Effects;
import com.onegravity.rteditor.fonts.FontManager;
import com.onegravity.rteditor.fonts.RTTypeface;
import com.onegravity.rteditor.spans.AbsoluteSizeSpan;
import com.onegravity.rteditor.spans.BoldSpan;
import com.onegravity.rteditor.spans.ForegroundColorSpan;
import com.onegravity.rteditor.spans.ItalicSpan;
import com.onegravity.rteditor.spans.TypefaceSpan;
import com.onegravity.rteditor.spans.UnderlineSpan;
import com.onegravity.rteditor.utils.Selection;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.textbox.C8002R;
import com.onyx.android.sdk.textbox.data.EditorContent;
import com.onyx.android.sdk.textbox.data.EditorLayoutInfo;
import com.onyx.android.sdk.textbox.data.EditorState;
import com.onyx.android.sdk.textbox.data.EditorStyleInfo;
import com.onyx.android.sdk.textbox.data.TextAlignType;
import com.onyx.android.sdk.textbox.data.TextBoxInitArgs;
import com.onyx.android.sdk.textbox.editor.IEditor;
import com.onyx.android.sdk.textbox.editor.NativeEditor;
import com.onyx.android.sdk.textbox.event.EditorContentChangeEvent;
import com.onyx.android.sdk.textbox.event.SelectionChangeEvent;
import com.onyx.android.sdk.textbox.event.SwitchToNextShapeEvent;
import com.onyx.android.sdk.textbox.filter.InputLengthFilter;
import com.onyx.android.sdk.textbox.filter.LineBreakFilter;
import com.onyx.android.sdk.textbox.listener.NativeEditorGestureListener;
import com.onyx.android.sdk.textbox.utils.RTEditorExtKt;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010h\u001a\u00020c¢\u0006\u0004\b~\u0010\u007fJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\t\u001a\u00020\u0007H\u0002J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\u0007H\u0002J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0014H\u0016JP\u0010\"\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0011H\u0016J\b\u0010$\u001a\u00020#H\u0016J\u0012\u0010'\u001a\u00020\u00072\b\u0010&\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010*\u001a\u00020\u00072\u0006\u0010)\u001a\u00020(H\u0016J\b\u0010+\u001a\u00020(H\u0016J\u0010\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u0011H\u0016J\u0018\u00101\u001a\u00020\u00072\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020.H\u0016J\u0010\u00103\u001a\u00020\u00072\u0006\u00102\u001a\u00020.H\u0016J\b\u00104\u001a\u00020.H\u0016J\b\u00105\u001a\u00020.H\u0016J\b\u00106\u001a\u00020.H\u0016J\b\u00107\u001a\u00020.H\u0016J\b\u00108\u001a\u00020.H\u0016J\b\u00109\u001a\u00020.H\u0016J\b\u0010:\u001a\u00020.H\u0016J\u0010\u0010;\u001a\u00020(2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010<\u001a\u00020\u0007H\u0016J\u0018\u0010@\u001a\u00020\r2\u0006\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020\u0011H\u0016J\u0018\u0010B\u001a\u00020\r2\u0006\u0010>\u001a\u00020=2\u0006\u0010A\u001a\u00020\u0011H\u0016J\u001e\u0010E\u001a\u00020\u00072\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\r0C2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010H\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\r2\u0006\u0010G\u001a\u00020\rH\u0016J\b\u0010I\u001a\u00020\u0007H\u0016J\b\u0010J\u001a\u00020\u0007H\u0016J\b\u0010L\u001a\u00020KH\u0016J\b\u0010M\u001a\u00020\u0007H\u0016J\u0018\u0010Q\u001a\u00020\u00072\u0006\u0010O\u001a\u00020N2\u0006\u0010P\u001a\u00020NH\u0016J\u0010\u0010R\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\rH\u0016J\u0010\u0010S\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\rH\u0016J\u0010\u0010T\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\rH\u0016J\u0010\u0010V\u001a\u00020\u00072\u0006\u0010U\u001a\u00020.H\u0016J\u0010\u0010X\u001a\u00020\u00072\u0006\u0010W\u001a\u00020\u0011H\u0016J\u0010\u0010Z\u001a\u00020\u00072\u0006\u0010Y\u001a\u00020.H\u0016J\u0010\u0010\\\u001a\u00020\u00072\u0006\u0010[\u001a\u00020NH\u0016J\u0010\u0010^\u001a\u00020\u00072\u0006\u0010]\u001a\u00020NH\u0016J \u0010`\u001a\u00020\u00072\u0006\u0010O\u001a\u00020N2\u0006\u0010P\u001a\u00020N2\u0006\u0010_\u001a\u00020NH\u0016J\b\u0010a\u001a\u00020\u0007H\u0016J\b\u0010b\u001a\u00020\u0007H\u0016R\u0017\u0010h\u001a\u00020c8\u0006¢\u0006\f\n\u0004\bd\u0010e\u001a\u0004\bf\u0010gR\u0014\u0010j\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010iR\u0014\u0010l\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010kR\u0018\u0010o\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0016\u0010r\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u0014\u0010u\u001a\u00020s8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010tR\u0014\u0010x\u001a\u00020v8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010wR\u0014\u0010{\u001a\u00020y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010zR\u0016\u0010}\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010|¨\u0006\u0080\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/editor/NativeEditor;", "Lcom/onyx/android/sdk/textbox/editor/IEditor;", "Landroid/view/View$OnLayoutChangeListener;", "Landroid/content/Context;", "context", "Lcom/onegravity/rteditor/RTManager;", "j", "", C6998g.f39679a, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;", "args", C4921e.f26528e, "", "editable", "m", C6997f.f39671c, "", "action", C4921e.f26537n, "Landroid/view/MotionEvent;", "l", NotificationCompat.CATEGORY_EVENT, "onEditorTouchEvent", "Landroid/view/View;", "v", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "onLayoutChange", "Lcom/onegravity/rteditor/RTEditText;", "getEditorView", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "holder", "setEventBusHolder", "Landroid/graphics/RectF;", "rectF", "setLimitRect", "getLimitRect", "cursorColor", "setCaretColor", "", "scaleX", "scaleY", "setScale", "rotate", "setRotate", "getRotate", "getEditorMinWidth", "getEditorMinHeight", "getEditorViewWidth", "getEditorViewHeight", "getEditorContentWidth", "getEditorContentHeight", "getCursorPosition", "onStartMoving", "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;", "sizeInfo", "contentWidth", "adjustEditorWidth", "contentHeight", "adjustEditorHeight", "Lio/reactivex/rxjava3/subjects/PublishSubject;", MailTo.f5529g, "startEdit", "enable", "readOnly", "enableEdit", "showEditorView", "finishEdit", "Lcom/onyx/android/sdk/textbox/data/EditorContent;", "loadFinalContent", "destroy", "", gon.f71258K, "fontPath", "reloadFont", "setBold", "setItalic", "setUnderline", gon.f71257J, "setFontSize", "fontColor", "setFontColor", "spacingMulti", "setLineSpacing", "content", "insertText", "alignType", "setTextAlign", "fontType", "setFontFace", "convert2Traditional", "convert2Simplified", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "e", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "getTextBox", "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBox", "Lcom/onegravity/rteditor/RTManager;", "rtManager", "Lcom/onegravity/rteditor/RTEditText;", "rtEditor", C6999h.f39688c, "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "eventBusHolder", "i", "Landroid/graphics/RectF;", "limitRect", "Landroidx/core/view/GestureDetectorCompat;", "Landroidx/core/view/GestureDetectorCompat;", "gestureDetector", "Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;", "Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;", "gestureListener", "Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;", "Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;", "lengthFilter", "I", "lastMotionAction", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNativeEditor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeEditor.kt\ncom/onyx/android/sdk/textbox/editor/NativeEditor\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,482:1\n337#2:483\n*S KotlinDebug\n*F\n+ 1 NativeEditor.kt\ncom/onyx/android/sdk/textbox/editor/NativeEditor\n*L\n253#1:483\n*E\n"})
/* loaded from: classes8.dex */
public final class NativeEditor implements IEditor, View.OnLayoutChangeListener {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final TextBoxView textBox;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final RTManager rtManager;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final RTEditText rtEditor;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public EventBusHolder eventBusHolder;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public RectF limitRect;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final GestureDetectorCompat gestureDetector;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final NativeEditorGestureListener gestureListener;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final InputLengthFilter lengthFilter;

    /* renamed from: m, reason: from kotlin metadata */
    public int lastMotionAction;

    public NativeEditor(@NotNull TextBoxView textBox) {
        Intrinsics.checkNotNullParameter(textBox, "textBox");
        this.textBox = textBox;
        this.limitRect = new RectF();
        this.lastMotionAction = 1;
        Context context = textBox.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        RTEditText initEditor = RTEditorExtKt.initEditor(context);
        this.rtEditor = initEditor;
        InputLengthFilter inputLengthFilter = new InputLengthFilter(textBox, initEditor);
        this.lengthFilter = inputLengthFilter;
        initEditor.setFilters(new InputFilter[]{inputLengthFilter, new LineBreakFilter()});
        Context context2 = textBox.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        RTManager m36126j = m36126j(context2);
        this.rtManager = m36126j;
        m36126j.registerEditor(initEditor, true);
        NativeEditorGestureListener nativeEditorGestureListener = new NativeEditorGestureListener(textBox, initEditor);
        this.gestureListener = nativeEditorGestureListener;
        this.gestureDetector = new GestureDetectorCompat(textBox.getContext(), nativeEditorGestureListener);
        m36125g();
    }

    /* renamed from: h */
    public static final boolean m36119h(NativeEditor this$0, View view, int i, KeyEvent event) {
        EventBusHolder eventBusHolder;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "event");
        if (i != 61) {
            return false;
        }
        if (event.getAction() == 1 && (eventBusHolder = this$0.eventBusHolder) != null) {
            eventBusHolder.post(new SwitchToNextShapeEvent());
        }
        return true;
    }

    /* renamed from: i */
    public static final boolean m36120i(NativeEditor this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(motionEvent);
        return this$0.onEditorTouchEvent(motionEvent);
    }

    /* renamed from: p */
    public static final void m36121p(NativeEditor this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m36130n();
    }

    /* renamed from: q */
    public static final void m36122q(NativeEditor this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m36130n();
        this$0.rtEditor.requestFocus();
        ViewKt.showForcedInputKeyboard(this$0.rtEditor);
    }

    /* renamed from: r */
    public static final void m36123r(NativeEditor this$0, TextBoxInitArgs args) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(args, "$args");
        this$0.m36131o(args);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public boolean adjustEditorHeight(@NotNull EditorLayoutInfo sizeInfo, int contentHeight) {
        int roundToInt;
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        if (contentHeight <= this.rtEditor.getHeight()) {
            return false;
        }
        TextBoxView textBoxView = this.textBox;
        roundToInt = MathKt__MathJVMKt.roundToInt(contentHeight * this.rtEditor.getScaleY());
        textBoxView.updateHeight(roundToInt);
        this.textBox.requestLayout();
        this.rtEditor.requestLayout();
        return true;
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public boolean adjustEditorWidth(@NotNull EditorLayoutInfo sizeInfo, int contentWidth) {
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        return false;
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void convert2Simplified() {
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void convert2Traditional() {
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void destroy() {
        this.rtEditor.removeOnLayoutChangeListener(this);
        this.rtManager.unregisterEditor(this.rtEditor);
        this.rtManager.onDestroy(false);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void enableEdit(boolean enable, boolean readOnly) {
        int coerceIn;
        boolean z = enable && !readOnly;
        if (!z) {
            m36124f();
        }
        this.rtEditor.setTextIsSelectable(z);
        this.rtEditor.setCursorVisible(z);
        this.rtEditor.setFocusable(z);
        this.rtEditor.setFocusableInTouchMode(z);
        m36129m(z);
        if (z) {
            coerceIn = RangesKt___RangesKt.coerceIn(this.gestureListener.getSelectionStart(), 0, this.rtEditor.length());
            this.rtEditor.setSelection(coerceIn);
        }
        if (enable) {
            this.textBox.setEditorState(readOnly ? EditorState.READ_ONLY : EditorState.EDITING);
        } else {
            ViewKt.setViewVisibleOrGone(this.textBox, false);
        }
    }

    /* renamed from: f */
    public final void m36124f() {
        if (m36127k(this.lastMotionAction)) {
            return;
        }
        this.lastMotionAction = 1;
        MotionEvent m36128l = m36128l();
        this.rtEditor.dispatchTouchEvent(m36128l);
        m36128l.recycle();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void finishEdit() {
        enableEdit(false, false);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    @NotNull
    public Observable<Boolean> finishEditObservable() {
        return IEditor.DefaultImpls.finishEditObservable(this);
    }

    /* renamed from: g */
    public final void m36125g() {
        this.rtEditor.setOnKeyListener(new View.OnKeyListener() { // from class: com.sunia.HTREnginev2.ssj
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                boolean m36119h;
                m36119h = NativeEditor.m36119h(NativeEditor.this, view, i, keyEvent);
                return m36119h;
            }
        });
        this.rtEditor.addOnLayoutChangeListener(this);
        this.rtEditor.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.tsj
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m36120i;
                m36120i = NativeEditor.m36120i(NativeEditor.this, view, motionEvent);
                return m36120i;
            }
        });
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    @NotNull
    public RectF getCursorPosition(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.rtEditor.getLayout() == null) {
            return new RectF();
        }
        Selection selection = new Selection(this.rtEditor);
        int lineForOffset = this.rtEditor.getLayout().getLineForOffset(selection.start());
        int lineForOffset2 = this.rtEditor.getLayout().getLineForOffset(selection.isEmpty() ? selection.end() : selection.end() - 1);
        Rect rect = new Rect();
        this.rtEditor.getLayout().getLineBounds(lineForOffset, rect);
        if (lineForOffset2 != lineForOffset) {
            Rect rect2 = new Rect();
            this.rtEditor.getLayout().getLineBounds(lineForOffset2, rect2);
            rect.union(rect2);
        }
        RectF rectF = new RectF(rect);
        RectFKt.scaleRect(rectF, this.rtEditor.getScaleX(), this.rtEditor.getScaleY());
        return rectF;
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getEditorContentHeight() {
        int lineCount = this.rtEditor.getLayout().getLineCount();
        return (Build.VERSION.SDK_INT >= 34 ? this.rtEditor.getLayout().getLineBottom(lineCount - 1, true) : this.rtEditor.getLayout().getLineBottom(lineCount - 1)) * this.rtEditor.getScaleY();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getEditorContentWidth() {
        return this.rtEditor.getWidth() * this.rtEditor.getScaleX();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getEditorMinHeight() {
        return this.rtEditor.getMinimumHeight();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getEditorMinWidth() {
        return this.rtEditor.getMinimumWidth();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getEditorViewHeight() {
        return this.rtEditor.getHeight();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getEditorViewWidth() {
        return this.rtEditor.getWidth();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    @NotNull
    public RectF getLimitRect() {
        return this.limitRect;
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getRotate() {
        return this.rtEditor.getRotation();
    }

    @NotNull
    public final TextBoxView getTextBox() {
        return this.textBox;
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void insertText(@NotNull String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        int selectionStart = this.rtEditor.getSelectionStart();
        int selectionEnd = this.rtEditor.getSelectionEnd();
        if (selectionStart < 0) {
            selectionStart = this.rtEditor.length();
        }
        if (selectionEnd < selectionStart) {
            selectionEnd = selectionStart;
        }
        if (selectionStart == selectionEnd) {
            Editable text = this.rtEditor.getText();
            if (text != null) {
                text.insert(selectionStart, content);
                return;
            }
            return;
        }
        Editable text2 = this.rtEditor.getText();
        if (text2 != null) {
            text2.replace(selectionStart, selectionEnd, content);
        }
    }

    /* renamed from: j */
    public final RTManager m36126j(Context context) {
        final RTApi rTApi = new RTApi(context, new DefaultProxyImpl(), new RTMediaFactoryImpl(context));
        return new RTManager(rTApi) { // from class: com.onyx.android.sdk.textbox.editor.NativeEditor$initRTManager$1
            @Override // com.onegravity.rteditor.RTManager, com.onegravity.rteditor.RTEditTextListener
            public void onSelectionChanged(@Nullable RTEditText editor, int start, int end) {
                EventBusHolder eventBusHolder;
                if (editor == null) {
                    return;
                }
                EditorStyleInfo styleInfo = RTEditorExtKt.getStyleInfo(editor, start, end);
                eventBusHolder = this.eventBusHolder;
                if (eventBusHolder != null) {
                    eventBusHolder.post(new SelectionChangeEvent(styleInfo));
                }
            }

            @Override // com.onegravity.rteditor.RTManager, com.onegravity.rteditor.RTEditTextListener
            public void onTextChanged(@Nullable RTEditText editor, @Nullable Spannable before, @Nullable Spannable after, int selStartBefore, int selEndBefore, int selStartAfter, int selEndAfter) {
                RTEditText rTEditText;
                RTEditText rTEditText2;
                EventBusHolder eventBusHolder;
                super.onTextChanged(editor, before, after, selStartBefore, selEndBefore, selStartAfter, selEndAfter);
                EditorContent editorContent = new EditorContent();
                rTEditText = this.rtEditor;
                String textWithComposing = rTEditText.getTextWithComposing(RTFormat.HTML);
                Intrinsics.checkNotNullExpressionValue(textWithComposing, "getTextWithComposing(...)");
                editorContent.setRichText(textWithComposing);
                rTEditText2 = this.rtEditor;
                String textWithComposing2 = rTEditText2.getTextWithComposing(RTFormat.PLAIN_TEXT);
                Intrinsics.checkNotNullExpressionValue(textWithComposing2, "getTextWithComposing(...)");
                editorContent.setPlainText(textWithComposing2);
                eventBusHolder = this.eventBusHolder;
                if (eventBusHolder != null) {
                    eventBusHolder.post(new EditorContentChangeEvent(editorContent));
                }
                this.m36130n();
            }
        };
    }

    /* renamed from: k */
    public final boolean m36127k(int action) {
        return action == 1 || action == 3;
    }

    /* renamed from: l */
    public final MotionEvent m36128l() {
        MotionEvent obtain = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, 0.0f, 0.0f, 0);
        Intrinsics.checkNotNullExpressionValue(obtain, "obtain(...)");
        return obtain;
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    @NotNull
    public EditorContent loadFinalContent() {
        EditorContent editorContent = new EditorContent();
        String text = this.rtEditor.getText(RTFormat.HTML);
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        editorContent.setRichText(text);
        String text2 = this.rtEditor.getText(RTFormat.PLAIN_TEXT);
        Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
        editorContent.setPlainText(text2);
        return editorContent;
    }

    /* renamed from: m */
    public final void m36129m(boolean editable) {
        if (Build.VERSION.SDK_INT < 33) {
            return;
        }
        this.rtEditor.setAutoHandwritingEnabled(editable);
        if (editable) {
            Object systemService = this.rtEditor.getContext().getSystemService("input_method");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            ((InputMethodManager) systemService).restartInput(this.rtEditor);
        }
    }

    /* renamed from: n */
    public final void m36130n() {
        if (this.textBox.isOperable()) {
            if (this.rtEditor.getLayout() == null) {
                Debug.INSTANCE.m32059w(NativeEditor.class, "editor layout is null, content: " + ((Object) this.rtEditor.getText()), new Object[0]);
                return;
            }
            int width = this.rtEditor.getLayout().getWidth();
            int height = this.rtEditor.getLayout().getHeight();
            Debug.INSTANCE.m32035d(NativeEditor.class, "content size, w=" + width + ", h=" + height, new Object[0]);
            EditorLayoutInfo editorLayoutInfo = new EditorLayoutInfo();
            TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
            Context context = this.rtEditor.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            editorLayoutInfo.setWidth(textRenderUtil.getRenderSize(context, (float) width));
            Context context2 = this.rtEditor.getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            editorLayoutInfo.setHeight(textRenderUtil.getRenderSize(context2, height));
            this.textBox.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE java.lang.String().resizeEditorHeight(editorLayoutInfo);
        }
    }

    /* renamed from: o */
    public final void m36131o(TextBoxInitArgs args) {
        if (StringKt.isNotBlank(this.rtEditor.getText())) {
            this.rtEditor.setSelection(1);
            return;
        }
        String alignType = args.getAlignType();
        if (alignType == null) {
            alignType = "";
        }
        setTextAlign(alignType);
        setBold(args.getIsBold());
        setItalic(args.getIsItalic());
        setUnderline(args.getIsUnderline());
        EditorStyleInfo styleInfo = RTEditorExtKt.getStyleInfo(this.rtEditor, 0, 0);
        EventBusHolder eventBusHolder = this.eventBusHolder;
        if (eventBusHolder != null) {
            eventBusHolder.post(new SelectionChangeEvent(styleInfo));
        }
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public boolean onEditorTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.lastMotionAction = event.getAction();
        boolean onTouchEvent = this.gestureDetector.onTouchEvent(event);
        if (MotionEventKt.isUpAction(event) || MotionEventKt.isCancelAction(event)) {
            this.gestureListener.onUp(event);
        }
        return onTouchEvent;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(@NotNull View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        Intrinsics.checkNotNullParameter(v, "v");
        int i = right - left;
        int i2 = bottom - top;
        int i3 = oldRight - oldLeft;
        int i4 = oldBottom - oldTop;
        Debug.INSTANCE.m32035d(NativeEditor.class, "onLayoutChange: old w=" + i3 + ", new w=" + i + ", old h=" + i4 + ", new h=" + i2, new Object[0]);
        if (this.textBox.isOperable()) {
            if (i3 == i && i4 == i2) {
                return;
            }
            m36130n();
        }
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void onStartMoving() {
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void reloadFont(@NotNull String fontFamily, @NotNull String fontPath) {
        Intrinsics.checkNotNullParameter(fontFamily, "fontFamily");
        Intrinsics.checkNotNullParameter(fontPath, "fontPath");
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setBold(boolean enable) {
        if (this.textBox.isEditing()) {
            this.rtManager.onEffectSelected(Effects.BOLD, Boolean.valueOf(enable));
            return;
        }
        RTEditText rTEditText = this.rtEditor;
        Effect<Boolean, BoldSpan> BOLD = Effects.BOLD;
        Intrinsics.checkNotNullExpressionValue(BOLD, "BOLD");
        RTEditorExtKt.applyEffectForAll(rTEditText, BOLD, Boolean.valueOf(enable));
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setCaretColor(int cursorColor) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(cursorColor);
        int max = Math.max(ResManager.INSTANCE.getInteger(C8002R.integer.editor_cursor_min_width_px), (int) (r5.getDimens(C8002R.dimen.default_cursor_width) / Math.max(this.textBox.getScaleX(), 1.0f)));
        gradientDrawable.setSize(max, -1);
        gradientDrawable.setStroke(max / 4, -1);
        this.rtEditor.setTextCursorDrawable(gradientDrawable);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setEventBusHolder(@Nullable EventBusHolder holder) {
        this.eventBusHolder = holder;
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setFontColor(int fontColor) {
        if (this.textBox.isEditing()) {
            if (StringKt.isEmpty(this.rtEditor.getText())) {
                this.rtEditor.setTextColor(fontColor);
                return;
            } else {
                this.rtManager.onEffectSelected(Effects.FONTCOLOR, Integer.valueOf(fontColor));
                return;
            }
        }
        RTEditText rTEditText = this.rtEditor;
        Effect<Integer, ForegroundColorSpan> FONTCOLOR = Effects.FONTCOLOR;
        Intrinsics.checkNotNullExpressionValue(FONTCOLOR, "FONTCOLOR");
        RTEditorExtKt.applyEffectForAll(rTEditText, FONTCOLOR, Integer.valueOf(fontColor));
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setFontFace(@NotNull String fontFamily, @NotNull String fontPath, @NotNull String fontType) {
        Intrinsics.checkNotNullParameter(fontFamily, "fontFamily");
        Intrinsics.checkNotNullParameter(fontPath, "fontPath");
        Intrinsics.checkNotNullParameter(fontType, "fontType");
        RTTypeface typeface = FontManager.getTypeface(fontFamily);
        if (typeface == null) {
            Debug.INSTANCE.m32044e(NativeEditor.class, "Can't find typeface with path: " + fontPath, new Object[0]);
            typeface = FontManager.getTypeface("default");
        }
        if (this.textBox.isEditing()) {
            if (StringKt.isEmpty(this.rtEditor.getText())) {
                this.rtEditor.setTypeface(typeface.getTypeface());
            }
            this.rtManager.onEffectSelected(Effects.TYPEFACE, typeface);
        } else {
            RTEditText rTEditText = this.rtEditor;
            Effect<RTTypeface, TypefaceSpan> TYPEFACE = Effects.TYPEFACE;
            Intrinsics.checkNotNullExpressionValue(TYPEFACE, "TYPEFACE");
            RTEditorExtKt.applyEffectForAll(rTEditText, TYPEFACE, typeface);
        }
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setFontSize(float fontSize) {
        int roundToInt;
        int roundToInt2;
        if (!this.textBox.isEditing()) {
            RTEditText rTEditText = this.rtEditor;
            Effect<Integer, AbsoluteSizeSpan> FONTSIZE = Effects.FONTSIZE;
            Intrinsics.checkNotNullExpressionValue(FONTSIZE, "FONTSIZE");
            roundToInt2 = MathKt__MathJVMKt.roundToInt(fontSize);
            RTEditorExtKt.applyEffectForAll(rTEditText, FONTSIZE, Integer.valueOf(roundToInt2));
            return;
        }
        if (StringKt.isEmpty(this.rtEditor.getText())) {
            this.rtEditor.setTextSize(0, fontSize);
        }
        RTManager rTManager = this.rtManager;
        Effect<Integer, AbsoluteSizeSpan> effect = Effects.FONTSIZE;
        roundToInt = MathKt__MathJVMKt.roundToInt(fontSize);
        rTManager.onEffectSelected(effect, Integer.valueOf(roundToInt));
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setItalic(boolean enable) {
        if (this.textBox.isEditing()) {
            this.rtManager.onEffectSelected(Effects.ITALIC, Boolean.valueOf(enable));
            return;
        }
        RTEditText rTEditText = this.rtEditor;
        Effect<Boolean, ItalicSpan> ITALIC = Effects.ITALIC;
        Intrinsics.checkNotNullExpressionValue(ITALIC, "ITALIC");
        RTEditorExtKt.applyEffectForAll(rTEditText, ITALIC, Boolean.valueOf(enable));
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setLimitRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        this.limitRect = rectF;
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setLineSpacing(float spacingMulti) {
        RTEditText rTEditText = this.rtEditor;
        rTEditText.setLineSpacing(rTEditText.getLineSpacingExtra(), spacingMulti);
        this.rtEditor.post(new Runnable() { // from class: com.sunia.HTREnginev2.vsj
            @Override // java.lang.Runnable
            public final void run() {
                NativeEditor.m36121p(NativeEditor.this);
            }
        });
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setRotate(float rotate) {
        this.textBox.setRotation(rotate);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setScale(float scaleX, float scaleY) {
        this.rtEditor.setPivotX(0.0f);
        this.rtEditor.setPivotY(0.0f);
        this.rtEditor.setScaleX(scaleX);
        this.rtEditor.setScaleY(scaleY);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setTextAlign(@NotNull String alignType) {
        Intrinsics.checkNotNullParameter(alignType, "alignType");
        TextAlignType.Companion companion = TextAlignType.INSTANCE;
        Layout.Alignment alignment = companion.toAlignment(alignType);
        if (this.textBox.isEditing()) {
            if (StringKt.isEmpty(this.rtEditor.getText())) {
                this.rtEditor.setTextAlignment(companion.toTextAlignment(alignment));
            }
            this.rtManager.onEffectSelected(Effects.ALIGNMENT, alignment);
        } else {
            RTEditText rTEditText = this.rtEditor;
            AlignmentEffect ALIGNMENT = Effects.ALIGNMENT;
            Intrinsics.checkNotNullExpressionValue(ALIGNMENT, "ALIGNMENT");
            RTEditorExtKt.applyEffectForAll(rTEditText, ALIGNMENT, alignment);
        }
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setTextOrientation(int i) {
        IEditor.DefaultImpls.setTextOrientation(this, i);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setUnderline(boolean enable) {
        if (this.textBox.isEditing()) {
            this.rtManager.onEffectSelected(Effects.UNDERLINE, Boolean.valueOf(enable));
            return;
        }
        RTEditText rTEditText = this.rtEditor;
        Effect<Boolean, UnderlineSpan> UNDERLINE = Effects.UNDERLINE;
        Intrinsics.checkNotNullExpressionValue(UNDERLINE, "UNDERLINE");
        RTEditorExtKt.applyEffectForAll(rTEditText, UNDERLINE, Boolean.valueOf(enable));
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void showEditorView() {
        this.rtEditor.post(new Runnable() { // from class: com.sunia.HTREnginev2.rsj
            @Override // java.lang.Runnable
            public final void run() {
                NativeEditor.m36122q(NativeEditor.this);
            }
        });
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void startEdit(@NotNull PublishSubject<Boolean> subject, @NotNull final TextBoxInitArgs args) {
        Typeface typeface;
        Intrinsics.checkNotNullParameter(subject, "subject");
        Intrinsics.checkNotNullParameter(args, "args");
        this.lengthFilter.setOriginContentLen(args.getPlainTextLen());
        RTEditText rTEditText = this.rtEditor;
        RTTypeface typeface2 = FontManager.getTypeface(args.getFontFamily());
        if (typeface2 == null || (typeface = typeface2.getTypeface()) == null) {
            typeface = Typeface.DEFAULT;
        }
        rTEditText.setTypeface(typeface);
        RTEditText rTEditText2 = this.rtEditor;
        TextAlignType.Companion companion = TextAlignType.INSTANCE;
        String alignType = args.getAlignType();
        if (alignType == null) {
            alignType = "";
        }
        rTEditText2.setTextAlignment(companion.toTextAlignment(alignType));
        this.rtEditor.setTextSize(0, args.getFontSize());
        this.rtEditor.setTextColor(args.getTextColor());
        this.rtEditor.setLineSpacing(0.0f, args.getLineHeight());
        this.rtEditor.setRichTextEditing(true, args.getContent());
        this.rtEditor.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.usj
            @Override // java.lang.Runnable
            public final void run() {
                NativeEditor.m36123r(NativeEditor.this, args);
            }
        }, 30L);
        enableEdit(true, args.getEditForAll());
        RxjavaKt.done(subject, Boolean.TRUE);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public boolean supportMultiTextOrientation() {
        return IEditor.DefaultImpls.supportMultiTextOrientation(this);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public boolean supportRenderCache() {
        return IEditor.DefaultImpls.supportRenderCache(this);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    @NotNull
    /* renamed from: getEditorView, reason: from getter */
    public RTEditText getRichEditor() {
        return this.rtEditor;
    }
}
