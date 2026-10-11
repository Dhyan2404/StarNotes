.class public Lnet/sf/saxon/java/JavaPlatform$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NamespaceResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/java/JavaPlatform;->a(Lnet/sf/saxon/expr/parser/RetainedStaticContext;Lnet/sf/saxon/xpath/JAXPXPathStaticContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljavax/xml/namespace/NamespaceContext;

.field public final synthetic f:Lnet/sf/saxon/java/JavaPlatform;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/java/JavaPlatform;Ljavax/xml/namespace/NamespaceContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/java/JavaPlatform$a;->f:Lnet/sf/saxon/java/JavaPlatform;

    iput-object p2, p0, Lnet/sf/saxon/java/JavaPlatform$a;->e:Ljavax/xml/namespace/NamespaceContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/java/JavaPlatform$a;->e:Ljavax/xml/namespace/NamespaceContext;

    invoke-interface {p0, p1}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public iteratePrefixes()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
