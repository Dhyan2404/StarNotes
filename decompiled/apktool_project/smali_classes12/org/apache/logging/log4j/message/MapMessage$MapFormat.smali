.class public final enum Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/MapMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/message/MapMessage$MapFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

.field public static final enum JAVA:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

.field public static final enum JAVA_UNQUOTED:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

.field public static final enum JSON:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

.field public static final enum XML:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    const-string v1, "XML"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->XML:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    new-instance v1, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    const-string v2, "JSON"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JSON:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    new-instance v2, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    const-string v3, "JAVA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    new-instance v3, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    const-string v4, "JAVA_UNQUOTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA_UNQUOTED:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->$VALUES:[Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lookupIgnoreCase(Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "format"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->XML:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JSON:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA_UNQUOTED:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static names()[Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->XML:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JSON:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA_UNQUOTED:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    return-object p0
.end method

.method public static values()[Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->$VALUES:[Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    return-object v0
.end method
