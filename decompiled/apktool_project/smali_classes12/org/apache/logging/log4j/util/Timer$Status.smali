.class public final enum Lorg/apache/logging/log4j/util/Timer$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/util/Timer$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/util/Timer$Status;

.field public static final enum Paused:Lorg/apache/logging/log4j/util/Timer$Status;

.field public static final enum Started:Lorg/apache/logging/log4j/util/Timer$Status;

.field public static final enum Stopped:Lorg/apache/logging/log4j/util/Timer$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/logging/log4j/util/Timer$Status;

    const-string v1, "Started"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/util/Timer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/util/Timer$Status;->Started:Lorg/apache/logging/log4j/util/Timer$Status;

    new-instance v1, Lorg/apache/logging/log4j/util/Timer$Status;

    const-string v2, "Stopped"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/logging/log4j/util/Timer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/logging/log4j/util/Timer$Status;->Stopped:Lorg/apache/logging/log4j/util/Timer$Status;

    new-instance v2, Lorg/apache/logging/log4j/util/Timer$Status;

    const-string v3, "Paused"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/logging/log4j/util/Timer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/logging/log4j/util/Timer$Status;->Paused:Lorg/apache/logging/log4j/util/Timer$Status;

    filled-new-array {v0, v1, v2}, [Lorg/apache/logging/log4j/util/Timer$Status;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/Timer$Status;->$VALUES:[Lorg/apache/logging/log4j/util/Timer$Status;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/util/Timer$Status;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/apache/logging/log4j/util/Timer$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/util/Timer$Status;

    return-object p0
.end method

.method public static values()[Lorg/apache/logging/log4j/util/Timer$Status;
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/util/Timer$Status;->$VALUES:[Lorg/apache/logging/log4j/util/Timer$Status;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/util/Timer$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/util/Timer$Status;

    return-object v0
.end method
