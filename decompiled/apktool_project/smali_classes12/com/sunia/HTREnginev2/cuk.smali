.class public final synthetic Lcom/sunia/HTREnginev2/cuk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# instance fields
.field public final synthetic a:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;Ljava/util/Map;Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cuk;->a:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cuk;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/cuk;->c:Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

    return-void
.end method


# virtual methods
.method public final visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cuk;->a:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/cuk;->b:Ljava/util/Map;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cuk;->c:Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->a(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;Ljava/util/Map;Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;Lorg/apache/poi/hssf/record/Record;)V

    return-void
.end method
