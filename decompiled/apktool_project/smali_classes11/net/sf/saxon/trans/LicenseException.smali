.class public Lnet/sf/saxon/trans/LicenseException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field public static final CANNOT_READ:I = 0x5

.field public static final EXPIRED:I = 0x1

.field public static final INVALID:I = 0x2

.field public static final NOT_FOUND:I = 0x3

.field public static final WRONG_CONFIGURATION:I = 0x6

.field public static final WRONG_FEATURES:I = 0x4


# instance fields
.field private reason:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lnet/sf/saxon/trans/LicenseException;->reason:I

    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/LicenseException;->reason:I

    return p0
.end method

.method public setReason(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/trans/LicenseException;->reason:I

    return-void
.end method
