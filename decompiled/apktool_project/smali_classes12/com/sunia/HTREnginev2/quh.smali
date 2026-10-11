.class public final synthetic Lcom/sunia/HTREnginev2/quh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/quh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/quh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;

    check-cast p1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;)V

    return-void
.end method
