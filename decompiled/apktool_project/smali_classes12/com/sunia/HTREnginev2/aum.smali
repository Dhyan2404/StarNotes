.class public final synthetic Lcom/sunia/HTREnginev2/aum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/sl/extractor/SlideShowExtractor;

.field public final synthetic f:Ljava/util/BitSet;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/sl/extractor/SlideShowExtractor;Ljava/util/BitSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/aum;->e:Lorg/apache/poi/sl/extractor/SlideShowExtractor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/aum;->f:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/aum;->e:Lorg/apache/poi/sl/extractor/SlideShowExtractor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/aum;->f:Ljava/util/BitSet;

    check-cast p1, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->j(Lorg/apache/poi/sl/extractor/SlideShowExtractor;Ljava/util/BitSet;Lorg/apache/poi/sl/usermodel/Slide;)V

    return-void
.end method
