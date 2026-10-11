.class public final Lnet/sf/saxon/expr/parser/Evaluator$Process;
.super Lnet/sf/saxon/expr/parser/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Process"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Process;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/Evaluator$Process;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Evaluator$Process;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/parser/Evaluator$Process;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Process;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/parser/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->allocateSequenceOutputter()Lnet/sf/saxon/event/SequenceCollector;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v0, p0}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceCollector;->getSequence()Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceCollector;->reset()V

    return-object p1
.end method

.method public getCode()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method
