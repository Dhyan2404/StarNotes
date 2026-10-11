.class Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/cmm/lcms/LCMSProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagCache"
.end annotation


# instance fields
.field final profile:Lsun/java2d/cmm/lcms/LCMSProfile;

.field private tags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lsun/java2d/cmm/lcms/LCMSProfile$TagData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsun/java2d/cmm/lcms/LCMSProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;->profile:Lsun/java2d/cmm/lcms/LCMSProfile;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;->tags:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;->tags:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getTag(I)Lsun/java2d/cmm/lcms/LCMSProfile$TagData;
    .locals 3

    iget-object v0, p0, Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;->tags:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/java2d/cmm/lcms/LCMSProfile$TagData;

    if-nez v0, :cond_0

    iget-object v1, p0, Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;->profile:Lsun/java2d/cmm/lcms/LCMSProfile;

    invoke-static {v1}, Lsun/java2d/cmm/lcms/LCMSProfile;->access$000(Lsun/java2d/cmm/lcms/LCMSProfile;)J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lsun/java2d/cmm/lcms/LCMS;->getTagNative(JI)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lsun/java2d/cmm/lcms/LCMSProfile$TagData;

    invoke-direct {v0, p1, v1}, Lsun/java2d/cmm/lcms/LCMSProfile$TagData;-><init>(I[B)V

    iget-object p0, p0, Lsun/java2d/cmm/lcms/LCMSProfile$TagCache;->tags:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
