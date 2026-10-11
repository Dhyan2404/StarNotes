.class public abstract Lnet/sf/saxon/query/QueryLibrary;
.super Lnet/sf/saxon/query/QueryModule;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/query/StaticQueryContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lnet/sf/saxon/query/QueryModule;-><init>(Lnet/sf/saxon/query/StaticQueryContext;)V

    return-void
.end method


# virtual methods
.method public abstract link(Lnet/sf/saxon/query/QueryModule;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
