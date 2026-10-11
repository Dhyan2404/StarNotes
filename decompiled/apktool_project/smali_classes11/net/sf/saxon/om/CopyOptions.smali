.class public abstract Lnet/sf/saxon/om/CopyOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_NAMESPACES:I = 0x2

.field public static final FOR_UPDATE:I = 0x8

.field public static final TYPE_ANNOTATIONS:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStartDocumentProperties(I)I
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lnet/sf/saxon/om/CopyOptions;->includes(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x8000

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static includes(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
