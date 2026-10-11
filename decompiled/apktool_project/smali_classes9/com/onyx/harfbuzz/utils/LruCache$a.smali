.class public Lcom/onyx/harfbuzz/utils/LruCache$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/utils/LruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/harfbuzz/utils/LruCache$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/harfbuzz/utils/LruCache$b<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/harfbuzz/utils/LruCache$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/onyx/harfbuzz/utils/LruCache$b;-><init>(Lcom/onyx/harfbuzz/utils/LruCache$Segment;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/harfbuzz/utils/LruCache$a;->a:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iput-object v0, v0, Lcom/onyx/harfbuzz/utils/LruCache$b;->e:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iput-object v0, v0, Lcom/onyx/harfbuzz/utils/LruCache$b;->d:Lcom/onyx/harfbuzz/utils/LruCache$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/onyx/harfbuzz/utils/LruCache$b;)V
    .locals 1
    .param p1    # Lcom/onyx/harfbuzz/utils/LruCache$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/harfbuzz/utils/LruCache$b<",
            "TK;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/utils/LruCache$a;->a:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iput-object p0, p1, Lcom/onyx/harfbuzz/utils/LruCache$b;->d:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iget-object v0, p0, Lcom/onyx/harfbuzz/utils/LruCache$b;->e:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iput-object v0, p1, Lcom/onyx/harfbuzz/utils/LruCache$b;->e:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iget-object v0, p0, Lcom/onyx/harfbuzz/utils/LruCache$b;->e:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iput-object p1, v0, Lcom/onyx/harfbuzz/utils/LruCache$b;->d:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iput-object p1, p0, Lcom/onyx/harfbuzz/utils/LruCache$b;->e:Lcom/onyx/harfbuzz/utils/LruCache$b;

    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/utils/LruCache$a;->a:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iput-object p0, p0, Lcom/onyx/harfbuzz/utils/LruCache$b;->e:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iput-object p0, p0, Lcom/onyx/harfbuzz/utils/LruCache$b;->d:Lcom/onyx/harfbuzz/utils/LruCache$b;

    return-void
.end method

.method public c()Lcom/onyx/harfbuzz/utils/LruCache$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/harfbuzz/utils/LruCache$b<",
            "TK;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/utils/LruCache$a;->a:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iget-object p0, p0, Lcom/onyx/harfbuzz/utils/LruCache$b;->d:Lcom/onyx/harfbuzz/utils/LruCache$b;

    return-object p0
.end method

.method public d(Lcom/onyx/harfbuzz/utils/LruCache$b;)V
    .locals 0
    .param p1    # Lcom/onyx/harfbuzz/utils/LruCache$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/harfbuzz/utils/LruCache$b<",
            "TK;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/utils/LruCache$a;->e(Lcom/onyx/harfbuzz/utils/LruCache$b;)V

    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/utils/LruCache$a;->a(Lcom/onyx/harfbuzz/utils/LruCache$b;)V

    return-void
.end method

.method public e(Lcom/onyx/harfbuzz/utils/LruCache$b;)V
    .locals 1
    .param p1    # Lcom/onyx/harfbuzz/utils/LruCache$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/harfbuzz/utils/LruCache$b<",
            "TK;>;)V"
        }
    .end annotation

    iget-object p0, p1, Lcom/onyx/harfbuzz/utils/LruCache$b;->d:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iget-object v0, p1, Lcom/onyx/harfbuzz/utils/LruCache$b;->e:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iput-object v0, p0, Lcom/onyx/harfbuzz/utils/LruCache$b;->e:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iget-object v0, p1, Lcom/onyx/harfbuzz/utils/LruCache$b;->e:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iput-object p0, v0, Lcom/onyx/harfbuzz/utils/LruCache$b;->d:Lcom/onyx/harfbuzz/utils/LruCache$b;

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/onyx/harfbuzz/utils/LruCache$b;->d:Lcom/onyx/harfbuzz/utils/LruCache$b;

    iput-object p0, p1, Lcom/onyx/harfbuzz/utils/LruCache$b;->e:Lcom/onyx/harfbuzz/utils/LruCache$b;

    return-void
.end method
