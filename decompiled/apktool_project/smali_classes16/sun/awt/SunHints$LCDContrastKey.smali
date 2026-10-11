.class public Lsun/awt/SunHints$LCDContrastKey;
.super Lsun/awt/SunHints$Key;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/SunHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LCDContrastKey"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/awt/SunHints$Key;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isCompatibleValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of p0, p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x64

    if-lt p0, p1, :cond_1

    const/16 p1, 0xfa

    if-gt p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
