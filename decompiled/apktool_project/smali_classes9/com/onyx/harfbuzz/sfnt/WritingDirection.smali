.class public final enum Lcom/onyx/harfbuzz/sfnt/WritingDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/harfbuzz/sfnt/WritingDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/harfbuzz/sfnt/WritingDirection;

.field public static final enum LEFT_TO_RIGHT:Lcom/onyx/harfbuzz/sfnt/WritingDirection;

.field public static final enum RIGHT_TO_LEFT:Lcom/onyx/harfbuzz/sfnt/WritingDirection;

.field public static final enum TOP_TO_BOTTOM:Lcom/onyx/harfbuzz/sfnt/WritingDirection;


# instance fields
.field final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/onyx/harfbuzz/sfnt/WritingDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/harfbuzz/sfnt/WritingDirection;->LEFT_TO_RIGHT:Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    new-instance v1, Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    const-string v2, "RIGHT_TO_LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/onyx/harfbuzz/sfnt/WritingDirection;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/onyx/harfbuzz/sfnt/WritingDirection;->RIGHT_TO_LEFT:Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    new-instance v2, Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    const-string v3, "TOP_TO_BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/onyx/harfbuzz/sfnt/WritingDirection;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/onyx/harfbuzz/sfnt/WritingDirection;->TOP_TO_BOTTOM:Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    move-result-object v0

    sput-object v0, Lcom/onyx/harfbuzz/sfnt/WritingDirection;->$VALUES:[Lcom/onyx/harfbuzz/sfnt/WritingDirection;

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

    iput p3, p0, Lcom/onyx/harfbuzz/sfnt/WritingDirection;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/onyx/harfbuzz/sfnt/WritingDirection;
    .locals 5

    .line 2
    invoke-static {}, Lcom/onyx/harfbuzz/sfnt/WritingDirection;->values()[Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lcom/onyx/harfbuzz/sfnt/WritingDirection;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/harfbuzz/sfnt/WritingDirection;
    .locals 1

    .line 1
    const-class v0, Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    return-object p0
.end method

.method public static values()[Lcom/onyx/harfbuzz/sfnt/WritingDirection;
    .locals 1

    sget-object v0, Lcom/onyx/harfbuzz/sfnt/WritingDirection;->$VALUES:[Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    invoke-virtual {v0}, [Lcom/onyx/harfbuzz/sfnt/WritingDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    return-object v0
.end method
