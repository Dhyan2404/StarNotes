.class public final Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;
.super Lnet/sf/saxon/expr/parser/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptionalItem"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/parser/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getCode()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method
