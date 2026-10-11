.class public final enum Lcom/onyx/harfbuzz/graphics/TypeSlope;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/harfbuzz/graphics/TypeSlope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/harfbuzz/graphics/TypeSlope;

.field private static final ALL_VALUES:[Lcom/onyx/harfbuzz/graphics/TypeSlope;

.field public static final enum ITALIC:Lcom/onyx/harfbuzz/graphics/TypeSlope;

.field public static final enum OBLIQUE:Lcom/onyx/harfbuzz/graphics/TypeSlope;

.field public static final enum PLAIN:Lcom/onyx/harfbuzz/graphics/TypeSlope;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/onyx/harfbuzz/graphics/TypeSlope;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/harfbuzz/graphics/TypeSlope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/harfbuzz/graphics/TypeSlope;->PLAIN:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    new-instance v1, Lcom/onyx/harfbuzz/graphics/TypeSlope;

    const-string v2, "ITALIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/onyx/harfbuzz/graphics/TypeSlope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/onyx/harfbuzz/graphics/TypeSlope;->ITALIC:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    new-instance v2, Lcom/onyx/harfbuzz/graphics/TypeSlope;

    const-string v3, "OBLIQUE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/onyx/harfbuzz/graphics/TypeSlope;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/onyx/harfbuzz/graphics/TypeSlope;->OBLIQUE:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/harfbuzz/graphics/TypeSlope;

    move-result-object v0

    sput-object v0, Lcom/onyx/harfbuzz/graphics/TypeSlope;->$VALUES:[Lcom/onyx/harfbuzz/graphics/TypeSlope;

    invoke-static {}, Lcom/onyx/harfbuzz/graphics/TypeSlope;->values()[Lcom/onyx/harfbuzz/graphics/TypeSlope;

    move-result-object v0

    sput-object v0, Lcom/onyx/harfbuzz/graphics/TypeSlope;->ALL_VALUES:[Lcom/onyx/harfbuzz/graphics/TypeSlope;

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

.method public static fromItal(F)Lcom/onyx/harfbuzz/graphics/TypeSlope;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    sget-object p0, Lcom/onyx/harfbuzz/graphics/TypeSlope;->ITALIC:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/harfbuzz/graphics/TypeSlope;->PLAIN:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    :goto_0
    return-object p0
.end method

.method public static fromSlnt(F)Lcom/onyx/harfbuzz/graphics/TypeSlope;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/harfbuzz/graphics/TypeSlope;->OBLIQUE:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/harfbuzz/graphics/TypeSlope;->PLAIN:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    :goto_0
    return-object p0
.end method

.method public static valueOf(I)Lcom/onyx/harfbuzz/graphics/TypeSlope;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeSlope;->ALL_VALUES:[Lcom/onyx/harfbuzz/graphics/TypeSlope;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/TypeSlope;
    .locals 1

    .line 1
    const-class v0, Lcom/onyx/harfbuzz/graphics/TypeSlope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/harfbuzz/graphics/TypeSlope;

    return-object p0
.end method

.method public static values()[Lcom/onyx/harfbuzz/graphics/TypeSlope;
    .locals 1

    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeSlope;->$VALUES:[Lcom/onyx/harfbuzz/graphics/TypeSlope;

    invoke-virtual {v0}, [Lcom/onyx/harfbuzz/graphics/TypeSlope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/harfbuzz/graphics/TypeSlope;

    return-object v0
.end method
