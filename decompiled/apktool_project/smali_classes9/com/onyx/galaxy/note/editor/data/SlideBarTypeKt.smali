.class public final Lcom/onyx/galaxy/note/editor/data/SlideBarTypeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toShortcutType",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
        "note_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toShortcutType(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Lcom/onyx/galaxy/note/editor/data/ShortcutType;
    .locals 1
    .param p0    # Lcom/onyx/galaxy/note/editor/data/SlideBarType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_MORE_SETTING:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_OTHER_SETTINGS:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_DOC_OVERVIEW:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    :goto_0
    return-object p0
.end method
