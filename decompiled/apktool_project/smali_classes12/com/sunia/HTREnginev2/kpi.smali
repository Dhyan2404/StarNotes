.class public final synthetic Lcom/sunia/HTREnginev2/kpi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kpi;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kpi;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
