.class public final synthetic Lcom/sunia/HTREnginev2/skh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/skh;->e:Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/skh;->e:Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;->getBitmap()Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    move-result-object p0

    return-object p0
.end method
