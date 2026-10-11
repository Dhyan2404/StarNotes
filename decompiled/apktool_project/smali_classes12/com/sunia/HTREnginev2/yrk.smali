.class public final synthetic Lcom/sunia/HTREnginev2/yrk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hssf/record/PageBreakRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/PageBreakRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yrk;->e:Lorg/apache/poi/hssf/record/PageBreakRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yrk;->e:Lorg/apache/poi/hssf/record/PageBreakRecord;

    check-cast p1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->b(Lorg/apache/poi/hssf/record/PageBreakRecord;Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)V

    return-void
.end method
