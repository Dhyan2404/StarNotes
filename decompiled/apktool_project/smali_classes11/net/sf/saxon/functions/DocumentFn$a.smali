.class public Lnet/sf/saxon/functions/DocumentFn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMappingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/DocumentFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lnet/sf/saxon/s9api/Location;

.field public h:Lnet/sf/saxon/expr/PackageData;

.field public i:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/DocumentFn$a;->i:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/DocumentFn$a;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/functions/DocumentFn$a;->f:Ljava/lang/String;

    :cond_1
    :goto_0
    move-object v2, v0

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lnet/sf/saxon/functions/DocumentFn$a;->h:Lnet/sf/saxon/expr/PackageData;

    const/4 v4, 0x0

    iget-object v5, p0, Lnet/sf/saxon/functions/DocumentFn$a;->i:Lnet/sf/saxon/expr/XPathContext;

    iget-object v6, p0, Lnet/sf/saxon/functions/DocumentFn$a;->g:Lnet/sf/saxon/s9api/Location;

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lnet/sf/saxon/functions/DocumentFn;->makeDoc(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;Z)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method
