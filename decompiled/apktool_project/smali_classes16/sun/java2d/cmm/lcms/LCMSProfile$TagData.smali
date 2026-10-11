.class Lsun/java2d/cmm/lcms/LCMSProfile$TagData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/cmm/lcms/LCMSProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagData"
.end annotation


# instance fields
.field private data:[B

.field private signature:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSProfile$TagData;->signature:I

    iput-object p2, p0, Lsun/java2d/cmm/lcms/LCMSProfile$TagData;->data:[B

    return-void
.end method


# virtual methods
.method public copyDataTo([B)V
    .locals 2

    iget-object p0, p0, Lsun/java2d/cmm/lcms/LCMSProfile$TagData;->data:[B

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getData()[B
    .locals 1

    iget-object p0, p0, Lsun/java2d/cmm/lcms/LCMSProfile$TagData;->data:[B

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public getSignature()I
    .locals 0

    iget p0, p0, Lsun/java2d/cmm/lcms/LCMSProfile$TagData;->signature:I

    return p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lsun/java2d/cmm/lcms/LCMSProfile$TagData;->data:[B

    array-length p0, p0

    return p0
.end method
