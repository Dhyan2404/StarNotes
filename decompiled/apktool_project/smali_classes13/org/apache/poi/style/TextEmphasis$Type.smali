.class final enum Lorg/apache/poi/style/TextEmphasis$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/style/TextEmphasis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/style/TextEmphasis$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/style/TextEmphasis$Type;

.field public static final enum CIRCLE:Lorg/apache/poi/style/TextEmphasis$Type;

.field public static final enum COMMA:Lorg/apache/poi/style/TextEmphasis$Type;

.field public static final enum DOT:Lorg/apache/poi/style/TextEmphasis$Type;

.field public static final enum NONE:Lorg/apache/poi/style/TextEmphasis$Type;

.field public static final enum UNDER_DOT:Lorg/apache/poi/style/TextEmphasis$Type;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/style/TextEmphasis$Type;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/style/TextEmphasis$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/style/TextEmphasis$Type;->NONE:Lorg/apache/poi/style/TextEmphasis$Type;

    new-instance v1, Lorg/apache/poi/style/TextEmphasis$Type;

    const/4 v2, 0x1

    const-string v3, "dot"

    const-string v4, "DOT"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/style/TextEmphasis$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/style/TextEmphasis$Type;->DOT:Lorg/apache/poi/style/TextEmphasis$Type;

    new-instance v2, Lorg/apache/poi/style/TextEmphasis$Type;

    const/4 v3, 0x2

    const-string v4, "comma"

    const-string v5, "COMMA"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/style/TextEmphasis$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/style/TextEmphasis$Type;->COMMA:Lorg/apache/poi/style/TextEmphasis$Type;

    new-instance v3, Lorg/apache/poi/style/TextEmphasis$Type;

    const/4 v4, 0x3

    const-string v5, "circle"

    const-string v6, "CIRCLE"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/style/TextEmphasis$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/style/TextEmphasis$Type;->CIRCLE:Lorg/apache/poi/style/TextEmphasis$Type;

    new-instance v4, Lorg/apache/poi/style/TextEmphasis$Type;

    const/4 v5, 0x4

    const-string v6, "under dot"

    const-string v7, "UNDER_DOT"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/style/TextEmphasis$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/style/TextEmphasis$Type;->UNDER_DOT:Lorg/apache/poi/style/TextEmphasis$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/poi/style/TextEmphasis$Type;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/style/TextEmphasis$Type;->$VALUES:[Lorg/apache/poi/style/TextEmphasis$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/style/TextEmphasis$Type;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/style/TextEmphasis$Type;
    .locals 1

    const-class v0, Lorg/apache/poi/style/TextEmphasis$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/TextEmphasis$Type;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/style/TextEmphasis$Type;
    .locals 1

    sget-object v0, Lorg/apache/poi/style/TextEmphasis$Type;->$VALUES:[Lorg/apache/poi/style/TextEmphasis$Type;

    invoke-virtual {v0}, [Lorg/apache/poi/style/TextEmphasis$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/style/TextEmphasis$Type;

    return-object v0
.end method
