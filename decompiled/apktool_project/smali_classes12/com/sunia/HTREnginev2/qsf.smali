.class public final synthetic Lcom/sunia/HTREnginev2/qsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/ddf/EscherBitmapBlip;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ddf/EscherBitmapBlip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qsf;->e:Lorg/apache/poi/ddf/EscherBitmapBlip;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qsf;->e:Lorg/apache/poi/ddf/EscherBitmapBlip;

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->b(Lorg/apache/poi/ddf/EscherBitmapBlip;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
