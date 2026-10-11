.class public Lnet/sf/saxon/lib/ChainedResourceResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ResourceResolver;


# instance fields
.field public final e:Lnet/sf/saxon/lib/ResourceResolver;

.field public final f:Lnet/sf/saxon/lib/ResourceResolver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/ResourceResolver;Lnet/sf/saxon/lib/ResourceResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/sf/saxon/lib/ChainedResourceResolver;->e:Lnet/sf/saxon/lib/ResourceResolver;

    iput-object p2, p0, Lnet/sf/saxon/lib/ChainedResourceResolver;->f:Lnet/sf/saxon/lib/ResourceResolver;

    return-void
.end method


# virtual methods
.method public resolve(Lnet/sf/saxon/lib/ResourceRequest;)Ljavax/xml/transform/Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/lib/ChainedResourceResolver;->e:Lnet/sf/saxon/lib/ResourceResolver;

    invoke-interface {v0, p1}, Lnet/sf/saxon/lib/ResourceResolver;->resolve(Lnet/sf/saxon/lib/ResourceRequest;)Ljavax/xml/transform/Source;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/lib/ChainedResourceResolver;->f:Lnet/sf/saxon/lib/ResourceResolver;

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ResourceResolver;->resolve(Lnet/sf/saxon/lib/ResourceRequest;)Ljavax/xml/transform/Source;

    move-result-object v0

    :cond_0
    return-object v0
.end method
