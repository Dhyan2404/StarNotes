.class public final synthetic Lcom/sunia/HTREnginev2/xtm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lcom/zaxxer/sparsebits/SparseBitSet;


# direct methods
.method public synthetic constructor <init>(Lcom/zaxxer/sparsebits/SparseBitSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xtm;->e:Lcom/zaxxer/sparsebits/SparseBitSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xtm;->e:Lcom/zaxxer/sparsebits/SparseBitSet;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->f(Lcom/zaxxer/sparsebits/SparseBitSet;Ljava/lang/String;)V

    return-void
.end method
