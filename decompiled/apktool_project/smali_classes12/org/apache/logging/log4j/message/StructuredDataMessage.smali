.class public Lorg/apache/logging/log4j/message/StructuredDataMessage;
.super Lorg/apache/logging/log4j/message/MapMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/message/MapMessage<",
        "Lorg/apache/logging/log4j/message/StructuredDataMessage;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/message/AsynchronouslyFormattable;
.end annotation


# static fields
.field private static final HASHVAL:I = 0x1f

.field private static final MAX_LENGTH:I = 0x20

.field private static final serialVersionUID:J = 0x17a30ebde8b6a7f0L


# instance fields
.field private id:Lorg/apache/logging/log4j/message/StructuredDataId;

.field private final maxLength:I

.field private message:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/MapMessage;-><init>()V

    const/16 v0, 0x20

    .line 31
    iput v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type"
        }
    .end annotation

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type",
            "maxLength"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/MapMessage;-><init>()V

    .line 3
    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, p4}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 4
    iput-object p2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    .line 6
    iput p4, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v5, 0x20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/message/StructuredDataMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type",
            "data",
            "maxLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p4}, Lorg/apache/logging/log4j/message/MapMessage;-><init>(Ljava/util/Map;)V

    .line 9
    new-instance p4, Lorg/apache/logging/log4j/message/StructuredDataId;

    const/4 v0, 0x0

    invoke-direct {p4, p1, v0, v0, p5}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object p4, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 10
    iput-object p2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    .line 12
    iput p5, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type"
        }
    .end annotation

    const/16 v0, 0x20

    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;-><init>(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type",
            "maxLength"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/MapMessage;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 16
    iput-object p2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    .line 18
    iput p4, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/message/StructuredDataId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v5, 0x20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 19
    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/message/StructuredDataMessage;-><init>(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type",
            "data",
            "maxLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/message/StructuredDataId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p4}, Lorg/apache/logging/log4j/message/MapMessage;-><init>(Ljava/util/Map;)V

    .line 21
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 22
    iput-object p2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    .line 24
    iput p5, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    return-void
.end method

.method private constructor <init>(Lorg/apache/logging/log4j/message/StructuredDataMessage;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msg",
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/message/StructuredDataMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;-><init>(Ljava/util/Map;)V

    .line 26
    iget-object p2, p1, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    iput-object p2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 27
    iget-object p2, p1, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    .line 28
    iget-object p1, p1, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    const/16 p1, 0x20

    .line 29
    iput p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    return-void
.end method

.method private asXml(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "structuredDataId",
            "sb"
        }
    .end annotation

    const-string v0, "<StructuredData>\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<type>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</type>\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<id>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "</id>\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->asXml(Ljava/lang/StringBuilder;)V

    const-string p0, "\n</StructuredData>\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private getFormat([Ljava/lang/String;)Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "formats"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 2
    array-length p0, p1

    if-lez p0, :cond_3

    const/4 p0, 0x0

    .line 3
    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_2

    .line 4
    aget-object v0, p1, p0

    .line 5
    sget-object v1, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->XML:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 6
    :cond_0
    sget-object v1, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_3
    sget-object p0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    return-object p0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public asString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "format"
        }
    .end annotation

    .line 2
    :try_start_0
    const-class v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/util/EnglishEnums;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "format",
            "structuredDataId"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/StringBuilder;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "format",
            "structuredDataId",
            "sb"
        }
    .end annotation

    .line 7
    sget-object v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getId()Lorg/apache/logging/log4j/message/StructuredDataId;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2, p2}, Lorg/apache/logging/log4j/message/StructuredDataId;->makeId(Lorg/apache/logging/log4j/message/StructuredDataId;)Lorg/apache/logging/log4j/message/StructuredDataId;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_5

    .line 12
    invoke-virtual {p2}, Lorg/apache/logging/log4j/message/StructuredDataId;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    sget-object v2, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->XML:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-direct {p0, p2, p3}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asXml(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/StringBuilder;)V

    return-void

    :cond_4
    const/16 p1, 0x5b

    .line 15
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {p3, p2}, Lorg/apache/logging/log4j/util/StringBuilders;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0, p3}, Lorg/apache/logging/log4j/message/MapMessage;->appendMap(Ljava/lang/StringBuilder;)V

    const/16 p1, 0x5d

    .line 19
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getFormat()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 21
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    invoke-super {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object v3, v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    iget-object p1, v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    if-eqz p1, :cond_4

    :goto_0
    return v1

    :cond_4
    iget-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    if-eqz p1, :cond_5

    iget-object v3, v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_5
    iget-object p1, v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    if-eqz p1, :cond_6

    :goto_1
    return v1

    :cond_6
    iget-object p0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    if-eqz p0, :cond_7

    iget-object p1, v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_7
    iget-object p0, v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    if-eqz p0, :cond_8

    :goto_2
    return v1

    :cond_8
    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public formatTo([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "formats",
            "buffer"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getFormat([Ljava/lang/String;)Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getFormats()[Ljava/lang/String;
    .locals 6

    invoke-static {}, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->values()[Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    move-result-object p0

    array-length p0, p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {}, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->values()[Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedMessage([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "formats"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getFormat([Ljava/lang/String;)Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getId()Lorg/apache/logging/log4j/message/StructuredDataId;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    invoke-super {p0}, Lorg/apache/logging/log4j/message/MapMessage;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public bridge synthetic newInstance(Ljava/util/Map;)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "map"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->newInstance(Ljava/util/Map;)Lorg/apache/logging/log4j/message/StructuredDataMessage;

    move-result-object p0

    return-object p0
.end method

.method public newInstance(Ljava/util/Map;)Lorg/apache/logging/log4j/message/StructuredDataMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/logging/log4j/message/StructuredDataMessage;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;-><init>(Lorg/apache/logging/log4j/message/StructuredDataMessage;Ljava/util/Map;)V

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    return-void
.end method

.method public setId(Lorg/apache/logging/log4j/message/StructuredDataId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    return-void
.end method

.method public setMessageFormat(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "structured data type exceeds maximum length of 32 characters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public validate(Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    return-void
.end method

.method public validate(Ljava/lang/String;C)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    return-void
.end method

.method public validate(Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    return-void
.end method

.method public validate(Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    return-void
.end method

.method public validate(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    return-void
.end method

.method public validate(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    return-void
.end method

.method public validate(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    return-void
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    return-void
.end method

.method public validate(Ljava/lang/String;S)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    return-void
.end method

.method public validate(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    return-void
.end method

.method public validateKey(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    iget v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Structured data keys are limited to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " characters. key: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7e

    if-gt v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Structured data keys must contain printable US ASCII charactersand may not contain a space, =, ], or \""

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method
