.class public interface abstract Lsun/util/logging/NeoPlatformLogger$Bridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/NeoPlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Bridge"
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z
.end method

.method public abstract log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/backport/function/Supplier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/util/logging/NeoPlatformLogger$Level;",
            "Ljava/backport/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;)V
.end method

.method public abstract log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs abstract log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/Throwable;Ljava/backport/function/Supplier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/util/logging/NeoPlatformLogger$Level;",
            "Ljava/lang/Throwable;",
            "Ljava/backport/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logp(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/backport/function/Supplier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/util/logging/NeoPlatformLogger$Level;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/backport/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logp(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logp(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs abstract logp(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract logp(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/backport/function/Supplier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/util/logging/NeoPlatformLogger$Level;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/backport/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logrb(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs abstract logrb(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract logrb(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs abstract logrb(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)V
.end method
