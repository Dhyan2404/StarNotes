.class public final Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;",
        "",
        "()V",
        "lastOutlineType",
        "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;",
        "getLastOutlineType",
        "()Lcom/onyx/galaxy/note/category/data/NoteOutlineType;",
        "setLastOutlineType",
        "(Lcom/onyx/galaxy/note/category/data/NoteOutlineType;)V",
        "clearLastOutlineType",
        "",
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
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearLastOutlineType()V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->DocOverview:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;->setLastOutlineType(Lcom/onyx/galaxy/note/category/data/NoteOutlineType;)V

    return-void
.end method

.method public final getLastOutlineType()Lcom/onyx/galaxy/note/category/data/NoteOutlineType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getLastOutlineType$cp()Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    move-result-object p0

    return-object p0
.end method

.method public final setLastOutlineType(Lcom/onyx/galaxy/note/category/data/NoteOutlineType;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/category/data/NoteOutlineType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$setLastOutlineType$cp(Lcom/onyx/galaxy/note/category/data/NoteOutlineType;)V

    return-void
.end method
