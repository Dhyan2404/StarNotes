.class public final synthetic Lcom/sunia/HTREnginev2/f7k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hssf/record/ObjectProtectRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/ObjectProtectRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f7k;->e:Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f7k;->e:Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->getProtect()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
