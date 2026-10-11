.class public final Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;",
        "",
        "()V",
        "ITEM_TYPE_SECTION_SHORTCUT",
        "",
        "ITEM_TYPE_SECTION_TITLE",
        "SECTION_TITLE_LEFT",
        "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        "getSECTION_TITLE_LEFT",
        "()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        "SECTION_TITLE_RIGHT",
        "getSECTION_TITLE_RIGHT",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSECTION_TITLE_LEFT()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->access$getSECTION_TITLE_LEFT$cp()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    move-result-object p0

    return-object p0
.end method

.method public final getSECTION_TITLE_RIGHT()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->access$getSECTION_TITLE_RIGHT$cp()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    move-result-object p0

    return-object p0
.end method
