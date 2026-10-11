.class public final synthetic Lcom/sunia/HTREnginev2/gum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/sl/extractor/SlideShowExtractor;

.field public final synthetic f:Lcom/zaxxer/sparsebits/SparseBitSet;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/sl/extractor/SlideShowExtractor;Lcom/zaxxer/sparsebits/SparseBitSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gum;->e:Lorg/apache/poi/sl/extractor/SlideShowExtractor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gum;->f:Lcom/zaxxer/sparsebits/SparseBitSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gum;->e:Lorg/apache/poi/sl/extractor/SlideShowExtractor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gum;->f:Lcom/zaxxer/sparsebits/SparseBitSet;

    check-cast p1, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->I(Lorg/apache/poi/sl/extractor/SlideShowExtractor;Lcom/zaxxer/sparsebits/SparseBitSet;Lorg/apache/poi/sl/usermodel/Slide;)V

    return-void
.end method
