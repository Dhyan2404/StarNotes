.class public final synthetic Lcom/sunia/HTREnginev2/v8j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/google/common/collect/Maps$a0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Maps$a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v8j;->e:Lcom/google/common/collect/Maps$a0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v8j;->e:Lcom/google/common/collect/Maps$a0;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps$a0;->b(Lcom/google/common/collect/Maps$a0;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
