.class final Lsun/java2d/cmm/lcms/LCMSProfile;
.super Lsun/java2d/cmm/Profile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/cmm/lcms/LCMSProfile$TagData;,
        Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;
    }
.end annotation


# instance fields
.field private final disposerReferent:Ljava/lang/Object;

.field private final tagCache:Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/java2d/cmm/Profile;-><init>(J)V

    iput-object p3, p0, Lsun/java2d/cmm/lcms/LCMSProfile;->disposerReferent:Ljava/lang/Object;

    new-instance p1, Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;

    invoke-direct {p1, p0}, Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;-><init>(Lsun/java2d/cmm/lcms/LCMSProfile;)V

    iput-object p1, p0, Lsun/java2d/cmm/lcms/LCMSProfile;->tagCache:Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;

    return-void
.end method

.method public static synthetic access$000(Lsun/java2d/cmm/lcms/LCMSProfile;)J
    .locals 2

    invoke-virtual {p0}, Lsun/java2d/cmm/Profile;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public clearTagCache()V
    .locals 0

    iget-object p0, p0, Lsun/java2d/cmm/lcms/LCMSProfile;->tagCache:Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;

    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;->clear()V

    return-void
.end method

.method public getLcmsPtr()J
    .locals 2

    invoke-virtual {p0}, Lsun/java2d/cmm/Profile;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTag(I)Lsun/java2d/cmm/lcms/LCMSProfile$TagData;
    .locals 0

    iget-object p0, p0, Lsun/java2d/cmm/lcms/LCMSProfile;->tagCache:Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;

    invoke-virtual {p0, p1}, Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;->getTag(I)Lsun/java2d/cmm/lcms/LCMSProfile$TagData;

    move-result-object p0

    return-object p0
.end method
