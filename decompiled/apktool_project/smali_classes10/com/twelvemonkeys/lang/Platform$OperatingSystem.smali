.class public final enum Lcom/twelvemonkeys/lang/Platform$OperatingSystem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/lang/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperatingSystem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twelvemonkeys/lang/Platform$OperatingSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

.field public static final enum Linux:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

.field public static final enum MacOS:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

.field public static final enum Solaris:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

.field public static final enum Unknown:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

.field public static final enum Windows:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;


# instance fields
.field final id:Ljava/lang/String;

.field final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    const/4 v1, 0x0

    const-string v2, "win"

    const-string v3, "Windows"

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->Windows:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    new-instance v1, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    const/4 v2, 0x1

    const-string v3, "lnx"

    const-string v4, "Linux"

    invoke-direct {v1, v4, v2, v4, v3}, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->Linux:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    new-instance v2, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    const/4 v3, 0x2

    const-string v4, "sun"

    const-string v5, "Solaris"

    invoke-direct {v2, v5, v3, v5, v4}, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->Solaris:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    new-instance v3, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    const-string v4, "Mac OS"

    const-string v5, "osx"

    const-string v6, "MacOS"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->MacOS:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    new-instance v4, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    const-string v5, "os.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "Unknown"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->Unknown:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->$VALUES:[Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

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

    iput-object p3, p0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->name:Ljava/lang/String;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twelvemonkeys/lang/Platform$OperatingSystem;
    .locals 1

    const-class v0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    return-object p0
.end method

.method public static values()[Lcom/twelvemonkeys/lang/Platform$OperatingSystem;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->$VALUES:[Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    invoke-virtual {v0}, [Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->name:Ljava/lang/String;

    return-object p0
.end method

.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->id:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->id:Ljava/lang/String;

    iget-object p0, p0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->name:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s (%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
