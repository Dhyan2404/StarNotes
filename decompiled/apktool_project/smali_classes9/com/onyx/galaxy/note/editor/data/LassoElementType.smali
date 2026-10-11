.class public final enum Lcom/onyx/galaxy/note/editor/data/LassoElementType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/editor/data/LassoElementType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\tj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/LassoElementType;",
        "",
        "type",
        "",
        "title",
        "(Ljava/lang/String;III)V",
        "getTitle",
        "()I",
        "setTitle",
        "(I)V",
        "getType",
        "setType",
        "GRAPH",
        "IMAGE",
        "TAPE",
        "TEXT",
        "HAND_WRITING",
        "MARK_PEN",
        "LINK",
        "TAG",
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

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/editor/data/LassoElementType;

.field public static final enum GRAPH:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

.field public static final enum HAND_WRITING:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

.field public static final enum IMAGE:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

.field public static final enum LINK:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

.field public static final enum MARK_PEN:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

.field public static final enum TAG:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

.field public static final enum TAPE:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

.field public static final enum TEXT:Lcom/onyx/galaxy/note/editor/data/LassoElementType;


# instance fields
.field private title:I

.field private type:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/editor/data/LassoElementType;
    .locals 8

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->GRAPH:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->IMAGE:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->TAPE:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->TEXT:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    sget-object v4, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->HAND_WRITING:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    sget-object v5, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->MARK_PEN:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    sget-object v6, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->LINK:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    sget-object v7, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->TAG:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    filled-new-array/range {v0 .. v7}, [Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    sget v1, Lcom/onyx/galaxy/note/R$string;->graph:I

    const-string v2, "GRAPH"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/galaxy/note/editor/data/LassoElementType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->GRAPH:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    const/16 v1, 0x13

    sget v2, Lcom/onyx/galaxy/note/R$string;->picture_and_sticker:I

    const-string v3, "IMAGE"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/editor/data/LassoElementType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->IMAGE:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    const/16 v1, 0x27

    sget v2, Lcom/onyx/galaxy/note/R$string;->tape:I

    const-string v3, "TAPE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/editor/data/LassoElementType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->TAPE:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    const/16 v1, 0x10

    sget v2, Lcom/onyx/galaxy/note/R$string;->text:I

    const-string v3, "TEXT"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/editor/data/LassoElementType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->TEXT:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    sget v1, Lcom/onyx/galaxy/note/R$string;->hand_writing:I

    const-string v2, "HAND_WRITING"

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/galaxy/note/editor/data/LassoElementType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->HAND_WRITING:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    const/16 v1, 0xf

    sget v2, Lcom/onyx/galaxy/note/R$string;->marker_pen:I

    const-string v3, "MARK_PEN"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/editor/data/LassoElementType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->MARK_PEN:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    const/16 v1, 0x21

    sget v2, Lcom/onyx/galaxy/note/R$string;->link:I

    const-string v3, "LINK"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/editor/data/LassoElementType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->LINK:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    const/16 v1, 0x2d

    sget v2, Lcom/onyx/galaxy/note/R$string;->tag:I

    const-string v3, "TAG"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/editor/data/LassoElementType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->TAG:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->$values()[Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->$VALUES:[Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->type:I

    iput p4, p0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->title:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/editor/data/LassoElementType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/data/LassoElementType;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/editor/data/LassoElementType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->$VALUES:[Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    return-object v0
.end method


# virtual methods
.method public final getTitle()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->title:I

    return p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->type:I

    return p0
.end method

.method public final setTitle(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->title:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->type:I

    return-void
.end method
