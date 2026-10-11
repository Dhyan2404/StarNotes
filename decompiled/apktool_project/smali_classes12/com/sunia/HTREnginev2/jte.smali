.class public final synthetic Lcom/sunia/HTREnginev2/jte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jte;->e:Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jte;->e:Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->c(Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
