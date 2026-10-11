.class public abstract Ljavax/imageio/spi/IIOServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/spi/RegisterableService;


# instance fields
.field protected vendorName:Ljava/lang/String;

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    iput-object p1, p0, Ljavax/imageio/spi/IIOServiceProvider;->vendorName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ljavax/imageio/spi/IIOServiceProvider;->version:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "version == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "vendorName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getDescription(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public getVendorName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/spi/IIOServiceProvider;->vendorName:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/spi/IIOServiceProvider;->version:Ljava/lang/String;

    return-object p0
.end method

.method public onDeregistration(Ljavax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/spi/ServiceRegistry;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onRegistration(Ljavax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/spi/ServiceRegistry;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
