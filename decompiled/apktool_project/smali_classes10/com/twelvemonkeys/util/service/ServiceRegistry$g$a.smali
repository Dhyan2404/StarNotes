.class public Lcom/twelvemonkeys/util/service/ServiceRegistry$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->f()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic f:Ljava/util/Iterator;

.field public final synthetic g:Lcom/twelvemonkeys/util/service/ServiceRegistry$g;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/service/ServiceRegistry$g;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g$a;->g:Lcom/twelvemonkeys/util/service/ServiceRegistry$g;

    iput-object p2, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g$a;->f:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g$a;->f:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g$a;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g$a;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g$a;->g:Lcom/twelvemonkeys/util/service/ServiceRegistry$g;

    iget-object p0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g$a;->e:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->d(Ljava/lang/Object;)V

    return-void
.end method
