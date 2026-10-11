.class public final enum Lcom/sunia/commonv2/enum2/EEngineVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sunia/commonv2/enum2/EEngineVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sunia/commonv2/enum2/EEngineVersion;

.field public static final enum v521:Lcom/sunia/commonv2/enum2/EEngineVersion;

.field public static final enum v522:Lcom/sunia/commonv2/enum2/EEngineVersion;

.field public static final enum v523:Lcom/sunia/commonv2/enum2/EEngineVersion;

.field public static final enum v524:Lcom/sunia/commonv2/enum2/EEngineVersion;

.field public static final enum v531:Lcom/sunia/commonv2/enum2/EEngineVersion;

.field public static final enum v541:Lcom/sunia/commonv2/enum2/EEngineVersion;

.field public static final enum v551:Lcom/sunia/commonv2/enum2/EEngineVersion;


# instance fields
.field private gitBranch:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sunia/commonv2/enum2/EEngineVersion;
    .locals 7

    sget-object v0, Lcom/sunia/commonv2/enum2/EEngineVersion;->v521:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sget-object v1, Lcom/sunia/commonv2/enum2/EEngineVersion;->v522:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sget-object v2, Lcom/sunia/commonv2/enum2/EEngineVersion;->v523:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sget-object v3, Lcom/sunia/commonv2/enum2/EEngineVersion;->v524:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sget-object v4, Lcom/sunia/commonv2/enum2/EEngineVersion;->v531:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sget-object v5, Lcom/sunia/commonv2/enum2/EEngineVersion;->v541:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sget-object v6, Lcom/sunia/commonv2/enum2/EEngineVersion;->v551:Lcom/sunia/commonv2/enum2/EEngineVersion;

    filled-new-array/range {v0 .. v6}, [Lcom/sunia/commonv2/enum2/EEngineVersion;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sunia/commonv2/enum2/EEngineVersion;

    const-string v1, "5.2.1.310"

    const-string v2, "release5.2.1"

    const-string v3, "v521"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sunia/commonv2/enum2/EEngineVersion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/enum2/EEngineVersion;->v521:Lcom/sunia/commonv2/enum2/EEngineVersion;

    new-instance v0, Lcom/sunia/commonv2/enum2/EEngineVersion;

    const-string v1, "release5.2.2"

    const-string v2, "v522"

    const/4 v3, 0x1

    const-string v4, "5.2.1.201"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sunia/commonv2/enum2/EEngineVersion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/enum2/EEngineVersion;->v522:Lcom/sunia/commonv2/enum2/EEngineVersion;

    new-instance v0, Lcom/sunia/commonv2/enum2/EEngineVersion;

    const/4 v1, 0x2

    const-string v2, "release5.2.3"

    const-string v3, "v523"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sunia/commonv2/enum2/EEngineVersion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/enum2/EEngineVersion;->v523:Lcom/sunia/commonv2/enum2/EEngineVersion;

    new-instance v0, Lcom/sunia/commonv2/enum2/EEngineVersion;

    const-string v1, "5.2.4.201"

    const-string v2, "release5.2.4"

    const-string v3, "v524"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sunia/commonv2/enum2/EEngineVersion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/enum2/EEngineVersion;->v524:Lcom/sunia/commonv2/enum2/EEngineVersion;

    new-instance v0, Lcom/sunia/commonv2/enum2/EEngineVersion;

    const-string v1, "5.3.1.201"

    const-string v2, "release5.3.1"

    const-string v3, "v531"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sunia/commonv2/enum2/EEngineVersion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/enum2/EEngineVersion;->v531:Lcom/sunia/commonv2/enum2/EEngineVersion;

    new-instance v0, Lcom/sunia/commonv2/enum2/EEngineVersion;

    const-string v1, "v541"

    const/4 v2, 0x5

    const-string v3, "5.4.1.201"

    const-string v4, "develop"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sunia/commonv2/enum2/EEngineVersion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/enum2/EEngineVersion;->v541:Lcom/sunia/commonv2/enum2/EEngineVersion;

    new-instance v0, Lcom/sunia/commonv2/enum2/EEngineVersion;

    const/4 v1, 0x6

    const-string v2, "5.5.1.200"

    const-string v3, "v551"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/sunia/commonv2/enum2/EEngineVersion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/enum2/EEngineVersion;->v551:Lcom/sunia/commonv2/enum2/EEngineVersion;

    invoke-static {}, Lcom/sunia/commonv2/enum2/EEngineVersion;->$values()[Lcom/sunia/commonv2/enum2/EEngineVersion;

    move-result-object v0

    sput-object v0, Lcom/sunia/commonv2/enum2/EEngineVersion;->$VALUES:[Lcom/sunia/commonv2/enum2/EEngineVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sunia/commonv2/enum2/EEngineVersion;->versionName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/commonv2/enum2/EEngineVersion;->gitBranch:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sunia/commonv2/enum2/EEngineVersion;
    .locals 1

    const-class v0, Lcom/sunia/commonv2/enum2/EEngineVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sunia/commonv2/enum2/EEngineVersion;

    return-object p0
.end method

.method public static values()[Lcom/sunia/commonv2/enum2/EEngineVersion;
    .locals 1

    sget-object v0, Lcom/sunia/commonv2/enum2/EEngineVersion;->$VALUES:[Lcom/sunia/commonv2/enum2/EEngineVersion;

    invoke-virtual {v0}, [Lcom/sunia/commonv2/enum2/EEngineVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/commonv2/enum2/EEngineVersion;

    return-object v0
.end method


# virtual methods
.method public getGitBranch()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/enum2/EEngineVersion;->gitBranch:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/enum2/EEngineVersion;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public isGreaterThanOrEqualV54()Z
    .locals 1

    iget-object p0, p0, Lcom/sunia/commonv2/enum2/EEngineVersion;->versionName:Ljava/lang/String;

    const-string v0, "5.4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isV52()Z
    .locals 1

    iget-object p0, p0, Lcom/sunia/commonv2/enum2/EEngineVersion;->versionName:Ljava/lang/String;

    const-string v0, "5.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isV53()Z
    .locals 1

    iget-object p0, p0, Lcom/sunia/commonv2/enum2/EEngineVersion;->versionName:Ljava/lang/String;

    const-string v0, "5.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isV54()Z
    .locals 1

    iget-object p0, p0, Lcom/sunia/commonv2/enum2/EEngineVersion;->versionName:Ljava/lang/String;

    const-string v0, "5.4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isV55()Z
    .locals 1

    iget-object p0, p0, Lcom/sunia/commonv2/enum2/EEngineVersion;->versionName:Ljava/lang/String;

    const-string v0, "5.5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setGitBranch(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/enum2/EEngineVersion;->gitBranch:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/enum2/EEngineVersion;->versionName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EEngineVersion{versionName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/commonv2/enum2/EEngineVersion;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gitBranch=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/commonv2/enum2/EEngineVersion;->gitBranch:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
