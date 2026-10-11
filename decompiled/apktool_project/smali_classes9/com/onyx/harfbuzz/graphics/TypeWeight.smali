.class public final enum Lcom/onyx/harfbuzz/graphics/TypeWeight;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/harfbuzz/graphics/TypeWeight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/harfbuzz/graphics/TypeWeight;

.field private static final ALL_VALUES:[Lcom/onyx/harfbuzz/graphics/TypeWeight;

.field public static final enum BOLD:Lcom/onyx/harfbuzz/graphics/TypeWeight;

.field public static final enum EXTRA_BOLD:Lcom/onyx/harfbuzz/graphics/TypeWeight;

.field public static final enum EXTRA_LIGHT:Lcom/onyx/harfbuzz/graphics/TypeWeight;

.field public static final enum HEAVY:Lcom/onyx/harfbuzz/graphics/TypeWeight;

.field public static final enum LIGHT:Lcom/onyx/harfbuzz/graphics/TypeWeight;

.field public static final enum MEDIUM:Lcom/onyx/harfbuzz/graphics/TypeWeight;

.field public static final enum REGULAR:Lcom/onyx/harfbuzz/graphics/TypeWeight;

.field public static final enum SEMI_BOLD:Lcom/onyx/harfbuzz/graphics/TypeWeight;

.field public static final enum THIN:Lcom/onyx/harfbuzz/graphics/TypeWeight;


# instance fields
.field final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/onyx/harfbuzz/graphics/TypeWeight;

    const/4 v1, 0x0

    const/16 v2, 0x64

    const-string v3, "THIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/harfbuzz/graphics/TypeWeight;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/harfbuzz/graphics/TypeWeight;->THIN:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    new-instance v1, Lcom/onyx/harfbuzz/graphics/TypeWeight;

    const/4 v2, 0x1

    const/16 v3, 0xc8

    const-string v4, "EXTRA_LIGHT"

    invoke-direct {v1, v4, v2, v3}, Lcom/onyx/harfbuzz/graphics/TypeWeight;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/onyx/harfbuzz/graphics/TypeWeight;->EXTRA_LIGHT:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    new-instance v2, Lcom/onyx/harfbuzz/graphics/TypeWeight;

    const/4 v3, 0x2

    const/16 v4, 0x12c

    const-string v5, "LIGHT"

    invoke-direct {v2, v5, v3, v4}, Lcom/onyx/harfbuzz/graphics/TypeWeight;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/onyx/harfbuzz/graphics/TypeWeight;->LIGHT:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    new-instance v3, Lcom/onyx/harfbuzz/graphics/TypeWeight;

    const/4 v4, 0x3

    const/16 v5, 0x190

    const-string v6, "REGULAR"

    invoke-direct {v3, v6, v4, v5}, Lcom/onyx/harfbuzz/graphics/TypeWeight;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/onyx/harfbuzz/graphics/TypeWeight;->REGULAR:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    new-instance v4, Lcom/onyx/harfbuzz/graphics/TypeWeight;

    const/4 v5, 0x4

    const/16 v6, 0x1f4

    const-string v7, "MEDIUM"

    invoke-direct {v4, v7, v5, v6}, Lcom/onyx/harfbuzz/graphics/TypeWeight;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/onyx/harfbuzz/graphics/TypeWeight;->MEDIUM:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    new-instance v5, Lcom/onyx/harfbuzz/graphics/TypeWeight;

    const/4 v6, 0x5

    const/16 v7, 0x258

    const-string v8, "SEMI_BOLD"

    invoke-direct {v5, v8, v6, v7}, Lcom/onyx/harfbuzz/graphics/TypeWeight;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/onyx/harfbuzz/graphics/TypeWeight;->SEMI_BOLD:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    new-instance v6, Lcom/onyx/harfbuzz/graphics/TypeWeight;

    const/4 v7, 0x6

    const/16 v8, 0x2bc

    const-string v9, "BOLD"

    invoke-direct {v6, v9, v7, v8}, Lcom/onyx/harfbuzz/graphics/TypeWeight;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/onyx/harfbuzz/graphics/TypeWeight;->BOLD:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    new-instance v7, Lcom/onyx/harfbuzz/graphics/TypeWeight;

    const/4 v8, 0x7

    const/16 v9, 0x320

    const-string v10, "EXTRA_BOLD"

    invoke-direct {v7, v10, v8, v9}, Lcom/onyx/harfbuzz/graphics/TypeWeight;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/onyx/harfbuzz/graphics/TypeWeight;->EXTRA_BOLD:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    new-instance v8, Lcom/onyx/harfbuzz/graphics/TypeWeight;

    const/16 v9, 0x8

    const/16 v10, 0x384

    const-string v11, "HEAVY"

    invoke-direct {v8, v11, v9, v10}, Lcom/onyx/harfbuzz/graphics/TypeWeight;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/onyx/harfbuzz/graphics/TypeWeight;->HEAVY:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    filled-new-array/range {v0 .. v8}, [Lcom/onyx/harfbuzz/graphics/TypeWeight;

    move-result-object v0

    sput-object v0, Lcom/onyx/harfbuzz/graphics/TypeWeight;->$VALUES:[Lcom/onyx/harfbuzz/graphics/TypeWeight;

    invoke-static {}, Lcom/onyx/harfbuzz/graphics/TypeWeight;->values()[Lcom/onyx/harfbuzz/graphics/TypeWeight;

    move-result-object v0

    sput-object v0, Lcom/onyx/harfbuzz/graphics/TypeWeight;->ALL_VALUES:[Lcom/onyx/harfbuzz/graphics/TypeWeight;

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

    iput p3, p0, Lcom/onyx/harfbuzz/graphics/TypeWeight;->value:I

    return-void
.end method

.method public static fromWght(F)Lcom/onyx/harfbuzz/graphics/TypeWeight;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/16 p0, 0x3e8

    goto :goto_0

    :cond_1
    float-to-int p0, p0

    :goto_0
    invoke-static {p0}, Lcom/onyx/harfbuzz/graphics/TypeWeight;->valueOf(I)Lcom/onyx/harfbuzz/graphics/TypeWeight;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(I)Lcom/onyx/harfbuzz/graphics/TypeWeight;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p0, v0

    float-to-int p0, p0

    .line 2
    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeWeight;->ALL_VALUES:[Lcom/onyx/harfbuzz/graphics/TypeWeight;

    const/16 v1, 0x8

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/TypeWeight;
    .locals 1

    .line 1
    const-class v0, Lcom/onyx/harfbuzz/graphics/TypeWeight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/harfbuzz/graphics/TypeWeight;

    return-object p0
.end method

.method public static values()[Lcom/onyx/harfbuzz/graphics/TypeWeight;
    .locals 1

    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeWeight;->$VALUES:[Lcom/onyx/harfbuzz/graphics/TypeWeight;

    invoke-virtual {v0}, [Lcom/onyx/harfbuzz/graphics/TypeWeight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/harfbuzz/graphics/TypeWeight;

    return-object v0
.end method
