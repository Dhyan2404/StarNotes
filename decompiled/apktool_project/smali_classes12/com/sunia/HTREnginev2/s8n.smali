.class public final synthetic Lcom/sunia/HTREnginev2/s8n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hssf/record/TableStylesRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/TableStylesRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/s8n;->e:Lorg/apache/poi/hssf/record/TableStylesRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s8n;->e:Lorg/apache/poi/hssf/record/TableStylesRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;->f(Lorg/apache/poi/hssf/record/TableStylesRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
