.class public Lcom/twelvemonkeys/util/BeanMap$d;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/BeanMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/twelvemonkeys/util/BeanMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/BeanMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/twelvemonkeys/util/BeanMap$d;->e:Lcom/twelvemonkeys/util/BeanMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/twelvemonkeys/util/BeanMap;Lcom/twelvemonkeys/util/BeanMap$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/BeanMap$d;-><init>(Lcom/twelvemonkeys/util/BeanMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/util/BeanMap$c;

    iget-object p0, p0, Lcom/twelvemonkeys/util/BeanMap$d;->e:Lcom/twelvemonkeys/util/BeanMap;

    invoke-static {p0}, Lcom/twelvemonkeys/util/BeanMap;->access$100(Lcom/twelvemonkeys/util/BeanMap;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twelvemonkeys/util/BeanMap$c;-><init>(Lcom/twelvemonkeys/util/BeanMap;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/BeanMap$d;->e:Lcom/twelvemonkeys/util/BeanMap;

    invoke-static {p0}, Lcom/twelvemonkeys/util/BeanMap;->access$100(Lcom/twelvemonkeys/util/BeanMap;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method
