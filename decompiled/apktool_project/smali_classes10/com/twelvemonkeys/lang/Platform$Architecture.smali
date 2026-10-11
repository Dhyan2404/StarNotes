.class public final enum Lcom/twelvemonkeys/lang/Platform$Architecture;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/lang/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Architecture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twelvemonkeys/lang/Platform$Architecture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twelvemonkeys/lang/Platform$Architecture;

.field public static final enum I386:Lcom/twelvemonkeys/lang/Platform$Architecture;

.field public static final enum I686:Lcom/twelvemonkeys/lang/Platform$Architecture;

.field public static final enum PPC:Lcom/twelvemonkeys/lang/Platform$Architecture;

.field public static final enum SPARC:Lcom/twelvemonkeys/lang/Platform$Architecture;

.field public static final enum Unknown:Lcom/twelvemonkeys/lang/Platform$Architecture;

.field public static final enum X86:Lcom/twelvemonkeys/lang/Platform$Architecture;


# instance fields
.field final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/twelvemonkeys/lang/Platform$Architecture;

    const/4 v1, 0x0

    const-string v2, "x86"

    const-string v3, "X86"

    invoke-direct {v0, v3, v1, v2}, Lcom/twelvemonkeys/lang/Platform$Architecture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twelvemonkeys/lang/Platform$Architecture;->X86:Lcom/twelvemonkeys/lang/Platform$Architecture;

    new-instance v1, Lcom/twelvemonkeys/lang/Platform$Architecture;

    const/4 v2, 0x1

    const-string v3, "i386"

    const-string v4, "I386"

    invoke-direct {v1, v4, v2, v3}, Lcom/twelvemonkeys/lang/Platform$Architecture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/twelvemonkeys/lang/Platform$Architecture;->I386:Lcom/twelvemonkeys/lang/Platform$Architecture;

    new-instance v2, Lcom/twelvemonkeys/lang/Platform$Architecture;

    const/4 v3, 0x2

    const-string v4, "i686"

    const-string v5, "I686"

    invoke-direct {v2, v5, v3, v4}, Lcom/twelvemonkeys/lang/Platform$Architecture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/twelvemonkeys/lang/Platform$Architecture;->I686:Lcom/twelvemonkeys/lang/Platform$Architecture;

    new-instance v3, Lcom/twelvemonkeys/lang/Platform$Architecture;

    const/4 v4, 0x3

    const-string v5, "ppc"

    const-string v6, "PPC"

    invoke-direct {v3, v6, v4, v5}, Lcom/twelvemonkeys/lang/Platform$Architecture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/twelvemonkeys/lang/Platform$Architecture;->PPC:Lcom/twelvemonkeys/lang/Platform$Architecture;

    new-instance v4, Lcom/twelvemonkeys/lang/Platform$Architecture;

    const/4 v5, 0x4

    const-string v6, "sparc"

    const-string v7, "SPARC"

    invoke-direct {v4, v7, v5, v6}, Lcom/twelvemonkeys/lang/Platform$Architecture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/twelvemonkeys/lang/Platform$Architecture;->SPARC:Lcom/twelvemonkeys/lang/Platform$Architecture;

    new-instance v5, Lcom/twelvemonkeys/lang/Platform$Architecture;

    const-string v6, "os.arch"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unknown"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/twelvemonkeys/lang/Platform$Architecture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/twelvemonkeys/lang/Platform$Architecture;->Unknown:Lcom/twelvemonkeys/lang/Platform$Architecture;

    filled-new-array/range {v0 .. v5}, [Lcom/twelvemonkeys/lang/Platform$Architecture;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/lang/Platform$Architecture;->$VALUES:[Lcom/twelvemonkeys/lang/Platform$Architecture;

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

    iput-object p3, p0, Lcom/twelvemonkeys/lang/Platform$Architecture;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twelvemonkeys/lang/Platform$Architecture;
    .locals 1

    const-class v0, Lcom/twelvemonkeys/lang/Platform$Architecture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object p0
.end method

.method public static values()[Lcom/twelvemonkeys/lang/Platform$Architecture;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/lang/Platform$Architecture;->$VALUES:[Lcom/twelvemonkeys/lang/Platform$Architecture;

    invoke-virtual {v0}, [Lcom/twelvemonkeys/lang/Platform$Architecture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/lang/Platform$Architecture;->name:Ljava/lang/String;

    return-object p0
.end method
