.class public interface abstract Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u0004\u0018\u00010\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;",
        "",
        "richText",
        "",
        "getRichText",
        "()Ljava/lang/String;",
        "setRichText",
        "(Ljava/lang/String;)V",
        "textStyle",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "getTextStyle",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "setTextStyle",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V",
        "sdk-note_overseasRelease"
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
.method public abstract getRichText()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract setRichText(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
