.class public Ljava/awt/color/ICC_ProfileGray;
.super Ljava/awt/color/ICC_Profile;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0xf9bd00e0d665d59L


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
.method public getGamma()F
    .locals 1

    const v0, 0x6b545243

    invoke-super {p0, v0}, Ljava/awt/color/ICC_Profile;->getGamma(I)F

    move-result p0

    return p0
.end method

.method public getMediaWhitePoint()[F
    .locals 0

    invoke-super {p0}, Ljava/awt/color/ICC_Profile;->getMediaWhitePoint()[F

    move-result-object p0

    return-object p0
.end method

.method public getTRC()[S
    .locals 1

    const v0, 0x6b545243

    invoke-super {p0, v0}, Ljava/awt/color/ICC_Profile;->getTRC(I)[S

    move-result-object p0

    return-object p0
.end method
