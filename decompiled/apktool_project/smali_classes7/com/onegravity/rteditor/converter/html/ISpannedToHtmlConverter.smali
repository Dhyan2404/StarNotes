.class public interface abstract Lcom/onegravity/rteditor/converter/html/ISpannedToHtmlConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H&J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onegravity/rteditor/converter/html/ISpannedToHtmlConverter;",
        "",
        "convertText",
        "",
        "spans",
        "Ljava/util/SortedSet;",
        "Landroid/text/style/CharacterStyle;",
        "start",
        "",
        "end",
        "getImageList",
        "",
        "Lcom/onegravity/rteditor/api/media/RTImage;",
        "sdk-rteditor_release"
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
.method public abstract convertText(Ljava/util/SortedSet;II)V
    .param p1    # Ljava/util/SortedSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract getImageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
