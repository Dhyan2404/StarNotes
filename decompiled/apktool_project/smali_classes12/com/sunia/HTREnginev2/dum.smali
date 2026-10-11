.class public final synthetic Lcom/sunia/HTREnginev2/dum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/util/BitSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/BitSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dum;->e:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dum;->e:Ljava/util/BitSet;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->e0(Ljava/util/BitSet;Ljava/lang/String;)V

    return-void
.end method
