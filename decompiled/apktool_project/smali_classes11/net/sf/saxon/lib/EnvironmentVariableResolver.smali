.class public interface abstract Lnet/sf/saxon/lib/EnvironmentVariableResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAvailableEnvironmentVariables()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnvironmentVariable(Ljava/lang/String;)Ljava/lang/String;
.end method
