.class public final enum Lsun/font/LayoutPathImpl$EndType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/LayoutPathImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EndType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/font/LayoutPathImpl$EndType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/font/LayoutPathImpl$EndType;

.field public static final enum CLOSED:Lsun/font/LayoutPathImpl$EndType;

.field public static final enum EXTENDED:Lsun/font/LayoutPathImpl$EndType;

.field public static final enum PINNED:Lsun/font/LayoutPathImpl$EndType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lsun/font/LayoutPathImpl$EndType;

    const-string v1, "PINNED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/font/LayoutPathImpl$EndType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/font/LayoutPathImpl$EndType;->PINNED:Lsun/font/LayoutPathImpl$EndType;

    new-instance v1, Lsun/font/LayoutPathImpl$EndType;

    const-string v2, "EXTENDED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lsun/font/LayoutPathImpl$EndType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsun/font/LayoutPathImpl$EndType;->EXTENDED:Lsun/font/LayoutPathImpl$EndType;

    new-instance v2, Lsun/font/LayoutPathImpl$EndType;

    const-string v3, "CLOSED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lsun/font/LayoutPathImpl$EndType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lsun/font/LayoutPathImpl$EndType;->CLOSED:Lsun/font/LayoutPathImpl$EndType;

    filled-new-array {v0, v1, v2}, [Lsun/font/LayoutPathImpl$EndType;

    move-result-object v0

    sput-object v0, Lsun/font/LayoutPathImpl$EndType;->$VALUES:[Lsun/font/LayoutPathImpl$EndType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/font/LayoutPathImpl$EndType;
    .locals 1

    const-class v0, Lsun/font/LayoutPathImpl$EndType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsun/font/LayoutPathImpl$EndType;

    return-object p0
.end method

.method public static values()[Lsun/font/LayoutPathImpl$EndType;
    .locals 1

    sget-object v0, Lsun/font/LayoutPathImpl$EndType;->$VALUES:[Lsun/font/LayoutPathImpl$EndType;

    invoke-virtual {v0}, [Lsun/font/LayoutPathImpl$EndType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/font/LayoutPathImpl$EndType;

    return-object v0
.end method


# virtual methods
.method public isClosed()Z
    .locals 1

    sget-object v0, Lsun/font/LayoutPathImpl$EndType;->CLOSED:Lsun/font/LayoutPathImpl$EndType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExtended()Z
    .locals 1

    sget-object v0, Lsun/font/LayoutPathImpl$EndType;->EXTENDED:Lsun/font/LayoutPathImpl$EndType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPinned()Z
    .locals 1

    sget-object v0, Lsun/font/LayoutPathImpl$EndType;->PINNED:Lsun/font/LayoutPathImpl$EndType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
