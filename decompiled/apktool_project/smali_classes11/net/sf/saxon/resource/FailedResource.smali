.class public Lnet/sf/saxon/resource/FailedResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/Resource;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lnet/sf/saxon/trans/XPathException;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/trans/XPathException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/resource/FailedResource;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/resource/FailedResource;->b:Lnet/sf/saxon/trans/XPathException;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getError()Lnet/sf/saxon/trans/XPathException;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/FailedResource;->b:Lnet/sf/saxon/trans/XPathException;

    return-object p0
.end method

.method public getItem()Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/resource/FailedResource;->b:Lnet/sf/saxon/trans/XPathException;

    throw p0
.end method

.method public getResourceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/FailedResource;->a:Ljava/lang/String;

    return-object p0
.end method
