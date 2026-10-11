.class public Lsun/awt/SunHints$Key;
.super Ljava/awt/RenderingHints$Key;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/SunHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field description:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/awt/RenderingHints$Key;-><init>(I)V

    iput-object p2, p0, Lsun/awt/SunHints$Key;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/RenderingHints$Key;->intKey()I

    move-result p0

    return p0
.end method

.method public isCompatibleValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lsun/awt/SunHints$Value;

    if-eqz v0, :cond_0

    check-cast p1, Lsun/awt/SunHints$Value;

    invoke-virtual {p1, p0}, Lsun/awt/SunHints$Value;->isCompatibleKey(Lsun/awt/SunHints$Key;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/awt/SunHints$Key;->description:Ljava/lang/String;

    return-object p0
.end method
