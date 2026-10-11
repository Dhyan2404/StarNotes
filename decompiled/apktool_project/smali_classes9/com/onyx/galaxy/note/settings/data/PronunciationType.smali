.class public final enum Lcom/onyx/galaxy/note/settings/data/PronunciationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/settings/data/PronunciationType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\tj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/data/PronunciationType;",
        "",
        "type",
        "",
        "displayName",
        "(Ljava/lang/String;III)V",
        "getDisplayName",
        "()I",
        "setDisplayName",
        "(I)V",
        "getType",
        "setType",
        "BRITISH",
        "AMERICAN",
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

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/settings/data/PronunciationType;

.field public static final enum AMERICAN:Lcom/onyx/galaxy/note/settings/data/PronunciationType;

.field public static final enum BRITISH:Lcom/onyx/galaxy/note/settings/data/PronunciationType;


# instance fields
.field private displayName:I

.field private type:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/settings/data/PronunciationType;
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->BRITISH:Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->AMERICAN:Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    filled-new-array {v0, v1}, [Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    const/4 v1, 0x0

    sget v2, Lcom/onyx/galaxy/note/R$string;->british_pronunciation:I

    const-string v3, "BRITISH"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/onyx/galaxy/note/settings/data/PronunciationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->BRITISH:Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    const/4 v1, 0x1

    sget v2, Lcom/onyx/galaxy/note/R$string;->american_pronunciation:I

    const-string v3, "AMERICAN"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/onyx/galaxy/note/settings/data/PronunciationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->AMERICAN:Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->$values()[Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->$VALUES:[Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput p3, p0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->type:I

    iput p4, p0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->displayName:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/settings/data/PronunciationType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/data/PronunciationType;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/settings/data/PronunciationType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->$VALUES:[Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->displayName:I

    return p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->type:I

    return p0
.end method

.method public final setDisplayName(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->displayName:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->type:I

    return-void
.end method
