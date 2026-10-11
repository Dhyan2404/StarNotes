.class public Lnet/sf/saxon/ma/map/HashTrieMap$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/ma/map/HashTrieMap;->keyValuePairs()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lnet/sf/saxon/ma/map/KeyValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/ma/map/HashTrieMap;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/ma/map/HashTrieMap;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap$b;->e:Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/ma/map/KeyValuePair;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap$b$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/map/HashTrieMap$b$a;-><init>(Lnet/sf/saxon/ma/map/HashTrieMap$b;)V

    return-object v0
.end method
