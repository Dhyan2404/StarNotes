.class public final synthetic Lcom/sunia/HTREnginev2/j5i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hwmf/record/HwmfHeader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hwmf/record/HwmfHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j5i;->e:Lorg/apache/poi/hwmf/record/HwmfHeader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j5i;->e:Lorg/apache/poi/hwmf/record/HwmfHeader;

    invoke-static {p0}, Lorg/apache/poi/hwmf/record/HwmfHeader;->g(Lorg/apache/poi/hwmf/record/HwmfHeader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
