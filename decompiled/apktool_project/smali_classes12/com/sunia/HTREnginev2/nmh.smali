.class public final synthetic Lcom/sunia/HTREnginev2/nmh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nmh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nmh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->e(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
