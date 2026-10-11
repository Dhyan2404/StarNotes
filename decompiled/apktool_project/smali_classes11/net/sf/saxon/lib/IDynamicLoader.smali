.class public interface abstract Lnet/sf/saxon/lib/IDynamicLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getClass(Ljava/lang/String;Lnet/sf/saxon/lib/Logger;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/lib/Logger;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getInstance(Ljava/lang/String;Lnet/sf/saxon/lib/Logger;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract setClassLoader(Ljava/lang/ClassLoader;)V
.end method
