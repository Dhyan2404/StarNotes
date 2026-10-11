.class public Lcom/twelvemonkeys/util/service/ServiceRegistry$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/util/FilterIterator$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/util/service/ServiceRegistry;->containingCategories(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twelvemonkeys/util/FilterIterator$Filter<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/twelvemonkeys/util/service/ServiceRegistry;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/service/ServiceRegistry;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$e;->b:Lcom/twelvemonkeys/util/service/ServiceRegistry;

    iput-object p2, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$e;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$e;->b:Lcom/twelvemonkeys/util/service/ServiceRegistry;

    invoke-static {v0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->a(Lcom/twelvemonkeys/util/service/ServiceRegistry;Ljava/lang/Class;)Lcom/twelvemonkeys/util/service/ServiceRegistry$g;

    move-result-object p1

    iget-object p0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$e;->a:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry$e;->a(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method
