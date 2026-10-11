.class public final synthetic Lcom/sunia/HTREnginev2/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ce;->e:Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ce;->e:Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;->b(Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
