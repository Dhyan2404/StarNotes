.class public final synthetic Lcom/sunia/HTREnginev2/rmh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rmh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rmh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;

    check-cast p1, [Ljava/awt/Color;

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->i(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;[Ljava/awt/Color;)V

    return-void
.end method
