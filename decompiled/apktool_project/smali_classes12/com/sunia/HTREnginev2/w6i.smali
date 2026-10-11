.class public final synthetic Lcom/sunia/HTREnginev2/w6i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hwmf/usermodel/HwmfPicture;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hwmf/usermodel/HwmfPicture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w6i;->e:Lorg/apache/poi/hwmf/usermodel/HwmfPicture;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w6i;->e:Lorg/apache/poi/hwmf/usermodel/HwmfPicture;

    invoke-static {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->a(Lorg/apache/poi/hwmf/usermodel/HwmfPicture;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
