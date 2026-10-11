.class public final Lsun/java2d/cmm/lcms/LcmsServiceProvider;
.super Lsun/java2d/cmm/CMMServiceProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/java2d/cmm/CMMServiceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getModule()Lsun/java2d/cmm/PCMM;
    .locals 0

    invoke-static {}, Lsun/java2d/cmm/lcms/LCMS;->getModule()Lsun/java2d/cmm/PCMM;

    move-result-object p0

    return-object p0
.end method
