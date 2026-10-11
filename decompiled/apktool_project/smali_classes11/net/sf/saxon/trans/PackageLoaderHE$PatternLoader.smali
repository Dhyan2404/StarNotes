.class public interface abstract Lnet/sf/saxon/trans/PackageLoaderHE$PatternLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/trans/PackageLoaderHE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PatternLoader"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract loadFrom(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
