.class public Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/twelvemonkeys/imageio/metadata/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/twelvemonkeys/imageio/metadata/Directory;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory$a;->g:Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->a(Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory$a;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Lcom/twelvemonkeys/imageio/metadata/Entry;
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory$a;->hasNext()Z

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory$a;->f:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/imageio/metadata/Entry;

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory$a;->f:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory$a;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory$a;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory$a;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory$a;->a()Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory$a;->f:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
