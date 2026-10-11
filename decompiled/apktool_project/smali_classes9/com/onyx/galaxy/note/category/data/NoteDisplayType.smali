.class public final enum Lcom/onyx/galaxy/note/category/data/NoteDisplayType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/data/NoteDisplayType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;II)V",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "isGrid",
        "",
        "reverse",
        "DISPLAY_GRID",
        "DISPLAY_LIST",
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

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

.field public static final enum DISPLAY_GRID:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

.field public static final enum DISPLAY_LIST:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;


# instance fields
.field private type:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/category/data/NoteDisplayType;
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_GRID:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_LIST:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    filled-new-array {v0, v1}, [Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    const-string v1, "DISPLAY_GRID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_GRID:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    new-instance v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    const-string v1, "DISPLAY_LIST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_LIST:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-static {}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->$values()[Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->$VALUES:[Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->type:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/category/data/NoteDisplayType;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/category/data/NoteDisplayType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->$VALUES:[Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->type:I

    return p0
.end method

.method public final isGrid()Z
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_GRID:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final reverse()Lcom/onyx/galaxy/note/category/data/NoteDisplayType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_GRID:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_LIST:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    :goto_0
    return-object p0
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->type:I

    return-void
.end method
