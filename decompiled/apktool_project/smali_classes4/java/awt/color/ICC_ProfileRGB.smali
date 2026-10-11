.class public Ljava/awt/color/ICC_ProfileRGB;
.super Ljava/awt/color/ICC_Profile;
.source "SourceFile"


# static fields
.field public static final BLUECOMPONENT:I = 0x2

.field public static final GREENCOMPONENT:I = 0x1

.field public static final REDCOMPONENT:I = 0x0

.field static final serialVersionUID:J = 0x760811b99ac7a706L


# direct methods
.method public constructor <init>(Lsun/java2d/cmm/Profile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/awt/color/ICC_Profile;-><init>(Lsun/java2d/cmm/Profile;)V

    return-void
.end method

.method public constructor <init>(Lsun/java2d/cmm/ProfileDeferralInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/awt/color/ICC_Profile;-><init>(Lsun/java2d/cmm/ProfileDeferralInfo;)V

    return-void
.end method


# virtual methods
.method public getGamma(I)F
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x62545243

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be Red, Green, or Blue"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p1, 0x67545243

    goto :goto_0

    :cond_2
    const p1, 0x72545243

    :goto_0
    invoke-super {p0, p1}, Ljava/awt/color/ICC_Profile;->getGamma(I)F

    move-result p0

    return p0
.end method

.method public getMatrix()[[F
    .locals 7

    const/4 v0, 0x3

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    const v1, 0x7258595a

    invoke-virtual {p0, v1}, Ljava/awt/color/ICC_Profile;->getXYZTag(I)[F

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v0, v2

    aget v4, v1, v2

    aput v4, v3, v2

    const/4 v3, 0x1

    aget-object v4, v0, v3

    aget v5, v1, v3

    aput v5, v4, v2

    const/4 v4, 0x2

    aget-object v5, v0, v4

    aget v1, v1, v4

    aput v1, v5, v2

    const v1, 0x6758595a

    invoke-virtual {p0, v1}, Ljava/awt/color/ICC_Profile;->getXYZTag(I)[F

    move-result-object v1

    aget-object v5, v0, v2

    aget v6, v1, v2

    aput v6, v5, v3

    aget-object v5, v0, v3

    aget v6, v1, v3

    aput v6, v5, v3

    aget-object v5, v0, v4

    aget v1, v1, v4

    aput v1, v5, v3

    const v1, 0x6258595a

    invoke-virtual {p0, v1}, Ljava/awt/color/ICC_Profile;->getXYZTag(I)[F

    move-result-object p0

    aget-object v1, v0, v2

    aget v2, p0, v2

    aput v2, v1, v4

    aget-object v1, v0, v3

    aget v2, p0, v3

    aput v2, v1, v4

    aget-object v1, v0, v4

    aget p0, p0, v4

    aput p0, v1, v4

    return-object v0
.end method

.method public getMediaWhitePoint()[F
    .locals 0

    invoke-super {p0}, Ljava/awt/color/ICC_Profile;->getMediaWhitePoint()[F

    move-result-object p0

    return-object p0
.end method

.method public getTRC(I)[S
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x62545243

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be Red, Green, or Blue"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p1, 0x67545243

    goto :goto_0

    :cond_2
    const p1, 0x72545243

    :goto_0
    invoke-super {p0, p1}, Ljava/awt/color/ICC_Profile;->getTRC(I)[S

    move-result-object p0

    return-object p0
.end method
