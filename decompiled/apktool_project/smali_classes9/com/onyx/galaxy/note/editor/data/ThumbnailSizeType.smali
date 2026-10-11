.class public final enum Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType$Companion;,
        Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;",
        "",
        "imageRes",
        "",
        "(Ljava/lang/String;II)V",
        "getImageRes",
        "()I",
        "switchNext",
        "SMALL",
        "LARGE",
        "Companion",
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

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

.field public static final Companion:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum LARGE:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

.field public static final enum SMALL:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;


# instance fields
.field private final imageRes:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->SMALL:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->LARGE:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    filled-new-array {v0, v1}, [Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    const/4 v1, 0x0

    sget v2, Lcom/onyx/galaxy/note/R$drawable;->ic_thumbnail_size_large:I

    const-string v3, "SMALL"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->SMALL:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    const/4 v1, 0x1

    sget v2, Lcom/onyx/galaxy/note/R$drawable;->ic_thumbnail_size_small:I

    const-string v3, "LARGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->LARGE:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->$values()[Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->$VALUES:[Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->Companion:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->imageRes:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->$VALUES:[Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    return-object v0
.end method


# virtual methods
.method public final getImageRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->imageRes:I

    return p0
.end method

.method public final switchNext()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->SMALL:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->LARGE:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    :goto_0
    return-object p0
.end method
