.class public final Lnet/sf/saxon/lib/Validation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BY_TYPE:I = 0x8

.field public static final DEFAULT:I = 0x0

.field public static final INVALID:I = -0x1

.field public static final LAX:I = 0x2

.field public static final PRESERVE:I = 0x3

.field public static final SKIP:I = 0x4

.field public static final STRICT:I = 0x1

.field public static final STRIP:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describe(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const-string p0, "invalid"

    return-object p0

    :cond_0
    const-string p0, "by type"

    return-object p0

    :cond_1
    const-string p0, "skip"

    return-object p0

    :cond_2
    const-string p0, "preserve"

    return-object p0

    :cond_3
    const-string p0, "lax"

    return-object p0

    :cond_4
    const-string p0, "strict"

    return-object p0
.end method

.method public static getCode(Ljava/lang/String;)I
    .locals 1

    const-string v0, "strict"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "lax"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "preserve"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string v0, "strip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method
