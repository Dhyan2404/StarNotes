.class public interface abstract Lnet/sf/saxon/trans/packages/IPackageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract loadPackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/style/StylesheetPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract loadPackageDoc(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/style/StylesheetPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
