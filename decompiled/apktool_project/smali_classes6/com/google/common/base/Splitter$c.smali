.class public Lcom/google/common/base/Splitter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Splitter$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter;->e(Lcom/sunia/HTREnginev2/n5e;)Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/n5e;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/n5e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/base/Splitter$c;->a:Lcom/sunia/HTREnginev2/n5e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$c;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;
    .locals 2

    iget-object v0, p0, Lcom/google/common/base/Splitter$c;->a:Lcom/sunia/HTREnginev2/n5e;

    invoke-virtual {v0, p2}, Lcom/sunia/HTREnginev2/n5e;->matcher(Ljava/lang/CharSequence;)Lcom/sunia/HTREnginev2/g5e;

    move-result-object v0

    new-instance v1, Lcom/google/common/base/Splitter$c$a;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/common/base/Splitter$c$a;-><init>(Lcom/google/common/base/Splitter$c;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/sunia/HTREnginev2/g5e;)V

    return-object v1
.end method
