.class public final synthetic Lcom/sunia/HTREnginev2/kgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/draw/HemfGraphics;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kgh;->e:Lorg/apache/poi/hemf/draw/HemfGraphics;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kgh;->e:Lorg/apache/poi/hemf/draw/HemfGraphics;

    check-cast p1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->draw(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;)V

    return-void
.end method
