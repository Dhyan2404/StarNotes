.class public interface abstract Ljavax/imageio/spi/RegisterableService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onDeregistration(Ljavax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/spi/ServiceRegistry;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onRegistration(Ljavax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/spi/ServiceRegistry;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method
