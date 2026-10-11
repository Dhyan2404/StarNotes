.class public final enum Lcom/vdurmont/emoji/Fitzpatrick;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vdurmont/emoji/Fitzpatrick;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vdurmont/emoji/Fitzpatrick;

.field public static final enum TYPE_1_2:Lcom/vdurmont/emoji/Fitzpatrick;

.field public static final enum TYPE_3:Lcom/vdurmont/emoji/Fitzpatrick;

.field public static final enum TYPE_4:Lcom/vdurmont/emoji/Fitzpatrick;

.field public static final enum TYPE_5:Lcom/vdurmont/emoji/Fitzpatrick;

.field public static final enum TYPE_6:Lcom/vdurmont/emoji/Fitzpatrick;


# instance fields
.field public final unicode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/vdurmont/emoji/Fitzpatrick;

    const/4 v1, 0x0

    const-string v2, "\ud83c\udffb"

    const-string v3, "TYPE_1_2"

    invoke-direct {v0, v3, v1, v2}, Lcom/vdurmont/emoji/Fitzpatrick;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vdurmont/emoji/Fitzpatrick;->TYPE_1_2:Lcom/vdurmont/emoji/Fitzpatrick;

    new-instance v1, Lcom/vdurmont/emoji/Fitzpatrick;

    const/4 v2, 0x1

    const-string v3, "\ud83c\udffc"

    const-string v4, "TYPE_3"

    invoke-direct {v1, v4, v2, v3}, Lcom/vdurmont/emoji/Fitzpatrick;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vdurmont/emoji/Fitzpatrick;->TYPE_3:Lcom/vdurmont/emoji/Fitzpatrick;

    new-instance v2, Lcom/vdurmont/emoji/Fitzpatrick;

    const/4 v3, 0x2

    const-string v4, "\ud83c\udffd"

    const-string v5, "TYPE_4"

    invoke-direct {v2, v5, v3, v4}, Lcom/vdurmont/emoji/Fitzpatrick;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/vdurmont/emoji/Fitzpatrick;->TYPE_4:Lcom/vdurmont/emoji/Fitzpatrick;

    new-instance v3, Lcom/vdurmont/emoji/Fitzpatrick;

    const/4 v4, 0x3

    const-string v5, "\ud83c\udffe"

    const-string v6, "TYPE_5"

    invoke-direct {v3, v6, v4, v5}, Lcom/vdurmont/emoji/Fitzpatrick;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/vdurmont/emoji/Fitzpatrick;->TYPE_5:Lcom/vdurmont/emoji/Fitzpatrick;

    new-instance v4, Lcom/vdurmont/emoji/Fitzpatrick;

    const/4 v5, 0x4

    const-string v6, "\ud83c\udfff"

    const-string v7, "TYPE_6"

    invoke-direct {v4, v7, v5, v6}, Lcom/vdurmont/emoji/Fitzpatrick;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/vdurmont/emoji/Fitzpatrick;->TYPE_6:Lcom/vdurmont/emoji/Fitzpatrick;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/vdurmont/emoji/Fitzpatrick;

    move-result-object v0

    sput-object v0, Lcom/vdurmont/emoji/Fitzpatrick;->$VALUES:[Lcom/vdurmont/emoji/Fitzpatrick;

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

    iput-object p3, p0, Lcom/vdurmont/emoji/Fitzpatrick;->unicode:Ljava/lang/String;

    return-void
.end method

.method public static fitzpatrickFromType(Ljava/lang/String;)Lcom/vdurmont/emoji/Fitzpatrick;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/vdurmont/emoji/Fitzpatrick;->valueOf(Ljava/lang/String;)Lcom/vdurmont/emoji/Fitzpatrick;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fitzpatrickFromUnicode(Ljava/lang/String;)Lcom/vdurmont/emoji/Fitzpatrick;
    .locals 5

    invoke-static {}, Lcom/vdurmont/emoji/Fitzpatrick;->values()[Lcom/vdurmont/emoji/Fitzpatrick;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/vdurmont/emoji/Fitzpatrick;->unicode:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vdurmont/emoji/Fitzpatrick;
    .locals 1

    const-class v0, Lcom/vdurmont/emoji/Fitzpatrick;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vdurmont/emoji/Fitzpatrick;

    return-object p0
.end method

.method public static values()[Lcom/vdurmont/emoji/Fitzpatrick;
    .locals 1

    sget-object v0, Lcom/vdurmont/emoji/Fitzpatrick;->$VALUES:[Lcom/vdurmont/emoji/Fitzpatrick;

    invoke-virtual {v0}, [Lcom/vdurmont/emoji/Fitzpatrick;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vdurmont/emoji/Fitzpatrick;

    return-object v0
.end method
