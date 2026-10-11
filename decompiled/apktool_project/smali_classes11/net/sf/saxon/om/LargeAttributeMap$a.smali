.class public Lnet/sf/saxon/om/LargeAttributeMap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/om/LargeAttributeMap;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/sf/saxon/om/AttributeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/om/NodeName;

.field public final synthetic f:Lnet/sf/saxon/om/LargeAttributeMap;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/LargeAttributeMap;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/om/LargeAttributeMap$a;->f:Lnet/sf/saxon/om/LargeAttributeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnet/sf/saxon/om/LargeAttributeMap;->a(Lnet/sf/saxon/om/LargeAttributeMap;)Lnet/sf/saxon/om/NodeName;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/om/LargeAttributeMap$a;->e:Lnet/sf/saxon/om/NodeName;

    return-void
.end method


# virtual methods
.method public a()Lnet/sf/saxon/om/AttributeInfo;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/om/LargeAttributeMap$a;->f:Lnet/sf/saxon/om/LargeAttributeMap;

    invoke-static {v0}, Lnet/sf/saxon/om/LargeAttributeMap;->b(Lnet/sf/saxon/om/LargeAttributeMap;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/om/LargeAttributeMap$a;->e:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/LargeAttributeMap$b;

    iget-object v1, v0, Lnet/sf/saxon/om/LargeAttributeMap$b;->c:Lnet/sf/saxon/om/NodeName;

    iput-object v1, p0, Lnet/sf/saxon/om/LargeAttributeMap$a;->e:Lnet/sf/saxon/om/NodeName;

    iget-object p0, v0, Lnet/sf/saxon/om/LargeAttributeMap$b;->a:Lnet/sf/saxon/om/AttributeInfo;

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/LargeAttributeMap$a;->e:Lnet/sf/saxon/om/NodeName;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/om/LargeAttributeMap$a;->a()Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    return-object p0
.end method
