.class public final enum Lcom/onyx/harfbuzz/unicode/BaseDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/harfbuzz/unicode/BaseDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/harfbuzz/unicode/BaseDirection;

.field public static final enum DEFAULT_LEFT_TO_RIGHT:Lcom/onyx/harfbuzz/unicode/BaseDirection;

.field public static final enum DEFAULT_RIGHT_TO_LEFT:Lcom/onyx/harfbuzz/unicode/BaseDirection;

.field public static final enum LEFT_TO_RIGHT:Lcom/onyx/harfbuzz/unicode/BaseDirection;

.field public static final enum RIGHT_TO_LEFT:Lcom/onyx/harfbuzz/unicode/BaseDirection;


# instance fields
.field final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/onyx/harfbuzz/unicode/BaseDirection;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/onyx/harfbuzz/unicode/BaseDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/harfbuzz/unicode/BaseDirection;->LEFT_TO_RIGHT:Lcom/onyx/harfbuzz/unicode/BaseDirection;

    new-instance v1, Lcom/onyx/harfbuzz/unicode/BaseDirection;

    const-string v2, "RIGHT_TO_LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/onyx/harfbuzz/unicode/BaseDirection;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/onyx/harfbuzz/unicode/BaseDirection;->RIGHT_TO_LEFT:Lcom/onyx/harfbuzz/unicode/BaseDirection;

    new-instance v2, Lcom/onyx/harfbuzz/unicode/BaseDirection;

    const/4 v3, 0x2

    const/16 v4, 0xfe

    const-string v5, "DEFAULT_LEFT_TO_RIGHT"

    invoke-direct {v2, v5, v3, v4}, Lcom/onyx/harfbuzz/unicode/BaseDirection;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/onyx/harfbuzz/unicode/BaseDirection;->DEFAULT_LEFT_TO_RIGHT:Lcom/onyx/harfbuzz/unicode/BaseDirection;

    new-instance v3, Lcom/onyx/harfbuzz/unicode/BaseDirection;

    const/4 v4, 0x3

    const/16 v5, 0xfd

    const-string v6, "DEFAULT_RIGHT_TO_LEFT"

    invoke-direct {v3, v6, v4, v5}, Lcom/onyx/harfbuzz/unicode/BaseDirection;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/onyx/harfbuzz/unicode/BaseDirection;->DEFAULT_RIGHT_TO_LEFT:Lcom/onyx/harfbuzz/unicode/BaseDirection;

    filled-new-array {v0, v1, v2, v3}, [Lcom/onyx/harfbuzz/unicode/BaseDirection;

    move-result-object v0

    sput-object v0, Lcom/onyx/harfbuzz/unicode/BaseDirection;->$VALUES:[Lcom/onyx/harfbuzz/unicode/BaseDirection;

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

    iput p3, p0, Lcom/onyx/harfbuzz/unicode/BaseDirection;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/harfbuzz/unicode/BaseDirection;
    .locals 1

    const-class v0, Lcom/onyx/harfbuzz/unicode/BaseDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/harfbuzz/unicode/BaseDirection;

    return-object p0
.end method

.method public static values()[Lcom/onyx/harfbuzz/unicode/BaseDirection;
    .locals 1

    sget-object v0, Lcom/onyx/harfbuzz/unicode/BaseDirection;->$VALUES:[Lcom/onyx/harfbuzz/unicode/BaseDirection;

    invoke-virtual {v0}, [Lcom/onyx/harfbuzz/unicode/BaseDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/harfbuzz/unicode/BaseDirection;

    return-object v0
.end method
