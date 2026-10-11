.class public final enum Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0000J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0000J\u0006\u0010\u0008\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0000J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0000J\u0006\u0010\u000c\u001a\u00020\u0004j\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;",
        "",
        "(Ljava/lang/String;I)V",
        "isDragging",
        "",
        "isEnterDrag",
        "previous",
        "isEnterResize",
        "isMove",
        "isNone",
        "isQuitDrag",
        "isQuitResize",
        "isResizing",
        "NONE",
        "DRAG",
        "RESIZE",
        "GESTURE_RESIZE",
        "MOVE_LEFT",
        "MOVE_RIGHT",
        "MOVE_UP",
        "MOVE_DOWN",
        "MOVE_NEW_LINE",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

.field public static final enum DRAG:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

.field public static final enum GESTURE_RESIZE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

.field public static final enum MOVE_DOWN:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

.field public static final enum MOVE_LEFT:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

.field public static final enum MOVE_NEW_LINE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

.field public static final enum MOVE_RIGHT:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

.field public static final enum MOVE_UP:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

.field public static final enum NONE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

.field public static final enum RESIZE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
    .locals 9

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->NONE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->DRAG:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->RESIZE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    sget-object v3, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->GESTURE_RESIZE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    sget-object v4, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_LEFT:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    sget-object v5, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_RIGHT:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    sget-object v6, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_UP:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    sget-object v7, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_DOWN:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    sget-object v8, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_NEW_LINE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    filled-new-array/range {v0 .. v8}, [Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->NONE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const-string v1, "DRAG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->DRAG:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const-string v1, "RESIZE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->RESIZE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const-string v1, "GESTURE_RESIZE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->GESTURE_RESIZE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const-string v1, "MOVE_LEFT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_LEFT:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const-string v1, "MOVE_RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_RIGHT:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const-string v1, "MOVE_UP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_UP:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const-string v1, "MOVE_DOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_DOWN:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const-string v1, "MOVE_NEW_LINE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_NEW_LINE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    invoke-static {}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->$values()[Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->$VALUES:[Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->$VALUES:[Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    return-object v0
.end method


# virtual methods
.method public final isDragging()Z
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->DRAG:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnterDrag(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)Z
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "previous"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isDragging()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isDragging()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnterResize(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)Z
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "previous"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isResizing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isResizing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMove()Z
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_UP:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_DOWN:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_LEFT:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_RIGHT:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_NEW_LINE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isNone()Z
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->NONE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isQuitDrag(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)Z
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "previous"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isDragging()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isDragging()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isQuitResize(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)Z
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "previous"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isResizing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isResizing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isResizing()Z
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->RESIZE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->GESTURE_RESIZE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
