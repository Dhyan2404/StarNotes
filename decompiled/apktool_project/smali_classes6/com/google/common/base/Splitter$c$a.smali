.class public Lcom/google/common/base/Splitter$c$a;
.super Lcom/google/common/base/Splitter$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$c;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic l:Lcom/sunia/HTREnginev2/g5e;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$c;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/sunia/HTREnginev2/g5e;)V
    .locals 0

    iput-object p4, p0, Lcom/google/common/base/Splitter$c$a;->l:Lcom/sunia/HTREnginev2/g5e;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$f;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public e(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/Splitter$c$a;->l:Lcom/sunia/HTREnginev2/g5e;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/g5e;->a()I

    move-result p0

    return p0
.end method

.method public f(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/Splitter$c$a;->l:Lcom/sunia/HTREnginev2/g5e;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/g5e;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/common/base/Splitter$c$a;->l:Lcom/sunia/HTREnginev2/g5e;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/g5e;->f()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
