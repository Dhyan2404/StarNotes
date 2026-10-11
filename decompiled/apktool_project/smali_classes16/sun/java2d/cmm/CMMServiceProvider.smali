.class public abstract Lsun/java2d/cmm/CMMServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getColorManagementModule()Lsun/java2d/cmm/PCMM;
    .locals 1

    invoke-static {}, Lsun/java2d/cmm/CMSManager;->canCreateModule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsun/java2d/cmm/CMMServiceProvider;->getModule()Lsun/java2d/cmm/PCMM;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public abstract getModule()Lsun/java2d/cmm/PCMM;
.end method
