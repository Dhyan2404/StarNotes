package com.onyx.android.sdk.textbox.editor;

import android.content.Context;
import android.graphics.RectF;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ValueCallback;
import androidx.core.net.MailTo;
import androidx.core.util.Consumer;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.extension.WebViewKt;
import com.onyx.android.sdk.base.utils.HtmlUtils;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.textbox.data.EditorContent;
import com.onyx.android.sdk.textbox.data.EditorCursor;
import com.onyx.android.sdk.textbox.data.EditorLayoutInfo;
import com.onyx.android.sdk.textbox.data.EditorState;
import com.onyx.android.sdk.textbox.data.TextAlignType;
import com.onyx.android.sdk.textbox.data.TextBoxInitArgs;
import com.onyx.android.sdk.textbox.editor.IEditor;
import com.onyx.android.sdk.textbox.editor.WebEditor;
import com.onyx.android.sdk.textbox.event.EditorContentChangeEvent;
import com.onyx.android.sdk.textbox.event.EditorLayoutChangeEvent;
import com.onyx.android.sdk.textbox.event.SwitchToNextShapeEvent;
import com.onyx.android.sdk.textbox.widget.RichEditor;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010W\u001a\u00020R¢\u0006\u0004\ba\u0010bJ\u001e\u0010\u0007\u001a\u00020\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\tH\u0016J\u0012\u0010\r\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\b\u0010\u0017\u001a\u00020\u0003H\u0016J\b\u0010\u0018\u001a\u00020\u0003H\u0016J\u0018\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0016J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0019H\u0016J\b\u0010\u001f\u001a\u00020\u0019H\u0016J\b\u0010 \u001a\u00020\u0019H\u0016J\b\u0010!\u001a\u00020\u0019H\u0016J\b\u0010\"\u001a\u00020\u0019H\u0016J\b\u0010#\u001a\u00020\u0019H\u0016J\b\u0010$\u001a\u00020\u0019H\u0016J\b\u0010%\u001a\u00020\u0019H\u0016J\u0012\u0010(\u001a\u0004\u0018\u00010\u000e2\u0006\u0010'\u001a\u00020&H\u0016J\b\u0010)\u001a\u00020\u0006H\u0016J\u0018\u0010-\u001a\u00020\u00032\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\u0012H\u0016J\u0018\u0010/\u001a\u00020\u00032\u0006\u0010+\u001a\u00020*2\u0006\u0010.\u001a\u00020\u0012H\u0016J\u001e\u00102\u001a\u00020\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u00101\u001a\u000200H\u0016J\u0018\u00105\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u0003H\u0016J\b\u00106\u001a\u00020\u0006H\u0016J(\u00105\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u00032\u0010\b\u0002\u00109\u001a\n\u0012\u0004\u0012\u000208\u0018\u000107J\b\u0010:\u001a\u00020\u0006H\u0016J\u000e\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00030;H\u0016J\b\u0010=\u001a\u00020\u0006H\u0016J\u0018\u0010@\u001a\u00020\u00062\u0006\u0010>\u001a\u0002082\u0006\u0010?\u001a\u000208H\u0016J\u0010\u0010A\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u0003H\u0016J\u0010\u0010B\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u0003H\u0016J\u0010\u0010C\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u0003H\u0016J\u0010\u0010E\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u0019H\u0016J\u0010\u0010G\u001a\u00020\u00062\u0006\u0010F\u001a\u00020\u0012H\u0016J\u0010\u0010I\u001a\u00020\u00062\u0006\u0010H\u001a\u00020\u0019H\u0016J\u0010\u0010K\u001a\u00020\u00062\u0006\u0010J\u001a\u000208H\u0016J\u0010\u0010M\u001a\u00020\u00062\u0006\u0010L\u001a\u000208H\u0016J \u0010O\u001a\u00020\u00062\u0006\u0010>\u001a\u0002082\u0006\u0010?\u001a\u0002082\u0006\u0010N\u001a\u000208H\u0016J\b\u0010P\u001a\u00020\u0006H\u0016J\b\u0010Q\u001a\u00020\u0006H\u0016R\u0017\u0010W\u001a\u00020R8\u0006¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010VR\u0014\u0010[\u001a\u00020X8\u0002X\u0082D¢\u0006\u0006\n\u0004\bY\u0010ZR\u0014\u0010]\u001a\u00020X8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\\\u0010ZR\u0014\u0010`\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b^\u0010_¨\u0006c"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/editor/WebEditor;", "Lcom/onyx/android/sdk/textbox/editor/IEditor;", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "", MailTo.f5529g, "editForAll", "", "i", C4921e.f26537n, "Lcom/onyx/android/sdk/textbox/widget/RichEditor;", "getEditorView", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "holder", "setEventBusHolder", "Landroid/graphics/RectF;", "rectF", "setLimitRect", "getLimitRect", "", "cursorColor", "setCaretColor", "orientation", "setTextOrientation", "supportMultiTextOrientation", "supportRenderCache", "", "scaleX", "scaleY", "setScale", "rotate", "setRotate", "getRotate", "getEditorMinWidth", "getEditorMinHeight", "getEditorViewWidth", "getEditorViewHeight", "getEditorContentWidth", "getEditorContentHeight", "Landroid/content/Context;", "context", "getCursorPosition", "onStartMoving", "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;", "sizeInfo", "contentWidth", "adjustEditorWidth", "contentHeight", "adjustEditorHeight", "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;", "args", "startEdit", "enable", "readOnly", "enableEdit", "finishEdit", "Landroid/webkit/ValueCallback;", "", "callback", "showEditorView", "Lio/reactivex/rxjava3/core/Observable;", "finishEditObservable", "destroy", gon.f71258K, "fontPath", "reloadFont", "setBold", "setItalic", "setUnderline", gon.f71257J, "setFontSize", "fontColor", "setFontColor", "spacingMulti", "setLineSpacing", "content", "insertText", "alignType", "setTextAlign", "fontType", "setFontFace", "convert2Traditional", "convert2Simplified", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "e", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "getTextBox", "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBox", "", C6997f.f39671c, "J", "VISUAL_REQUEST_ID", C6998g.f39679a, "SHOW_KEYBOARD_DELAY_TIME", C6999h.f39688c, "Lcom/onyx/android/sdk/textbox/widget/RichEditor;", "richEditor", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class WebEditor implements IEditor {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final TextBoxView textBox;

    /* renamed from: f, reason: from kotlin metadata */
    public final long VISUAL_REQUEST_ID;

    /* renamed from: g, reason: from kotlin metadata */
    public final long SHOW_KEYBOARD_DELAY_TIME;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RichEditor richEditor;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TextAlignType.values().length];
            try {
                iArr[TextAlignType.JUSTIFY_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextAlignType.JUSTIFY_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TextAlignType.JUSTIFY_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.editor.WebEditor$a */
    /* loaded from: classes8.dex */
    public static final class C8022a<T, R> implements Function {
        public C8022a() {
        }

        /* renamed from: c */
        public static final void m36145c(PublishSubject subject, EditorLayoutInfo editorLayoutInfo) {
            Intrinsics.checkNotNullParameter(subject, "$subject");
            RxjavaKt.done(subject, Boolean.TRUE);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            final PublishSubject create = PublishSubject.create();
            Intrinsics.checkNotNullExpressionValue(create, "create(...)");
            WebEditor.this.richEditor.requestEditorLayout(new Consumer() { // from class: com.sunia.HTREnginev2.h6o
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    WebEditor.C8022a.m36145c(PublishSubject.this, (EditorLayoutInfo) obj);
                }
            });
            return create;
        }
    }

    public WebEditor(@NotNull TextBoxView textBox) {
        Intrinsics.checkNotNullParameter(textBox, "textBox");
        this.textBox = textBox;
        this.VISUAL_REQUEST_ID = 999L;
        this.SHOW_KEYBOARD_DELAY_TIME = 100L;
        Context context = textBox.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        RichEditor richEditor = new RichEditor(context);
        this.richEditor = richEditor;
        richEditor.setBackgroundColor(0);
        richEditor.setOnTextChangeListener(new RichEditor.OnTextChangeListener() { // from class: com.onyx.android.sdk.textbox.editor.WebEditor.1
            @Override // com.onyx.android.sdk.textbox.widget.RichEditor.OnTextChangeListener
            public void onTextChange(@Nullable String text) {
                String trimNewlineSymbol = StringKt.trimNewlineSymbol(text);
                if (trimNewlineSymbol == null) {
                    return;
                }
                EditorContent editorContent = new EditorContent();
                editorContent.setRichText(trimNewlineSymbol);
                editorContent.setPlainText(HtmlUtils.INSTANCE.getHtmlTextContent(trimNewlineSymbol));
                WebEditor.this.richEditor.postEvent(new EditorContentChangeEvent(editorContent));
            }

            @Override // com.onyx.android.sdk.textbox.widget.RichEditor.OnTextChangeListener
            public void onTextSizeChange(@Nullable EditorLayoutInfo layoutInfo) {
                WebEditor.this.richEditor.postEvent(new EditorLayoutChangeEvent());
            }
        });
        richEditor.setOnKeyListener(new View.OnKeyListener() { // from class: com.sunia.HTREnginev2.e6o
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                boolean m36137f;
                m36137f = WebEditor.m36137f(WebEditor.this, view, i, keyEvent);
                return m36137f;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void enableEdit$default(WebEditor webEditor, boolean z, boolean z2, ValueCallback valueCallback, int i, Object obj) {
        if ((i & 4) != 0) {
            valueCallback = null;
        }
        webEditor.enableEdit(z, z2, valueCallback);
    }

    /* renamed from: f */
    public static final boolean m36137f(WebEditor this$0, View view, int i, KeyEvent event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "event");
        if (i != 61) {
            return false;
        }
        if (event.getAction() == 1) {
            this$0.richEditor.postEvent(new SwitchToNextShapeEvent());
        }
        return true;
    }

    /* renamed from: g */
    public static final void m36138g(ValueCallback valueCallback, String str) {
        if (valueCallback != null) {
            valueCallback.onReceiveValue("");
        }
    }

    /* renamed from: h */
    public static final void m36139h(WebEditor this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ViewKt.hideInputKeyboard(this$0.richEditor);
    }

    /* renamed from: j */
    public static final void m36140j(WebEditor this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m36143k();
    }

    /* renamed from: l */
    public static final void m36141l(WebEditor this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ViewKt.showForcedInputKeyboard(this$0.richEditor);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public boolean adjustEditorHeight(@NotNull EditorLayoutInfo sizeInfo, int contentHeight) {
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        return this.richEditor.adjustEditorHeight(this.textBox, sizeInfo, contentHeight);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public boolean adjustEditorWidth(@NotNull EditorLayoutInfo sizeInfo, int contentWidth) {
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        return this.richEditor.adjustEditorWidth(this.textBox, sizeInfo, contentWidth);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void convert2Simplified() {
        this.richEditor.convert2Simplified();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void convert2Traditional() {
        this.richEditor.convert2Traditional();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void destroy() {
        this.richEditor.clear();
        WebViewKt.safelyDestroy(this.richEditor);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void enableEdit(boolean enable, boolean readOnly) {
        enableEdit(enable, readOnly, null);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void finishEdit() {
        enableEdit(false, false);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    @NotNull
    public Observable<Boolean> finishEditObservable() {
        this.textBox.setEditorState(EditorState.RENDER);
        this.richEditor.clearFocus();
        Observable flatMap = this.richEditor.clearEditState().flatMap(new C8022a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    @Nullable
    public RectF getCursorPosition(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        EditorCursor cursor = this.richEditor.getCursor();
        if (cursor != null) {
            return cursor.getBoundingRect(context);
        }
        return null;
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getEditorContentHeight() {
        return this.richEditor.getEditorContentHeight();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getEditorContentWidth() {
        return this.richEditor.getEditorContentWidth();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getEditorMinHeight() {
        return this.richEditor.getEditorMinHeight();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getEditorMinWidth() {
        return this.richEditor.getEditorMinWidth();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getEditorViewHeight() {
        return this.richEditor.getHeight() / this.textBox.getScaleY();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getEditorViewWidth() {
        return this.richEditor.getWidth() / this.textBox.getScaleX();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    @NotNull
    public RectF getLimitRect() {
        return this.richEditor.getLimitRect();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public float getRotate() {
        return this.richEditor.isVertical() ? this.textBox.getRotation() - TextBoxView.INSTANCE.getORIENTATION_VERTICAL_ANGLE() : this.textBox.getRotation();
    }

    @NotNull
    public final TextBoxView getTextBox() {
        return this.textBox;
    }

    /* renamed from: i */
    public final void m36142i(PublishSubject<Boolean> subject, boolean editForAll) {
        this.richEditor.postVisualStateCallback(this.VISUAL_REQUEST_ID, new WebEditor$requestVisualState$1(this, editForAll, subject));
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void insertText(@NotNull String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        this.richEditor.insertText(content);
    }

    /* renamed from: k */
    public final void m36143k() {
        if (this.textBox.isEditing()) {
            this.richEditor.focusEditor(new ValueCallback() { // from class: com.sunia.HTREnginev2.g6o
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) {
                    WebEditor.m36141l(WebEditor.this, (String) obj);
                }
            });
        }
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    @NotNull
    public EditorContent loadFinalContent() {
        return IEditor.DefaultImpls.loadFinalContent(this);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public boolean onEditorTouchEvent(@NotNull MotionEvent motionEvent) {
        return IEditor.DefaultImpls.onEditorTouchEvent(this, motionEvent);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void onStartMoving() {
        this.richEditor.destroyActionMode();
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void reloadFont(@NotNull String fontFamily, @NotNull String fontPath) {
        Intrinsics.checkNotNullParameter(fontFamily, "fontFamily");
        Intrinsics.checkNotNullParameter(fontPath, "fontPath");
        this.richEditor.reloadFont(fontFamily, fontPath);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setBold(boolean enable) {
        this.richEditor.setBold(this.textBox.isReadOnly());
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setCaretColor(int cursorColor) {
        this.richEditor.setCaretColor(cursorColor);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setEventBusHolder(@Nullable EventBusHolder holder) {
        this.richEditor.setEventBusHolder(holder);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setFontColor(int fontColor) {
        this.richEditor.setTextColor(fontColor, this.textBox.isReadOnly());
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setFontFace(@NotNull String fontFamily, @NotNull String fontPath, @NotNull String fontType) {
        Intrinsics.checkNotNullParameter(fontFamily, "fontFamily");
        Intrinsics.checkNotNullParameter(fontPath, "fontPath");
        Intrinsics.checkNotNullParameter(fontType, "fontType");
        this.richEditor.setCustomFontFamilyWithUrl(fontFamily, fontPath, fontType, this.textBox.isReadOnly());
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setFontSize(float fontSize) {
        this.richEditor.setFontSize(fontSize, this.textBox.isReadOnly());
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setItalic(boolean enable) {
        this.richEditor.setItalic(this.textBox.isReadOnly());
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setLimitRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        this.richEditor.setLimitRect(rectF);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setLineSpacing(float spacingMulti) {
        this.richEditor.setLineHeight(TextRenderUtil.INSTANCE.getLineHeight(spacingMulti));
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setRotate(float rotate) {
        TextBoxView textBoxView = this.textBox;
        if (this.richEditor.isVertical()) {
            rotate += TextBoxView.INSTANCE.getORIENTATION_VERTICAL_ANGLE();
        }
        textBoxView.setRotation(rotate);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setScale(float scaleX, float scaleY) {
        this.richEditor.setScale(scaleX, scaleY, null);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setTextAlign(@NotNull String alignType) {
        Intrinsics.checkNotNullParameter(alignType, "alignType");
        int i = WhenMappings.$EnumSwitchMapping$0[TextAlignType.INSTANCE.fromValue(alignType).ordinal()];
        if (i == 1) {
            this.richEditor.setAlignLeft();
        } else if (i == 2) {
            this.richEditor.setAlignRight();
        } else {
            if (i != 3) {
                return;
            }
            this.richEditor.setAlignCenter();
        }
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setTextOrientation(int orientation) {
        this.richEditor.setEditorOrientation(orientation);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void setUnderline(boolean enable) {
        this.richEditor.setUnderline(this.textBox.isReadOnly());
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void showEditorView() {
        ViewKt.setViewVisibleOrGone(this.richEditor, true);
        ViewKt.setViewVisibleOrGone(this.textBox, true);
        if (this.textBox.isEditing()) {
            this.textBox.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.f6o
                @Override // java.lang.Runnable
                public final void run() {
                    WebEditor.m36140j(WebEditor.this);
                }
            }, this.SHOW_KEYBOARD_DELAY_TIME);
        }
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public void startEdit(@NotNull PublishSubject<Boolean> subject, @NotNull TextBoxInitArgs args) {
        Intrinsics.checkNotNullParameter(subject, "subject");
        Intrinsics.checkNotNullParameter(args, "args");
        this.richEditor.setEditorInitListener(new WebEditor$startEdit$1(this, subject, args));
        this.richEditor.setMode(this.textBox.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE java.lang.String());
        this.richEditor.init(args);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public boolean supportMultiTextOrientation() {
        return true;
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    public boolean supportRenderCache() {
        return true;
    }

    public final void enableEdit(boolean enable, boolean readOnly, @Nullable final ValueCallback<String> callback) {
        if (enable) {
            this.textBox.setEditorState(readOnly ? EditorState.READ_ONLY : EditorState.EDITING);
            this.richEditor.setInputEnabled(!readOnly, new ValueCallback() { // from class: com.sunia.HTREnginev2.c6o
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) {
                    WebEditor.m36138g(callback, (String) obj);
                }
            });
            return;
        }
        ViewKt.setViewVisibleOrGone(this.richEditor, false);
        ViewKt.setViewVisibleOrGone(this.textBox, false);
        this.textBox.reset();
        this.richEditor.setSizeChangeCallbackEnable(false);
        this.richEditor.clearFocusEditor();
        this.richEditor.clear();
        this.richEditor.clearHtml();
        this.richEditor.setInputEnabled(false, callback);
        this.textBox.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.d6o
            @Override // java.lang.Runnable
            public final void run() {
                WebEditor.m36139h(WebEditor.this);
            }
        }, this.SHOW_KEYBOARD_DELAY_TIME);
    }

    @Override // com.onyx.android.sdk.textbox.editor.IEditor
    @NotNull
    /* renamed from: getEditorView, reason: from getter */
    public RichEditor getRichEditor() {
        return this.richEditor;
    }
}
