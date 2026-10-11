.class public Lorg/apache/logging/log4j/message/StructuredDataId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# static fields
.field private static final AT_SIGN:Ljava/lang/String; = "@"

.field private static final MAX_LENGTH:I = 0x20

.field public static final META:Lorg/apache/logging/log4j/message/StructuredDataId;

.field public static final ORIGIN:Lorg/apache/logging/log4j/message/StructuredDataId;

.field public static final RESERVED:I = -0x1

.field public static final TIME_QUALITY:Lorg/apache/logging/log4j/message/StructuredDataId;

.field private static final serialVersionUID:J = 0x7d573562da0e3386L


# instance fields
.field private final enterpriseNumber:I

.field private final name:Ljava/lang/String;

.field private final optional:[Ljava/lang/String;

.field private final required:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataId;

    const-string v1, "isSynced"

    const-string v2, "syncAccuracy"

    const-string v3, "tzKnown"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeQuality"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/message/StructuredDataId;->TIME_QUALITY:Lorg/apache/logging/log4j/message/StructuredDataId;

    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataId;

    const-string v1, "software"

    const-string v2, "swVersion"

    const-string v4, "ip"

    const-string v5, "enterpriseId"

    filled-new-array {v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "origin"

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/message/StructuredDataId;->ORIGIN:Lorg/apache/logging/log4j/message/StructuredDataId;

    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataId;

    const-string v1, "sysUpTime"

    const-string v2, "language"

    const-string v4, "sequenceId"

    filled-new-array {v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "meta"

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/message/StructuredDataId;->META:Lorg/apache/logging/log4j/message/StructuredDataId;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x20

    .line 1
    invoke-direct {p0, p1, v0, v0, v1}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "maxLength"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0, p2}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "enterpriseNumber",
            "required",
            "optional"
        }
    .end annotation

    const/16 v5, 0x20

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 16
    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "enterpriseNumber",
            "required",
            "optional",
            "maxLength"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    const-string v0, "@"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-lez p2, :cond_2

    .line 19
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    .line 20
    iput p2, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->enterpriseNumber:I

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-lez p5, :cond_1

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, p5, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Length of id exceeds maximum of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " characters: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_1
    :goto_0
    iput-object p3, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->required:[Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->optional:[Ljava/lang/String;

    return-void

    .line 26
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No enterprise number was supplied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Structured id name cannot contain an "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No structured id name was supplied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "required",
            "optional"
        }
    .end annotation

    const/16 v0, 0x20

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "name",
            "required",
            "optional",
            "maxLength"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-gtz p4, :cond_0

    const/16 p4, 0x20

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p4, :cond_1

    const-string p4, "@"

    .line 6
    invoke-virtual {p1, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 8
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Length of id %s exceeds maximum of %d characters"

    .line 9
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move p4, v0

    :goto_0
    if-lez p4, :cond_3

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 11
    invoke-virtual {p1, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->enterpriseNumber:I

    goto :goto_1

    .line 12
    :cond_3
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    .line 13
    iput v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->enterpriseNumber:I

    .line 14
    :goto_1
    iput-object p2, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->required:[Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->optional:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StructuredDataId;->isReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->enterpriseNumber:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public getEnterpriseNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->enterpriseNumber:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOptional()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->optional:[Ljava/lang/String;

    return-object p0
.end method

.method public getRequired()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->required:[Ljava/lang/String;

    return-object p0
.end method

.method public isReserved()Z
    .locals 0

    iget p0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->enterpriseNumber:I

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makeId(Ljava/lang/String;I)Lorg/apache/logging/log4j/message/StructuredDataId;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "defaultId",
            "anEnterpriseNumber"
        }
    .end annotation

    if-gtz p2, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->required:[Ljava/lang/String;

    .line 4
    iget-object p0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->optional:[Ljava/lang/String;

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    move-object v0, p0

    .line 5
    :goto_0
    new-instance v1, Lorg/apache/logging/log4j/message/StructuredDataId;

    invoke-direct {v1, p1, p2, v0, p0}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method public makeId(Lorg/apache/logging/log4j/message/StructuredDataId;)Lorg/apache/logging/log4j/message/StructuredDataId;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/message/StructuredDataId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/message/StructuredDataId;->getEnterpriseNumber()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/message/StructuredDataId;->makeId(Ljava/lang/String;I)Lorg/apache/logging/log4j/message/StructuredDataId;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/message/StructuredDataId;->formatTo(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
