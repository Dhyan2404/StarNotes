.class public final enum Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;",
        "",
        "titleResId",
        "",
        "(Ljava/lang/String;II)V",
        "getTitleResId",
        "()I",
        "setTitleResId",
        "(I)V",
        "COVER",
        "PAPER",
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

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

.field public static final enum COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

.field public static final enum PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;


# instance fields
.field private titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    filled-new-array {v0, v1}, [Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    const/4 v1, 0x0

    sget v2, Lcom/onyx/galaxy/note/R$string;->cover_template:I

    const-string v3, "COVER"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    new-instance v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    const/4 v1, 0x1

    sget v2, Lcom/onyx/galaxy/note/R$string;->paper_template:I

    const-string v3, "PAPER"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    invoke-static {}, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->$values()[Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->$VALUES:[Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput p3, p0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->titleResId:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->$VALUES:[Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    return-object v0
.end method


# virtual methods
.method public final getTitleResId()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->titleResId:I

    return p0
.end method

.method public final setTitleResId(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->titleResId:I

    return-void
.end method
