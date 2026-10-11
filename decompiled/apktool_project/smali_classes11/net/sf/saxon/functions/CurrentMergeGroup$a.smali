.class public Lnet/sf/saxon/functions/CurrentMergeGroup$a;
.super Lnet/sf/saxon/expr/SystemFunctionCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/functions/CurrentMergeGroup;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic p:Lnet/sf/saxon/functions/CurrentMergeGroup;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/CurrentMergeGroup;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/CurrentMergeGroup$a;->p:Lnet/sf/saxon/functions/CurrentMergeGroup;

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/expr/SystemFunctionCall;-><init>(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public getScopingExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/CurrentMergeGroup$a;->p:Lnet/sf/saxon/functions/CurrentMergeGroup;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CurrentMergeGroup;->getControllingInstruction()Lnet/sf/saxon/expr/sort/MergeInstr;

    move-result-object p0

    return-object p0
.end method
