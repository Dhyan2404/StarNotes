.class public final synthetic Lcom/sunia/HTREnginev2/msh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/msh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/msh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;

    check-cast p1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->j(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)V

    return-void
.end method
