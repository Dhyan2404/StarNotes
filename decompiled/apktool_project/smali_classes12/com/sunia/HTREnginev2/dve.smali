.class public final synthetic Lcom/sunia/HTREnginev2/dve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dve;->e:Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dve;->e:Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    check-cast p1, Lorg/apache/poi/hssf/record/DVRecord;

    invoke-interface {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    return-void
.end method
