.class public final Lnet/sf/saxon/expr/parser/Evaluator$SingletonClosure;
.super Lnet/sf/saxon/expr/parser/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonClosure"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SingletonClosure;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/Evaluator$SingletonClosure;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Evaluator$SingletonClosure;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/parser/Evaluator$SingletonClosure;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SingletonClosure;

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

    new-instance p0, Lnet/sf/saxon/value/SingletonClosure;

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/value/SingletonClosure;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V

    return-object p0
.end method

.method public getCode()I
    .locals 0

    const/16 p0, 0xd

    return p0
.end method
