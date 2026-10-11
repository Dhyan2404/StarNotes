.class public final synthetic Lcom/sunia/HTREnginev2/zgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hssf/record/FilePassRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/FilePassRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zgg;->e:Lorg/apache/poi/hssf/record/FilePassRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zgg;->e:Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->a(Lorg/apache/poi/hssf/record/FilePassRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
