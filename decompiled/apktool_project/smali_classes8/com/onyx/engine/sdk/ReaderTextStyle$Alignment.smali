.class public final enum Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/engine/sdk/ReaderTextStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

.field public static final enum ALIGNMENT_JUSTIFY:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

.field public static final enum ALIGNMENT_LEFT:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

.field public static final enum ALIGNMENT_NONE:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

.field public static final enum ALIGNMENT_RIGHT:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;
    .locals 4

    sget-object v0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_NONE:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    sget-object v1, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_LEFT:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    sget-object v2, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_RIGHT:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    sget-object v3, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_JUSTIFY:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    filled-new-array {v0, v1, v2, v3}, [Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    const-string v1, "ALIGNMENT_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_NONE:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    new-instance v0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    const-string v1, "ALIGNMENT_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_LEFT:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    new-instance v0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    const-string v1, "ALIGNMENT_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_RIGHT:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    new-instance v0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    const-string v1, "ALIGNMENT_JUSTIFY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_JUSTIFY:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    invoke-static {}, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->$values()[Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->$VALUES:[Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

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

.method public static valueOf(I)Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;
    .locals 5

    .line 2
    invoke-static {}, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->values()[Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_NONE:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;
    .locals 1

    .line 1
    const-class v0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->$VALUES:[Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    return-object v0
.end method
