package com.onyx.android.sdk.textbox.editor;

import android.content.Context;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.core.net.MailTo;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.textbox.data.EditorContent;
import com.onyx.android.sdk.textbox.data.EditorLayoutInfo;
import com.onyx.android.sdk.textbox.data.TextBoxInitArgs;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0007H&J\b\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\u000bH&J\b\u0010\r\u001a\u00020\u000bH&J\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H&J\b\u0010\u0011\u001a\u00020\u000bH&J\u0013\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\u00030\u0013¢\u0006\u0002\b\u0014H\u0016J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018H&J\b\u0010\u0019\u001a\u00020\u001aH&J\b\u0010\u001b\u001a\u00020\u001aH&J\b\u0010\u001c\u001a\u00020\u001aH&J\b\u0010\u001d\u001a\u00020\u001aH&J\b\u0010\u001e\u001a\u00020\u001fH&J\b\u0010 \u001a\u00020\u001aH&J\b\u0010!\u001a\u00020\u001aH&J\b\u0010\"\u001a\u00020\u0016H&J\b\u0010#\u001a\u00020\u001aH&J\u0010\u0010$\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020&H&J\b\u0010'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020+H\u0016J\b\u0010,\u001a\u00020\u000bH&J\u0018\u0010-\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020&2\u0006\u0010/\u001a\u00020&H&J\u0010\u00100\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0003H&J\u0010\u00101\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u0007H&J\u0012\u00103\u001a\u00020\u000b2\b\u00104\u001a\u0004\u0018\u000105H&J\u0010\u00106\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u0007H&J \u00108\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020&2\u0006\u0010/\u001a\u00020&2\u0006\u00109\u001a\u00020&H&J\u0010\u0010:\u001a\u00020\u000b2\u0006\u0010;\u001a\u00020\u001aH&J\u0010\u0010<\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0003H&J\u0010\u0010=\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u0016H&J\u0010\u0010?\u001a\u00020\u000b2\u0006\u0010@\u001a\u00020\u001aH&J\u0010\u0010A\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\u001aH&J\u0018\u0010C\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020\u001a2\u0006\u0010E\u001a\u00020\u001aH&J\u0010\u0010F\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020&H&J\u0010\u0010H\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020\u0007H\u0016J\u0010\u0010J\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0003H&J\b\u0010K\u001a\u00020\u000bH&J\u001e\u0010L\u001a\u00020\u000b2\f\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00030N2\u0006\u0010O\u001a\u00020PH&J\b\u0010Q\u001a\u00020\u0003H\u0016J\b\u0010R\u001a\u00020\u0003H\u0016¨\u0006S"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/editor/IEditor;", "", "adjustEditorHeight", "", "sizeInfo", "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;", "contentHeight", "", "adjustEditorWidth", "contentWidth", "convert2Simplified", "", "convert2Traditional", "destroy", "enableEdit", "enable", "readOnly", "finishEdit", "finishEditObservable", "Lio/reactivex/rxjava3/core/Observable;", "Lio/reactivex/rxjava3/annotations/NonNull;", "getCursorPosition", "Landroid/graphics/RectF;", "context", "Landroid/content/Context;", "getEditorContentHeight", "", "getEditorContentWidth", "getEditorMinHeight", "getEditorMinWidth", "getEditorView", "Landroid/view/View;", "getEditorViewHeight", "getEditorViewWidth", "getLimitRect", "getRotate", "insertText", "content", "", "loadFinalContent", "Lcom/onyx/android/sdk/textbox/data/EditorContent;", "onEditorTouchEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "onStartMoving", "reloadFont", gon.f71258K, "fontPath", "setBold", "setCaretColor", "cursorColor", "setEventBusHolder", "holder", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "setFontColor", "fontColor", "setFontFace", "fontType", "setFontSize", gon.f71257J, "setItalic", "setLimitRect", "rectF", "setLineSpacing", "spacingMulti", "setRotate", "rotate", "setScale", "scaleX", "scaleY", "setTextAlign", "alignType", "setTextOrientation", "orientation", "setUnderline", "showEditorView", "startEdit", MailTo.f5529g, "Lio/reactivex/rxjava3/subjects/PublishSubject;", "args", "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;", "supportMultiTextOrientation", "supportRenderCache", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface IEditor {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @NotNull
        public static Observable<Boolean> finishEditObservable(@NotNull IEditor iEditor) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }

        @NotNull
        public static EditorContent loadFinalContent(@NotNull IEditor iEditor) {
            return new EditorContent();
        }

        public static boolean onEditorTouchEvent(@NotNull IEditor iEditor, @NotNull MotionEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            return false;
        }

        public static void setTextOrientation(@NotNull IEditor iEditor, int i) {
        }

        public static boolean supportMultiTextOrientation(@NotNull IEditor iEditor) {
            return false;
        }

        public static boolean supportRenderCache(@NotNull IEditor iEditor) {
            return false;
        }
    }

    boolean adjustEditorHeight(@NotNull EditorLayoutInfo sizeInfo, int contentHeight);

    boolean adjustEditorWidth(@NotNull EditorLayoutInfo sizeInfo, int contentWidth);

    void convert2Simplified();

    void convert2Traditional();

    void destroy();

    void enableEdit(boolean enable, boolean readOnly);

    void finishEdit();

    @NotNull
    Observable<Boolean> finishEditObservable();

    @Nullable
    RectF getCursorPosition(@NotNull Context context);

    float getEditorContentHeight();

    float getEditorContentWidth();

    float getEditorMinHeight();

    float getEditorMinWidth();

    @NotNull
    /* renamed from: getEditorView */
    View getRichEditor();

    float getEditorViewHeight();

    float getEditorViewWidth();

    @NotNull
    RectF getLimitRect();

    float getRotate();

    void insertText(@NotNull String content);

    @NotNull
    EditorContent loadFinalContent();

    boolean onEditorTouchEvent(@NotNull MotionEvent event);

    void onStartMoving();

    void reloadFont(@NotNull String fontFamily, @NotNull String fontPath);

    void setBold(boolean enable);

    void setCaretColor(int cursorColor);

    void setEventBusHolder(@Nullable EventBusHolder holder);

    void setFontColor(int fontColor);

    void setFontFace(@NotNull String fontFamily, @NotNull String fontPath, @NotNull String fontType);

    void setFontSize(float fontSize);

    void setItalic(boolean enable);

    void setLimitRect(@NotNull RectF rectF);

    void setLineSpacing(float spacingMulti);

    void setRotate(float rotate);

    void setScale(float scaleX, float scaleY);

    void setTextAlign(@NotNull String alignType);

    void setTextOrientation(int orientation);

    void setUnderline(boolean enable);

    void showEditorView();

    void startEdit(@NotNull PublishSubject<Boolean> subject, @NotNull TextBoxInitArgs args);

    boolean supportMultiTextOrientation();

    boolean supportRenderCache();
}
