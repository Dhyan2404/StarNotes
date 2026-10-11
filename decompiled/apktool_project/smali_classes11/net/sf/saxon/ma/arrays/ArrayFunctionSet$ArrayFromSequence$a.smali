.class public Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFromSequence$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/Fold;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFromSequence;->getFold(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/Fold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFromSequence;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFromSequence;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFromSequence$a;->b:Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFromSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFromSequence$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public processItem(Lnet/sf/saxon/om/Item;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFromSequence$a;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public result()Lnet/sf/saxon/om/Sequence;
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFromSequence$a;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;-><init>(Ljava/util/List;)V

    return-object v0
.end method
