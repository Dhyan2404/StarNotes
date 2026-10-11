.class public final synthetic Lorg/apache/poi/ss/formula/ptg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/a;->e:Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/a;->e:Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->b(Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
