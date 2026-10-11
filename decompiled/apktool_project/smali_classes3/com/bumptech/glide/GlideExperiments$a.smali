.class public final Lcom/bumptech/glide/GlideExperiments$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/GlideExperiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/GlideExperiments$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/GlideExperiments$a;->a:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/bumptech/glide/GlideExperiments$a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/GlideExperiments$a;->a:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/bumptech/glide/GlideExperiments$b;)Lcom/bumptech/glide/GlideExperiments$a;
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/GlideExperiments$a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public c()Lcom/bumptech/glide/GlideExperiments;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/GlideExperiments;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/GlideExperiments;-><init>(Lcom/bumptech/glide/GlideExperiments$a;)V

    return-object v0
.end method

.method public d(Lcom/bumptech/glide/GlideExperiments$b;Z)Lcom/bumptech/glide/GlideExperiments$a;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GlideExperiments$a;->b(Lcom/bumptech/glide/GlideExperiments$b;)Lcom/bumptech/glide/GlideExperiments$a;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/bumptech/glide/GlideExperiments$a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method
