.class public interface abstract Lcom/onyx/android/sdk/textbox/editor/IEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/textbox/editor/IEditor$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0007H&J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\u000bH&J\u0008\u0010\r\u001a\u00020\u000bH&J\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H&J\u0008\u0010\u0011\u001a\u00020\u000bH&J\u0013\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\u00030\u0013\u00a2\u0006\u0002\u0008\u0014H\u0016J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0008\u0010\u0019\u001a\u00020\u001aH&J\u0008\u0010\u001b\u001a\u00020\u001aH&J\u0008\u0010\u001c\u001a\u00020\u001aH&J\u0008\u0010\u001d\u001a\u00020\u001aH&J\u0008\u0010\u001e\u001a\u00020\u001fH&J\u0008\u0010 \u001a\u00020\u001aH&J\u0008\u0010!\u001a\u00020\u001aH&J\u0008\u0010\"\u001a\u00020\u0016H&J\u0008\u0010#\u001a\u00020\u001aH&J\u0010\u0010$\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020&H&J\u0008\u0010\'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020+H\u0016J\u0008\u0010,\u001a\u00020\u000bH&J\u0018\u0010-\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020&2\u0006\u0010/\u001a\u00020&H&J\u0010\u00100\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0003H&J\u0010\u00101\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u0007H&J\u0012\u00103\u001a\u00020\u000b2\u0008\u00104\u001a\u0004\u0018\u000105H&J\u0010\u00106\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u0007H&J \u00108\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020&2\u0006\u0010/\u001a\u00020&2\u0006\u00109\u001a\u00020&H&J\u0010\u0010:\u001a\u00020\u000b2\u0006\u0010;\u001a\u00020\u001aH&J\u0010\u0010<\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0003H&J\u0010\u0010=\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u0016H&J\u0010\u0010?\u001a\u00020\u000b2\u0006\u0010@\u001a\u00020\u001aH&J\u0010\u0010A\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\u001aH&J\u0018\u0010C\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020\u001a2\u0006\u0010E\u001a\u00020\u001aH&J\u0010\u0010F\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020&H&J\u0010\u0010H\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020\u0007H\u0016J\u0010\u0010J\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0003H&J\u0008\u0010K\u001a\u00020\u000bH&J\u001e\u0010L\u001a\u00020\u000b2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00030N2\u0006\u0010O\u001a\u00020PH&J\u0008\u0010Q\u001a\u00020\u0003H\u0016J\u0008\u0010R\u001a\u00020\u0003H\u0016\u00a8\u0006S"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/editor/IEditor;",
        "",
        "adjustEditorHeight",
        "",
        "sizeInfo",
        "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;",
        "contentHeight",
        "",
        "adjustEditorWidth",
        "contentWidth",
        "convert2Simplified",
        "",
        "convert2Traditional",
        "destroy",
        "enableEdit",
        "enable",
        "readOnly",
        "finishEdit",
        "finishEditObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "getCursorPosition",
        "Landroid/graphics/RectF;",
        "context",
        "Landroid/content/Context;",
        "getEditorContentHeight",
        "",
        "getEditorContentWidth",
        "getEditorMinHeight",
        "getEditorMinWidth",
        "getEditorView",
        "Landroid/view/View;",
        "getEditorViewHeight",
        "getEditorViewWidth",
        "getLimitRect",
        "getRotate",
        "insertText",
        "content",
        "",
        "loadFinalContent",
        "Lcom/onyx/android/sdk/textbox/data/EditorContent;",
        "onEditorTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "onStartMoving",
        "reloadFont",
        "fontFamily",
        "fontPath",
        "setBold",
        "setCaretColor",
        "cursorColor",
        "setEventBusHolder",
        "holder",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "setFontColor",
        "fontColor",
        "setFontFace",
        "fontType",
        "setFontSize",
        "fontSize",
        "setItalic",
        "setLimitRect",
        "rectF",
        "setLineSpacing",
        "spacingMulti",
        "setRotate",
        "rotate",
        "setScale",
        "scaleX",
        "scaleY",
        "setTextAlign",
        "alignType",
        "setTextOrientation",
        "orientation",
        "setUnderline",
        "showEditorView",
        "startEdit",
        "subject",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "args",
        "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
        "supportMultiTextOrientation",
        "supportRenderCache",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract adjustEditorHeight(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;I)Z
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract adjustEditorWidth(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;I)Z
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract convert2Simplified()V
.end method

.method public abstract convert2Traditional()V
.end method

.method public abstract destroy()V
.end method

.method public abstract enableEdit(ZZ)V
.end method

.method public abstract finishEdit()V
.end method

.method public abstract finishEditObservable()Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getCursorPosition(Landroid/content/Context;)Landroid/graphics/RectF;
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getEditorContentHeight()F
.end method

.method public abstract getEditorContentWidth()F
.end method

.method public abstract getEditorMinHeight()F
.end method

.method public abstract getEditorMinWidth()F
.end method

.method public abstract getEditorView()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getEditorViewHeight()F
.end method

.method public abstract getEditorViewWidth()F
.end method

.method public abstract getLimitRect()Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getRotate()F
.end method

.method public abstract insertText(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract loadFinalContent()Lcom/onyx/android/sdk/textbox/data/EditorContent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract onEditorTouchEvent(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onStartMoving()V
.end method

.method public abstract reloadFont(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setBold(Z)V
.end method

.method public abstract setCaretColor(I)V
.end method

.method public abstract setEventBusHolder(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setFontColor(I)V
.end method

.method public abstract setFontFace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setFontSize(F)V
.end method

.method public abstract setItalic(Z)V
.end method

.method public abstract setLimitRect(Landroid/graphics/RectF;)V
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setLineSpacing(F)V
.end method

.method public abstract setRotate(F)V
.end method

.method public abstract setScale(FF)V
.end method

.method public abstract setTextAlign(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setTextOrientation(I)V
.end method

.method public abstract setUnderline(Z)V
.end method

.method public abstract showEditorView()V
.end method

.method public abstract startEdit(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .param p1    # Lio/reactivex/rxjava3/subjects/PublishSubject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
            ")V"
        }
    .end annotation
.end method

.method public abstract supportMultiTextOrientation()Z
.end method

.method public abstract supportRenderCache()Z
.end method
