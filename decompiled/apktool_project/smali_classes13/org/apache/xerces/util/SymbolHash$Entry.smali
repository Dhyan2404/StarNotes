.class public final Lorg/apache/xerces/util/SymbolHash$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/SymbolHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public key:Ljava/lang/Object;

.field public next:Lorg/apache/xerces/util/SymbolHash$Entry;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/xerces/util/SymbolHash$Entry;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    return-void
.end method


# virtual methods
.method public makeClone()Lorg/apache/xerces/util/SymbolHash$Entry;
    .locals 2

    new-instance v0, Lorg/apache/xerces/util/SymbolHash$Entry;

    invoke-direct {v0}, Lorg/apache/xerces/util/SymbolHash$Entry;-><init>()V

    iget-object v1, p0, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    iput-object v1, v0, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    iput-object v1, v0, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/util/SymbolHash$Entry;->makeClone()Lorg/apache/xerces/util/SymbolHash$Entry;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    :cond_0
    return-object v0
.end method
