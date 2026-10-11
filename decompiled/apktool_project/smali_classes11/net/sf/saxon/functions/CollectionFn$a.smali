.class public Lnet/sf/saxon/functions/CollectionFn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/CollectionFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lnet/sf/saxon/lib/Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lnet/sf/saxon/lib/Resource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/CollectionFn$a;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/functions/CollectionFn$a;->e:Ljava/util/Iterator;

    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/functions/CollectionFn$a;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/ObjectValue;

    iget-object p0, p0, Lnet/sf/saxon/functions/CollectionFn$a;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/ObjectValue;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
