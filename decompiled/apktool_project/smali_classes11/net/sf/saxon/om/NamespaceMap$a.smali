.class public Lnet/sf/saxon/om/NamespaceMap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/sf/saxon/om/NamespaceBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lnet/sf/saxon/om/NamespaceMap;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NamespaceMap;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/om/NamespaceMap$a;->f:Lnet/sf/saxon/om/NamespaceMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/om/NamespaceMap$a;->e:I

    return-void
.end method


# virtual methods
.method public a()Lnet/sf/saxon/om/NamespaceBinding;
    .locals 4

    new-instance v0, Lnet/sf/saxon/om/NamespaceBinding;

    iget-object v1, p0, Lnet/sf/saxon/om/NamespaceMap$a;->f:Lnet/sf/saxon/om/NamespaceMap;

    iget-object v2, v1, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    iget v3, p0, Lnet/sf/saxon/om/NamespaceMap$a;->e:I

    aget-object v2, v2, v3

    iget-object v1, v1, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lnet/sf/saxon/om/NamespaceMap$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/om/NamespaceMap$a;->e:I

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/om/NamespaceMap$a;->e:I

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap$a;->f:Lnet/sf/saxon/om/NamespaceMap;

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap$a;->a()Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p0

    return-object p0
.end method
