.class public final synthetic Lcom/sunia/HTREnginev2/omh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/draw/HemfDrawProperties;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/draw/HemfDrawProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/omh;->e:Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/omh;->e:Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->setBrushColorsV(Ljava/util/List;)V

    return-void
.end method
