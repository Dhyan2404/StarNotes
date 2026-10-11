.class public final enum Lcom/onyx/harfbuzz/graphics/TypeWidth;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/harfbuzz/graphics/TypeWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/harfbuzz/graphics/TypeWidth;

.field private static final ALL_VALUES:[Lcom/onyx/harfbuzz/graphics/TypeWidth;

.field public static final enum CONDENSED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

.field public static final enum EXPANDED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

.field public static final enum EXTRA_CONDENSED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

.field public static final enum EXTRA_EXPANDED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

.field public static final enum NORMAL:Lcom/onyx/harfbuzz/graphics/TypeWidth;

.field public static final enum SEMI_CONDENSED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

.field public static final enum SEMI_EXPANDED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

.field public static final enum ULTRA_CONDENSED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

.field public static final enum ULTRA_EXPANDED:Lcom/onyx/harfbuzz/graphics/TypeWidth;


# instance fields
.field final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/onyx/harfbuzz/graphics/TypeWidth;

    const-string v1, "ULTRA_CONDENSED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/harfbuzz/graphics/TypeWidth;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/harfbuzz/graphics/TypeWidth;->ULTRA_CONDENSED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    new-instance v1, Lcom/onyx/harfbuzz/graphics/TypeWidth;

    const-string v2, "EXTRA_CONDENSED"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/onyx/harfbuzz/graphics/TypeWidth;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/onyx/harfbuzz/graphics/TypeWidth;->EXTRA_CONDENSED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    new-instance v2, Lcom/onyx/harfbuzz/graphics/TypeWidth;

    const-string v3, "CONDENSED"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/onyx/harfbuzz/graphics/TypeWidth;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/onyx/harfbuzz/graphics/TypeWidth;->CONDENSED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    new-instance v3, Lcom/onyx/harfbuzz/graphics/TypeWidth;

    const-string v4, "SEMI_CONDENSED"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/onyx/harfbuzz/graphics/TypeWidth;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/onyx/harfbuzz/graphics/TypeWidth;->SEMI_CONDENSED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    new-instance v4, Lcom/onyx/harfbuzz/graphics/TypeWidth;

    const-string v5, "NORMAL"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/onyx/harfbuzz/graphics/TypeWidth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/onyx/harfbuzz/graphics/TypeWidth;->NORMAL:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    new-instance v5, Lcom/onyx/harfbuzz/graphics/TypeWidth;

    const-string v6, "SEMI_EXPANDED"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/onyx/harfbuzz/graphics/TypeWidth;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/onyx/harfbuzz/graphics/TypeWidth;->SEMI_EXPANDED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    new-instance v6, Lcom/onyx/harfbuzz/graphics/TypeWidth;

    const-string v7, "EXPANDED"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/onyx/harfbuzz/graphics/TypeWidth;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/onyx/harfbuzz/graphics/TypeWidth;->EXPANDED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    new-instance v7, Lcom/onyx/harfbuzz/graphics/TypeWidth;

    const-string v8, "EXTRA_EXPANDED"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lcom/onyx/harfbuzz/graphics/TypeWidth;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/onyx/harfbuzz/graphics/TypeWidth;->EXTRA_EXPANDED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    new-instance v8, Lcom/onyx/harfbuzz/graphics/TypeWidth;

    const-string v9, "ULTRA_EXPANDED"

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lcom/onyx/harfbuzz/graphics/TypeWidth;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/onyx/harfbuzz/graphics/TypeWidth;->ULTRA_EXPANDED:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    filled-new-array/range {v0 .. v8}, [Lcom/onyx/harfbuzz/graphics/TypeWidth;

    move-result-object v0

    sput-object v0, Lcom/onyx/harfbuzz/graphics/TypeWidth;->$VALUES:[Lcom/onyx/harfbuzz/graphics/TypeWidth;

    invoke-static {}, Lcom/onyx/harfbuzz/graphics/TypeWidth;->values()[Lcom/onyx/harfbuzz/graphics/TypeWidth;

    move-result-object v0

    sput-object v0, Lcom/onyx/harfbuzz/graphics/TypeWidth;->ALL_VALUES:[Lcom/onyx/harfbuzz/graphics/TypeWidth;

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

    iput p3, p0, Lcom/onyx/harfbuzz/graphics/TypeWidth;->value:I

    return-void
.end method

.method public static fromWdth(F)Lcom/onyx/harfbuzz/graphics/TypeWidth;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/high16 v0, 0x42480000    # 50.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42fa0000    # 125.0f

    cmpg-float v2, p0, v1

    if-gez v2, :cond_1

    sub-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4029000000000000L    # 12.5

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    sub-float/2addr p0, v1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x40e00000    # 7.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_0

    :cond_2
    const/16 p0, 0x9

    :goto_0
    invoke-static {p0}, Lcom/onyx/harfbuzz/graphics/TypeWidth;->valueOf(I)Lcom/onyx/harfbuzz/graphics/TypeWidth;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(I)Lcom/onyx/harfbuzz/graphics/TypeWidth;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    add-int/lit8 p0, p0, -0x1

    .line 2
    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeWidth;->ALL_VALUES:[Lcom/onyx/harfbuzz/graphics/TypeWidth;

    const/16 v1, 0x8

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/TypeWidth;
    .locals 1

    .line 1
    const-class v0, Lcom/onyx/harfbuzz/graphics/TypeWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/harfbuzz/graphics/TypeWidth;

    return-object p0
.end method

.method public static values()[Lcom/onyx/harfbuzz/graphics/TypeWidth;
    .locals 1

    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeWidth;->$VALUES:[Lcom/onyx/harfbuzz/graphics/TypeWidth;

    invoke-virtual {v0}, [Lcom/onyx/harfbuzz/graphics/TypeWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/harfbuzz/graphics/TypeWidth;

    return-object v0
.end method
