.class public Lcom/twelvemonkeys/util/BeanMap$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/BeanMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/twelvemonkeys/util/BeanMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/BeanMap;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/beans/PropertyDescriptor;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/twelvemonkeys/util/BeanMap$c;->f:Lcom/twelvemonkeys/util/BeanMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twelvemonkeys/util/BeanMap$c;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Lcom/twelvemonkeys/util/BeanMap$b;
    .locals 2

    new-instance v0, Lcom/twelvemonkeys/util/BeanMap$b;

    iget-object v1, p0, Lcom/twelvemonkeys/util/BeanMap$c;->f:Lcom/twelvemonkeys/util/BeanMap;

    iget-object p0, p0, Lcom/twelvemonkeys/util/BeanMap$c;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/beans/PropertyDescriptor;

    invoke-direct {v0, v1, p0}, Lcom/twelvemonkeys/util/BeanMap$b;-><init>(Lcom/twelvemonkeys/util/BeanMap;Ljava/beans/PropertyDescriptor;)V

    return-object v0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/BeanMap$c;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/BeanMap$c;->a()Lcom/twelvemonkeys/util/BeanMap$b;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/BeanMap$c;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
