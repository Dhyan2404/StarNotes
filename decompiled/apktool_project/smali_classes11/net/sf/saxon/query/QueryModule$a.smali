.class public Lnet/sf/saxon/query/QueryModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NamespaceResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/query/QueryModule;->getLiveNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/query/QueryModule;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/query/QueryModule;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule$a;->e:Lnet/sf/saxon/query/QueryModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule$a;->e:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/QueryModule;->checkURIForPrefix(Ljava/lang/String;)Ljava/lang/String;

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

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule$a;->e:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NamespaceResolver;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
