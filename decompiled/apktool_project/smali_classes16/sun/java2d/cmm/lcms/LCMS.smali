.class public Lsun/java2d/cmm/lcms/LCMS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/cmm/PCMM;


# static fields
.field private static theLcms:Lsun/java2d/cmm/lcms/LCMS;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorConvert(Lsun/java2d/cmm/lcms/LCMSTransform;Lsun/java2d/cmm/lcms/LCMSImageLayout;Lsun/java2d/cmm/lcms/LCMSImageLayout;)V
    .locals 0

    return-void
.end method

.method private static createNativeTransform([JIIZIZLjava/lang/Object;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static createTransform([Lsun/java2d/cmm/lcms/LCMSProfile;IIZIZLjava/lang/Object;)J
    .locals 8

    .line 1
    array-length v0, p0

    new-array v1, v0, [J

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lsun/java2d/cmm/lcms/LCMSProfile;->getLcmsPtr()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/awt/color/CMMException;

    const-string p1, "Unknown profile ID"

    invoke-direct {p0, p1}, Ljava/awt/color/CMMException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 6
    invoke-static/range {v1 .. v7}, Lsun/java2d/cmm/lcms/LCMS;->createNativeTransform([JIIZIZLjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method private getLcmsProfile(Lsun/java2d/cmm/Profile;)Lsun/java2d/cmm/lcms/LCMSProfile;
    .locals 2

    instance-of p0, p1, Lsun/java2d/cmm/lcms/LCMSProfile;

    if-eqz p0, :cond_0

    check-cast p1, Lsun/java2d/cmm/lcms/LCMSProfile;

    return-object p1

    :cond_0
    new-instance p0, Ljava/awt/color/CMMException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/awt/color/CMMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized getModule()Lsun/java2d/cmm/PCMM;
    .locals 4

    const-class v0, Lsun/java2d/cmm/lcms/LCMS;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/java2d/cmm/lcms/LCMS;->theLcms:Lsun/java2d/cmm/lcms/LCMS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lsun/java2d/cmm/lcms/LCMS$1;

    invoke-direct {v1}, Lsun/java2d/cmm/lcms/LCMS$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    const-class v1, Lsun/java2d/cmm/lcms/LCMSTransform;

    const-class v2, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    const-class v3, Ljava/awt/color/ICC_Profile;

    invoke-static {v1, v2, v3}, Lsun/java2d/cmm/lcms/LCMS;->initLCMS(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v1, Lsun/java2d/cmm/lcms/LCMS;

    invoke-direct {v1}, Lsun/java2d/cmm/lcms/LCMS;-><init>()V

    sput-object v1, Lsun/java2d/cmm/lcms/LCMS;->theLcms:Lsun/java2d/cmm/lcms/LCMS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getProfileDataNative(J[B)V
    .locals 0

    return-void
.end method

.method public static declared-synchronized getProfileID(Ljava/awt/color/ICC_Profile;)Lsun/java2d/cmm/lcms/LCMSProfile;
    .locals 0

    const-class p0, Lsun/java2d/cmm/lcms/LCMS;

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private getProfileSizeNative(J)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getTagNative(JI)[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static initLCMS(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method private static loadProfileNative([BLjava/lang/Object;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private setTagDataNative(JI[B)V
    .locals 0

    return-void
.end method


# virtual methods
.method public createTransform(Ljava/awt/color/ICC_Profile;II)Lsun/java2d/cmm/ColorTransform;
    .locals 0

    .line 7
    new-instance p0, Lsun/java2d/cmm/lcms/LCMSTransform;

    invoke-direct {p0, p1, p2, p2}, Lsun/java2d/cmm/lcms/LCMSTransform;-><init>(Ljava/awt/color/ICC_Profile;II)V

    return-object p0
.end method

.method public declared-synchronized createTransform([Lsun/java2d/cmm/ColorTransform;)Lsun/java2d/cmm/ColorTransform;
    .locals 1

    monitor-enter p0

    .line 8
    :try_start_0
    new-instance v0, Lsun/java2d/cmm/lcms/LCMSTransform;

    invoke-direct {v0, p1}, Lsun/java2d/cmm/lcms/LCMSTransform;-><init>([Lsun/java2d/cmm/ColorTransform;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public freeProfile(Lsun/java2d/cmm/Profile;)V
    .locals 0

    return-void
.end method

.method public getProfileData(Lsun/java2d/cmm/Profile;[B)V
    .locals 2

    monitor-enter p1

    :try_start_0
    invoke-direct {p0, p1}, Lsun/java2d/cmm/lcms/LCMS;->getLcmsProfile(Lsun/java2d/cmm/Profile;)Lsun/java2d/cmm/lcms/LCMSProfile;

    move-result-object v0

    invoke-virtual {v0}, Lsun/java2d/cmm/lcms/LCMSProfile;->getLcmsPtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lsun/java2d/cmm/lcms/LCMS;->getProfileDataNative(J[B)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProfileSize(Lsun/java2d/cmm/Profile;)I
    .locals 2

    monitor-enter p1

    :try_start_0
    invoke-direct {p0, p1}, Lsun/java2d/cmm/lcms/LCMS;->getLcmsProfile(Lsun/java2d/cmm/Profile;)Lsun/java2d/cmm/lcms/LCMSProfile;

    move-result-object v0

    invoke-virtual {v0}, Lsun/java2d/cmm/lcms/LCMSProfile;->getLcmsPtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lsun/java2d/cmm/lcms/LCMS;->getProfileSizeNative(J)I

    move-result p0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTagData(Lsun/java2d/cmm/Profile;I[B)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/java2d/cmm/lcms/LCMS;->getLcmsProfile(Lsun/java2d/cmm/Profile;)Lsun/java2d/cmm/lcms/LCMSProfile;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lsun/java2d/cmm/lcms/LCMSProfile;->getTag(I)Lsun/java2d/cmm/lcms/LCMSProfile$TagData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lsun/java2d/cmm/lcms/LCMSProfile$TagData;->copyDataTo([B)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTagSize(Lsun/java2d/cmm/Profile;I)I
    .locals 0

    invoke-direct {p0, p1}, Lsun/java2d/cmm/lcms/LCMS;->getLcmsProfile(Lsun/java2d/cmm/Profile;)Lsun/java2d/cmm/lcms/LCMSProfile;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lsun/java2d/cmm/lcms/LCMSProfile;->getTag(I)Lsun/java2d/cmm/lcms/LCMSProfile$TagData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lsun/java2d/cmm/lcms/LCMSProfile$TagData;->getSize()I

    move-result p1

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public loadProfile([B)Lsun/java2d/cmm/Profile;
    .locals 4

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p0}, Lsun/java2d/cmm/lcms/LCMS;->loadProfileNative([BLjava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lsun/java2d/cmm/lcms/LCMSProfile;

    invoke-direct {p1, v0, v1, p0}, Lsun/java2d/cmm/lcms/LCMSProfile;-><init>(JLjava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized setTagData(Lsun/java2d/cmm/Profile;I[B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lsun/java2d/cmm/lcms/LCMS;->getLcmsProfile(Lsun/java2d/cmm/Profile;)Lsun/java2d/cmm/lcms/LCMSProfile;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lsun/java2d/cmm/lcms/LCMSProfile;->clearTagCache()V

    invoke-virtual {p1}, Lsun/java2d/cmm/lcms/LCMSProfile;->getLcmsPtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Lsun/java2d/cmm/lcms/LCMS;->setTagDataNative(JI[B)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
